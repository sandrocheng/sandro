package com.tencent.onesecurity.dao;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.util.PackageUtil;
import com.tencent.onesecurity.util.ScreenUtil;

/**
 * 
 * @ClassName: ConfigDao
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: lee
 * @date: 2012-10-15 上午09:52:54
 * 
 */
public class ConfigDao {

	private static ConfigDao instance = null;

	private final String SETTING_INFOS = "SettingInfo";

	private Context mContext = null;

	private SharedPreferences setting;

	private Editor editor;
	
	/** 随机生成的IMEI */
	private final String RANDOM_IMEI = "random_imei";
	/** 病毒库是否为最新 */
	private final String VIRUS_LIB_LATEST_STATE = "virus_lib_latest_state";
	/** 记录病毒库过期弹出框弹出时间 */
	private final String VIRUS_LIB_DIALOG_TIME = "virus_lib_dialog_time";
	/** 扫毒取消 */
	private final String VIRUS_SCAN_CANCEL_STATE = "virus_scan_cancel_state";
	/** feature上报时间 */
	private final String REPORT_USAGE_INFO_TIME = "report_usage_info_time";
	/** 是否上报过渠道 */
	private final String REGISTERED_IN_SERVER = "registered_in_server";
	/** 小火箭声音开关 */
	private final String ROCKET_SOUND_OPEN = "rocket_sound_open";
	/** 桌面助手开关 */
	private final String DESK_ASSIS_WINDOW = "desk_assis_window";
	/** 是否显示顶部通知栏 */
	private final String SERVICE_ICON_SHOW = "service_icon_show";
	/** 是否开启云查杀 */
	private final String AUTO_CLOUD_SCAN = "auto_cloud_scan";
	/** 用户操作列表 */
	private final String TS_USEROPERATED_APP_LIST = "ts_useroperated_app_list";
	/** 上次优化时间 */
	private final String TS_LAST_BOOSTED_TIME = "ts_last_boosted_time";
	/** 上次扫毒时间 */
	private final String TS_LAST_SCAN_TIME = "ts_last_scan_time";
	/**最近一次提醒的时间是多少天 10,15,20,30*/
	private final String REMIND_SCAN_VIRUS_OUT_OF_DAYS = "remind_scan_virus_out_of_days";
	/** 是否开启服务包括CALL SMS 拦截，病毒监控 */
	private final String OPEN_STATUS = "OpenStatus";
	/** 设置显示铃声 0 无声，1铃声，2震动 */
	private final String SECURE_CALL_NOTICE_MODE_NORMAL = "secure_call_notice_mode_normal";
	/** 拒绝来电短信回复 */
	private final String AFTER_SECURE_BLOCKING_REPLY_SMS = "after_secure_blocking_reply_sms";
	/** alerts for calls disconnected 挂断提示 0:无提醒 1：响一声 2：通知栏提醒 3：通知栏+响一声 */
	private final String SECURE_CALL_NOTICE_MODE_BLOCK = "secure_call_notice_mode_block";
	/** 私密空间对来电的处理 0： 接听 1：拦截 2: 拦截，并回复短信 */
	private final String SECURE_CALL_MODE = "secure_call_mode";
	/** 私密空间来电未接听是否启动通知栏提醒 */
	private final String PRIVATE_SPACE_CALL_NOTIFICATION = "private_space_call_notification";
	/** 显示私密短信的提醒 0 没提示 1 通知栏提示 2 铃声提示 3 通知栏 + 铃声提示 4 振动 5 通知栏 + 振动 */
	private final String SECURE_ATTENTION_MODE = "secure_attention_mode";
	/** 私密短信通知栏提醒TIPS */
	private final String SECURE_SMS_NOTICE_TITLE = "secure_message_title";
	/** 私密短信通知栏提醒内容 you have a new message ... */
	private final String SECURE_SMS_NOTICE_BODY = "secure_message_content";
	/***/
	private final String UPDATE_SURPLUS_SECOND = "update_surplus_second" ;

