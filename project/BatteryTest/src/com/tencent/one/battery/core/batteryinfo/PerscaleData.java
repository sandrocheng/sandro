/**
 * 
 */
package com.tencent.one.battery.core.batteryinfo;

import java.util.HashMap;
import java.util.Map.Entry;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.BatteryManager;
import android.util.Log;

/**
 * @author matrixxu
 * 
 */
public class PerscaleData {
	private final static String FACADE_NAME_AC_1 = "perscale_AC_data_1";
	private final static String FACADE_NAME_AC_2 = "perscale_AC_data_2";
	private final static String FACADE_NAME_USB_1 = "perscale_USB_data_1";
	private final static String FACADE_NAME_USB_2 = "perscale_USB_data_2";
	private Context mContext = null;
	private Editor mEditor;
	private SharedPreferences mSetting;

	public void savePerscale(int scale, float value, int chargType) {
		if (chargType == BatteryManager.BATTERY_PLUGGED_AC) {
			if (scale < 74) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_1, 0);
			}
			if (scale >= 74) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_2, 0);
			}
		}
		if (chargType == BatteryManager.BATTERY_PLUGGED_USB) {
			if (scale < 74) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_1, 0);
			}
			if (scale >= 74) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_2, 0);
			}
		}

		mEditor = mSetting.edit();
		mEditor.putFloat(String.valueOf(scale), value);
		mEditor.commit();
	}

	public float getAverageValueByAcData(int level) {
		HashMap<String, Float> map = null;
		float value = 0;
		if (level < 74) {
			Log.d("sdk", "当前电量<74!");
			mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_1, 0);
			map = (HashMap<String, Float>) mSetting.getAll();
			if (map.size() < 10) {
				Log.d("sdk", "0-74%的数据<10个,将从74%以后的数据中估算平均值!");
				mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_2, 0);
				map = (HashMap<String, Float>) mSetting.getAll();
				if (map.size() < 5) {
					Log.d("sdk", "74%-100%的数据<5个,平均值返回0,即将用斜率估算!");
					return 0;
				} else {
					Log.d("sdk", "74%-100%的数据>5个,用该值/1.82获得平均值!");
					for (Entry<String, Float> entry : map.entrySet()) {
						value = value + entry.getValue();
					}
					Log.d("sdk", "平均值为:" + (float) (value / map.size() / 1.82));
					return (float) (value / map.size() / 1.82);
				}
			} else {
				Log.d("sdk", "0-74%的数据>10个,直接取平均值");
				for (Entry<String, Float> entry : map.entrySet()) {
					value = value + entry.getValue();
				}
				Log.d("sdk", "平均值为:" + value / map.size());
				return value / map.size();
			}
		} else {
			Log.d("sdk", "当前电量>74!");
			mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_2, 0);
			map = (HashMap<String, Float>) mSetting.getAll();
			if (map.size() < 5) {
				Log.d("sdk", "74%-100%的数据<5个,将从0-74%的数据中估算平均值!");
				mSetting = mContext.getSharedPreferences(FACADE_NAME_AC_1, 0);
				map = (HashMap<String, Float>) mSetting.getAll();
				if (map.size() < 10) {
					Log.d("sdk", "0-74%的数据<10个,平均值返回0,即将用斜率估算!");
					return 0;
				} else {
					Log.d("sdk", "0-74%的数据>10个,用该值 * 1.82获得平均值!");
					for (Entry<String, Float> entry : map.entrySet()) {
						value = value + entry.getValue();
					}
					Log.d("sdk", "平均值为:" + (float) (value / map.size() * 1.82));
					return (float) (value / map.size() * 1.82);
				}
			} else {
				Log.d("sdk", "74%-100%的数据>5个,,直接取平均值!");
				for (Entry<String, Float> entry : map.entrySet()) {
					value = value + entry.getValue();
				}
				Log.d("sdk", "平均值为:" + value / map.size());
				return value / map.size();
			}
		}

	}

	public float getAverageValueByUsbData(int level) {
		HashMap<String, Float> map = null;
		float value = 0;
		if (level < 74) {
			mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_1, 0);
			map = (HashMap<String, Float>) mSetting.getAll();
			if (map.size() < 10) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_2, 0);
				map = (HashMap<String, Float>) mSetting.getAll();
				if (map.size() < 5) {
					return 0;
				} else {
					for (Entry<String, Float> entry : map.entrySet()) {
						value = value + entry.getValue();
					}
					return (float) (value / map.size() / 1.82);
				}
			} else {
				for (Entry<String, Float> entry : map.entrySet()) {
					value = value + entry.getValue();
				}
				return value / map.size();
			}
		} else {
			mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_2, 0);
			map = (HashMap<String, Float>) mSetting.getAll();
			if (map.size() < 5) {
				mSetting = mContext.getSharedPreferences(FACADE_NAME_USB_1, 0);
				map = (HashMap<String, Float>) mSetting.getAll();
				if (map.size() < 10) {
					return 0;
				} else {
					for (Entry<String, Float> entry : map.entrySet()) {
						value = value + entry.getValue();
					}
					return (float) (value / map.size() * 1.82);
				}
			} else {
				for (Entry<String, Float> entry : map.entrySet()) {
					value = value + entry.getValue();
				}
				return value / map.size();
			}
		}
	}

	private static PerscaleData instance = null;
	private static Object lock = new Object();

	public static PerscaleData getInstance(Context context) {
		if (instance == null) {
			synchronized (lock) {
				if (instance == null) {
					instance = new PerscaleData(context);
				}
			}
		}
		return instance;
	}

	private PerscaleData(Context context) {
		mContext = context;
	}
}
