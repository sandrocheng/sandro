package com.tencent.onesecurity.dao;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.StreamCorruptedException;
import java.util.HashMap;

import android.content.ContentValues;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.os.Environment;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.tccdb.TccCryptor;

/**
 * 加密的参数访问DAO
 * @ClassName: CoreConfigDao
 * @Description:保存了一些系统级别的参数，这些参数通过加密保存到数据库中
 * @author: Jess
 * @date: 2012-10-30 上午09:52:54
 * 
 */
public class CoreConfigDao {
	/** 表名：CoreConfig*/
	public static final String TB_CORE_CONFIG = "t_smart_config";
	
	public static final String COLUMN_CONFIG_MAP = "CONFIG_MAP";
	
	/** 1. 数据上报的时间间隔。默认值：24小时*/
	public static final String FEATURE_REPORT_INTERVAL = "FEATURE_REPORT_INTERVAL";	
	/** 2. 软件版本自动检查的时间间隔。默认值24小时 */
	public static final String SOFTWARE_AUTO_CHECK_INTERVAL = "SOFTWARE_AUTO_CHECK_INTERVAL";
	/** 3. 病毒库自动检测时间间隔。默认值48小时 */
	public static final String AUTO_VIRUS_BASE_CHECK_INTERVAL = "AUTO_VIRUS_BASE_CHECK_INTERVAL";
	/** 4. Mopay支付过程中定时从服务器请求的时间间隔。默认值10分钟 */
	public static final String MOPAY_GET_RESULT_INTERVAL = "MOPAY_GET_RESULT_INTERVAL";
	/** 5. Mopay收到Inprogress的时候，定时的时间（定时到后，向后台上报Inprogress状态）默认值：1分钟 */
	public static final String MOPAY_REPORT_INPROGRESS_TIME = "MOPAY_REPORT_INPROGRESS_TIME";
	/** 6.1. Feedback链接地址 */
	public static final String FEEDBACK_URL = "FEEDBACK_URL";
	/** 6.2. 官网地址 */
	public static final String OFFICIAL_SITE_URL = "OFFICIAL_SITE_URL";
	/** 6.3. 论坛地址 */
	public static final String FORUM_SITE_URL = "FORUM_SITE_URL";
	/** 6.4. Facebook地址*/
	public static final String FACEBOOK_SITE_URL = "FACEBOOK_SITE_URL";
	/** 6.5. twitter地址*/
	public static final String TWITTER_SITE_URL = "TWITTER_SITE_URL";	
	/** 7.桌面火箭 更新内存间隔时间 默认值：1秒*/
	public static final String ROCKET_TIP_REFRESH_INTERVAL = "ROCKET_TIP_REFRESH_INTERVAL";	
	/** 8.	桌面火箭-两次加速需要间隔 默认值：30秒*/
	public static final String ROCKET_VALID_LAUNCH_INTERVAL = "ROCKET_VALID_LAUNCH_INTERVAL";
	/** 9.	内存报警（红字）的阀值 默认值：85*/
	public static final String ROCKET_MEMORY_WARN_VALUE = "ROCKET_MEMORY_WARN_VALUE";
	/** 10.	桌面火箭--加速开关 默认值：开*/
	public static final String ROCKET_IS_CLEAR_SYSTEM_PROCESS = "ROCKET_IS_CLEAR_SYSTEM_PROCESS";
	/** 11.	桌面火箭--显示进程数开关 默认值：开*/
	public static final String ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS = "ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS";
	/** 12. 计划任务的检查任务到期的时钟频率 。默认值：1小时。*/
	public static final String SCHEDULE_TASK_TIMER_STEP = "SCHEDULE_TASK_TIMER_STEP";
	/** 13.	后台数据拉取的时间间隔。默认值：24小时 */
	public static final String PULL_SERVER_DATA_INTERVAL = "PULL_SERVER_DATA_INTERVAL";
	
	private static final int SECOND = 1000;
	private static final int MINUTE = 60 * SECOND;
	private static final int HOUR = 60 * MINUTE;
	
