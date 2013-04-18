package com.tinyscreen.quteWatcher.log;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import android.content.Context;
import android.os.Environment;
import android.telephony.TelephonyManager;

public class Util {
	
	/**
	 * 返回日期字符串
	 * @return
	 */
	public static String getDate(Date date){
		String dateString="";
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    dateString = formatter.format(date);
		return dateString;
	}
	
	public static String getIMEI(Context context){
		TelephonyManager telephonyManager=(TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		String imei="NONE";
		if(telephonyManager!=null){
			imei=telephonyManager.getDeviceId();
		}
		return imei;
	}
	
	/**
	 * 获取SDCARD路径
	 * 
	 * @return SDCARD路径
	 */
	public static File getSDCardDir() {
		return new File(Environment.getExternalStorageDirectory().getPath());
	}

}
