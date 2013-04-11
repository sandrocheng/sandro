package com.tencent.onesecurity.usage.winmess;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;



import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.model.FeatureReportEntity;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.XxteaCoding;
import com.tencent.onesecurity.util.jce.DATA_REPORT_TYPE;
import com.tencent.onesecurity.util.jce.QQDHttpRequestStru;
import com.tencent.onesecurity.util.jce.REQ;
import com.tencent.onesecurity.util.jce.RET_VAL;
import com.tencent.onesecurity.util.jce.ReqDataReportNew;
import com.tencent.onesecurity.util.jce.RespDataReportNew;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.utils.Log;

/**
 * Winmess后台 data上报类
 * Fun：向winmess后台上报Feature数据(One Sec2.0版本向成讯后台和向3G中心报告的内容一致)
 * @author eddy
 *
 */
public class WinmessDataReport {
	
	private QQDHttpRequestStru<ReqDataReportNew> reqStru = null;
	public static final long HOUR24 = 86400000;
	public static final int FEATURE_NULL = 9;
	/**
	 * Winmess后台上报
	 * @return
	 */
	public int reportDataForWinmess() {
		int result = -1;
		//获取数据
		ArrayList<FeatureReportEntity> featureReportEntitys = WinmessDataReportManager.getInstance().getData();
		
		if(featureReportEntitys == null || featureReportEntitys.size() <= 0){
			//TODO 超过24小时 上报空Featuer 否则不上报
			long dataReportTime = ConfigDao.getInstance().getDataReportTime();
			long time = System.currentTimeMillis();
			if(time - dataReportTime < HOUR24){
				return FEATURE_NULL;
			}
		}
		//上报到后台
		result = reportData(featureReportEntitys);
		//获取剩余feature数量
		int num = WinmessDataReportManager.getInstance().getReportDataCnt();
		
		if(result > 0 && num > 0){//成功上报 并且 还有未上报数据
			//继续上报
			result = reportDataForWinmess();
		}
		return result;
	}
	