	private final String SECURE_SPACE_PASSWORD_DETAIL_TIME = "secure_space_password_detail_time";
	private final String PRIVATE_SPACE_PASSWORD = "private_space_password";
	private final String PRIVATE_SPACE_PASSWORD_ANSWER = "private_space_password_answer";
	private final String PRIVATE_SPACE_PASSWORD_ANSWER_ID = "private_space_password_answer_id";
	private final String SECURE_CONTACT_INPUT_TIMES = "secure_contact_input_times";
	private final String SECURE_CONTACT_INPUT_DATE = "secure_contact_input_date";
	private final String SECURE_CONTACT_INPUT_PASSWORD_TIMES = "secure_contact_input_password_times";
	private final String SECURE_CONTACT_INPUT_PASSWORD_DATE = "secure_contact_input_password_date";
	// 私密虚假界面设置
	private final String PRIVATE_SPACE_NAME = "private_space_name";
//	private final String PRIVATE_SPACE_ICON = "private_space_icon";
	private final String PRIVATE_SPACE_FAKE_TIPS = "private_space_fake_tips";
	private final String PRIVATE_SPACE_FAKE_TIPS_text = "private_space_fake_tips_text";
	private final String PRIVATE_SPACE_FAKE_PASSWORD = "private_space_fake_password";
//	private final String PRIVATE_QUICK_ENTRY_DISPLAY_INFO = "private_quick_entry_display_info";
//	private final String FIRST_SECURE_FAKE_TIPS = "first_secure_fake_tips";
	
	
	// 新消息已读标识（Menu）
	private final String HAS_UNREAD_MSG_FLG = "has_unread_msg_flg";
	
	// 新消息数量（新来的消息个数）
	private final String NEW_MSG_NUM = "new_msg_num";
	
	// 桌面助手
	private static final String DESK_ASSISTANCE_POSITION_X = "desk_assistance_position_x";
	private static final String DESK_ASSISTANCE_POSITION_Y = "desk_assistance_position_y";
	private static final String DESK_ASSISTANCE_RAM_USEAGE_WARNING_PERCENTAGE = "desk_assistance_ram_useage_warning_percentage";
	public static int KDefaultDeskAssistanceRamUseageWarningPercentage = 85; // 新逻辑 桌面浮窗内存阀值的默认值
	private final String IS_NEED_UPDATE_DATA = "is_need_update_data";
	
	// Update
	/**
	 *  升级前版本号，用于判断是否显示New标志
	 *  如为0，则表示无更新
	 *  如与当前版本号不同，则表示已经更新完毕
	 *  如与当前版本号相同，则表示需要更新，还未更新
	 */
	private static final String VERSION_BEFORE_UPDATE = "version_before_update";
	private static final String LAST_CHECK_UPDATE_TIMESTAMP = "last_check_update_timestamp";
	
	/** 用户安装次数 */
	private static final String USER_INSTALL_COUNT = "user_install_count";
	/** 推广商ID */
	private static final String PROMOTION_ID = "promotion_id";
	/** 安装上报是否成功 */
	private static final String INSTALL_REPORTED = "install_reported";
	/** 是否打开首页用户教育动画 */
    private static final String OPEN_HOMEPAGE_ANIM = "open_homepage_anim";
    /** 是否同意过用户协议 */
    private static final String LICENSE_AGREED = "license_agreed";
	
    /** booster画面动画是否已经播放过*/
    private static final String BOOSTER_ANIM_SHOWN = "booster_anim_shown";
    /** booster画面动画是否已经播放过*/
    private static final String VAULT_ANIM_SHOWN = "vault_anim_shown";
    /**私密图片提示，仅提示一次标志*/
    private static final String SAFEBOX_IS_NOTICE = "safebox_is_notice";
    /**私密拍照提示，仅提示一次标志*/
    private static final String SAFEBOX_TAKE_PHOTO_AUTO_SAVE = "safebox_take_photo_auto_save";
    /** 是否显示私密用户引导*/
    private static final String SAFEBOX_ALREADY_SHOW_SECRET_GUID = "safebox_is_show_secret_guid"	;
    
    /** 拍照路径*/
    private static final String SAFEBOX_TAKE_PHOTO_ISKILLED = "safebox_take_photo_iskilled";
    /** 分享后刷新*/
    private static final String IMPORT_IMAGE_BY_SHARE = "safebox_import_img_by_share";
    /** 上次上报时间 */
    private static final String DATA_REPORT_TIME = "data_report_time";
    
    /** 加速后的省电模式 */
    private static final String SAVE_POWER_MODE = "save_power_mode";
    /** 加速前的用户模式 */
    private static final String USER_POWER_MODE = "user_power_mode";
    
    
    private static final String HAVE_PLAY_BOOSTER_SPLASH ="have_play_booster_splash";
    
    /** 是否取得了Root权限  */
	private static final String ROOT_RERMISSION = "root_permission";
	/**
	 * 用户选择的自定义查杀类型
	 */
	private static final String CUSTOM_SCAN_TYPE = "custom_scan_type" ;

