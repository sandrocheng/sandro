package com.sandro.applock;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import com.tencent.tmsecure.common.ITMSApplicaionConfig;
import com.tencent.tmsecure.common.TMSApplication;

import QQPIM.EProduct;
import QQPIM.ESubPlatform;
import android.os.Environment;

public class ApplicationConfig implements ITMSApplicaionConfig{
	/**
	 * 是否进行Crashmail上报，打包期间由ant替换为true,
	 * 从配置文件读取R.bool.send_crash_mail
	 */
	public static boolean EXCEPTIONUPLOAD;
	
	/**
	 * winmess数据上报用，上报到测试环境时设置为true，上报到正式环境时设置为false。
	 */
	public static boolean WINMESS_REPORT_URL_TEST;
	
	/**
	 * 是否开启Debug信息悬浮窗口。提测时要关闭。
	 * 从配置文件读取R.bool.debug_info_window
	 */
	public static boolean DEBUGINFOWINDOW;
	
	public static String MY_PACKAGE_NAME=null;
	
	/**
	 * 版本的LC，从配置文件读取lc
	 */
	public static String LC;
	
	public static String APP_ID;
	/**
	 * 版本的channel，从配置文件读取channel
	 */
	public static String CHANNEL;
	
	/**
	 * 程序版本号及versionCode
	 */
	private static int versionCode;
	private static String versionName = "";
	
	/**
	 * 上报用加密解密key
	 */
	public static String teakey = "DFG#$%^#%$RGHR(&*M<><";
	
	public static String secretKey = "6boyv3A6ni";
	
	public static String encryptedSecretKey = "F1D3B392478C35C56645BB6C0316FE1E";
	
	/**
	 * Winmess上报用地址
	 */
	public static String report_url = "http://qqdrsvr.3g.qq.com/qqd"; // 正式服务器
	public static String report_url_test = "http://qqdrsvrtest.cs0309.3g.qq.com/qqd"; // 测试服务器
	
	//Winmess获取服务器时间戳地址
	public static String report_winmess_getTimeStamp_url = "http://qqdrsvr.3g.qq.com/GetTimestamp?format=0"; // 正式服务器
	public static String report_winmess_getTimeStamp_url_test = "http://qqdrsvrtest.cs0309.3g.qq.com/GetTimestamp?format=0"; // 测试服务器
	
	//3G数据上报服务器地址
	public static String report_3G_url_normal = "http://pmir.3g.qq.com"; // 正式服务器地址
	public static String report_3G_url_test = "http://wuptest.cs0309.3g.qq.com/"; // 测试服务器地址
	
	// FIXME 是否允许测试配置上报参数
	public static boolean isTestConfigAllow = false;
		
	/**
	 * 从资源文件中读取静态数据
	 * 建议在MainApplication oncreate中优先调用
	 */
	public static void initData(){
//		EXCEPTIONUPLOAD = MainApp.getContext().getResources().getBoolean(R.bool.send_crash_mail);
//		WINMESS_REPORT_URL_TEST = MainApplication.getContext().getResources().getBoolean(R.bool.winmess_report_url_test);
//		DEBUGINFOWINDOW = MainApplication.getContext().getResources().getBoolean(R.bool.debug_info_window);
//		LC = MainApplication.getContext().getResources().getString(R.string.lc);
//		CHANNEL =  MainApplication.getContext().getResources().getString(R.string.channel);
//		versionName = PackageUtil.getVersionName();
//		versionCode = PackageUtil.getVersionCode();
//		MY_PACKAGE_NAME = MainApplication.getContext().getPackageName();
//		APP_ID = MainApplication.getContext().getResources().getString(R.string.app_id);
//		
//		// FIXME 为方便测试加入的临时代码 by joy 2013.02.20
//		isTestConfigAllow = MainApplication.getContext().getResources().getBoolean(R.bool.test_config_allow);
		if (isTestConfigAllow) {
			just4Test_preLoad();
		}

	}
	
	// ============== 为了测试动态配置上报参数而临时加入的代码 start 2013.02.20 17:00============
		private static final String TEST_KEY_LC= "test_key_lc";
		private static final String TEST_KEY_CHANNEL= "test_key_channel";
		private static final String TEST_KEY_COUNTRY= "test_key_country";
		private static final String TEST_KEY_IMEI = "test_key_imei";
		private static String TEST_COUNTRY_NAME;
		private static String TEST_IMEI;
		private static final String CONF_FILE_NAME = "test_conf.properties";
		private static final String CONF_PATH = Environment.getExternalStorageDirectory() + File.separator  + "OneSecurityTest";
		
