/**
* FileName: VipPaymentManager.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-11-26 下午04:37:43
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-11-26 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.manager.vip;

import java.text.SimpleDateFormat;
import java.util.Locale;

import android.content.Context;
import android.content.Intent;

import com.mindmatics.mopay.android.api.IMopayPurchase;
import com.mindmatics.mopay.android.api.IMopayResult;
import com.mindmatics.mopay.android.api.LogLevel;
import com.mindmatics.mopay.android.api.MopayClient;
import com.mindmatics.mopay.android.api.MopayPurchaseFactory;
import com.mindmatics.mopay.android.api.MopayStatus;
import com.mindmatics.mopay.android.api.PurchaseParamByButtonId;
import com.mindmatics.mopay.android.api.PurchaseParamByTariffKey;
import com.qq.jce.wup.UniPacket;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.service.ChargeService;
import com.tencent.onesecurity.service.MemberTimerService;
import com.tencent.onesecurity.service.QQPIM.PayRequest;
import com.tencent.onesecurity.service.QQPIM.PayResult;
import com.tencent.onesecurity.service.QQPIM.PayStatus;
import com.tencent.onesecurity.service.QQPIM.ResultCode;
import com.tencent.onesecurity.util.HexUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.onesecurity.util.XxteaCoding;

/**
 * @ClassName: VipPaymentManager
 * @Description:(这里用一句话描述这个类的作用)
 * @author: Allan
 * @date: 2012-11-26 下午04:37:43
 *
 */
public class VipPaymentManager {
	
	/** 单例 */
	private static VipPaymentManager instance = null;
	private UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
	private Context mContext = null;
	private INotifcatePayResult payResultCB = null; 
	public static int FLAG_PAYMENT = 1;
	public static int FLAG_TRIAL_QUESTIONNAIRE = 2;

	//支付链接
	private String mPayUrl = "http://m.qqdr.com/pay/gateway.jsp";
	
	private VipPaymentManager(Context context) {
		mContext = context;
	}

	/**
	 * 获得单例的VipPaymentManager对象
	 * 
	 * @return
	 */
	public static VipPaymentManager getInstance() {
		if (instance == null) {
			synchronized (VipPaymentManager.class) {
				if (instance == null) {
					instance = new VipPaymentManager(MainApplication.getContext());
				}
			}
		}
		return instance;
	}
	
	public void setContext(Context context) {
		mContext = context;
	}
	
	public void registerNotifcatePayResult(INotifcatePayResult payResult) {
		this.payResultCB = payResult;
	}
	
	public void unregisterNotifcatePayResult() {
		this.payResultCB = null;
	}
	