	/** 单例对象 */
	private static CoreConfigDao instance = null;
	private HashMap<String, String> configCache = null;
	private HashMap<String, String> defaultConfigCache = null;
	
	/**
	 * 获得单例的DynamicConfigManager对象
	 * 
	 * @return
	 */
    public static CoreConfigDao getInstance() {
        if (instance == null) {
            synchronized (CoreConfigDao.class) {
                if (instance == null) {
                    instance = new CoreConfigDao();
                }
            }
        }
        return instance;
    }
    
    /**
     * 构造方法
     */
	private CoreConfigDao() {
		initConfig();
	}
	
	/**
	 * 初始化
	 */
	private void initConfig() {
		
		// 从数据库中获得最新配置
		configCache = getConfigInfo();
		
		// 数据库中不存在，则从smart.dat中获得，并将数据保存到数据库中
		if (configCache == null || configCache.size() == 0) {
			configCache = getDefaultValues();
			
			// 保存到数据库
			saveConfigInfo(configCache);
		}
	}
	
	/**
	 * 根据key获得参数
	 * @param key
	 * @return
	 */
	private String getValue(String key) {
		String value = null;
		value = configCache.get(key);
		
		// 如果发生意外没取出来，从默认值里取。
		if (value == null || "".equals(value)) {
			value = getDefaultValue(key);
		}
		return value;
	}
	
	public boolean getBooleanValue(String key) {
		boolean ret = true;
		String retStr = getValue(key);
		if ("0".equals(retStr)) ret = false;
		
		return ret;
	}
	public long getLongValue(String key) {
		long ret = -1;
		String retStr = getValue(key);
		try {
			ret = Long.parseLong(retStr, 10);
		} catch(Exception e) {
			e.printStackTrace();
			Log.e("CORE_CONFIG_DAO", "Get smart config fail. key:" + key);
		}
		
		return ret;
	}
	public String getStringValue(String key) {
		String ret = null;
		ret = getValue(key);
		return ret;
	}
	public float getFloatValue(String key) {
		float ret = -1.0f;
		String retStr = getValue(key);
		try {
			ret = Float.parseFloat(retStr);	
		} catch(Exception e) {
			e.printStackTrace();
			Log.e("CORE_CONFIG_DAO", "Get smart config fail. key:" + key);
		}
		return ret;
	}
	
	/**
	 * 修改参数到内存和DB
	 * @param key
	 * @param value
	 * @param isUpdateDB	是否更新DB
	 */
	public void setValue(String key, String value, boolean isUpdateDB) {
		
		configCache.put(key, value);
		
		if (isUpdateDB) {
			
			// 保存hashmap2DB
			saveConfigInfo(configCache);	
		}
	}
	
	/**
	 * 提交Cache数据到DB
	 */
	public void commitData() {

		// 保存hashmap2DB
		saveConfigInfo(configCache);
	}
	