	/**
	 * 
	 */
	private static final String VIRUS_FIRST_TIME_AUTO_SCAN_FLG = "virus_auto_scan_flg" ;

	
    /** 是否打开杀毒界面滚动广告 */
    private static final String OPEN_ROLLING_NEWS = "open_rolling_news";
	
	/**是否加载过*/
	private static final String KEY_HAS_LOAD_SHORT_CUT_WIDGET = "KEY_HAS_LOAD_SHORT_CUT_WIDGET";

	
	private static final String KEY_SHORT_CUT_WIDGET_STATUS="KEY_SHORT_CUT_WIDGET_STATUS";
	private static final String KEY_SHORT_CUT_WIDGET_MARKS="KEY_SHORT_CUT_WIDGET_MARKS";
	
	
	private ConfigDao(Context context) {
		mContext = context;
		setting = mContext.getSharedPreferences(SETTING_INFOS, 0);
		editor = setting.edit();
	}

	// 使用单例模式
	public static ConfigDao getInstance() {
		if (instance == null) {
			synchronized (ConfigDao.class) {
				if (instance == null) {
					instance = new ConfigDao(MainApplication.getContext());
				}
			}
		}
		return instance;
	}

	// ///////////////////////////////////////////////////////////////////
	
	public long getVirusLibDialogShowTime() {
		return setting.getLong(VIRUS_LIB_DIALOG_TIME, 0);
	}
	
	public void setVirusLibDialogShowTimelong(long lastTime) {
		editor.putLong(VIRUS_LIB_DIALOG_TIME, lastTime).commit();
	}
    public boolean isRollingNewsOpen() {
    	return setting.getBoolean(OPEN_ROLLING_NEWS,true);
    }
    
    public void setRollingNewsOpen(boolean isopen) {
    	editor.putBoolean(OPEN_ROLLING_NEWS, isopen).commit();
    }
	
	public void setFirstAutoScanFlg(boolean isScaned) {
		editor.putBoolean(VIRUS_FIRST_TIME_AUTO_SCAN_FLG, isScaned).commit();
	}

	public boolean getFirstAutoScanFlg() {
		return setting.getBoolean(VIRUS_FIRST_TIME_AUTO_SCAN_FLG, false);
	}
	/**
	 * 设置的自定义查杀类型
	 */
	public void setCustomScanType(int scanType) {
		editor.putInt(CUSTOM_SCAN_TYPE, scanType).commit();
	}

	/**
	 * 获取用户选择的自定义查杀类型
	 * 
	 * @return UIconstants
	 */
	public int getCustomScanType() {
		return setting.getInt(CUSTOM_SCAN_TYPE, -1);
	}
	/**
	 * 控制消息的new标识  设置
	 */
	public void setHasUnreadMsgFlg(boolean hasUnread) {
		editor.putBoolean(HAS_UNREAD_MSG_FLG, hasUnread).commit();
	}
	
	/**
	 * 控制消息的new标识  获得
	 * @return
	 */
	public boolean getHasUnreadMsgFlg() {
		return setting.getBoolean(HAS_UNREAD_MSG_FLG, false);
	}
	
	/**
	 * 服务器下发新消息的数量标识 设置
	 */
	public void setNewMsgNum(int hasNewMsgNum) {
		editor.putInt(NEW_MSG_NUM, hasNewMsgNum).commit();
	}
	
	/**
	 * 服务器下发新消息的数量标识 获得
	 * @return
	 */
	public int getNewMsgNum() {
		return setting.getInt(NEW_MSG_NUM, 0);
	}
	
	public String getRandomIMEI() {
		return setting.getString(RANDOM_IMEI, "");
	}
	
	public void setRandomIMEI(String IMEI) {
		editor.putString(RANDOM_IMEI, IMEI).commit();
	}
	
	public boolean getVirusLibLatestState() {
		return setting.getBoolean(VIRUS_LIB_LATEST_STATE, false);
	}

	public void setVirusLibLatestState(boolean state) {
		editor.putBoolean(VIRUS_LIB_LATEST_STATE, state).commit();
	}
	
	public boolean getVirusScanCancelState() {
		return setting.getBoolean(VIRUS_SCAN_CANCEL_STATE, false);
	}
	
	public void setVirusScanCancelState(boolean state) {
		editor.putBoolean(VIRUS_SCAN_CANCEL_STATE, state).commit();
	}
	
