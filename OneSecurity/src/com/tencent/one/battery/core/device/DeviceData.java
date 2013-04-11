/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

/**
 * @author matrixxu
 * 
 */
public class DeviceData {
	private final static String FACADE_NAME = "device_data";
	
	private Context mContext = null;
	private Editor mEditor;
	private SharedPreferences mSetting;
	private static DeviceData instance = null;
	private static Object lock = new Object();

	public static String WIFI_KEY = "wifi";
	
	public static String BLUETOOTH_KEY = "bluetooth";
	
	public static String MOBILEDATA_KEY = "mobiledata";
	
	public static String AIRPLANE_KEY = "airplane";
	
	public static String HAPTICFEEDBACK_KEY = "hapticfeedback";
	
	public static String SYNCINFO_KEY = "syncinfo";
	
	public static String ROTATE_KEY = "rotate";
	
	public static String SCREENTIMEOUT_KEY = "screentimtout";
	
	public static String SCREENBRIGHTNESS_KEY = "screenbrightness";
	
	public static String RINGANDVIBRATE_KEY = "ringandvibrate";
	
	public static String GPS_KEY = "gps";

	public static int OPEN_VALUE = 1;

	public static int CLOSE_VALUE = 0;

	public SharedPreferences getDeviceDataSharedPreferences() {
		return mContext.getSharedPreferences(FACADE_NAME, 0);
	}

	public int getDeviceValue(String deviceKey) {
		mSetting = mContext.getSharedPreferences(FACADE_NAME, 0);
		return mSetting.getInt(deviceKey, -1);
	}

	public void saveDevice(String deviceKey, int status) {
		mSetting = mContext.getSharedPreferences(FACADE_NAME, 0);
		mEditor = mSetting.edit();
		mEditor.putInt(deviceKey, status);
		mEditor.commit();
	}

	public static DeviceData getInstance(Context context) {
		if (instance == null) {
			synchronized (lock) {
				if (instance == null) {
					instance = new DeviceData(context);
				}
			}
		}
		return instance;
	}

	private DeviceData(Context context) {
		mContext = context;
	}

}