	public boolean checkData(String key, String value) {
		boolean ret = false;
		try {

			if (key.equals(FEATURE_REPORT_INTERVAL)) {
				long reportInterval = Long.parseLong(value);
				
				// 数据上报时间最小为1小时
				if (reportInterval < 1 * HOUR) {
					ret = false;
				} else {
					ret = true;
				}
				
			} else if (key.equals(SOFTWARE_AUTO_CHECK_INTERVAL)) {
				long versionCheckInterval = Long.parseLong(value);
				
				// 病毒库自动检查间隔时间为1小时
				if (versionCheckInterval < 1 * HOUR) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(AUTO_VIRUS_BASE_CHECK_INTERVAL)) {
				long checkVirusBaseInterval = Long.parseLong(value);
				
				// 病毒库自动检查间隔时间为1小时
				if (checkVirusBaseInterval < 1 * HOUR) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(MOPAY_GET_RESULT_INTERVAL)) {
				long mopayGetResult = Long.parseLong(value);
				
				// Mopay支付过程中定时从服务器请求的时间间隔，最小为10分钟
				if (mopayGetResult < 10 * MINUTE) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(MOPAY_REPORT_INPROGRESS_TIME)) {

				long mopayGetResult = Long.parseLong(value);
				
				// Mopay收到Inprogress的时候，定时的时间（定时到后，向后台上报Inprogress状态）,最小为 30s
				if (mopayGetResult < 30 * SECOND) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(FEEDBACK_URL)) {

				// url 不为null
				if (value == null || "".equals(value)) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(OFFICIAL_SITE_URL)) {

				// url 不为null
				if (value == null || "".equals(value)) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(FORUM_SITE_URL)) {

				// url 不为null
				if (value == null || "".equals(value)) {
					ret = false;
				} else {
					ret = true;
				}
				
			} else if (key.equals(FACEBOOK_SITE_URL)) {

				// url 不为null
				if (value == null || "".equals(value)) {
					ret = false;
				} else {
					ret = true;
				}
				
			} else if (key.equals(TWITTER_SITE_URL)) {

				// url 不为null
				if (value == null || "".equals(value)) {
					ret = false;
				} else {
					ret = true;
				}
				
			} else if (key.equals(ROCKET_TIP_REFRESH_INTERVAL)) {
				long rocketRefreshInterval = Long.parseLong(value);
				
				// 火箭刷新内存间隔时间间隔，最小为1s
				if (rocketRefreshInterval < 1 * SECOND) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(ROCKET_VALID_LAUNCH_INTERVAL)) {

				long rocketValidLaunchInterval = Long.parseLong(value);
				
				// 两次使用火箭的时间间隔，10s
				if (rocketValidLaunchInterval < 10 * SECOND) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(ROCKET_MEMORY_WARN_VALUE)) {
				long memoryWarnValue = Long.parseLong(value);
				
				// 两次使用火箭的时间间隔，10s
				if (memoryWarnValue < 50 || memoryWarnValue > 100) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(ROCKET_IS_CLEAR_SYSTEM_PROCESS)) {
				// 试图转换，成功便通过
				Boolean.parseBoolean(value);
				ret = true;
			} else if (key.equals(ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS)) {
				// 试图转换，成功便通过
				Boolean.parseBoolean(value);
				ret = true;
			} else if (key.equals(SCHEDULE_TASK_TIMER_STEP)) {

				long timerStep = Long.parseLong(value);
				
				// 后台定时服务检查任务的时间间隔，1小时
				if (timerStep < 1 * HOUR) {
					ret = false;
				} else {
					ret = true;
				}
			} else if (key.equals(PULL_SERVER_DATA_INTERVAL)) {

				long pullDateInterval = Long.parseLong(value);
				
				// 后台定时服务检查任务的时间间隔，1小时
				if (pullDateInterval < 1 * HOUR) {
					ret = false;
				} else {
					ret = true;
				}
			}
		} catch (Exception e) {
			Log.e("SMART_CONFIG", "Wrong config info. key:" + key + "  value:" + value);
			ret = false;
		}
		
		return ret;
	}
	
	/**
	 * 从本地获得Config信息
	 * @param dcDao
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private HashMap<String, String> getConfigInfo() {
		
		HashMap<String, String> ret = null;

		byte[] data = null;
		data = getConfigDataFromDB();
		if (data == null) return ret;
		
		// 解密
		byte[] rawData = TccCryptor.decrypt(MainApplication.getContext(), data, null);
		if (rawData == null) return ret;
		
		// 反序列化
		ret = (HashMap<String, String>) convertBytes2Obj(rawData);
		
		return ret;
	}
	
	/**
	 * 从数据库中获得数据
	 * @return
	 */
	private byte[] getConfigDataFromDB() {
		byte[] data = null;
		DBHelper dbHelper = DBHelper.getInstance();
		Cursor cursor = null;
		try{
			cursor = dbHelper.query("SELECT " + COLUMN_CONFIG_MAP + " FROM " + CoreConfigDao.TB_CORE_CONFIG);
			if (cursor != null && cursor.moveToFirst()) {
				data = cursor.getBlob(cursor.getColumnIndex(COLUMN_CONFIG_MAP));
			}
		}catch (Exception e) {
			e.printStackTrace();
			return data;
		} finally{// modify by lynnawang 关闭cursor
			if(cursor!=null){
				cursor.close();
			}				
		}
		
		return data;
	}
	