	public long getReportUsageInfoTime() {
		return setting.getLong(REPORT_USAGE_INFO_TIME, 0);
	}

	public void setReportUsageInfoTime(long time) {
		editor.putLong(REPORT_USAGE_INFO_TIME, time).commit();
	}

	public void setRegisteredInServer(boolean registered) {
		editor.putBoolean(REGISTERED_IN_SERVER, registered).commit();
	}

	public boolean getRegisteredInServer() {
		return setting.getBoolean(REGISTERED_IN_SERVER, false);
	}

	public boolean isRocketSoundOpen() {
		return setting.getBoolean(ROCKET_SOUND_OPEN, true);
	}

	public void setIsRocketSoundOpen(boolean isopen) {
		editor.putBoolean(ROCKET_SOUND_OPEN, isopen).commit();
	}

	public int getDeskAssisPositionX() {
		return setting.getInt(DESK_ASSISTANCE_POSITION_X, (int) ScreenUtil.mScreenWidth);
	}

	public void setDeskAssisPositionX(int x) {
		editor.putInt(DESK_ASSISTANCE_POSITION_X, x).commit();
	}

	public int getDeskAssisPositionY() {
		return setting.getInt(DESK_ASSISTANCE_POSITION_Y, (int) (ScreenUtil.mScreenHeight / 4));
	}

	public void setDeskAssisPositionY(int y) {
		editor.putInt(DESK_ASSISTANCE_POSITION_Y, y).commit();
	}

	public boolean isNeedUpdateData() {
		return setting.getBoolean(IS_NEED_UPDATE_DATA, true);
	}

	public void setIsNeedUpdateData(boolean isNeed) {
		editor.putBoolean(IS_NEED_UPDATE_DATA, isNeed).commit();
	}

	public int getDeskAssistanceRamUseageWarningPercentage() {
		int ret = getDeskAssistanceRamUseageWarningPercentageSetting();
		if (ret < 0)
			return KDefaultDeskAssistanceRamUseageWarningPercentage;
		else
			return ret;
	}
	
	public int getDefaultDeskAssistanceRamUseageWarningPercentage() {
		return KDefaultDeskAssistanceRamUseageWarningPercentage;
	}

	public boolean needCalculateDeskAssistanceRamUseageWarningPercentage() {
		boolean ret = getDeskAssistanceRamUseageWarningPercentageSetting() < 0;
		// if (!ret)
		// editor.putInt(DESK_ASSISTANCE_RAM_USEAGE_WARNING_PERCENTAGE,
		// -1).commit();
		return ret;
	}

	private int getDeskAssistanceRamUseageWarningPercentageSetting() {
		return setting.getInt(DESK_ASSISTANCE_RAM_USEAGE_WARNING_PERCENTAGE, -1);
	}

	public void setDeskAssistanceRamUseageWarningPercentage(int percentage) {
		if (percentage > 100 || percentage < 0)
			return;
		editor.putInt(DESK_ASSISTANCE_RAM_USEAGE_WARNING_PERCENTAGE, percentage).commit();
	}

	public boolean isDeskAssisWindowOpen() {
		return setting.getBoolean(DESK_ASSIS_WINDOW, true);
	}

	public void setIsDeskAssisWindowOpen(boolean isopen) {
		editor.putBoolean(DESK_ASSIS_WINDOW, isopen).commit();
	}

	public boolean getIsServiceShowIcon() {
		return setting.getBoolean(SERVICE_ICON_SHOW, true/*
														 * AdaptManager.getCurrentAdapter
														 * ().isShowNotify()
														 */);
	}

	public void setIsServiceShowIcon(boolean enable) {
		editor.putBoolean(SERVICE_ICON_SHOW, enable).commit();
	}

	public boolean getAutoCloudScan() {
		return setting.getBoolean(AUTO_CLOUD_SCAN, true);
	}

	public void setAutoCloudScan(boolean enable) {
		editor.putBoolean(AUTO_CLOUD_SCAN, enable).commit();
	}

	public String getTSUserOperatedAppList() {
		return setting.getString(TS_USEROPERATED_APP_LIST, "");
	}

	public void setTSUserOperatedAppList(String applist) {
		editor.putString(TS_USEROPERATED_APP_LIST, applist).commit();
	}

	public long getTSLastBoostedTime() {
		return setting.getLong(TS_LAST_BOOSTED_TIME, 0);
	}