	public String CallPayRoutine(int flag)
	{
		ChargeService.routineState = true;
		UniPacket respond = new UniPacket(true);
		respond.setEncodeName("UTF-8");
		
		UniPacket request = new UniPacket(true);
		request.setRequestId(32);
		request.setServantName("pay");
		request.setEncodeName("UTF-8");
		
		PaymentInformationUtil payInfo = PaymentInformationUtil.getInstance();
		String imei = payInfo.getIMEI();
		int appId = payInfo.getAppID();
		
		String lc = payInfo.getLC();
		int channelId = payInfo.getChannelID(); 
//		String phoneNumber = payInfo.getSelfPhoneNumber();//gordon 因隐私问题去掉读取自身电话号码的API
		String phoneNumber="";//gordon 因隐私问题去掉读取自身电话号码的API,默认为空
		String imsi = payInfo.getIMSI();
		String country = payInfo.getCountryNameDefaultXX();//VipInfomationConst.countrySingapore;
		int languageFlag = PaymentInformationUtil.getInstance().getLanguageByCountryCode(country);
		long curTime = System.currentTimeMillis();
		int clientPayStatus = 0;
		String mopayErrorMsg = "";
		int promotionId = DaoCreator.createConfigDao().getPromotionID();
		String reqTime = userInfoDao.getUserPaymentTime();
		String deviceToken = imei + reqTime;
		if(flag == FLAG_TRIAL_QUESTIONNAIRE) {
			deviceToken = "2.0.1.55";
		}
		
		request.setFuncName("getPayResult");
		PayRequest req = new PayRequest(curTime,imei,deviceToken,appId,lc,channelId,languageFlag,phoneNumber,imsi,country,clientPayStatus,mopayErrorMsg,promotionId);
		PayResult reqHolder = new PayResult();	
		request.put("req", req);
		request.put("result", reqHolder);
			
		 byte[] responseBytes = request.encode();
		 String id = "";
		 //byte[] vEncryptData = TccCryptor.encrypt(this, responseBytes, null);
		 if(ApplicationConfig.teakey != null && "".equals(ApplicationConfig.teakey) == false) {
			 XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
			 byte[] vEncryptData = xxtea.encode(responseBytes);
			 id = HexUtil.bytes2HexStr(vEncryptData);
		 }
		 
		 int envCode = MainApplication.getContext().getResources().getInteger(R.integer.vip_env);
		 if(envCode == 0) {
			mPayUrl = "http://sky.cs0309.imtt.qq.com/webapp_qqdr/pay/gateway.jsp";
		 }
		 else if(envCode == 1) {
			 mPayUrl = "http://qqdr.cs0309.imtt.qq.com/webapp_qqdr/pay/gateway.jsp";
		 }
		 else if(envCode == 2) {
			 mPayUrl = "http://m.qqdr.com/pay/gateway.jsp";
		 }
		 else if(envCode == 3) {
			 mPayUrl = "http://wms.cs0309.imtt.qq.com/webapp_qqdr/pay/gateway.jsp";
		 }
		 
		 String url = "";
		 if(flag == FLAG_TRIAL_QUESTIONNAIRE) {
			 if(envCode == 0) {
				 url = "http://tim.cs0309.imtt.qq.com/webapp_qqdr/trail/trail_gateway.jsp" + "?id="+id;
			 }
			 else if(envCode == 1) {
				 url = "http://qqdr.cs0309.imtt.qq.com/webapp_qqdr/trail/trail_gateway.jsp" + "?id="+id;
			 }
			 else if(envCode == 2) {
				 url = "http://m.qqdr.com/trail/trail_gateway.jsp" + "?id="+id;
			 }
			 else if(envCode == 3) {
				 url = "http://wms.cs0309.imtt.qq.com/webapp_qqdr/trail/trail_gateway.jsp" + "?id="+id;
			 }
		 }
		 else {
			 url = mPayUrl + "?id="+id;
		 }
		 
		 return url;
	}

