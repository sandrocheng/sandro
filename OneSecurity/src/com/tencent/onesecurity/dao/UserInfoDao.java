package com.tencent.onesecurity.dao;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.manager.vip.VipInfomationConst;
import com.tencent.onesecurity.util.Log;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/**
 * 用户信息Dao
 * 用于存取用户级别、各种状态的时间信息等。
 * 
 * 此类并没有使用数据库，而是存储在SharedPreferences里
 * @author joycui
 *
 */
public final class UserInfoDao {
	private static UserInfoDao instance = null;

	private final String USER_INFO = "UserInfoConfigDao";
	private final String USER_LEVEL = "member_level";
	private final String MEMBER_START_TIME = "member_start_time";
	private final String MEMBER_END_TIME = "member_end_time";
	private final String SURPLUS_SECOND = "surplus_second";
	private final String USER_USED_TRIAL_FLAG = "vip_used_trial_flag";
	private final String APPLY_TRIAL_SEND_SMS_NUMBER = "send_sms_succ_number";
	private final String APPLY_TRIAL_SENT_SMS_PHONES = "send_sms_succ_phones";
	
	private final String PAYMENT_TIME = "payment_time";//支付时间
	private final String PAYMENT_STATUS = "payment_status";//处理状态
	private final String PAYMENT_PAY_MODE = "payment_pay_mode";//支付方式
	private final String MOPAY_RETURND_STATE = "mopay_returned_state";//Mopay支付时返回的状态
	private final String MOPAY_RETURND_ERROR_MSG = "mopay_returned_error_msg";//Mopay返回的状态中描述错误的信息
	private final String PAY_NEED_SHOW_DLG = "pay_need_show_dlg";
	private final String MOPAY_SHOW_UNKNOWN_MSG_FLAG = "mopay_show_unknown_msg_flag";//Mopay查询返回Unknown，是否已经显示提示
	private final String HAS_TRIAL_SUCCESS_FLAG = "has_trial_success_flag";//试用短信是否已经发送
	private final String PAY_UPGRADE_DAYS= "pay_upgrade_days";//付费成功的时间
	private final String PAY_NEED_SHOW_PAY_RESULT= "pay_need_show_pay_result";//需要显示支付成功、失败页面
	private final String USER_GET_TRIAL_FLAG = "user_get_trial_flag";//特殊情况下用户获取FREE试用是否成功
	private final String HAS_SHOW_MASKING_FLAG = "has_show_masking_flag";//判断是否需要显示VIP主页的蒙版
	

	private final String PAYMENT_OUT_OF_DATE = "payment_out_of_date";

	private static Object lock = new Object();

	private Context mContext;
	private Editor mEditor;
	private SharedPreferences mSetting;

	UserInfoDao(Context context) {
		mContext = context;
		mSetting = mContext.getSharedPreferences(USER_INFO, 0);
		mEditor = mSetting.edit();
	}

	public static UserInfoDao getInstance() {
		if (instance == null) {
			synchronized (lock) {
				if (instance == null) {
					instance = new UserInfoDao(MainApplication.getContext());
				}
			}
		}
		return instance;
	}

	public int getUserLevelInfo() {
		return mSetting.getInt(USER_LEVEL, 0);
	}

	public void setUserLevelInfo(int userInfoMod) {
		mEditor.putInt(USER_LEVEL, userInfoMod).commit();
	}
	
	public boolean getUserIsVIP() {
		int userLevel = getUserLevelInfo();
		if(((userLevel == UserInfoMode.MEMBER_USER) || (userLevel == UserInfoMode.TRIAL_USER) || (userLevel == UserInfoMode.MEMBER_PREOPEN_USER))
				&& getUserSurplusSecond() > 0) {
			return true;
		}
		return false;
	}

	public long getMemberStartTime() {
		return mSetting.getLong(MEMBER_START_TIME, -1);
	}

	public void setMemberStartTime(long time) {
		mEditor.putLong(MEMBER_START_TIME, time).commit();
	}

	public long getMemberEndTime() {
		return mSetting.getLong(MEMBER_END_TIME, -1);
	}

	public void setMemberEndTime(long time) {
		mEditor.putLong(MEMBER_END_TIME, time).commit();
	}

	public long getUserSurplusSecond() {
		return mSetting.getLong(SURPLUS_SECOND, -1);
	}

	public void setUserSurplusSecond(long surplusDay) {
		mEditor.putLong(SURPLUS_SECOND, surplusDay).commit();
	}

	public int getUserIsOutOfTime() {
		return mSetting.getInt(PAYMENT_OUT_OF_DATE, -1);
	}

	public void setUserIsOutOfTime(int isOutofTime) {
		mEditor.putInt(PAYMENT_OUT_OF_DATE, isOutofTime).commit();
	}

	public int getUsedTrialFlag() {
		return mSetting.getInt(USER_USED_TRIAL_FLAG, 0);
	}

	public void setUsedTrialFlag(int usedTrialFlag) {
		mEditor.putInt(USER_USED_TRIAL_FLAG, usedTrialFlag);
		mEditor.commit();
	}

	public int getUserApplyTrialSentSMSNumber() {
		return mSetting.getInt(APPLY_TRIAL_SEND_SMS_NUMBER, 0);
	}

	public void setUserApplyTrialSentSMSNumber(int iNumber) {
		mEditor.putInt(APPLY_TRIAL_SEND_SMS_NUMBER, iNumber);
		mEditor.commit();
	}

	public String getUserApplyTrialSentSMSPhones() {
		return mSetting.getString(APPLY_TRIAL_SENT_SMS_PHONES, "");
	}