	public void setTSLastBoostedTime(long lastTime) {
		editor.putLong(TS_LAST_BOOSTED_TIME, lastTime).commit();
	}
	
	public long getTSLastScanTime() {
		return setting.getLong(TS_LAST_SCAN_TIME, 0);
	}

	public void setTSLastScanTime(long lastTime) {
		editor.putLong(TS_LAST_SCAN_TIME, lastTime).commit();
	}
	
	public boolean getOpenStatus() {
		return setting.getBoolean(OPEN_STATUS, true);
	}

	public synchronized void setOpenStatus(boolean status) {
		editor.putBoolean(OPEN_STATUS, status).commit();
		// 下面代码 刷新状态，应该是定时任务相关
		// if (status) {
		// if (getServiceOpenTime() == 0) {
		// setServiceOpenTime(System.currentTimeMillis());
		// }
		// } else {
		// resetServiceTotalOpenTime();
		// setServiceOpenTime(0);
		// }
	}

	public int getSecureSpacePassWordDetailTime() {
		return setting.getInt(SECURE_SPACE_PASSWORD_DETAIL_TIME, 120);
	}

	public void setSecureSpacePassWordDetailTime(int time) {
		editor.putInt(SECURE_SPACE_PASSWORD_DETAIL_TIME, time).commit();
	}

	public String getSecureSpacePassWord() {
		return setting.getString(PRIVATE_SPACE_PASSWORD, "");
	}

	public void setSecureSpacePassWord(String md5_pd) {
		editor.putString(PRIVATE_SPACE_PASSWORD, md5_pd).commit();
	}

	public String getSecureSpacePassWordAnswer() {
		return setting.getString(PRIVATE_SPACE_PASSWORD_ANSWER, "");
	}

	public void setSecureSpacePassWordAnswer(String md5_pd) {
		editor.putString(PRIVATE_SPACE_PASSWORD_ANSWER, md5_pd).commit();
	}
	
	public String getSecureSpacePassWordAnswerID() {//非加密模式
		return setting.getString(PRIVATE_SPACE_PASSWORD_ANSWER_ID, "");
	}

	public void setSecureSpacePassWordAnswerID(String answerID) {//非加密模式
		editor.putString(PRIVATE_SPACE_PASSWORD_ANSWER_ID, answerID).commit();
	}
	/**
	 * 取得私密空间虚假页面密码
	 * 
	 * @return
	 */
	public String getSecureSpaceFakePassWord() {
		return setting.getString(PRIVATE_SPACE_FAKE_PASSWORD, "");
	}

	/**
	 * 设置私密空间虚假界面密码
	 * 
	 * @param md5_pd
	 */
	public void setSecureSpaceFakePassWord(String md5_pd) {
		editor.putString(PRIVATE_SPACE_FAKE_PASSWORD, md5_pd).commit();
	}

	/**
	 * 取得私密空间名称
	 */
	public String getSecureSpaceName() {
//		return setting.getString(PRIVATE_SPACE_NAME, mContext.getString(R.string.privat_space));
		return "";
	}

	/**
	 *设置私密空间名称
	 * 
	 * @param name
	 */
	public void setSecureSpaceName(String name) {
		editor.putString(PRIVATE_SPACE_NAME, name).commit();
	}

	public void setSecureContactInputTimes(int times) {
		editor.putInt(SECURE_CONTACT_INPUT_TIMES, times).commit();
	}

	public int getSecureContactInputTimes() {
		return setting.getInt(SECURE_CONTACT_INPUT_TIMES, 0);
	}

	public void setSecureContactInputDate(long date) {
		editor.putLong(SECURE_CONTACT_INPUT_DATE, date).commit();
	}

	public long getSecureContactInputDate() {
		return setting.getLong(SECURE_CONTACT_INPUT_DATE, 0);
	}

	public void setSecureContactInputPasswordTimes(int times) {
		editor.putInt(SECURE_CONTACT_INPUT_PASSWORD_TIMES, times).commit();
	}

	public int getSecureContactInputPasswordTimes() {
		return setting.getInt(SECURE_CONTACT_INPUT_PASSWORD_TIMES, 0);
	}

	public void setSecureContactInputPasswordDate(long date) {
		editor.putLong(SECURE_CONTACT_INPUT_PASSWORD_DATE, date).commit();
	}

