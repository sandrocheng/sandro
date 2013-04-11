/**
* FileName: ConfigManager.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-10-15 下午05:52:47
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-15 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.util;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import android.content.Context;
import android.content.res.AssetManager;

import com.tencent.onesecurity.MainApplication;
import com.tencent.tccdb.TccCryptor;

/**
 * @ClassName: ConfigManager
 * @Description:外部文件管理器
 * @author: Allan
 * @date: 2012-10-15 下午05:52:47
 *
 */
public class ConfigManager {
	public final static class PLATFORM_OEM{
		public static final int PHONE_DEFAULT 	= (SUB_PLATFORM.PHONE + OEM.DEFAULT).hashCode();
		public static final int PHONE_HTC 		= (SUB_PLATFORM.PHONE + OEM.HTC).hashCode();
		public static final int PHONE_SAMSUNG 	= (SUB_PLATFORM.PHONE + OEM.SAMSUNG).hashCode();
		public static final int PHONE_LEPHONE	= (SUB_PLATFORM.PHONE + OEM.LEPHONE).hashCode();
		public static final int PHONE_JINLI 	= (SUB_PLATFORM.PHONE + OEM.JINLI).hashCode();
		public static final int PHONE_HUAWEI 	= (SUB_PLATFORM.PHONE + OEM.HUAWEI).hashCode();
		public static final int PHONE_ZTE 		= (SUB_PLATFORM.PHONE + OEM.ZTE).hashCode();
		public static final int PHONE_MEIZU 	= (SUB_PLATFORM.PHONE + OEM.MEIZU).hashCode();
		public static final int PHONE_MARKET 	= (SUB_PLATFORM.PHONE + OEM.MARKET).hashCode();
		public static final int PHONE_PHILIPS 	= (SUB_PLATFORM.PHONE + OEM.PHILIPS).hashCode();
		public static final int PHONE_TIANYU 	= (SUB_PLATFORM.PHONE + OEM.TIANYU).hashCode();
		public static final int PHONE_MOTO 		= (SUB_PLATFORM.PHONE + OEM.MOTO).hashCode();
		public static final int PHONE_KONKA 	= (SUB_PLATFORM.PHONE + OEM.KONKA).hashCode();
		public static final int PHONE_APP_CHINA = (SUB_PLATFORM.PHONE + OEM.APP_CHINA).hashCode();
		public static final int PHONE_DUALSIMMTK 	= (SUB_PLATFORM.PHONE + OEM.DUALSIMMTK).hashCode();
		public static final int PHONE_CHINATELECOM	= (SUB_PLATFORM.PHONE + OEM.CHINATELECOM).hashCode();
		public static final int PAD_DEFAULT 	= (SUB_PLATFORM.PAD + OEM.DEFAULT).hashCode();
	}
	/**
	 * 	ESP_Android_General = 201;
	 * 	ESP_Android_Pad = 202;
	 * 
	 * @author aringbei
	 *
	 */
	public final static class SUB_PLATFORM{
		public static final String PHONE 	= "201";
		public static final String PAD 	= "202";
	}
	
	/**
	 * 厂商类型
	 * @author boyliang
	 */
	public final static class OEM{
		public static final String DEFAULT 	= "default";
		public static final String HTC 		= "htc";
		public static final String SAMSUNG 	= "samsung";
		public static final String LEPHONE 	= "lephone";
		public static final String JINLI 		= "jinli";
		public static final String HUAWEI 		= "huawei";
		public static final String ZTE 		= "ZTE";
		public static final String MEIZU 		= "MeiZu";
		public static final String MARKET 		= "market";
		public static final String PHILIPS 	= "philips";
		public static final String TIANYU 		= "tianyu";
		public static final String MOTO    	= "moto";
		public static final String KONKA		= "konka";
		public static final String APP_CHINA	= "app_china";
		public static final String DUALSIMMTK    	= "dualsimmtk";
		public static final String CHINATELECOM    	= "chinaTelecom";
	}
	
	private final String OEM_STR = "oms";
	private final String SUB_PLATFORM_STR = "sub_platform";
	private final String CHANNEL = "channel";
	private final String LC = "lc";
	private final String VERSION = "version";
	private final String BUILD = "build";
	private final String DEBUG = "debug";
	private final String RULE_STORE_TIME = "rule_store_time";
	private final String FAKE_VERSION = "fake_version";
	
