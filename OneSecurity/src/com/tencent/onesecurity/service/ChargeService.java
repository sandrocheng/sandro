/**
 * FileName: ChargeService.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Allan Zhang
 * @version V1.3
 * Createdate: 2012-10-15 上午10:04:43
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-15 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.service;

import java.text.SimpleDateFormat;
import java.util.Locale;

import android.app.IntentService;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

import com.qq.jce.wup.UniPacket;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.manager.vip.VipPaymentManager;
import com.tencent.onesecurity.service.QQPIM.PayRequest;
import com.tencent.onesecurity.service.QQPIM.PayResult;
import com.tencent.onesecurity.service.QQPIM.PayStatus;
import com.tencent.onesecurity.service.QQPIM.VIPTrialResultRequest;
import com.tencent.onesecurity.util.ErrorCode;
import com.tencent.onesecurity.util.HttpConnection;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.onesecurity.util.RunHttpSessionUtil;

/**
 * @ClassName: ChargeService
 * @Description:(vip支付service)
 * @author: Allan
 * @date: 2012-10-15 上午10:04:43
 * 
 */
public class ChargeService extends IntentService {

	// 支付操作步骤ID
	// 以下是Paypal的支付操作步骤
	public final static int PAY_GET_STATUS = 1;
	public final static int PAY_STOP = 2;
	public final static int PAY_QUERY_MOPAY_STATE = 3;
	public final static int TRAIL_OPEN = 4;
	public final static int QUERY_PAY_STATE = 5;
	public final static int PAY_QUERY_MOPAY_STATE_REPEATLY = 6;
	public final static int BUILD_IN_TRAIL_OPEN = 7;

	public final static String FUNCTION_NAME = "funcName";
	public static String DOMAIN_NAME = "qqdr.com";
	public final static String AGREEMENT_NAME = "agreement.jsp";

	// 会员配置
	UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();

	// wup链接
	private String mWupUrl = "http://m.qqdr.com/pay/wup.jsp";
	// private final String mWupUrl =
	// "http://sky.cs0309.imtt.qq.com/webapp_qqdr/pay/wup.jsp";
	// private String mWupUrl =
	// "http://qqdr.cs0309.imtt.qq.com/webapp_qqdr/pay/wup.jsp";

	// 支付链接
	// private String mPayUrl = "http://m.qqdr.com/pay/gateway.jsp";
	// private static final String mPayUrl =
	// "http://sky.cs0309.imtt.qq.com/webapp_qqdr/pay/gateway.jsp";
	// private String mPayUrl =
	// "http://qqdr.cs0309.imtt.qq.com/webapp_qqdr/pay/gateway.jsp";

	PayRequest req = new PayRequest();
	PayResult reqHolder;
	PayStatus payStatus = new PayStatus();

	public static boolean routineState = true;

	// 增加一个监听,监听新的消息
	public MsgUnreadNotify msgUnReadNotify;

	public interface MsgUnreadNotify {
		public void onChange(int unReadNum);
	}

	public ChargeService() {
		super("ChargeService");
		int envCode = MainApplication.getContext().getResources().getInteger(
				R.integer.vip_env);
		if (envCode == 0) {
			mWupUrl = "http://sky.cs0309.imtt.qq.com/webapp_qqdr/pay/wup.jsp";
			DOMAIN_NAME = "imtt.qq.com";
		} else if (envCode == 1) {
			mWupUrl = "http://qqdr.cs0309.imtt.qq.com/webapp_qqdr/pay/wup.jsp";
			DOMAIN_NAME = "imtt.qq.com";
		} else if (envCode == 2) {
			mWupUrl = "http://m.qqdr.com/pay/wup.jsp";
			DOMAIN_NAME = "qqdr.com";
		} else if (envCode == 3) {
			mWupUrl = "http://wms.cs0309.imtt.qq.com/webapp_qqdr/pay/wup.jsp";
			DOMAIN_NAME = "wms.cs0309.imtt.qq.com";
		}
	}

