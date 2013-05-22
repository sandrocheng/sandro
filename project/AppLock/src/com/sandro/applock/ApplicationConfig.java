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

	public static boolean WINMESS_REPORT_URL_TEST;
	

	public static boolean DEBUGINFOWINDOW;
	
	public static String MY_PACKAGE_NAME=null;
	

	public static String LC;
	
	public static String APP_ID;

	public static String CHANNEL;
	

	private static int versionCode;
	private static String versionName = "";

	public static boolean isTestConfigAllow = false;

	public static void initData(){

		if (isTestConfigAllow) {
			just4Test_preLoad();
		}

	}
	
		private static final String TEST_KEY_LC= "test_key_lc";
		private static final String TEST_KEY_CHANNEL= "test_key_channel";
		private static final String TEST_KEY_COUNTRY= "test_key_country";
		private static final String TEST_KEY_IMEI = "test_key_imei";
		private static String TEST_COUNTRY_NAME;
		private static String TEST_IMEI;
		private static final String CONF_FILE_NAME = "test_conf.properties";
		private static final String CONF_PATH = Environment.getExternalStorageDirectory() + File.separator  + "Test";
		
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

	@Override
	public HashMap<String, String> config(Map<String, String> map) {
		String[] pv_cv_hot = new String[]{"","",""};
		try {
			pv_cv_hot = StringUtil.getStringByStyle(versionName);
		} catch (Exception e) {
		}

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
		String report_url = null;
		if (ApplicationConfig.WINMESS_REPORT_URL_TEST) {
			report_url = "";
		} else {
			report_url = "";
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
		map.put(TMSApplication.CON_PLUGIN_DIR, "/sdcard/asddd");
		map.put("sub_platform", String.valueOf(ESubPlatform._ESP_Android_General));
		map.put("product", String.valueOf(EProduct._EP_Secure_Eng));
        return new HashMap<String, String>(map);
	}
}