	public long getSecureContactInputPasswordDate() {
		return setting.getLong(SECURE_CONTACT_INPUT_PASSWORD_DATE, 0);
	}
	/**
	 * 取得私密空间虚假提示文字
	 * 
	 * @return
	 */
	public String getSecureSpaceFakeTipsText() {
//		return setting.getString(PRIVATE_SPACE_FAKE_TIPS_text, mContext
//				.getString(R.string.secure_space_fake_tips_text_moren));
		return "";
	}

	/**
	 * 设置私密空间虚假提示文字
	 * 
	 * @param text
	 */
	public void setSecureSpaceFakeTipsText(String text) {
		editor.putString(PRIVATE_SPACE_FAKE_TIPS_text, text).commit();
	}

	/**
	 * 取得私密空间虚假提示开关状态</br> true表示打开，false表示关闭
	 * 
	 * @return
	 */
	public boolean getSecureSpaceFakeTips() {
		return setting.getBoolean(PRIVATE_SPACE_FAKE_TIPS, false);
	}

	/**
	 * 设置私密空间虚假提示开关状态</br> 1表示打开，0表示关闭
	 * 
	 * @param tips
	 */
	public void setSecureSpaceFakeTips(boolean tips) {
		editor.putBoolean(PRIVATE_SPACE_FAKE_TIPS, tips).commit();
	}

	/**
	 * 私密空间来电未接听是否启动通知栏提醒 。
	 * 
	 * @return
	 */
	public boolean getSecureCallNotification() {
		return setting.getBoolean(PRIVATE_SPACE_CALL_NOTIFICATION, true);
	}

	/**
	 * 设置私密空间来电未接听是否启动通知栏提醒 。
	 * 
	 * @param tips
	 */
	public void setSecureCallNotification(boolean tips) {
		editor.putBoolean(PRIVATE_SPACE_CALL_NOTIFICATION, tips).commit();
	}

	public void setSecureCallNoticeModeForNormal(int mode) {
		editor.putInt(SECURE_CALL_NOTICE_MODE_NORMAL, mode).commit();
	}

	public int getSecureCallNoticeModeForNormal() {
		return setting.getInt(SECURE_CALL_NOTICE_MODE_NORMAL, 1);
	}

	public String getAfterBlockingSecureAutoReplySMS() {
//		return setting.getString(AFTER_SECURE_BLOCKING_REPLY_SMS, mContext.getResources().getString(
//				R.string.private_space_after_refuse_reply_sms));
		return "";
	}

	public void setAfterBlockingSecureAutoReplySMS(String content) {
		editor.putString(AFTER_SECURE_BLOCKING_REPLY_SMS, content).commit();
	}

	public void setSecureCallNoticeModeForBlock(int mode) {
		editor.putInt(SECURE_CALL_NOTICE_MODE_BLOCK, mode).commit();
	}

	public int getSecureCallNoticeModeForBlock() {
		return setting.getInt(SECURE_CALL_NOTICE_MODE_BLOCK, 2);
	}

	public void setSecureCalllMode(int mode) {
		editor.putInt(SECURE_CALL_MODE, mode).commit();
	}

	/**
	 * 私密空间对来电的处理 0： 接听 1：拦截 2: 拦截，并回复短信
	 * 
	 * @return
	 */
	public int getSecureCallMode() {
		return setting.getInt(SECURE_CALL_MODE, 0);
	}

	public int getSecureAttentionMode() {
		return setting.getInt(SECURE_ATTENTION_MODE, 5);
	}

	public void setSecureAttentionMode(int mode) {
		editor.putInt(SECURE_ATTENTION_MODE, mode).commit();
	}

	public String getSecureSMSNoticeBody() {
//		return setting
//				.getString(SECURE_SMS_NOTICE_BODY, mContext.getResources().getString(R.string.you_have_a_new_msg));
		return "";
	}

	public void setSecureSMSNoticeBody(String body) {
		editor.putString(SECURE_SMS_NOTICE_BODY, body).commit();
	}

	public String getSecureSMSNoticeTitle() {
//		return setting.getString(SECURE_SMS_NOTICE_TITLE, mContext.getResources().getString(R.string.tips));
		return "";
	}

	public void setSecureSMSNoticeTitle(String title) {
		editor.putString(SECURE_SMS_NOTICE_TITLE, title).commit();
	}
	
	public long getUpdateSurplusSecond() {// 精确到秒
		return setting.getLong(UPDATE_SURPLUS_SECOND, 24 * 60 * 60);
	}

	public void setUpdateSurplusSecond(long time) {
		editor.putLong(UPDATE_SURPLUS_SECOND, time).commit();
	}
	