	public void setUserApplyTrialSentSMSPhones(String phones) {
		mEditor.putString(APPLY_TRIAL_SENT_SMS_PHONES, phones);
		mEditor.commit();
	}

	public int getPaymentPayMode() {
		return mSetting.getInt(PAYMENT_PAY_MODE, VipInfomationConst.payModeNone);
	}

	public void setPaymentPayMode(int mode) {
		mEditor.putInt(PAYMENT_PAY_MODE, mode);
		mEditor.commit();
	}

	public void clearPaymentPayMode() {
		mEditor.remove(PAYMENT_PAY_MODE);
		mEditor.commit();
	}

	public int getPaymentStatus() {
		return mSetting.getInt(PAYMENT_STATUS,VipInfomationConst.paymentPayNone);
	}

	public void setPaymentStatus(int status) {
//		Log.i("QQDOCTOR", "setPaymentStatus:		status = " + Integer.toString(status));
		mEditor.putInt(PAYMENT_STATUS, status).commit();
	}

	public void clearPaymentStatus() {
		mEditor.remove(PAYMENT_STATUS);
		mEditor.commit();
	}
	public long getUpgradeDays() {
		return mSetting.getLong(PAY_UPGRADE_DAYS, 0);
	}
	public void setUpgradeDays(long days) {
		mEditor.putLong(PAY_UPGRADE_DAYS, days).commit();
	}
	public void clearUpgradeDays() {
		mEditor.remove(PAY_UPGRADE_DAYS).commit();
	}
	public boolean getNeedToShowPayResult() {
		return mSetting.getBoolean(PAY_NEED_SHOW_PAY_RESULT, false);
	}
	public void setNeedToShowPayResult(boolean days) {
		mEditor.putBoolean(PAY_NEED_SHOW_PAY_RESULT, days).commit();
	}

	public String getUserPaymentTime() {
		return mSetting.getString(PAYMENT_TIME, "");
	}

	public void setUserPaymentTime(String paymentTime) {
		mEditor.putString(PAYMENT_TIME, paymentTime).commit();
	}

	public void clearUserPaymentTime() {
		mEditor.remove(PAYMENT_TIME);
		mEditor.commit();
	}
	
	public int getMopayReturnedState() {
		return mSetting.getInt(MOPAY_RETURND_STATE, VipInfomationConst.MopayStateNone);
	}
	
	public void setMopayReturnedState(int state) {
		mEditor.putInt(MOPAY_RETURND_STATE, state).commit();
	}
	
	public void clearMopayReturnedState() {
		mEditor.remove(MOPAY_RETURND_STATE).commit();
	}
	
	public String getMopayReturnedErrorMsg() {
		return mSetting.getString(MOPAY_RETURND_ERROR_MSG, "");
	}
	
	public void setMopayReturnedErrorMsg(String msg) {
		mEditor.putString(MOPAY_RETURND_ERROR_MSG, msg).commit();
	}
	
	public void clearMopayReturnedErrorMsg() {
		mEditor.remove(MOPAY_RETURND_ERROR_MSG).commit();
	}
	
	public boolean getNeedToShowDlgFlag() {
		return mSetting.getBoolean(PAY_NEED_SHOW_DLG, false);
	}
	
	public void setNeedToShowDlgFlag(boolean msg) {
		mEditor.putBoolean(PAY_NEED_SHOW_DLG, msg).commit();
	}
	
	public void clearNeedToShowDlgFlag() {
		mEditor.remove(PAY_NEED_SHOW_DLG).commit();
	}
	
	public void clearAllPayInformation() {
		Log.i("QQDOCTOR", "clearAllPayInformation");
		clearPaymentPayMode();
		clearPaymentStatus();
		clearUserPaymentTime();
		clearMopayReturnedErrorMsg();
		clearMopayReturnedState();
		clearNeedToShowDlgFlag();
		clearUpgradeDays();
		clearMopayShowUnknownMsgFlag();
	}
	
	public int getTrialHasSendFlag() {
        return mSetting.getInt(HAS_TRIAL_SUCCESS_FLAG, 0);
    }
    
    public void setTrialHasSendFlag(int flag) {
        mEditor.putInt(HAS_TRIAL_SUCCESS_FLAG, flag).commit();
    }
    
    public void clearTrialHasSendFlag() {
        mEditor.remove(HAS_TRIAL_SUCCESS_FLAG).commit();
    }
    
    
    public int getUserGetFreeTrialFlag() {
        return mSetting.getInt(USER_GET_TRIAL_FLAG, -1);
    }
    
    public void setUserGetFreeTrialFlag(int flag) {
        mEditor.putInt(USER_GET_TRIAL_FLAG, flag).commit();
    }
    
    public void clearUserGetFreeTrialFlag() {
        mEditor.remove(USER_GET_TRIAL_FLAG).commit();
    }
    
    public boolean getMopayShowUnknownMsgFlag() {
        return mSetting.getBoolean(MOPAY_SHOW_UNKNOWN_MSG_FLAG, false);
    }
    
    public void setMopayShowUnknownMsgFlag(boolean flag) {
        mEditor.putBoolean(MOPAY_SHOW_UNKNOWN_MSG_FLAG, flag).commit();
    }
    
    public void clearMopayShowUnknownMsgFlag() {
        mEditor.remove(MOPAY_SHOW_UNKNOWN_MSG_FLAG).commit();
    }

	public boolean getHasShowMaskingFlag() {
		return mSetting.getBoolean(HAS_SHOW_MASKING_FLAG, false);
	}

	public void setHasShowMaskingFlag(boolean bFlag) {
		mEditor.putBoolean(HAS_SHOW_MASKING_FLAG, bFlag).commit();
	}
}
