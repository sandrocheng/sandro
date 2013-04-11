/**
 * FileName: ReferralTracking.java
 * @Description: 上报google推广活动返回的数据到服务器
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-29 上午10:46:30
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-15 OneSecurity_Android
 * Why & What is modified: 
 */
package com.tencent.onesecurity.usage.google;

import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

import QQPIM.EPhoneType;
import QQPIM.ESubPlatform;
import android.content.Context;
import android.content.SharedPreferences;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.onesecurity.util.PhoneInfoUtil;
import com.tencent.onesecurity.util.XxteaCoding;
import com.tencent.onesecurity.util.jce.PromotionInfo;
import com.tencent.onesecurity.util.jce.QQDHttpRequestStru;
import com.tencent.onesecurity.util.jce.REQ;
import com.tencent.onesecurity.util.jce.ReqReportChannel;
import com.tencent.onesecurity.util.jce.RespReportChannel;
import com.tencent.onesecurity.util.jce.StatInfo3G;
import com.tencent.tmsecure.exception.NetWorkException;
import com.tencent.tmsecure.utils.EnvUtil;
import com.tencent.tmsecure.utils.StringUtil;

/**
 * @ClassName: ReferralTracking
 * @Description:google campaign 相关信息上报
 * @author: Matrix
 * @date: 2012-10-29 上午10:46:30
 * 
 */
public class ReferralTracking {
	private HttpConnection httpConnection = null;
	
	public void uploadReferralInfo() {
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		if (mConfigDao.isInstallReported()) { // 已经上报过则返回
			return;
		}
		
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
			return; // 网络连接失败
		}
		httpConnection.setRequestMethod(HttpConnection.METHOD_POST);
		
		// 非Google推广渠道下载，Google play商店直接下载或者官网下载等默认值为0
		String campaignSource = MainApplication.getContext().getResources().getString(R.string.campaign_source);;
		String campaignMedium = "0";
		String campaignTerm = "0";
		String campaignContent = "0";
		String campaignName = "0";
		
		Context context = MainApplication.getContext();
		Map<String, String> referralParams = ReferralReceiver.retrieveReferralParams(context);
		if (referralParams != null && referralParams.size() > 0) {
			campaignSource = referralParams.get("utm_source");
			if (campaignSource == null || "".equals(campaignSource)) campaignSource = "0";
			campaignMedium = referralParams.get("utm_medium");
			if (campaignMedium == null || "".equals(campaignMedium)) campaignMedium = "0";
			campaignTerm = referralParams.get("utm_term");
			if (campaignTerm == null || "".equals(campaignTerm)) campaignTerm = "0";
			campaignContent = referralParams.get("utm_content");
			if (campaignContent == null || "".equals(campaignContent)) campaignContent = "0";
			campaignName = referralParams.get("utm_campaign");
			if (campaignName == null || "".equals(campaignName)) campaignName = "0";
		}
		String countryCode = PaymentInformationUtil.getInstance().getCountryNameDefaultXX();
		if (countryCode == null || "".equals(countryCode)) countryCode = "XX";
		String channelNum = ApplicationConfig.CHANNEL;
		if (channelNum == null || "".equals(channelNum)) channelNum = "0";
		String imsi = StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(context));
		if (imsi == null || "".equals(imsi)) imsi = "0";