	public long getLastCheckUpdateTime() {
	    return setting.getLong(LAST_CHECK_UPDATE_TIMESTAMP, 0l);
	}
	
	public void setLastCheckUpdateTime(long time) {
	    editor.putLong(LAST_CHECK_UPDATE_TIMESTAMP, time).commit();
    }
	
    public String getVersionBeforeUpdate() {
        return setting.getString(VERSION_BEFORE_UPDATE, "0");
    }

	public void setVersionBeforeUpdate(String currVersion) {
        editor.putString(VERSION_BEFORE_UPDATE, currVersion).commit();
    }
	
	/**
	 * 判断当前是否有更新版本
	 * @Description 
	 * @version 1.0
	 * @author LionLiu
	 */
	public boolean hasNewUpdate() {
	    String versionBefore = getVersionBeforeUpdate();
	    String versionNow = PackageUtil.getVersionName();
        return versionBefore.equals(versionNow);
	}
	
	public int getUserInstallCount() {
		return setting.getInt(USER_INSTALL_COUNT, 0);
	}
	
	public void setUserInstallCount(int count) {
	    editor.putInt(USER_INSTALL_COUNT, count).commit();
    }
	
	/////////////////////  以下参数保存在数据库中，并且可以通过服务器端配置   /////////////////////
	// 数据上报间隔
	public int getFeatureReportInterval() {
		//return Integer.parseInt(CoreConfigDao.getInstance().getValue(CoreConfigDao.DYN_FEATURE_REPORT_INTERVAL));
		return 99999;
	}
	// 数据上报监控步长
	public void getFeatureReportTimerStep() {
		
	}
	// 自动检查更新时间间隔
	public void getAutoCheckUpdateInterval() {
		
	}
	// FeedbackURL
	public void getFeedbackUrl() {
		
	}
	// 官网地址
	public void getOfficialUrl() {
		
	}
	// 官网论坛地址
	public void getForumUrl() {
		
	}
	// Facebook地址
	public void getFacebookUrl() {
		
	}
	// Twitter地址
	public void getTwitterUrl() {
		
	}
	// 会员过期监控步长
	public void getMemberTimerStep() {
		
	}
	// 小火箭刷新内存占用的时间间隔
	public void getRocketMemoryRefreshInterval() {
		
	}
	// 两次火箭发送的最小时间间隔
	public void getRocketLaunchValidInterval() {
		
	}
	// 内存警告阈值
	public void getRocketMemoryWarnValue() {
		
	}
	// 小火箭是否清除系统进程开关
	public void isClearSystemProcessWithRocket() {
		
	}
	// 小火箭是否显示系统进程数开关
	public void isIncludeSystemProcessNumbersInRocket() {
		
	}
	public int getPromotionID() {
		return setting.getInt(PROMOTION_ID, 0);
	}
	
	public void setPromotionID(int id) {
	    editor.putInt(PROMOTION_ID, id).commit();
    }	
	
	public boolean isHomepageAnimOpen() {
        return setting.getBoolean(OPEN_HOMEPAGE_ANIM, false);
    }

    public void setHomepageAnimOpen(boolean isopen) {
        editor.putBoolean(OPEN_HOMEPAGE_ANIM, isopen).commit();
    }
    
    public boolean isLicenseAgreed() {
        return setting.getBoolean(LICENSE_AGREED, false);
    }

    public void setLicenseAgreed(boolean agree) {
        editor.putBoolean(LICENSE_AGREED, agree).commit();
    }
    
	public boolean isBoosterAnimShown() {
        return setting.getBoolean(BOOSTER_ANIM_SHOWN, false);
    }

    public void setBoosterAnimShown(boolean isopen) {
        editor.putBoolean(BOOSTER_ANIM_SHOWN, isopen).commit();
    }
    
	public boolean isVaultAnimShown() {
        return setting.getBoolean(VAULT_ANIM_SHOWN, false);
    }

    public void setVaultAnimShown(boolean isopen) {
        editor.putBoolean(VAULT_ANIM_SHOWN, isopen).commit();
    }

    public boolean isInstallReported() {
        return setting.getBoolean(INSTALL_REPORTED, false);
    }
    
	public void setInstallReported(boolean bReported) {
		editor.putBoolean(INSTALL_REPORTED, bReported).commit();
	}    

	public boolean getIsSafeBoxNotice() {
		return setting.getBoolean(SAFEBOX_IS_NOTICE, false);
	}

