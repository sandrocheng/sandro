package com.tencent.onesecurity.service;

import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;

import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PaymentInformationUtil;

/**
 * VIP状态定时service，定时检查用户状态信息
 * 
 * @author Administrator
 * 
 */
public class MemberTimerService extends Service {
	UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();

	private long mSurplusSecond;

	private static final long HALF_AN_HOUR = 60 * 30;

	public static final int MSG_NONE = 0;
	public static final int UPDATE_SURPLUS = 1;
	public static final int GET_PAY_STATUS = 2;
	public static final int NETWOKR_RECONNECTION_START = 3;
	public static final int NETWOKR_RECONNECTION_STOP = 4;
	public static final int NETWORK_DISCONNECTED = 5;
	public static final int NETWORK_CONNECTED = 6;
	public static final int PULL_SERVER_DATA = 7;

	private boolean bTimerRuning_TenMin = false;

	private Timer mTimer = new Timer();
	private HandlerThread mHandlerThread = new HandlerThread(
			"MemberTimerService");
	private TimerTask mTimerTask = new TimerTask() {
		@Override
		public void run() {
			//Message message = new Message();
			//message.what = UPDATE_SURPLUS;
			//handler.sendMessage(message);
			UpdateSurplusDay();
		}
	};

	private Timer mConnectionTimer = new Timer();
	private TimerTask GetPayStatusTask_TenMin = new TimerTask() {
		@Override
		public void run() {
			Log.i("QQDOCTOR", "GetPayStatusTask_TenMin start");
			restartQueryStatus();
		}
	};

	Handler handler;