	private static ConfigManager mConfigManager = null;
	
	private String mVersion = "0.0";
	private String mFakeVersion = "0.0";
	private String mBuild = "0";
	private String mLC = "null";
	private String mChannel = "null";
	private String mOms = OEM.DEFAULT;
	private String subPlatform = SUB_PLATFORM.PHONE;
	private String mDebug = "false";
	
	private int mRule_store_time = 0;
	
	
	private ConfigManager(Context context){
		AssetManager mAssetManager = context.getAssets();
		InputStream in = null;
		try {
			in = mAssetManager.open("config.properties");
			byte[] data = new byte[1024];
			int length;
			ByteArrayOutputStream out = new ByteArrayOutputStream();
			while((length = in.read(data)) > 0){
				out.write(data, 0, length);
			}
			
			data = TccCryptor.decrypt(context, out.toByteArray(), null);
			out.close();
			
			Properties properties = new Properties();
			properties.load(new ByteArrayInputStream(data));

			mVersion = properties.getProperty(VERSION);
			mBuild = properties.getProperty(BUILD);
			mLC = properties.getProperty(LC);
			mChannel = properties.getProperty(CHANNEL);
			mOms = properties.getProperty(OEM_STR);
			subPlatform = properties.getProperty(SUB_PLATFORM_STR);
			mRule_store_time = Integer.parseInt(properties.getProperty(RULE_STORE_TIME));
			if(properties.getProperty(FAKE_VERSION) != null){
				mFakeVersion = new String(properties.getProperty(FAKE_VERSION).getBytes("ISO-8859-1"), "UTF8");
			}
			mDebug = properties.getProperty(DEBUG);
			
		} catch (IOException e) {
			mOms = OEM.DEFAULT;
			subPlatform = SUB_PLATFORM.PHONE;
			mVersion = "0.0.0";
			mFakeVersion = "0.0.0";
			mBuild = "0";
			mLC = "error";
			mChannel = "error";
			mRule_store_time = 0;
		} finally{
			if(in != null){
				try {
					in.close();
				} catch (IOException e) {
					
				}
			}
		}
	}
	
	public static synchronized ConfigManager getConfigManager(){
		if(mConfigManager == null){
			mConfigManager = new ConfigManager(MainApplication.getContext());
		}
		return mConfigManager;
	}
	
    public String getBuild() {
	    return mBuild;
    }

    public String getChannel() {
        return mChannel;
    }

    public String getLc() {
        return mLC;
    }

    public String getPlatform() {
        return mOms;
    }
    
    /**
     * 获取用于显示在关于信息中的版本信息(后台决定这个信息是虚假还是真实的)，内置和后置适配需要
     * @return
     */
    public String getSoftFakeVersion(){
    	return mFakeVersion;
    }

    /**
     * 版本升级所需的版本信息
     * @return
     */
    public String getSoftVersion() {
        return mVersion;
    }
    
    /**
     * 子平台
     * @return
     */
    private String getSubPlatform() {
    	subPlatform = SUB_PLATFORM.PHONE;
    	return subPlatform;
    }
  
    public int getSubPlatformHashCode() {
		return getSubPlatform().hashCode();
	}
    
    /**
     * 适配厂商
     * @return
     */
    public String getOEM() {
    	return mOms;
    }
    
    /**
     * 获取厂商
     * default 为通用版，即官方版
     * samsung 为三星专用版
     * htc 为HTC专用版
     * lephone 为lephone专用版
     * huawei 为华为适配版
     * @return
     */
    public int getOEMHashCode() {
    	return getOEM().hashCode();
    }
	
    
    /**
     * 返回子平台与厂商适配唯一码
     * @return
     */
    public int getPlatformAndOEM(){
    	return (getSubPlatform() + getOEM()).hashCode();
    }
	
	public int getRuleStoreTime() {
		return mRule_store_time;
	}
	
	/**
	 * 是否为测试版本
	 * @return
	 */
	public boolean isDebug(){
		return mDebug == null || mDebug.equals("1") ? Boolean.TRUE : Boolean.FALSE;
	}
}
