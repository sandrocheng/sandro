package com.tencent.onesecurity.safebox.dao;

/**
 * @ClassName: DaoConstant  
 * @Description: 私密箱DB相关常量
 * @author Joy
 * @date: 2012-11-1 下午4:40:21
 */
public interface DaoConstant {
	
	// 私密模块根目录
	public static final String SECURE_BASE_PATH = ".system";
	
	// 私密图片目录
	public static final String SECURE_TEMP_PATH = "temp";
	
	// 私密图片目录
	public static final String SECURE_PIC_PATH = "pics";
	// 临时路径	
//	public static final String SECURE_PIC_TMP = "tmp";
	// 恢复后路径
	public static final String SECURE_RECOVER_PATH = "OneSecurity";
	
	// 列名：MultiMedia
	public static final String COL_MM_ID = "_id";
	public static final String COL_MM_TYPE = "type";
	public static final String COL_MM_EXT_TYPE = "ext_type";
	public static final String COL_MM_ORIGIN_FILENAME = "origin_filename";
	public static final String COL_MM_ORIGIN_DURATION = "origin_duration";
	public static final String COL_MM_ORIGIN_CREATE_TIME = "origin_create_time";
	public static final String COL_MM_ORIGIN_PATH = "origin_path";
	public static final String COL_MM_SECURE_FILENAME = "secure_filename";
	public static final String COL_MM_THUMB = "thumb";
	public static final String COL_MM_CREATE_TIME = "create_time";
	public static final String COL_MM_UPDATE_TIME = "update_time";
	public static final String COL_MM_ORIGIN_HEAD = "origin_head";
	public static final String COL_MM_STATE = "state";
	public static final String COL_MM_ENCRYPT_FLAG = "encrypt_flag";
	public static final String COL_MM_SIZE = "media_size"; // 12.14 优化
	public static final String COL_MM_DIRECTION = "direction"; // add by joy 2013.01.07
	// 列名：Note
	public static final String COL_NT_ID = "_id";
	public static final String COL_NT_CONTENT = "content";
	public static final String COL_NT_TITLE = "title";
	public static final String COL_NT_CREATE_TIME = "create_time";
	public static final String COL_NT_UPDATE_TIME = "update_time";

	// 列名：Config
	public static final String COL_CONFIG_ID = "_id";
	public static final String COL_CONFIG_TYPE = "type";
	public static final String COL_CONFIG_CONTENT = "content";
	
	// 列名：User
	public static final String COL_USER_ID = "_id";
	public static final String COL_USER_PASSWORD = "password";
	public static final String COL_USER_QUESTION = "question";
	public static final String COL_USER_ANSWER = "answer";
	public static final String COL_USER_UPDATE_TIME = "update_time";
	public static final String COL_USER_CREATE_TIME = "create_time";
	
	// 列名：tmp_pics
	public static final String COL_TP_ID = "_id";
	public static final String COL_TP_IMG_ID = "img_id";
	public static final String COL_TP_PARENT_PATH = "parent_path";
	public static final String COL_TP_ABSOLUTE_PATH = "absolute_path";
	public static final String COL_TP_FILE_NAME = "filename";
	public static final String COL_TP_FILE_CREATE_TIME = "file_create_time";
	
	// 列名：setting
	public static final String COL_SETTING_ID = "_id";
	public static final String COL_SETTING_KEY = "skey";
	public static final String COL_SETTING_VALUE = "svalue";
	public static final String COL_SETTING_UPDATE_TIME = "update_time";
	
	public static final String SETTING_KEY_DB_VERSION = "dbversion";
	public static final String SETTING_KEY_ENCRYPT_VERSION_PIC = "encrypt_version_pic";
	public static final String SETTING_KEY_ENCRYPT_VERSION_NOTE = "encrypt_version_note";
	
	// MultiMedia->Type:媒体类型
	public static final int MEDIA_TYPE_PIC = 0;
	public static final int MEDIA_TYPE_NOTE = 1;
	public static final int MEDIA_TYPE_AUDIO = 2;
	public static final int MEDIA_TYPE_VEDIO = 3;
	
	// Config->Type
	public static final int CONFIG_TYPE_QUESTION = 1;
	public static final int CONFIG_TYPE_KEY = 2;
	public static final int CONFIG_TYPE_PWDSET_KYE = 3;// 旧密码清空标志 // 老大临时清空密码key：6001
	public static final String CONFIG_TYPE_PWDSET_VALUE = "1";
	
	// MultiMedia->State:媒体文件导入状态(0.等待；1.加密中；2.移动中；3.完成)
	public static final int MEDIA_STATE_WAIT = 0;
	public static final int MEDIA_STATE_ENCRYPTING = 1;
	public static final int MEDIA_STATE_MOVING = 2;
	public static final int MEDIA_STATE_DONE = 3;
	
	// MultiMedia->EncryptFlag:加密结果（1.成功; 0.失败）
	public static final int MEDIA_ENCRYPT_FLAG_SUC = 1;
	public static final int MEDIA_ENCRYPT_FLAG_FAL = 0;
	
//	public static final String DB_VERSION_20 = "2.0"; // 第一版
	public static final String DB_VERSION_101 = "101"; // 第二版
	public static final String DB_VERSION_CURRENT = DB_VERSION_101; // 当前版本
}