	/**
	 * 保存config信息到本地
	 * @param dcDao
	 * @param configTxt
	 */
	private void saveConfigInfo(HashMap<String, String> configMap) {
		if (configMap == null) return;
		
		// 序列化对象
		byte[] rawData = this.convertObj2Bytes(configMap);
		
		// 序列化结果加密
		byte[] encryptData = TccCryptor.encrypt(MainApplication.getContext(), rawData, null);
		
		if (encryptData == null) return;
		
		// 保存到数据库
		DBHelper dbHelper = DBHelper.getInstance();
		dbHelper.delete(CoreConfigDao.TB_CORE_CONFIG, null, null);
		ContentValues values = new ContentValues();
		values.put(COLUMN_CONFIG_MAP, encryptData);
		
		dbHelper.insert(CoreConfigDao.TB_CORE_CONFIG, values);
	}
	
	/**
	 * 根据名字获得默认值
	 * @param name
	 */
	private String getDefaultValue(String name) {
		String ret = null;
		
		// 创建默认值Cache
		if (defaultConfigCache == null || defaultConfigCache.size() == 0) {
			defaultConfigCache = getDefaultValues();
		}
		if (defaultConfigCache != null) {
			ret = defaultConfigCache.get(name);
		}
		
		return ret;
	}
	