	private class MyHandler extends Handler {
		public MyHandler(Looper l) {
			super(l);
		}

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case UPDATE_SURPLUS: {
				UpdateSurplusDay();
				break;
			}
			case GET_PAY_STATUS: {
				GetOnePayRoutineStatus();
				break;
			}
			case NETWOKR_RECONNECTION_START: {
				Log.i("QQDOCTOR", "MemberTimerService::NETWOKR_RECONNECTION_START");
				if (!bTimerRuning_TenMin) {
					mConnectionTimer = new Timer();
					mConnectionTimer.purge();
					GetPayStatusTask_TenMin = new TimerTask() {
						@Override
						public void run() {
							restartQueryStatus();
						}
					};
					mConnectionTimer.scheduleAtFixedRate(GetPayStatusTask_TenMin, 0, 10 * 60 * 1000);
				}
				bTimerRuning_TenMin = true;
				break;
			}
			case NETWOKR_RECONNECTION_STOP: {
//				Log.i("QQDOCTOR", "MemberTimerService::NETWOKR_RECONNECTION_STOP");
				GetPayStatusTask_TenMin.cancel();
				mConnectionTimer.purge();
				mConnectionTimer.cancel();
				bTimerRuning_TenMin = false;
				break;
			}
			case NETWORK_DISCONNECTED: {
//				Log.i("QQDOCTOR", "MemberTimerService::NETWORK_DISCONNECTED");
				break;
			}
			case NETWORK_CONNECTED: {
//				Log.i("QQDOCTOR", "MemberTimerService::NETWORK_CONNECTED_CHANGED");
				boolean bConnected = PaymentInformationUtil.getInstance().getNetworConnectionState();
				if (bConnected) {
					Log.i("QQDOCTOR", "MemberTimerService::NETWORK_CONNECTED");
					restartQueryStatus();
					Intent i = new Intent("network_change_connected");
					sendBroadcast(i);
				}
				break;
			}
			case PULL_SERVER_DATA: {
				SecureService.startSchedulTask();
				break;
			}
			default:
				break;
			}
		}
	};

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		Message message = new Message();
		if (intent != null) {
			switch (intent.getFlags()) {
			case UPDATE_SURPLUS: {
				message.what = UPDATE_SURPLUS;
				break;
			}
			case GET_PAY_STATUS: {
				message.what = GET_PAY_STATUS;
				break;
			}
			case NETWOKR_RECONNECTION_START: {
				message.what = NETWOKR_RECONNECTION_START;
				break;
			}
			case NETWOKR_RECONNECTION_STOP: {
				message.what = NETWOKR_RECONNECTION_STOP;
				break;
			}
			case NETWORK_DISCONNECTED: {
				message.what = NETWORK_DISCONNECTED;
				break;
			}
			case NETWORK_CONNECTED: {
				message.what = NETWORK_CONNECTED;
				break;
			}
			case PULL_SERVER_DATA: {
				message.what = PULL_SERVER_DATA;
				break;
			}
			default:
				message.what = MSG_NONE;
				break;
			}
		} else {
			message.what = MSG_NONE;
		}

		handler.sendMessage(message);
		return 0;
	}

	/**
	 * 
	 */
	protected void restartQueryStatus() {
		List<Integer> mList = PaymentInformationUtil.getInstance().getConnectionFunctions();
		for (int i = 0; i < mList.size(); i++) {
			int func = mList.get(i);
			Intent intent = new Intent(MemberTimerService.this, ChargeService.class);
			intent.setFlags(func);
			startService(intent);
			Log.i("QQDOCTOR", "restartQueryStatus:    mList.size()" + Integer.toString(mList.size()));
			Log.i("QQDOCTOR", "restartQueryStatus:    " + Integer.toString(func));
		}
	}

	private void GetOnePayRoutineStatus() {
		Intent msgIntent = new Intent(this, ChargeService.class);
		msgIntent.setFlags(ChargeService.PAY_GET_STATUS);
		startService(msgIntent);
	}

	// private void GetUserStaus()
	// {
	// Intent intent = new Intent(this, ChargeService.class);
	// intent.setFlags(ChargeService.PAY_GET_STATUS);
	// startService(intent);
	// }

	private void QueryPayStatus() {
		int status = userInfoDao.getPaymentStatus();
		if (status == VipInfomationConst.paymentPayCommit || status == VipInfomationConst.paymentPayNetError) {
			Log.i("QQDOCTOR", "MemberTimerService:  QueryPayStatus");
			String paymentTime = userInfoDao.getUserPaymentTime();
			if (paymentTime != null && paymentTime.length() > 0) {
				Intent i = new Intent(this, ChargeService.class);
				i.setFlags(ChargeService.QUERY_PAY_STATE);
				startService(i);
			}
		}
	}

	private void setUserOutOfTime(int days) {
		userInfoDao.setUserIsOutOfTime(1);
		Intent intent = new Intent(VipInfomationConst.vipOutOfTime);
		sendBroadcast(intent);
		StatusBarManager.getInstance().showVipExpiredNotification(days);
	}

	private void UpdateSurplusDay() {
		long isOutOfTime = 0;
		mSurplusSecond = userInfoDao.getUserSurplusSecond();

		Log.i("QQDOCTOR", "UpdateSurplusDay():  定时更新数据");
		isOutOfTime = mSurplusSecond;

		if (mSurplusSecond >= 0)
			mSurplusSecond -= HALF_AN_HOUR;
		
		long notificationTimeThreeDays = 3 * 24 * 3600L;//3 days
		long notificationTimeOneDay = 1 * 24 * 3600L;//1 days
		if(mSurplusSecond <= notificationTimeThreeDays) {
			if(isOutOfTime >= notificationTimeThreeDays && mSurplusSecond < notificationTimeThreeDays) {
				setUserOutOfTime(3);
			}else if(isOutOfTime >= notificationTimeOneDay && mSurplusSecond < notificationTimeOneDay) {
				setUserOutOfTime(1);
			}
		}
		
		if (mSurplusSecond < 0) {
			long level = userInfoDao.getUserLevelInfo();
			if (level == UserInfoMode.TRIAL_USER) {
				userInfoDao.setUserLevelInfo(UserInfoMode.TRIAL_OUT_OF_DATE_USER);
//				if (isOutOfTime >= 0) {
//					setUserOutOfTime();
//				}
			} else if (level == UserInfoMode.MEMBER_USER
					|| level == UserInfoMode.MEMBER_PREOPEN_USER) {
				userInfoDao.setUserLevelInfo(UserInfoMode.MEMBER_OUT_OF_DATE_USER);
//				if (isOutOfTime >= 0) {
//					setUserOutOfTime();
//				}
			} 
//			else if (level == UserInfoMode.MEMBER_OUT_OF_DATE_USER
//					|| level == UserInfoMode.TRIAL_OUT_OF_DATE_USER) {
//				if (userInfoDao.getUserIsOutOfTime() == -1) {
//					setUserOutOfTime();
//				}
//			}
		}
		userInfoDao.setUserSurplusSecond(mSurplusSecond);
	}

	private void openTrial() {
		Intent i = new Intent(this, ChargeService.class);
		i.setFlags(ChargeService.TRAIL_OPEN);
		startService(i);
	}

	@Override
	public void onCreate() {
		super.onCreate();
		mHandlerThread.start();
		handler = new MyHandler(mHandlerThread.getLooper());
		// GetOnePayRoutineStatus();
		QueryPayStatus();

		mTimer.scheduleAtFixedRate(mTimerTask, 0, HALF_AN_HOUR * 1000);

		if (userInfoDao.getTrialHasSendFlag() == 1) {
			openTrial();
		}
	}

	@Override
	public void onDestroy() {
		mHandlerThread.getLooper().quit();
		super.onDestroy();
	}

	@Override
	public IBinder onBind(Intent arg0) {
		return null;
	}
}