	private void initReqStru() {
		if(reqStru == null){
			reqStru = new QQDHttpRequestStru<ReqDataReportNew>();
			reqStru.req = REQ._REQ_DataReportNew;
			reqStru.reqStruct = new ReqDataReportNew();
			reqStru.reqStruct.imei = DeviceUtil.getIMEI();
		}

	}
	/**
	 * 上报一个包
	 * @param featureReportEntitys 上报实体列表
	 * @return
	 */
	private int reportData(ArrayList<FeatureReportEntity> featureReportEntitys) {
		int result = -1;

		HttpConnection httpConnection = null;
		initReqStru();
		if(featureReportEntitys == null || featureReportEntitys.size() <= 0){
			reqStru.reqStruct.opdate = WinmessDataReportManager.getInstance().getOpdate();
		}else{
			reqStru.reqStruct.opdate = featureReportEntitys.get(0).featureDate;
		}

		//上报用户类别- 分为付费，试用和普通用户，UserInfoType
		int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();
		reqStru.reqStruct.usertype = userLevel;
		reqStru.reqStruct.features = getWinmessDataReport(featureReportEntitys);

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
				
	        	RespDataReportNew respDataReportNew = new RespDataReportNew();
	        	respDataReportNew = (RespDataReportNew) jceIs.read(respDataReportNew, 1, true);
	        	Log.i("WinmessDataReport", "respDataReport.retVal --->" + respDataReportNew.retVal);
				if (respDataReportNew.retVal == RET_VAL._RET_Success) { // 成功
					result = RET_VAL._RET_Success;
					// 若上报成功则Feature xml清零 
					//modify by tony 
					//更新上报时间戳
					ConfigDao.getInstance().setDataReportTime(System.currentTimeMillis());
					//则清除对应的Feature
					WinmessDataReportManager.getInstance().clearReportData(featureReportEntitys);
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
	/**
	 * 转换成Winmess使用的结构
	 * @param featureReportEntitys
	 * @return
	 */
	public Map<Integer, Integer> getWinmessDataReport(ArrayList<FeatureReportEntity> featureReportEntitys){
		
		Map<Integer, Integer> winmessDataReport = new HashMap<Integer, Integer>();
		if(featureReportEntitys == null){
			return winmessDataReport;
		}
		for (FeatureReportEntity action : featureReportEntitys) {

			switch (action.featureId) {
			case EModelID._EMID_Secure_INTO_QQPIMSECURE:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_QQPIMSECURE, action.featureCount);
				break;
			case EModelID._EMID_Secure_Open_desktop_asistant:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Open_desktop_asistant, action.featureCount);
				break;
			case EModelID._EMID_Secure_RUNNING_ONEKEY_DO:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_RUNNING_ONEKEY_DO, action.featureCount);
				break;
			case EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS, action.featureCount);
				break;
			case EModelID._EMID_Secure_desktop_asistant_into_OS:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_desktop_asistant_into_OS, action.featureCount);
				break;
			case EModelID._EMID_Secure_INTO_MAIN_MENU:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_MAIN_MENU, action.featureCount);
				break;
			case EModelID._EMID_Secure_INTO_PHONE_UP:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_PHONE_UP, action.featureCount);
				break;
			case EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost, action.featureCount);
				break;
			case EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN, action.featureCount);
				break;
			case EModelID._EMID_Secure_VirusTabView_Finish_QuickScan:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VirusTabView_Finish_QuickScan, action.featureCount);
				break;
			case EModelID._EMID_Secure_VirusTabView_Finish_FullScan:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VirusTabView_Finish_FullScan, action.featureCount);
				break;
			case EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VirusTabView_Cancel_QuickScan, action.featureCount);
				break;
			case EModelID._EMID_Secure_VirusTabView_Cancel_FullScan:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VirusTabView_Cancel_FullScan, action.featureCount);
				break;
			case EModelID._EMID_Secure_INTO_VIRUS_UPDATE:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_VIRUS_UPDATE, action.featureCount);
				break;	
			case EModelID._EMID_Secure_Notification_VirusLib_Update_Cancel:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Notification_VirusLib_Update_Cancel, action.featureCount);
				break;
			case EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now, action.featureCount);
				break;
			case EModelID._EMID_Secure_Outside_VirusTabView_Kill_Immediately:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Outside_VirusTabView_Kill_Immediately, action.featureCount);
				break;
			case EModelID._EMID_Secure_INTO_US_MAANGER:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_INTO_US_MAANGER, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Create_PASSWORD:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Create_PASSWORD, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Forgot_PASSWORD:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Forgot_PASSWORD, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_INTO_Enter_Correct_PASSWORD, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Wrong_PASSWORD:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Wrong_PASSWORD, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Memo_Enter_PASSWORD:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Memo_Enter_PASSWORD, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_MultiM_Click:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_MultiM_Click, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_MultiM_Enter:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_MultiM_Enter, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_PIC_Imp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_PIC_Imp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Video_Imp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Video_Imp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Audio_Imp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Audio_Imp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_PIC_Exp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_PIC_Exp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Video_Exp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Video_Exp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Audio_Exp_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Audio_Exp_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Del_Origin_OK:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Del_Origin_OK, action.featureCount);
				break;
			case EModelID._EMID_Secure_PRIVATE_PROTECT_password_setting:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_PRIVATE_PROTECT_password_setting, action.featureCount);
				break;
			case EModelID._EMID_Secure_MV_Setting_Modify:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_Setting_Modify, action.featureCount);
				break;	
			case EModelID._EMID_Secure_Boost_INTO_VIP:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Boost_INTO_VIP, action.featureCount);
				break;	
			case EModelID._EMID_Secure_Virus_INTO_VIP:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Virus_INTO_VIP, action.featureCount);
				break;	
			case EModelID._EMID_Secure_MV_INTO_VIP:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MV_INTO_VIP, action.featureCount);
				break;	
			case EModelID._EMID_Secure_VIP_Get_Click:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VIP_Get_Click, action.featureCount);
				break;	
			case EModelID._EMID_Secure_Trial_Get_Click:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Trial_Get_Click, action.featureCount);
				break;	
			case EModelID._EMID_Secure_Trial_Get_SMS_Share:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Trial_Get_SMS_Share, action.featureCount);
				break;			
			case EModelID._EMID_Secure_Trial_Obtain:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Trial_Obtain, action.featureCount);
				break;
			case EModelID._EMID_Secure_VIP_Pay_Success:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_VIP_Pay_Success, action.featureCount);
				break;
			case EModelID._EMID_Secure_MAINVIEW_Into_Menu_Setting:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_MAINVIEW_Into_Menu_Setting, action.featureCount);
				break;
			case EModelID._EMID_Secure_Menu_Setting_SMS_Share:
				winmessDataReport.put(DATA_REPORT_TYPE._EMID_Secure_Menu_Setting_SMS_Share, action.featureCount);
				break;
			default:
				break;
			}
		
		}
		return winmessDataReport;
	
	}
}
