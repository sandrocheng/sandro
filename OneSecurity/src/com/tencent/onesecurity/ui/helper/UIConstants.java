package com.tencent.onesecurity.ui.helper;

/**
 * 
* @ClassName: UIConstants
* @Description:ui中使用的常量类
* @author: Sandro
* @date: 2012-10-29 下午01:49:31
*
 */
public class UIConstants {
	
	// 非英文字母的索引(通讯录索引用)
	public final static String INDEX_NOT_LETTERS = "#";
	public final static String INDEX_NOT_LETTERS_STAR = "*";
    ///////////////////////////////////////////////////////
	//用于在vip zone复用一个界面使用
	public final static String VIP_ZONE_IDENTITY = "VIP_ZONE_IDENTITY";
	public final static int VIP_ZONE_IDENTITY_NORMAL_USER_TRIAL_EXPIRED = 0;
	public final static int VIP_ZONE_IDENTITY_NORMAL_USER_NOT_TRIAL_EXPIRED = 1;
	public final static int VIP_ZONE_IDENTITY_NORMAL_USER_VIP = 0;
    //////////////////////////////////////////////////////
	//消息中心点击一条消息，用于把URL传递到下一个Activity中去
	public final static String NOTICE_CENTER_LIST_ITEM_URL = "NOTICE_CENTER_LIST_ITEM_URL";
	
	//消息中心下发一条新消息广播使用
	/*--josh fix bug NO 9560131----20121126-------Start-*/
	public final static String NOTICE_CENTER_NEW_MESSAGE_ACTION = "android.intent.action.NEW_NOTICE_MESSAGES";
	/*--josh fix bug NO 9560131----20121126-------End-*/
	
	///////////////////////////////////////////////////////
	//MainActivity中三个子view的索引序号
	/**
	 * 加速子view索引号
	 */
	public final static int BOOSTER_VIEW_INDEX = 0;
	/**
	 * 杀毒子view索引号
	 */
	public final static int ANTIVIRUS_VIEW_INDEX = 1;
	/**
	 * 私密箱索引号
	 */
	public final static int VAULT_VIEW_INDEX = 2;
	//////////////////////////////////////////////////////
	// 扫毒
	/**
	 * 全面扫毒结果
	 */
	public final static String VIRUS_FULL_SCAN_RESULT_KEY = "VIRUS_FULL_SCAN_RESULT_KEY";
	/**
	 * 病毒已清除标识
	 */
	public static final int CONST_CLEANED_VIRUS_FLG = -10;
	/**
	 * 扫毒结果安全
	 */
	public static final int CONST_SCAN_RESULT_SAFE = 0;
	/**
	 * 扫毒结果不安全
	 */
	public static final int CONST_SCAN_RESULT_UNSAFE = 1;
	
	/**
	 * 病毒监控 Intent 参数 Key:软件名
	 */
	public final static String VIRUS_MONITOR_SOFTNAME_INTENT_KEY = "VIRUS_MONITOR_SOFTNAME_INTENT_KEY";
	
	/**
	 * 病毒监控 Intent 参数 Key:描述
	 */
	public final static String VIRUS_MONITOR_DESC_INTENT_KEY = "VIRUS_MONITOR_DESC_INTENT_KEY";
	
	/**
	 * 病毒监控 Intent 参数 Key:包名
	 */
	public final static String VIRUS_MONITOR_PKGNAME_INTENT_KEY = "VIRUS_MONITOR_PKGNAME_INTENT_KEY";
	
	/**
	 * 病毒监控 Intent 参数 Key:病毒类型, 请参考 QScanConstants.TYPE_UNKNOWN ~ QScanConstants.TYPE_VIRUS
	 */
	public final static String VIRUS_MONITOR_TYPE_INTENT_KEY = "VIRUS_MONITOR_TYPE_INTENT_KEY";
	/**
	 * 病毒监控 Intent 参数 Key:是否 包含病毒
	 */
	public final static String VIRUS_MONITOR_IS_VIRUS_KEY = "VIRUS_MONITOR_IS_VIRUS_KEY";

	/**
	 * 病毒监控 Intent 参数 Key:隐私信息
	 */
	public final static String VIRUS_MONITOR_PRIVACY_IDS_KEY = "VIRUS_MONITOR_PRIVACY_IDS_KEY";
	/**
	 * 病毒监控 Intent 参数 Key:参数集合
	 */
	public final static String VIRUS_MONITOR_RESULT_INTENT_KEY = "VIRUS_MONITOR_RESULT_INTENT_KEY";
	
	//////////////////////////////////////////////////////
	/**
     * Update Version和提示语分隔符，用于分成List显示
     */
    public static final String UPDATE_VERSION_SPLIT = "#";
	/**
     * Update 提示语分隔符，用于分成List显示
     */
    public static final String UPDATE_TIP_SPLIT = ";";
    /**
     * ScanResultModel trustFlg = 0;	// 0: 未加入白名单 1：已加入白名单 2：用户刚加入白名单，用于处理UI状态
     */
    public static final int VIRUS_DONOT_ADDED_WHITE_LIST = 0 ;
    public static final int VIRUS_ALREADY_ADDED_WHITE_LIST = 1 ;
    public static final int VIRUS_JUST_ADDED_WHITE_LIST = 2 ;
	/** 本地扫描 */
	public static final int C_NATIVE = 1;
	/** SD卡扫描 */
	public static final int C_SD = 2;
	/** 本地+SD */
	public static final int C_NA_SD = 3;
	/** 本地+cloud */
	public static final int C_NA_CLOUD = 4;
	/** SD+cloud */
	public static final int C_SD_CLOUD = 5;
	/** 全盘 */
	public static final int C_FULL = 6;
}
