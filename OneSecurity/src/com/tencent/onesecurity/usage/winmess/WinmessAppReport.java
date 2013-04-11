package com.tencent.onesecurity.usage.winmess;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;



import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.XxteaCoding;
import com.tencent.onesecurity.util.jce.AppInfo;
import com.tencent.onesecurity.util.jce.QQDHttpRequestStru;
import com.tencent.onesecurity.util.jce.REQ;
import com.tencent.onesecurity.util.jce.RET_VAL;
import com.tencent.onesecurity.util.jce.ReqAppReport;
import com.tencent.onesecurity.util.jce.RespAppReport;
import com.tencent.onesecurity.util.jce.VirusInfo;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.utils.Log;

/**
 * Winmess后台 data上报类
 * @author tony
 *
 */
public class WinmessAppReport {
	
	private QQDHttpRequestStru<ReqAppReport> reqStru = null;
	public static final int APP_REPORT_NULL = 99;
	/**
	 * Winmess后台上报
	 * @return
	 */
	public int reportDataForWinmess() {
		int result = -1;
		//获取数据
		ArrayList<AppReportEntity> appReportEntitys = WinmessAppReportManager.getInstance().getData();
		
		if(appReportEntitys == null || appReportEntitys.size() <= 0){
			return APP_REPORT_NULL;
		}
		//上报到后台
		result = reportData(appReportEntitys);
		//获取剩余appReport数量
		int num = WinmessAppReportManager.getInstance().getReportDataCnt();
		
		if(result > 0 && num > 0){//成功上报 并且 还有未上报数据
			//继续上报
			result = reportDataForWinmess();
		}
		return result;
	}
	
	private void initReqStru() {
		if(reqStru == null){
			reqStru = new QQDHttpRequestStru<ReqAppReport>();
			reqStru.req = REQ._REQ_AppReport;
			reqStru.reqStruct = new ReqAppReport();
			reqStru.reqStruct.imei = DeviceUtil.getIMEI();
		}

	}
	/**
	 * 上报一个包
	 * @param appReportEntitys 上报实体列表
	 * @return
	 */
	private int reportData(ArrayList<AppReportEntity> appReportEntitys) {
		int result = -1;

		HttpConnection httpConnection = null;
		initReqStru();
		
		reqStru.reqStruct.appInfos = new java.util.ArrayList<AppInfo>();
		
		for (AppReportEntity appReportEntity : appReportEntitys) {
			AppInfo appInfo = new AppInfo();
			appInfo.appId = appReportEntity.packageName;
			appInfo.appName = appReportEntity.appName;
			appInfo.appReportType = appReportEntity.reportType;
			if(appInfo.appReportType == AppReportEntity.APP_VIRUS
					|| appInfo.appReportType == AppReportEntity.APP_VIRUS_TRUST){//病毒或病毒白名单
				appInfo.virusInfo = new VirusInfo();
				appInfo.virusInfo.virusName = appReportEntity.virusName;
				appInfo.virusInfo.virusType = appReportEntity.virusType;
			}
			reqStru.reqStruct.appInfos.add(appInfo);
		}
		

		//序列化QQDHttpRequestStru
		JceOutputStream localJceOutputStream = new JceOutputStream();
		localJceOutputStream.setServerEncoding("UTF-8");
		reqStru.writeTo(localJceOutputStream);
		byte[] data = null;
		data = localJceOutputStream.toByteArray();
    	XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
    	byte[] vEncryptData = xxtea.encode2HexStr(data).getBytes();
    	
		String report_url = null;
		if (ApplicationConfig.WINMESS_REPORT_URL_TEST) {
			report_url = ApplicationConfig.report_url_test;
		} else {
			report_url = ApplicationConfig.report_url;
		}
    	try {
			httpConnection = HttpConnection.createHttpConnection(report_url);
		} catch (NetWorkException e) {
			e.printStackTrace();
		}
		if (httpConnection == null) {
			return result; // 网络连接失败
		}
		httpConnection.setRequestMethod(HttpConnection.METHOD_POST);
		httpConnection.setPostData(vEncryptData);
		Log.i("WinmessDataReport", "before sendRequest -----> vEncryptData.length = " + vEncryptData.length);
		try {
			httpConnection.sendRequest();
			int respCode = httpConnection.getResponseCode();
			Log.i("WinmessDataReport", "respCode --->" + respCode);
			if (respCode == 200) {
				AtomicReference<byte[]> atomicReference = new AtomicReference<byte[]>();
				httpConnection.getResponse(false, atomicReference);
				httpConnection.close();
				
	        	String dataStr = new String(atomicReference.get());
	        	byte[] dataResp = xxtea.decodeFromHexStr(dataStr);
	        	if (dataResp == null) {
	        		return result;
	        	}
	        	JceInputStream jceIs = new JceInputStream(dataResp);
				
	        	RespAppReport respAppReport = new RespAppReport();
	        	respAppReport = (RespAppReport) jceIs.read(respAppReport, 1, true);
	        	Log.i("WinmessDataReport", "respDataReport.retVal --->" + respAppReport.replyCode);
				if (respAppReport.replyCode == RET_VAL._RET_Success) { // 成功
					result = RET_VAL._RET_Success;
					// 若上报成功 则更新已上报的数据
					WinmessAppReportManager.getInstance().updataReportData(appReportEntitys);
				}
			}
		} catch (NetWorkException e) {
			Log.i("WinmessDataReport", "sendRequest error ----->" + e.toString());
			httpConnection.close();
		} finally{
			httpConnection.close();
		}
		return result;
	}
	
}