	/**
	 * 启动Mopay SDK
	 */
	public void startMopaySDK(MopayClient mClient, int startMode, String buttonId,
			String country, String tariffKey, String myId, String time) {
		// set debug loglevel during testing or integration
        //LogLevel.setLevel(LogLevel.DEBUG); // switch to DEBUG logging for the MOPAY_LIB tag.
//        if(mDialog != null && mDialog.isShowing()) {
//			mDialog.dismiss();
//		}
        IMopayPurchase mopayPurchase = null; 
        String secretKey = ApplicationConfig.secretKey;
//        if(ApplicationConfig.teakey != null && "".equals(ApplicationConfig.teakey) == false) {
//        	XxteaCoding xxtea = new XxteaCoding(ApplicationConfig.teakey.getBytes());
//        	byte[] vDecryptData = xxtea.decodeFromHexStr(ApplicationConfig.encryptedSecretKey);
//        	if(vDecryptData != null && vDecryptData.length > 0) {
//    			secretKey = new String(vDecryptData);
//    		}
//        }
		
        if(startMode == VipInfomationConst.paymentMopayModeButtonId) {
        	//Toast.makeText(mContext, "Mopay start with ButtonID", Toast.LENGTH_SHORT).show();
    		Log.i("QQDOCTOR", "Mopay start with ButtonID: "
    					+ "country is " + country + ", buttonId is " + buttonId + ", SERVICE_NAME is OneSecurity, PRODUCT_NAME is Member Service, "
    					+ "myId is " + myId);
    		ToastUtil.ShowSimpleTextShortToast("Mopay start with ButtonID",R.layout.custom_toast);
    		
    		mopayPurchase = MopayPurchaseFactory.createForButtonId(secretKey);
    		mopayPurchase.putParam(PurchaseParamByButtonId.COUNTRY, country );//"TH" //country
    		mopayPurchase.putParam(PurchaseParamByButtonId.BUTTON_ID, buttonId );//"BE987EFD508F1101585C0CA95795159C" //buttonId
    		mopayPurchase.putParam(PurchaseParamByButtonId.SERVICE_NAME, "OneSecurity");
    		mopayPurchase.putParam(PurchaseParamByButtonId.PRODUCT_NAME, "Member Service");
    		mopayPurchase.putParam(PurchaseParamByButtonId.MYID, myId );
    		mopayPurchase.putParam(PurchaseParamByButtonId.EXTERNAL_UID, ""); // optional parameter
    		mopayPurchase.putParam(PurchaseParamByButtonId.REPORTING_ID, "" ); // optional parameter
        }
        else {
        	//Toast.makeText(mContext,"Mopay start with TariffKey", Toast.LENGTH_SHORT).show();
    		Log.i("QQDOCTOR", "Mopay start with TariffKey: " 
    				+ ", TariffKey is " + "TH_42.80_THB" + ", SERVICE_NAME is QQDoctor, PRODUCT_NAME is Member Service, "
    				+ "myId is " + myId);
    		ToastUtil.ShowSimpleTextShortToast("Mopay start with TariffKey",R.layout.custom_toast);
    		mopayPurchase = MopayPurchaseFactory.createForTariffKey(secretKey);
    		mopayPurchase.putParam(PurchaseParamByTariffKey.PROJECT_ID, Integer.toString(5110));
    		mopayPurchase.putParam(PurchaseParamByTariffKey.TARIFF_KEY, "TH_42.80_THB"); // each paymentconfig has an id.
    		mopayPurchase.putParam(PurchaseParamByButtonId.SERVICE_NAME, "OneSecurity");
    		mopayPurchase.putParam(PurchaseParamByButtonId.PRODUCT_NAME, "Member Service");
    		mopayPurchase.putParam(PurchaseParamByButtonId.MYID, myId );
    		mopayPurchase.putParam(PurchaseParamByButtonId.EXTERNAL_UID, ""); // optional parameter
    		mopayPurchase.putParam(PurchaseParamByButtonId.REPORTING_ID, "" ); // optional parameter
        }
        mClient.startPayment(mopayPurchase) ;
        userInfoDao.setPaymentPayMode(VipInfomationConst.payModeMopay);
        userInfoDao.setUserPaymentTime(time);
	}
    