//		String phoneNumber = StringUtil.assertNotNullString(PhoneInfoUtil.getLine1Number(context));//gordon 因涉及权限问题取消电话号码API的读取
//		if (phoneNumber == null || "".equals(phoneNumber)) phoneNumber = "0";
		
		QQDHttpRequestStru<ReqReportChannel> reqStru = new QQDHttpRequestStru<ReqReportChannel>();
		reqStru.req = REQ._REQ_ReportChannel;
		reqStru.reqStruct = new ReqReportChannel();
		reqStru.reqStruct.promotionInfo = new PromotionInfo();
		reqStru.reqStruct.statInfo = new StatInfo3G();
		
	    reqStru.reqStruct.promotionInfo.packageName = MainApplication.getContext().getPackageName();
		reqStru.reqStruct.promotionInfo.campaignSource = campaignSource;
		reqStru.reqStruct.promotionInfo.campaignMedium = campaignMedium;
		reqStru.reqStruct.promotionInfo.campaignTerm = campaignTerm;
		reqStru.reqStruct.promotionInfo.campaignContent = campaignContent;
		reqStru.reqStruct.promotionInfo.campaignName = campaignName;
		
		reqStru.reqStruct.statInfo.country = countryCode;// 获得国家代码
		reqStru.reqStruct.statInfo.imsi = imsi;
		reqStru.reqStruct.statInfo.phoneType = EPhoneType._MPT_Android + "";
		reqStru.reqStruct.statInfo.subPlatform = ESubPlatform._ESP_Android_General + "";
		reqStru.reqStruct.statInfo.ua = StringUtil.assertNotNullString(PhoneInfoUtil.getModelName());
		reqStru.reqStruct.statInfo.isbuildin = EnvUtil.isBuildIn(context) ? true : false;
		reqStru.reqStruct.statInfo.isroot = EnvUtil.hadsufile() ? true : false;
		reqStru.reqStruct.statInfo.imei = DeviceUtil.getIMEI();
		int iAppID = 0;
		try {
			iAppID = Integer.valueOf(ApplicationConfig.APP_ID);
		} catch (NumberFormatException e) {
			iAppID = 0;
		}
		reqStru.reqStruct.statInfo.appId = iAppID;
		int iChannelNum = 0;
		try {
			iChannelNum = Integer.parseInt(channelNum);
		} catch (NumberFormatException e) {
			iChannelNum = 0;
		}
		reqStru.reqStruct.statInfo.channelId = iChannelNum;
		
		String sLC = ApplicationConfig.LC;
		if (sLC == null || "".equals(sLC)) sLC = "0";
		reqStru.reqStruct.statInfo.lc = sLC;
		reqStru.reqStruct.statInfo.phoneNumber = "";//gordon 因涉及权限问题 电话的API读取去除
		int iPromotionID = 0;
		try {
			iPromotionID = Integer.parseInt(campaignSource);
		} catch (NumberFormatException e) {
			iPromotionID = 0;
		}
		reqStru.reqStruct.statInfo.promotionId = iPromotionID;
		int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();

		// jess1203:修改数据上报的userType和支付的type类型统一。
		reqStru.reqStruct.statInfo.userType = userLevel;
		
//		if(userLevel == UserInfoMode.STANDARD_USER){ //标准用户
//			reqStru.reqStruct.statInfo.userType = USER_INFO_TYPE._UI_NORMAL;
//		}else if(userLevel == UserInfoMode.TRIAL_USER){ //试用用户
//			reqStru.reqStruct.statInfo.userType = USER_INFO_TYPE._UI_TRIAL;
//		}else if(userLevel == UserInfoMode.MEMBER_USER){ //会员用户
//			reqStru.reqStruct.statInfo.userType = USER_INFO_TYPE._UI_PAY;
//		} else { //其他设为Normal用户
//			reqStru.reqStruct.statInfo.userType = USER_INFO_TYPE._UI_NORMAL;
//		}

		JceOutputStream localJceOutputStream = new JceOutputStream();
		localJceOutputStream.setServerEncoding("UTF-8");
		reqStru.writeTo(localJceOutputStream);
		byte[] data = null;
		data = localJceOutputStream.toByteArray();
		
    	XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
    	byte[] vEncryptData = xxtea.encode2HexStr(data).getBytes();
		httpConnection.setPostData(vEncryptData);
		
		try {
			httpConnection.sendRequest();
			int respCode = httpConnection.getResponseCode();
			if (respCode == 200) {
				AtomicReference<byte[]> atomicReference = new AtomicReference<byte[]>();
				httpConnection.getResponse(false, atomicReference);
				httpConnection.close();
				
	        	String dataStr = new String(atomicReference.get());
	        	byte[] dataResp = xxtea.decodeFromHexStr(dataStr);
	        	if (dataResp == null) {
	        		return;
	        	}
	        	JceInputStream jceIs = new JceInputStream(dataResp);
				
				RespReportChannel respReportChannel = new RespReportChannel();
				respReportChannel = (RespReportChannel) jceIs.read(respReportChannel, 1, true);
				if (respReportChannel.retVal == 1) { // 成功
					// 保存安装次数
					mConfigDao.setUserInstallCount(respReportChannel.installCount);
					// 保存推广商ID
					mConfigDao.setPromotionID(iPromotionID);
					// 保存安装上报成功标志
					mConfigDao.setInstallReported(true);
					
					// 清空google返回的数据
					clearReferralParams(context);
				}
			}
		} catch (NetWorkException e) {
			e.printStackTrace();
		}
	}
	
	private void clearReferralParams(Context context) {
		SharedPreferences storage = context.getSharedPreferences(ReferralReceiver.PREFS_FILE_NAME, Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = storage.edit();

		for (String key : ReferralReceiver.EXPECTED_PARAMETERS) {
			editor.putString(key, "");
		}

		editor.commit();
	}
}