	/**
	 * 获得默认值
	 * @return
	 */
	@SuppressWarnings("unchecked")
	private HashMap<String, String> getDefaultValues() {
		final int BUFFER_SIZE = 1024;
		
		// 返回结果
		HashMap<String, String> values = null;
		InputStream is = null;
		ByteArrayOutputStream out = null;
		byte[] buffer = new byte[BUFFER_SIZE];
		byte[] data = null; 
		try {
			AssetManager assetManager = MainApplication.getContext().getAssets();
			is = assetManager.open("smart.dat");
			out = new ByteArrayOutputStream(BUFFER_SIZE);

			int size = 0;
			while((size = is.read(buffer)) != -1) {
				out.write(buffer, 0, size);
			}
			
			// 得到的二进制数据
			data = out.toByteArray();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
			return values;
		} catch (IOException e) {
			e.printStackTrace();
			return values;
		} finally {
			try {
				if (out != null)
					out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

			try {
				if (is != null)
					is.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		// 解密
		byte[] rawData = TccCryptor.decrypt(MainApplication.getContext(), data, null);
		
		// 反序列化
		values = (HashMap<String, String>) convertBytes2Obj(rawData);
		
		return values;
	}
	
	/**
	 * 序列化对象为byte[]
	 * @param obj
	 * @return
	 */
	private byte[] convertObj2Bytes(Serializable obj) {
		byte[] ret = null;
    	ByteArrayOutputStream bos = null;
    	ObjectOutputStream oos = null;
			try {
				bos = new ByteArrayOutputStream();
				oos = new ObjectOutputStream(bos);
				oos.writeObject(obj);
				oos.flush();
				
				ret = bos.toByteArray();
			} catch (IOException e) {
				e.printStackTrace();
			} finally {

				try {
					if (oos != null)
						oos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				try {
					if (oos != null)
						oos.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		return ret;
	}
	
	/**
	 * 反序列化
	 * @param data
	 * @return
	 */
	private Serializable convertBytes2Obj(byte[] data) {
		Serializable ret = null;
		ByteArrayInputStream bis = new ByteArrayInputStream(data);
		ObjectInputStream ois = null;
		try {
			ois = new ObjectInputStream(bis);
			ret = (Serializable) ois.readObject();
		} catch (StreamCorruptedException e1) {
			e1.printStackTrace();
			return ret;
		} catch (IOException e1) {
			e1.printStackTrace();
			return ret;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return ret;
		} finally {
			try {
				if (ois != null)
					ois.close();
			} catch (IOException e) {
				e.printStackTrace();
			}

			try {
				if (bis != null)
					bis.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return ret;
	}
	
	
	///////////////////  用于生成smart.dat文件，开发时使用   ///////////////////////////////////////////////////////////
	public void createConfigFile() {
		
    	HashMap<String, String> map = new HashMap<String, String>();
    	map.put(FEATURE_REPORT_INTERVAL, 24 * HOUR + "");
    	map.put(SOFTWARE_AUTO_CHECK_INTERVAL, 24 * HOUR + "");
    	map.put(AUTO_VIRUS_BASE_CHECK_INTERVAL, 48 * HOUR + "");
    	map.put(MOPAY_GET_RESULT_INTERVAL, 10 * MINUTE + "");
    	map.put(MOPAY_REPORT_INPROGRESS_TIME, 1 * MINUTE + "");
    	map.put(FEEDBACK_URL, "http://m.qqdr.com/pay/wup.jsp");
    	map.put(OFFICIAL_SITE_URL, "http://www.theonesecurity.com");
    	map.put(FORUM_SITE_URL, "http://forum.qqservice.mobi/forum.php?mobile=yes");
    	map.put(FACEBOOK_SITE_URL, "http://m.facebook.com/onesecure");
    	map.put(TWITTER_SITE_URL, "https://mobile.twitter.com/theonesecurity");
    	map.put(ROCKET_TIP_REFRESH_INTERVAL, SECOND + "");
    	map.put(ROCKET_VALID_LAUNCH_INTERVAL, 30 * SECOND + "");
    	map.put(ROCKET_MEMORY_WARN_VALUE, "85");
    	map.put(ROCKET_IS_CLEAR_SYSTEM_PROCESS, "1");
    	map.put(ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS, "1");
    	map.put(SCHEDULE_TASK_TIMER_STEP, HOUR + "");
    	map.put(PULL_SERVER_DATA_INTERVAL, 24 * HOUR + "");
    	
    	byte[] rawData = convertObj2Bytes(map);
    	byte[] vEncryptData = TccCryptor.encrypt(MainApplication.getContext(), rawData, null);
    	
    	FileOutputStream fos = null;
    	try {
			fos = new FileOutputStream(Environment.getExternalStorageDirectory() + "/smart.dat");
			fos.write(vEncryptData);
			fos.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (fos != null)
					fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 调试用，用于输出所有的参数值
	 */
	public void outputLog() {
		
		Log.d("FETCH_DATA", "FEATURE_REPORT_INTERVAL:" + this.configCache.get(FEATURE_REPORT_INTERVAL));
		Log.d("FETCH_DATA", "SOFTWARE_AUTO_CHECK_INTERVAL:" + this.configCache.get(SOFTWARE_AUTO_CHECK_INTERVAL));
		Log.d("FETCH_DATA", "AUTO_VIRUS_BASE_CHECK_INTERVAL:" + this.configCache.get(AUTO_VIRUS_BASE_CHECK_INTERVAL));
		Log.d("FETCH_DATA", "MOPAY_GET_RESULT_INTERVAL:" + this.configCache.get(MOPAY_GET_RESULT_INTERVAL));
		Log.d("FETCH_DATA", "MOPAY_REPORT_INPROGRESS_TIME:" + this.configCache.get(MOPAY_REPORT_INPROGRESS_TIME));
		Log.d("FETCH_DATA", "FEEDBACK_URL:" + this.configCache.get(FEEDBACK_URL));
		Log.d("FETCH_DATA", "OFFICIAL_SITE_URL:" + this.configCache.get(OFFICIAL_SITE_URL));
		Log.d("FETCH_DATA", "FORUM_SITE_URL:" + this.configCache.get(FORUM_SITE_URL));
		Log.d("FETCH_DATA", "FACEBOOK_SITE_URL:" + this.configCache.get(FACEBOOK_SITE_URL));
		Log.d("FETCH_DATA", "TWITTER_SITE_URL:" + this.configCache.get(TWITTER_SITE_URL));
		Log.d("FETCH_DATA", "ROCKET_TIP_REFRESH_INTERVAL:" + this.configCache.get(ROCKET_TIP_REFRESH_INTERVAL));
		Log.d("FETCH_DATA", "ROCKET_VALID_LAUNCH_INTERVAL:" + this.configCache.get(ROCKET_VALID_LAUNCH_INTERVAL));
		Log.d("FETCH_DATA", "ROCKET_MEMORY_WARN_VALUE:" + this.configCache.get(ROCKET_MEMORY_WARN_VALUE));
		Log.d("FETCH_DATA", "ROCKET_IS_CLEAR_SYSTEM_PROCESS:" + this.configCache.get(ROCKET_IS_CLEAR_SYSTEM_PROCESS));
		Log.d("FETCH_DATA", "ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS:" + this.configCache.get(ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS));
		Log.d("FETCH_DATA", "SCHEDULE_TASK_TIMER_STEP:" + this.configCache.get(SCHEDULE_TASK_TIMER_STEP));
		Log.d("FETCH_DATA", "PULL_SERVER_DATA_INTERVAL:" + this.configCache.get(PULL_SERVER_DATA_INTERVAL));
	}
	
	public String getStringResult() {
		StringBuilder sb = new StringBuilder();
		sb.append("FEATURE_REPORT_INTERVAL:" + this.configCache.get(FEATURE_REPORT_INTERVAL));
		sb.append("\n");
		sb.append("SOFTWARE_AUTO_CHECK_INTERVAL:" + this.configCache.get(SOFTWARE_AUTO_CHECK_INTERVAL));
		sb.append("\n");
		sb.append("AUTO_VIRUS_BASE_CHECK_INTERVAL:" + this.configCache.get(AUTO_VIRUS_BASE_CHECK_INTERVAL));
		sb.append("\n");
		sb.append("MOPAY_GET_RESULT_INTERVAL:" + this.configCache.get(MOPAY_GET_RESULT_INTERVAL));
		sb.append("\n");
		sb.append("MOPAY_REPORT_INPROGRESS_TIME:" + this.configCache.get(MOPAY_REPORT_INPROGRESS_TIME));
		sb.append("\n");
		sb.append("FEEDBACK_URL:" + this.configCache.get(FEEDBACK_URL));
		sb.append("\n");
		sb.append("OFFICIAL_SITE_URL:" + this.configCache.get(OFFICIAL_SITE_URL));
		sb.append("\n");
		sb.append("FORUM_SITE_URL:" + this.configCache.get(FORUM_SITE_URL));
		sb.append("\n");
		sb.append("FACEBOOK_SITE_URL:" + this.configCache.get(FACEBOOK_SITE_URL));
		sb.append("\n");
		sb.append("TWITTER_SITE_URL:" + this.configCache.get(TWITTER_SITE_URL));
		sb.append("\n");
		sb.append("ROCKET_TIP_REFRESH_INTERVAL:" + this.configCache.get(ROCKET_TIP_REFRESH_INTERVAL));
		sb.append("\n");
		sb.append("ROCKET_VALID_LAUNCH_INTERVAL:" + this.configCache.get(ROCKET_VALID_LAUNCH_INTERVAL));
		sb.append("\n");
		sb.append("ROCKET_MEMORY_WARN_VALUE:" + this.configCache.get(ROCKET_MEMORY_WARN_VALUE));
		sb.append("\n");
		sb.append("ROCKET_IS_CLEAR_SYSTEM_PROCESS:" + this.configCache.get(ROCKET_IS_CLEAR_SYSTEM_PROCESS));
		sb.append("\n");
		sb.append("ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS:" + this.configCache.get(ROCKET_IS_SHOW_SYSTEM_PROCESS_NUMBERS));
		sb.append("\n");
		sb.append("SCHEDULE_TASK_TIMER_STEP:" + this.configCache.get(SCHEDULE_TASK_TIMER_STEP));
		sb.append("\n");
		sb.append("PULL_SERVER_DATA_INTERVAL:" + this.configCache.get(PULL_SERVER_DATA_INTERVAL));
		sb.append("\n");
		
		return sb.toString();
	}
}