	public void setIsSafeBoxNotice(boolean bReported) {
		editor.putBoolean(SAFEBOX_IS_NOTICE, bReported).commit();
	}
	
	public String getTakePhotoAutoState() {
		return setting.getString(SAFEBOX_TAKE_PHOTO_AUTO_SAVE, null);
	}

	public void setTakePhotoAutoState(String state) {
		editor.putString(SAFEBOX_TAKE_PHOTO_AUTO_SAVE, state).commit();
	}
	
	/**
	 * 设置是否显示过私密引导
	 * @param isShow
	 */
	public void setAlreadyShowSecretGuid(boolean isShow) {
		editor.putBoolean(SAFEBOX_ALREADY_SHOW_SECRET_GUID, isShow).commit();
	}
	
	/**
	 * 是否显示过私密引导
	 * @return
	 */
	public boolean alreadyShowSecretGuid() {
		return setting.getBoolean(SAFEBOX_ALREADY_SHOW_SECRET_GUID, false);
	}
	// 设置省电模式
	public void setSavePowerMode(boolean isSaved) {
        editor.putBoolean(SAVE_POWER_MODE, isSaved).commit();
    }
	
	// 是否进入了省电模式
    public boolean isSavePowerMode() {
        return setting.getBoolean(SAVE_POWER_MODE, false);
    }
    
    // 保存用户的各种开关的模式
 	public void setUserPowerMode(String mode) {
         editor.putString(USER_POWER_MODE, mode).commit();
     }
 	
 	// 取得用户的各种开关的模式
     public String getUserPowerMode() {
         return setting.getString(USER_POWER_MODE, null);
     }
	
 	public String getTakeFilePath() {
		return setting.getString(SAFEBOX_TAKE_PHOTO_ISKILLED, "");
	}

	public void setTakeFilePath(String path) {
		editor.putString(SAFEBOX_TAKE_PHOTO_ISKILLED, path).commit();
	}

	public void setImportImgByShareFlag(boolean bFlag) {
		editor.putBoolean(IMPORT_IMAGE_BY_SHARE, bFlag).commit();
	}

	public boolean getImportImgByShareFlag() {
		return setting.getBoolean(IMPORT_IMAGE_BY_SHARE, false);
	}

	public int getLastRemindScanDays() {
		return setting.getInt(REMIND_SCAN_VIRUS_OUT_OF_DAYS, 0);
	}
	
	/**}
	 * 设置最近一次提醒未扫描病毒天数
	 * @return
	 */
	public void setLastRemindScanDays(int days) {
		editor.putInt(REMIND_SCAN_VIRUS_OUT_OF_DAYS, days).commit();
	}
	public long getDataReportTime() {
		return setting.getLong(DATA_REPORT_TIME, 0l);
	}
	public void setDataReportTime(long time) {
		editor.putLong(DATA_REPORT_TIME, time).commit();
	}
	
	
	public boolean getHavePlayBoostSplash(){
		return setting.getBoolean(HAVE_PLAY_BOOSTER_SPLASH, false);
	}
	
	public void setHavePlayBoostSplash(boolean havePlayBoostSplash){
		editor.putBoolean(HAVE_PLAY_BOOSTER_SPLASH, havePlayBoostSplash).commit();
	}
	
	public boolean getRootPermission() {
        return setting.getBoolean(ROOT_RERMISSION, false);
    }
    
	public void setRootPermission(boolean bGotRoot) {
		editor.putBoolean(ROOT_RERMISSION, bGotRoot).commit();
	}
	
	public boolean hasLoadShortcutWidget(){
		return setting.getBoolean(KEY_HAS_LOAD_SHORT_CUT_WIDGET, false);
	} 
	
	public void setHasLoadShortcutWidget(boolean hasLoadShortcutWidget){
		editor.putBoolean(KEY_HAS_LOAD_SHORT_CUT_WIDGET, hasLoadShortcutWidget).commit();
	}
	
	public void setIconStatus(String iconStatus){
		editor.putString(KEY_SHORT_CUT_WIDGET_STATUS, iconStatus).commit();
	}
	
	public String getIconStatus(){
		return setting.getString(KEY_SHORT_CUT_WIDGET_STATUS, "");
	}
	
	public void setIconMark(String iconMark){
		editor.putString(KEY_SHORT_CUT_WIDGET_MARKS, iconMark).commit();
	}
	
	public String getIconMark(){
		return setting.getString(KEY_SHORT_CUT_WIDGET_MARKS, "");
	}
}