	/**
	 * 处理Mopay的支付结果
	 */
    public void onPaymentCompleted (IMopayResult mopayResult) {
        // The mopay results contains the result of the payment acticity.
    	MopayStatus status = mopayResult.getStatus(); // status will never be null
		String guid = ""; // guid can be empty (invalid parameters supplied, no internet)
		String currency = "";
		double amount = 0;
		String country = "";
		String msisdn = "";
		long errorCode = 0; 
		String errorMessage = "";
		int returnedState = 0;
		
		if(mopayResult.getGuid() != null) {
			guid = mopayResult.getGuid();
		}
		if(mopayResult.getCurrency() != null) {
			currency = mopayResult.getCurrency();
		}
		if(mopayResult.getAmount() != null) {
			amount = mopayResult.getAmount();
		}
		if(mopayResult.getCountry() != null) {
			country = mopayResult.getCountry();
		}
		if (mopayResult.getMsisdn() != null) {
			msisdn = mopayResult.getMsisdn();
		}
		
//		Log.i("QQDOCTOR", "Guid is " + guid + ", currency is " + currency
//				+ ", amount is " + Double.toString(amount) + ", country is " + country
//				+ ", msisdn is " + msisdn);
		
		if(status == null) {
			Log.i("QQDOCTOR", "onPaymentCompleted::status == null");
			return;
		}
		
		// Evaluate the payment details
		if (MopayStatus.SUCCESS.equals(status) ) {
			// payment was sucecssfuly done, place here your code
			Log.i("QQDOCTOR", "onPaymentCompleted::	MopayStatus = SUCCESS");
			ToastUtil.ShowSimpleTextShortToast("MopayStatus = SUCCESS",R.layout.custom_toast);
			returnedState = VipInfomationConst.MopayStateSucc;
		} 
		else if (MopayStatus.ERROR.equals(status) ) {
			// payment failed, place here your code
			int errorDetail = 0;
//			Log.i("QQDOCTOR", "onPaymentCompleted::	MopayStatus = ERROR");
			ToastUtil.ShowSimpleTextShortToast("MopayStatus = ERROR",R.layout.custom_toast);
			if(mopayResult.getErrorCode() != 0) {
				errorCode = mopayResult.getErrorCode(); // See error codes table at the end of this document.
				if(errorCode == 20090805L) {
					ToastUtil.ShowSimpleTextLongToast("Pleas check your calendar and set correct time",R.layout.custom_toast);
				}else if(errorCode == 20090802L) {
					ToastUtil.ShowSimpleTextLongToast("Internet Connection Error.",R.layout.custom_toast);
				}else if(errorCode == 20090803L) {
					ToastUtil.ShowSimpleTextLongToast("Failed to send an SMS from native platform.",R.layout.custom_toast);
				}else if(errorCode == 20090804L) {
					ToastUtil.ShowSimpleTextLongToast("The device has no SIM card / mobile phone features.",R.layout.custom_toast);
				}else if(errorCode == 10210111L) {
					ToastUtil.ShowSimpleTextLongToast("User canceled.",R.layout.custom_toast);
				}else {
					ToastUtil.ShowSimpleTextShortToast("Mopay return ERROR status",R.layout.custom_toast);
				}
			}
			if(mopayResult.getErrorMessage() != null) {
				errorMessage = mopayResult.getErrorMessage(); // Will be empty string, if errorcode = 0
//				if(buttonID.length() == 0 || "".equals(buttonID)) {
//					errorCode = 20080101L;
//					errorMessage = "The buttonID is empty";
//				}
			}
			if (mopayResult.getErrorDetail() != 0) {
				errorDetail = mopayResult.getErrorDetail(); // Errordetail is an optional detailed error code only
			}
			Log.i("QQDOCTOR", "onPaymentCompleted: MopayStatus = ERROR, errorCode is " + Long.toString(errorCode) 
						+ ", getErrorMessage is " + errorMessage + ", errorDetail is " + Integer.toString(errorDetail));
			returnedState = VipInfomationConst.MopayStateFail;
			
//			if(errorCode == 20090805L) {
//				ToastUtil.ShowSimpleTextLongToast("Pleas check your calander and set correct time");
//			}
			
		} 
		else {
			// payment still INPROGRESS, place here your code and wait for the mopay XML payment notificiation to your payment 
			// backend application. It is required to have a server application to integrate mopay !
			ToastUtil.ShowSimpleTextShortToast("MopayStatus = Processing",R.layout.custom_toast);
			errorMessage = mopayResult.getErrorMessage();
			Log.i("QQDOCTOR", "onPaymentCompleted::	MopayStatus = Processing" + ", errorCode is " 
					+ mopayResult.getErrorCode() + ", getErrorMessage is " + errorMessage);
			returnedState = VipInfomationConst.MopayStatePending;
		}

		userInfoDao.setNeedToShowDlgFlag(true);
		userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayCommit);
		userInfoDao.setMopayReturnedState(returnedState);
		if(returnedState == VipInfomationConst.MopayStateFail) {
			userInfoDao.setMopayReturnedErrorMsg(Long.toString(errorCode) + ", " + errorMessage);
		}
		Intent i = new Intent(mContext, ChargeService.class);
		i.setFlags(ChargeService.PAY_QUERY_MOPAY_STATE);
		mContext.startService(i);
    }
    
    public void handleNetworkError() {
    	userInfoDao.setNeedToShowDlgFlag(false);
    	if(payResultCB != null)
    		payResultCB.notificateNetworkError();
    }
    
    public void handlePayResult(PayResult resPayStatus) {
//    	Log.i("QQDOCTOR",  "handlePayResult(resPayStatus)");
    	int paymentPayMode = userInfoDao.getPaymentPayMode();
			
		if(paymentPayMode == VipInfomationConst.payModeMopay) {
//	    	Log.i("QQDOCTOR",  "handlePayResult(VipInfomationConst.payModeMopay)");
			handleMopayResult(resPayStatus);
		}
		else if(paymentPayMode == VipInfomationConst.payModePaypal) {
//	    	Log.i("QQDOCTOR",  "handlePayResult(VipInfomationConst.payModePaypal)");
			handlePaypalResult(resPayStatus);
		}
		else {
//	    	Log.i("QQDOCTOR",  "handlePayResult(VipInfomationConst.payModeNone)");
			handleGetStatus(resPayStatus);
		}
    }

	/**
	 * @param resPayStatus
	 */
	private void handleGetStatus(PayResult resPayStatus) {
		PayStatus pStatus = resPayStatus.getPayStatus();
//		Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     PrevsurplusSecond = " + Long.toString(userInfoDao.getUserSurplusSecond()));
		long surplusSecond = pStatus.getSurplusTime();
		surplusSecond = surplusSecond/1000;
		long days = surplusSecond / (60 * 60 * 24);
		userInfoDao.setMemberStartTime(pStatus.getStartTime());
		userInfoDao.setMemberEndTime(pStatus.getEndTime());
		userInfoDao.setUserSurplusSecond(surplusSecond);
		userInfoDao.setUserLevelInfo( pStatus.status );
		userInfoDao.setUsedTrialFlag(Integer.lowestOneBit(pStatus.type));
		SimpleDateFormat sdf = new SimpleDateFormat("", Locale.SIMPLIFIED_CHINESE);
		sdf.applyPattern("yyyy-MM-dd- HH-mm-ss");
		Log.i("QQDOCTOR",  "ChargeService::getUserStatus:     curTime = " + sdf.format(pStatus.getCurrentTime()) + "    " + pStatus.getCurrentTime());
		Log.i("QQDOCTOR",  "ChargeService::getUserStatus:     startTime = " + sdf.format(pStatus.getStartTime()) + "    " + pStatus.getStartTime());
		Log.i("QQDOCTOR", "ChargeService::getUserStatus:     endTime = " + sdf.format(pStatus.getEndTime()) + "    " + pStatus.getEndTime());
		Log.i("QQDOCTOR", "ChargeService::getUserStatus:     surplusSecond = " + Long.toString(surplusSecond));
		Log.i("QQDOCTOR", "ChargeService::getUserStatus:     surplusDays = " + Long.toString(days));
		Log.i("QQDOCTOR", "ChargeService::getUserStatus:     status = " + Integer.toString(pStatus.status));
		Log.i("QQDOCTOR", "ChargeService::getUserStatus:     type = " + Integer.toString(pStatus.type));
    	userInfoDao.setNeedToShowDlgFlag(false);
		userInfoDao.clearTrialHasSendFlag();
		userInfoDao.clearAllPayInformation();
		if(payResultCB != null)
			payResultCB.notificateGetStatus();
		
		//启动更新剩余时间
		Intent msgIntent = new Intent(mContext,MemberTimerService.class);
		msgIntent.setFlags(MemberTimerService.UPDATE_SURPLUS);
		mContext.startService(msgIntent);
	}

	/**
	 * @param resPayStatus
	 */
	private void handlePaypalResult(PayResult resPayStatus) {
		long prevRemainDays = userInfoDao.getUserSurplusSecond();
		if(prevRemainDays <= 0)
			prevRemainDays = 0;
		long prevEndTime = userInfoDao.getMemberEndTime();
		int paymentDealingStatus = userInfoDao.getPaymentStatus();
		PayStatus pStatus = resPayStatus.getPayStatus();
		if( (paymentDealingStatus == VipInfomationConst.paymentPayCommit ) ) {
			if(pStatus.getEndTime() - prevEndTime > 10 * 24 *60 * 60 * 1000L ) {
//			Intent intent = new Intent(VipInfomationConst.paymentPaySuccess);
//			mContext.sendBroadcast(intent);
			long surplusSecond = pStatus.getSurplusTime();
			surplusSecond = surplusSecond/1000;
			long days = surplusSecond / (60 * 60 * 24);
			userInfoDao.setMemberStartTime(pStatus.getStartTime());
			userInfoDao.setMemberEndTime(pStatus.getEndTime());
			userInfoDao.setUserSurplusSecond(surplusSecond);
			userInfoDao.setUserLevelInfo( pStatus.status );
			userInfoDao.setUsedTrialFlag(Integer.lowestOneBit(pStatus.type));
			SimpleDateFormat sdf = new SimpleDateFormat("", Locale.SIMPLIFIED_CHINESE);
			sdf.applyPattern("yyyy-MM-dd- HH-mm-ss");
			Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     Success");
			Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     curTime = " + sdf.format(pStatus.getCurrentTime()) + "    " + pStatus.getCurrentTime());
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     PrevsurplusSecond = " + Long.toString(prevRemainDays));
			Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     startTime = " + sdf.format(pStatus.getStartTime()) + "    " + pStatus.getStartTime());
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     endTime = " + sdf.format(pStatus.getEndTime()) + "    " + pStatus.getEndTime());
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     surplusSecond = " + Long.toString(surplusSecond));
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     surplusDays = " + Long.toString(days));
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     status = " + Integer.toString(pStatus.status));
			Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     type = " + Integer.toString(pStatus.type));
			//long upgradeDays = (surplusSecond - prevRemainDays + 1) /(60*60*24); 
			long upgradeDays = calculatePaymentDays(prevEndTime, pStatus);
			userInfoDao.setUpgradeDays(upgradeDays);
			userInfoDao.setPaymentStatus(VipInfomationConst.paymentPaySuceess);
		    userInfoDao.setNeedToShowDlgFlag(false);
		    userInfoDao.setNeedToShowPayResult(true);
		    userInfoDao.setUserIsOutOfTime(-1);
			if(payResultCB != null)
			    payResultCB.notificatePayResult(VipInfomationConst.paymentPaySuceess, upgradeDays);
			userInfoDao.clearTrialHasSendFlag();
			//启动更新剩余时间
			Intent msgIntent = new Intent(mContext,MemberTimerService.class);
			msgIntent.setFlags(MemberTimerService.UPDATE_SURPLUS);
			mContext.startService(msgIntent);
			}
			else {
				userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayFail);
		    	userInfoDao.setNeedToShowDlgFlag(false);
		    	userInfoDao.setNeedToShowPayResult(true);
				if(payResultCB != null)
				    payResultCB.notificatePayResult(VipInfomationConst.paymentPayFail, 0);
			}
		}
		else {
			handleGetStatus(resPayStatus);
		}
	}
	
	private long calculatePaymentDays(long prevEndTime, PayStatus pStatus) {
		int prevUserType = userInfoDao.getUserLevelInfo();
		long curServerTime = pStatus.getCurrentTime();
		long paymentDays = 0;
		if((prevUserType == UserInfoMode.STANDARD_USER) ||
				(((prevUserType == UserInfoMode.MEMBER_USER) 
						|| (prevUserType == UserInfoMode.TRIAL_USER) 
						|| (prevUserType == UserInfoMode.MEMBER_PREOPEN_USER)) 
						&& curServerTime > prevEndTime)) {
			paymentDays = (pStatus.getEndTime() - curServerTime) / (1000 * 24 * 60 * 60);
		}
		else {
			paymentDays = (pStatus.getEndTime() - prevEndTime) / (1000 * 24 * 60 * 60);
		}
		
		return paymentDays;
	}

	/**
	 * @param resPayStatus
	 */
	private void handleMopayResult(PayResult resPayStatus) {		
    	int paymentDealingStatus = userInfoDao.getPaymentStatus();
    	long prevRemainDays = userInfoDao.getUserSurplusSecond();
    	long prevEndTime = userInfoDao.getMemberEndTime();
		if(prevRemainDays <= 0)
			prevRemainDays = 0;
		int resCode = resPayStatus.getResultCode();
		if( (paymentDealingStatus == VipInfomationConst.paymentPayCommit || paymentDealingStatus == VipInfomationConst.paymentPayNetError)){
			if(resCode == ResultCode._Success) {
				PayStatus pStatus = resPayStatus.getPayStatus();
				long surplusSecond = pStatus.getSurplusTime();
				surplusSecond = surplusSecond/1000;
				long days = surplusSecond / (60 * 60 * 24);
				userInfoDao.setMemberStartTime(pStatus.getStartTime());
				userInfoDao.setMemberEndTime(pStatus.getEndTime());
				userInfoDao.setUserSurplusSecond(surplusSecond);
				userInfoDao.setUserLevelInfo( pStatus.status );
				userInfoDao.setUsedTrialFlag(Integer.lowestOneBit(pStatus.type));
				userInfoDao.setUserIsOutOfTime(-1);
				SimpleDateFormat sdf = new SimpleDateFormat("", Locale.SIMPLIFIED_CHINESE);
				sdf.applyPattern("yyyy-MM-dd HH-mm-ss");
				Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     Success");
				Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     curTime = " + sdf.format(pStatus.getCurrentTime()) + "    " + pStatus.getCurrentTime());
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     PrevsurplusSecond = " + Long.toString(prevRemainDays));
				Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     startTime = " + sdf.format(pStatus.getStartTime()) + "    " + pStatus.getStartTime());
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     endTime = " + sdf.format(pStatus.getEndTime()) + "    " + pStatus.getEndTime());
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     surplusSecond = " + Long.toString(surplusSecond));
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     surplusDays = " + Long.toString(days));
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     status = " + Integer.toString(pStatus.status));
				Log.i("QQDOCTOR", "ChargeService::queryPaymentStatus:     type = " + Integer.toString(pStatus.type));
				if(paymentDealingStatus == VipInfomationConst.paymentPayCommit) {
					Log.i("QQDOCTOR",  "paymentDealingStatus == VipInfomationConst.paymentPayCommit");
					//Intent intent = new Intent(VipInfomationConst.paymentPaySuccess);
				    //mContext.sendBroadcast(intent);
					//long upgradeDays = (surplusSecond - prevRemainDays + 1)/60/60/24; 
					long upgradeDays = calculatePaymentDays(prevEndTime, pStatus);
					userInfoDao.setUpgradeDays(upgradeDays);
					userInfoDao.setPaymentStatus(VipInfomationConst.paymentPaySuceess);
			    	userInfoDao.setNeedToShowDlgFlag(false);
			    	userInfoDao.setNeedToShowPayResult(true);
					if(payResultCB != null)
						payResultCB.notificatePayResult(VipInfomationConst.paymentPaySuceess, upgradeDays);
				}
				else {
					Log.i("QQDOCTOR",  "paymentDealingStatus == VipInfomationConst.paymentPayNetError");
			    	userInfoDao.setNeedToShowDlgFlag(false);
					userInfoDao.clearAllPayInformation();
//					Intent intent = new Intent(VipInfomationConst.paymentGetStatus);
//					mContext.sendBroadcast(intent);
					if(payResultCB != null)
						payResultCB.notificateGetStatus();
				}
				userInfoDao.clearTrialHasSendFlag();
				
				//启动更新剩余时间
				Intent msgIntent = new Intent(mContext,MemberTimerService.class);
				msgIntent.setFlags(MemberTimerService.UPDATE_SURPLUS);
				mContext.startService(msgIntent);
			}
			else if(resCode == ResultCode._Fail) {
				Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     _Fail");
				userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayFail);
				if(paymentDealingStatus == VipInfomationConst.paymentPayCommit) {
//					Intent intent = new Intent(VipInfomationConst.paymentPayFailed);
//					mContext.sendBroadcast(intent);
			    	userInfoDao.setNeedToShowDlgFlag(false);
			    	userInfoDao.setNeedToShowPayResult(true);
					if(payResultCB != null)
						payResultCB.notificatePayResult(VipInfomationConst.paymentPayFail, 0);
				}
			}
			//未知状态，服务器预埋的开关，有可能在以后服务器会忽略客户端上报的状态，服务器在未收到Mopay的返回值时返回Unknown
			//客户端需要定时去服务器请求，直到Mopay发给服务器明确的状态通知
			else if(resCode == ResultCode._Unknown) {
				Log.i("QQDOCTOR",  "ChargeService::queryPaymentStatus:     _Unknown");
//				Message message = new Message();
//			    message.what = QUERY_PAY_STATE;
//			    handler.sendMessageDelayed(message, 5 * 60 *1000);
//			    	
//				Intent intent = new Intent(VipInfomationConst.paymentMopayProcessing);
//			    sendBroadcast(intent);
				if(paymentDealingStatus == VipInfomationConst.paymentPayCommit) {
			    	userInfoDao.setNeedToShowDlgFlag(false);
					if(payResultCB != null)
						payResultCB.notificatePayResult(VipInfomationConst.paymentPayMopayUnknown, 0);
				}
				//启动ChargeService定时从服务器获取
				//TBD
				Intent intent = new Intent(mContext, ChargeService.class);
				intent.addFlags(ChargeService.PAY_QUERY_MOPAY_STATE_REPEATLY);
			    mContext.startService(intent);
			}
		}
		else {
			handleGetStatus(resPayStatus);
		}
	}
}