		public static void just4Test_preLoad() {
			java.io.File file = new java.io.File(CONF_PATH, CONF_FILE_NAME);
			if (!file.exists()) {
				
				OutputStream out = null;
				try {
					out = new FileOutputStream(file);
					Properties property = new Properties();
					property.put(TEST_KEY_LC, LC);
					property.put(TEST_KEY_CHANNEL, CHANNEL);
					
					property.save(out, "-- OS TEST Setting --");
					
				} catch (Exception e) {
					if (out!= null) {
						try {
							out.close();
						} catch (IOException e1) {
						}
					}
				}
				
				return ;
			}
			
			InputStream in = null;
			try {
				in = new FileInputStream(file);
				Properties property = new Properties();
				property.load(in);
				
				String vLc = property.getProperty(TEST_KEY_LC, LC);
				String vChannel = property.getProperty(TEST_KEY_CHANNEL, CHANNEL);
				String vCounty = property.getProperty(TEST_KEY_COUNTRY);
				String vIMEI = property.getProperty(TEST_KEY_IMEI);
				
				if (vLc != null && vLc.length() > 0) LC = vLc;
				if (vChannel != null && vChannel.length() > 0) CHANNEL = vChannel;
				if (vCounty != null && vCounty.length() > 0) TEST_COUNTRY_NAME = vCounty;
				if (vIMEI !=null && vIMEI.length() > 0) TEST_IMEI = vIMEI;
					
			} catch (Exception e) {
				return ;
			} finally {
				if (in != null) {
					try {
						in.close();
					} catch (IOException e) {
					}
				}
			}
		}
		public static String just4Test_getIMEI() {
			return TEST_IMEI;
		}
		public static String just4Test_getCountryName() {
			return TEST_COUNTRY_NAME;
		}
		// ============== 为了测试动态配置上报参数而临时加入的代码 end============
	
	//add by eddy - 3G平台数据上报参数设置，每次发布前请仔细核对每一项的正确性，特别是LC Channel Version
	@Override
	public HashMap<String, String> config(Map<String, String> map) {
		String[] pv_cv_hot = new String[]{"","",""};
		try {
			pv_cv_hot = StringUtil.getStringByStyle(versionName);
		} catch (Exception e) {
		}
		// add by eddy 2012-11-23 -- 加强对versionName字段的保护，防止SDK抛错，正确的versionName格式为1.1.1
		if(versionName == null){
			versionName = "";
		}else{
			String as[] = versionName.trim().split("\\.");
		    for(int i = 0; i< as.length;i++){
		        String s = as[i];
		        boolean isnum = StringUtil.isNum(s);
		        if(!isnum){
		        	versionName = "";
		        	break;
		        }
		    }
		}
		//end eddy
		map.put(TMSApplication.CON_VIRUS_SCAN_LIBNAME, "ams-1.1.0");
		map.put(TMSApplication.CON_CRYPTOR_LIBNAME, "cryptor-1.0.0");
		map.put(TMSApplication.CON_ARESENGINE_LIBNAME, "smschecker-1.0.0");
		map.put(TMSApplication.CON_LOCATION_LIBNAME, "location-1.0.0");
		map.put(TMSApplication.CON_APOLLO_LIBNAME, "apollo-1.1.2");
		//【测试环境】http://wuptest.cs0309.3g.qq.com/  【正式环境】http://pmir.3g.qq.com
		String report_url = null;
		if (ApplicationConfig.WINMESS_REPORT_URL_TEST) {
			report_url = ApplicationConfig.report_3G_url_test;
		} else {
			report_url = ApplicationConfig.report_3G_url_normal;
		}
		map.put(TMSApplication.CON_HOST_URL, report_url); 
		map.put(TMSApplication.CON_SU_CMD, "su");
		map.put(TMSApplication.CON_SOFTVERSION, versionName);//
		map.put(TMSApplication.CON_BUILD, versionCode + "");//
		map.put(TMSApplication.CON_LC, LC);////////
		map.put(TMSApplication.CON_CHANNEL, CHANNEL);////////
		map.put(TMSApplication.CON_PLATFORM, "default");
		map.put(TMSApplication.CON_PVERSION, pv_cv_hot[0]);//
		map.put(TMSApplication.CON_CVERSION, pv_cv_hot[1]);//
		map.put(TMSApplication.CON_HOTFIX, pv_cv_hot[2]);//
		map.put(TMSApplication.CON_AUTO_REPORT, "false");
		map.put(TMSApplication.CON_PLUGIN_DIR, "/sdcard/qqpimsecure_plugins");
		map.put("sub_platform", String.valueOf(ESubPlatform._ESP_Android_General));
		map.put("product", String.valueOf(EProduct._EP_Secure_Eng));
        return new HashMap<String, String>(map);
	}
}