	Handler handler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case QUERY_PAY_STATE: {
				Log.i("QQDOCTOR", "handleMessage : QUERY_PAY_STATE");
				if(mQueryMopayResultRunnable.isAlive() == false) {
	   				mQueryMopayResultRunnable.start();
	   		    }
	   		    else {
	   			   Log.i("QQDOCTOR", "mQueryMopayResultRunnable is running");
	   		    }
				// queryPaymentStatus();
				break;
			}
			default:
				break;
			}
		}
	};

	private Thread mQueryMopayResultRunnable = new Thread() {

		@Override
		public void run() {
			Log.i("QQDOCTOR", "mQueryMopayResultRunnable : queryPaymentStatus");
			queryPaymentStatus();
		}
	};

	@Override
	protected void onHandleIntent(Intent intent) {
		if (intent != null) {
			switch (intent.getFlags()) {
			case PAY_GET_STATUS: {
				Log.i("QQDOCTOR", "PAY_GET_STATUS");
				queryPaymentStatus();
				break;
			}
			case PAY_STOP: {
				Log.i("QQDOCTOR", "PAY_STOP");
				routineState = false;
				queryPaymentStatus();
				break;
			}
			case PAY_QUERY_MOPAY_STATE: {
				Log.i("QQDOCTOR", "PAY_QUERY_MOPAY_STATE");
				Message message = new Message();
				message.what = QUERY_PAY_STATE;
				int payMode = userInfoDao.getPaymentPayMode();

				if (payMode == VipInfomationConst.payModeMopay) {
					int rState = userInfoDao.getMopayReturnedState();
					if (rState == VipInfomationConst.MopayStatePending) {
						// 通过SmartConfig 参数配置
						long value = CoreConfigDao.getInstance().getLongValue(
								CoreConfigDao.MOPAY_REPORT_INPROGRESS_TIME);
						value = 60 * 1000;
						Log.i("QQDOCTOR", "CoreConfigDao.MOPAY_REPORT_INPROGRESS_TIME is "
										+ Long.toString(value));

						handler.sendMessageDelayed(message, value);
						// handler.postDelayed(mQueryMopayResultRunnable,
						// value);
					} else {
						handler.sendMessageAtFrontOfQueue(message);
						// handler.post(mQueryMopayResultRunnable);
					}
				} else if (payMode == VipInfomationConst.payModePaypal) {
					long value = 5 * 1000;
					handler.sendMessageDelayed(message, value);
				}

				break;
			}
			case TRAIL_OPEN: {
				Log.i("QQDOCTOR", "TRAIL_OPEN");
				Thread openTrialThread = new Thread() {
    	        	@Override
    	        	public void run() {
    					openTrial();
    	        	}
    	        };
    	        openTrialThread.start();
				break;
			}
			case QUERY_PAY_STATE: {
				// bOpenVipSuccess = intent.getBooleanExtra("OpenVipSuccess",
				// false);
				Log.i("QQDOCTOR", "QUERY_PAY_STATE");
				queryPaymentStatus();
				break;
			}
			case PAY_QUERY_MOPAY_STATE_REPEATLY: {
				Log.i("QQDOCTOR", "PAY_QUERY_MOPAY_STATE_REPEATLY");
				Message message = new Message();
				message.what = QUERY_PAY_STATE;
				// 通过SmartConfig 参数配置
				long value = CoreConfigDao.getInstance().getLongValue(
						CoreConfigDao.MOPAY_GET_RESULT_INTERVAL);
				value = 10 * 60 * 1000L;
				handler.postDelayed(mQueryMopayResultRunnable, value);
				break;
			}
			default:
				break;
			}
		}
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if (routineState) {
			return super.onStartCommand(intent, flags, startId);
		} else {
			routineState = true;
		}
		return 0;
	}

	private UniPacket getUniPacketRequst(int flag) {
		//判断是否为内置版本
		boolean isBuiltInVersion = MainApplication.getContext().getResources().
		getBoolean(R.bool.built_in_version);
		UniPacket request = new UniPacket(true);
		request.setRequestId(32);
		request.setServantName("pay");
		request.setEncodeName("UTF-8");

		PaymentInformationUtil payInfo = PaymentInformationUtil.getInstance();
		String imei = payInfo.getIMEI();
		int appId = payInfo.getAppID();

		String lc = payInfo.getLC();
		int channelId = payInfo.getChannelID();
		//String phoneNumber = payInfo.getSelfPhoneNumber();//gordon 因隐私问题去掉访问本地电话本的API
		String phoneNumber = "";//gordon 因隐私问题去掉访问本地电话本的API 设置默认为空
		String imsi = payInfo.getIMSI();
		String country = payInfo.getCountryNameDefaultXX();// VipInfomationConst.countrySingapore;
		//////////////////test,调试时使用，不能提交，提交通用版编译会有问题////////////////
//		if(isBuildInVersion) {
//			imei = userInfoDao.getImei();
//			channelId = userInfoDao.getChannelId();
//			lc = userInfoDao.getLc();
//			country = userInfoDao.getCountry();
//		}
		
		int languageFlag = PaymentInformationUtil.getInstance()
				.getLanguageByCountryCode(country);
		String mopayErrorMsg = "";
		int promotionId = DaoCreator.createConfigDao().getPromotionID();
		String reqTime = userInfoDao.getUserPaymentTime();
		String deviceToken = imei + reqTime;

		if (flag == TRAIL_OPEN) {
			request.setFuncName("vipTrialResult");
			VIPTrialResultRequest trialReq = new VIPTrialResultRequest(imei,
					appId, lc, channelId, phoneNumber, imsi, country);
			PayStatus newPayStatus = new PayStatus();
			request.put("req", trialReq);
			request.put("status", newPayStatus);
		} else if (flag == QUERY_PAY_STATE) {
			request.setFuncName("queryPayResult");
			long time = 0;

			if (reqTime != null && reqTime.length() > 0) {
				time = Long.parseLong(reqTime);
			}

			int moPayStatus = VipInfomationConst.MopayStateNone;

			int paymentDealingStatus = userInfoDao.getPaymentStatus();
			int paymentPayMode = userInfoDao.getPaymentPayMode();

			if (paymentPayMode == VipInfomationConst.payModeMopay) {
				Log.i("QQDOCTOR", "paymentPayMode == VipInfomationConst.payModeMopay");
				moPayStatus = userInfoDao.getMopayReturnedState();
				mopayErrorMsg = userInfoDao.getMopayReturnedErrorMsg();
				if (paymentDealingStatus == VipInfomationConst.paymentPayCommit
						|| paymentDealingStatus == VipInfomationConst.paymentPayNetError) {
					Log.i("QQDOCTOR", "ChargeService::paymentDealingStatus = "
							+ Integer.toString(paymentDealingStatus));
					moPayStatus = userInfoDao.getMopayReturnedState();
					mopayErrorMsg = userInfoDao.getMopayReturnedErrorMsg();
				}
			}

			PayRequest payReq = new PayRequest(time, imei, deviceToken, appId,
					lc, channelId, languageFlag, phoneNumber, imsi, country,
					moPayStatus, mopayErrorMsg, promotionId);
			PayResult newPayResult = new PayResult();

			request.put("req", payReq);
			request.put("result", newPayResult);
		}

		// 内置版本开通试用
		if (flag == BUILD_IN_TRAIL_OPEN && isBuiltInVersion) {
			request.setFuncName("vipBuildinResult");
			VIPTrialResultRequest trialReq = new VIPTrialResultRequest(imei,
					appId, lc, channelId, phoneNumber, imsi, country);
			PayStatus newPayStatus = new PayStatus();
			request.put("req", trialReq);
			request.put("status", newPayStatus);
		}

		return request;
	}

	/**
	 * 开通试用 成功后更新本地数据（会员信息、到期日期）
	 */
	private void openTrial() {
		UniPacket respond = new UniPacket(true);
		respond.setEncodeName("UTF-8");

		UniPacket request = getUniPacketRequst(TRAIL_OPEN);
		int err = RunHttpSessionUtil.getInstance().runHttpSession(this,
				request, respond, true, mWupUrl, HttpConnection.METHOD_POST);
		if (err != ErrorCode.ERR_NONE) {
			// return;//容错，网络错误
			Intent intent = new Intent(
					VipInfomationConst.paymentOpenTrialNetError);
			sendBroadcast(intent);

			userInfoDao.setTrialHasSendFlag(4);
			PaymentInformationUtil.getInstance().addConnectionFunction(
					TRAIL_OPEN);
		} else {
			PaymentInformationUtil.getInstance().deleteConnectionFunction(
					TRAIL_OPEN);
			PayStatus resTrialResult = new PayStatus();
			resTrialResult = respond.getByClass("status", new PayStatus());
			long prevEndTime = userInfoDao.getMemberEndTime();
			if(prevEndTime < 0)
				prevEndTime = 0;
			long prevRemainDays = userInfoDao.getUserSurplusSecond();
			if (prevRemainDays <= 0)
				prevRemainDays = 0;
			if (resTrialResult != null && ((resTrialResult.getSurplusTime() - prevRemainDays * 1000L) > 5 * 24 * 60 * 60 * 1000L)) {
				long surplusSecond = resTrialResult.getSurplusTime();
				surplusSecond = surplusSecond / 1000;
				long days = surplusSecond / (60 * 60 * 24);
				userInfoDao.setMemberStartTime(resTrialResult.getStartTime());
				userInfoDao.setMemberEndTime(resTrialResult.getEndTime());
				userInfoDao.setUserSurplusSecond(surplusSecond);
				userInfoDao.setUserLevelInfo(resTrialResult.status);
				userInfoDao.setUsedTrialFlag(Integer.lowestOneBit(resTrialResult.type));
				userInfoDao.setUserApplyTrialSentSMSNumber(0);
				userInfoDao.setUserApplyTrialSentSMSPhones("");
				SimpleDateFormat sdf = new SimpleDateFormat("", Locale.SIMPLIFIED_CHINESE);
				sdf.applyPattern("yyyy年MM月dd日 HH时mm分ss秒");
				Log.i("QQDOCTOR","ChargeService::openTrial:     startTime = " + sdf.format(resTrialResult.getStartTime()));
				Log.i("QQDOCTOR", "ChargeService::openTrial:     endTime = " + sdf.format(resTrialResult.getEndTime()));
				Log.i("QQDOCTOR", "ChargeService::openTrial:     surplusSecond = " + Long.toString(surplusSecond));
				Log.i("QQDOCTOR", "ChargeService::openTrial:     surplusDays = " + Long.toString(days));
				Log.i("QQDOCTOR", "ChargeService::openTrial:     status = " + Integer.toString(resTrialResult.status));
				Log.i("QQDOCTOR", "ChargeService::openTrial:     type = " + Integer.toString(resTrialResult.type));

				long upgradeDays = (surplusSecond - prevRemainDays + 1) / (60 * 60 * 24);
				Log.i("QQDOCTOR", "ChargeService::openTrial:     upgradeDays = "
						+ Long.toString(upgradeDays));
				Intent intent = new Intent(VipInfomationConst.paymentOpenTrialSucc);
				intent.putExtra("VipUpgradeDays", upgradeDays);
				sendBroadcast(intent);
				userInfoDao.setTrialHasSendFlag(2);
				userInfoDao.setUserGetFreeTrialFlag((int) upgradeDays);
			}
//			else if (resTrialResult == null) {
//				Intent intent = new Intent(VipInfomationConst.paymentOpenTrialNetError);
//				sendBroadcast(intent);
//
//				userInfoDao.setTrialHasSendFlag(4);
//				PaymentInformationUtil.getInstance().addConnectionFunction(TRAIL_OPEN);
//			}
			else {
				Log.i("QQDOCTOR", "ChargeService::openTrial:  获取时间不足5天");
				Intent intent = new Intent(VipInfomationConst.paymentOpenTrialFailed);
				sendBroadcast(intent);
				userInfoDao.setTrialHasSendFlag(3);
			}
		}

		// 启动更新剩余时间
		Intent msgIntent = new Intent(this, MemberTimerService.class);
		msgIntent.setFlags(MemberTimerService.UPDATE_SURPLUS);
		startService(msgIntent);
	}

	/*
	 * 查询支付状态
	 */
	private void queryPaymentStatus() {
		UniPacket respond = new UniPacket(true);
		respond.setEncodeName("UTF-8");

		UniPacket request = getUniPacketRequst(QUERY_PAY_STATE);

		int err = RunHttpSessionUtil.getInstance().runHttpSession(this,
				request, respond, true, mWupUrl, HttpConnection.METHOD_POST);
		if (err != ErrorCode.ERR_NONE) {
			// return;//容错，网络错误
			PaymentInformationUtil.getInstance().addConnectionFunction(
					QUERY_PAY_STATE);
			Log.i("QQDOCTOR", "queryPaymentStatus failed");
			if (userInfoDao.getPaymentStatus() == VipInfomationConst.paymentPayCommit) {
				userInfoDao
						.setPaymentStatus(VipInfomationConst.paymentPayNetError);
				// Intent i = new
				// Intent(VipInfomationConst.paymentPayNetUnusable);
				// sendBroadcast(i);
				VipPaymentManager.getInstance().handleNetworkError();
				Log.i("QQDOCTOR", "userInfoDao.setPaymentStatus(VipInfomationConst.paymentPayNetError)");
			}
		} else {
			PayResult resPayStatus = new PayResult();
			resPayStatus = respond.getByClass("result", new PayResult());
			PaymentInformationUtil.getInstance().deleteConnectionFunction(
					QUERY_PAY_STATE);

			if (resPayStatus != null) {
				Log.i("QQDOCTOR", "queryPaymentStatus success");
				VipPaymentManager.getInstance().handlePayResult(resPayStatus);

				boolean isBuiltInVersion = MainApplication.getContext().getResources().
					getBoolean(R.bool.built_in_version);
				Log.i("BuiltInVersion", String.valueOf(isBuiltInVersion));
				//判断是否为内置版本
				if (isBuiltInVersion == true) {
					// 判断是否为普通用户，普通用户则直接开通试用
					int status = resPayStatus.getPayStatus().getStatus();
					if (status == UserInfoMode.STANDARD_USER) {
						// 开通试用
						boolean isOpen =false;
						isOpen = openBuiltInTrial();
						
						//开通成功则发送通知
						if (isOpen) {
							// 向消息中心插入一条开通试用消息
							String msgID = MessageManager.getInstance().saveBuildInTrialMessage();
							// 发送消息栏通知
							MessageManager.getInstance().noticeMessage(msgID);
						}
					}
				}
			} else {
				Log.i("QQDOCTOR", "can not get information from server");
			}
		}
		routineState = true;
		Intent i = new Intent(VipInfomationConst.paymentActionPayGetStatus);
		sendBroadcast(i);
	}

	/**
	 * 内置版本开通试用 成功后更新本地数据（会员信息、到期日期）
	 */
	private boolean openBuiltInTrial() {
		UniPacket respond = new UniPacket(true);
		respond.setEncodeName("UTF-8");
		boolean isOpen =false;

		UniPacket request = getUniPacketRequst(BUILD_IN_TRAIL_OPEN);
		int err = RunHttpSessionUtil.getInstance().runHttpSession(this,
				request, respond, true, mWupUrl, HttpConnection.METHOD_POST);
		if (err == ErrorCode.ERR_NONE) {
			PaymentInformationUtil.getInstance().deleteConnectionFunction(
					TRAIL_OPEN);
			PayStatus resTrialResult = new PayStatus();
			resTrialResult = respond.getByClass("status", new PayStatus());
			long prevRemainDays = userInfoDao.getUserSurplusSecond();
			if (prevRemainDays <= 0)
				prevRemainDays = 0;
			if (resTrialResult != null) {
				long surplusSecond = resTrialResult.getSurplusTime();
				surplusSecond = surplusSecond / 1000;
				long days = surplusSecond / (60 * 60 * 24);
				// 对应bug 9652871 【OneSecurity2.0.0.9】【内置】【vip】首次点击试用出现文言错误 
				// 服务器没有返回失败的值,判断是否开通成功
				if (surplusSecond > 0) {
					userInfoDao.clearTrialHasSendFlag();
					userInfoDao.setMemberStartTime(resTrialResult.getStartTime());
					userInfoDao.setMemberEndTime(resTrialResult.getEndTime());
					userInfoDao.setUserSurplusSecond(surplusSecond);
					userInfoDao.setUserLevelInfo(resTrialResult.status);
					userInfoDao.setUsedTrialFlag(Integer
							.lowestOneBit(resTrialResult.type));
					userInfoDao.setUserApplyTrialSentSMSNumber(0);
					userInfoDao.setUserApplyTrialSentSMSPhones("");
					SimpleDateFormat sdf = new SimpleDateFormat("",
							Locale.SIMPLIFIED_CHINESE);
					sdf.applyPattern("yyyy-M-d h:mm");
					Log.i("QQDOCTOR", "ChargeService::openTrial:     startTime = "
							+ sdf.format(resTrialResult.getStartTime()));
					Log.i("QQDOCTOR", "ChargeService::openTrial:     endTime = "
							+ sdf.format(resTrialResult.getEndTime()));
					Log.i("QQDOCTOR", "ChargeService::openTrial:     surplusSecond = "
									+ Long.toString(surplusSecond));
					Log.i("QQDOCTOR", "ChargeService::openTrial:     surplusDays = "
							+ Long.toString(days));
					Log.i("QQDOCTOR", "ChargeService::openTrial:     status = "
							+ Integer.toString(resTrialResult.status));
					Log.i("QQDOCTOR", "ChargeService::openTrial:     type = "
							+ Integer.toString(resTrialResult.type));

					long upgradeDays = (surplusSecond - prevRemainDays + 1)
							/ (60 * 60 * 24);
					Log.i("QQDOCTOR", "ChargeService::openTrial:     upgradeDays = "
							+ Long.toString(upgradeDays));
					userInfoDao.setUserGetFreeTrialFlag((int) upgradeDays);
					if (resTrialResult.status != UserInfoMode.STANDARD_USER) {
						isOpen = true;
					}
				}
			}
		}

		// 启动更新剩余时间
		Intent msgIntent = new Intent(this, MemberTimerService.class);
		msgIntent.setFlags(MemberTimerService.UPDATE_SURPLUS);
		startService(msgIntent);
		
		return isOpen;
	}
}
