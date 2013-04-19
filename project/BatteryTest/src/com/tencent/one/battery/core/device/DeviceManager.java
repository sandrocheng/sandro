/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/**
 * @author matrixxu
 * 
 */
public class DeviceManager implements DeviceFacade {
	/** Wifi */
	public static String WIFI_KEY = "wifi";
	/** 蓝牙 */
	public static String BLUETOOTH_KEY = "bluetooth";
	/** 蓝牙 */
	public static String MOBILEDATA_KEY = "mobiledata";
	/** 飞行模式 */
	public static String AIRPLANE_KEY = "airplane";
	/** 触感反馈 */
	public static String HAFEEDBACK = "hapitfeedback";
	/** 自动同步 */
	public static String SYNCINFO_KEY = "syncinfo";
	/** 屏幕旋转 */
	public static String ROTATE_KEY = "rotate";
	/** 屏幕超时 */
	public static String SCREENTIMEOUT_KEY = "screentimeout";
	/** 屏幕亮度 */
	public static String SCREENBRIGHTNESS_KEY = "screenbrightness";
	/** 铃声振动 */
	public static String RINGANDVIBRATE_KEY = "ringandvibrate";
	/** GPS */
	public static String GPS_KEY = "gps";
	/** 静音 */
	public final static int SILENT = 1;
	/** 仅铃声 */
	public final static int ONLY_RING = 2;
	/** 仅振动 */
	public final static int ONLY_VIBRATE = 3;
	/** 铃声 + 振动 */
	public final static int RING_AND_VIBRATE = 4;

	private OnSharedPreferenceChangeListener listener = null;

	@Override
	public void deviceControll(Context context, String deviceKey, boolean isOpen, int value) {

		if (deviceKey.equals(WIFI_KEY)) {
			if (isOpen) {
				WIFIDevice.getInstance(context).switchOn();
			} else {
				WIFIDevice.getInstance(context).switchOff();
			}
		}

		if (deviceKey.equals(BLUETOOTH_KEY)) {
			if (isOpen) {
				BluetoothDevice.getInstance(context).switchOn();
			} else {
				BluetoothDevice.getInstance(context).switchOff();
			}
		}

		if (deviceKey.equals(MOBILEDATA_KEY)) {
			if (isOpen) {
				MobileDataDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, DeviceData.OPEN_VALUE);
			} else {
				MobileDataDevice.getInstance(context).switchOff();
				DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, DeviceData.CLOSE_VALUE);
			}
		}

		if (deviceKey.equals(AIRPLANE_KEY)) {
			if (isOpen) {
				AirplaneDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.AIRPLANE_KEY, DeviceData.OPEN_VALUE);
				// DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY,
				// DeviceData.OPEN_VALUE);
			} else {
				AirplaneDevice.getInstance(context).switchOff();
				DeviceData.getInstance(context).saveDevice(DeviceData.AIRPLANE_KEY, DeviceData.CLOSE_VALUE);
				// DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY,
				// DeviceData.CLOSE_VALUE);
			}
		}

		if (deviceKey.equals(HAFEEDBACK)) {
			if (isOpen) {
				HapticFeedbackDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.HAPTICFEEDBACK_KEY, DeviceData.OPEN_VALUE);
			} else {
				HapticFeedbackDevice.getInstance(context).switchOff();
				DeviceData.getInstance(context).saveDevice(DeviceData.HAPTICFEEDBACK_KEY, DeviceData.CLOSE_VALUE);
			}
		}

		if (deviceKey.equals(SYNCINFO_KEY)) {
			if (isOpen) {
				SyncInfoDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, DeviceData.OPEN_VALUE);
			} else {
				SyncInfoDevice.getInstance(context).switchOff();
				DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, DeviceData.CLOSE_VALUE);
			}
		}

		if (deviceKey.equals(ROTATE_KEY)) {
			if (isOpen) {
				RotateDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.ROTATE_KEY, DeviceData.OPEN_VALUE);
			} else {
				RotateDevice.getInstance(context).switchOff();
				DeviceData.getInstance(context).saveDevice(DeviceData.ROTATE_KEY, DeviceData.CLOSE_VALUE);
			}
		}

		if (deviceKey.equals(SCREENTIMEOUT_KEY)) {
			ScreenSleepDevice.getInstance(context).setValue(value);
			DeviceData.getInstance(context).saveDevice(DeviceData.SCREENTIMEOUT_KEY, value);
		}

		if (deviceKey.equals(SCREENBRIGHTNESS_KEY)) {
			if (isOpen) {
				ScreenBrightnessDevice.getInstance(context).switchOn();
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENBRIGHTNESS_KEY, DeviceData.OPEN_VALUE);
			} else {
				ScreenBrightnessDevice.getInstance(context).setValue(value);
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENBRIGHTNESS_KEY, value);
			}
		}

		if (deviceKey.equals(RINGANDVIBRATE_KEY)) {
			VibrateAndRingDevice.getInstance(context).setValue(value);
			DeviceData.getInstance(context).saveDevice(DeviceData.RINGANDVIBRATE_KEY, value);
		}
		
		if (deviceKey.equals(GPS_KEY)) {
			if (isOpen) {
				GpsDevice.getInstance(context).switchOn();
			} else {
				GpsDevice.getInstance(context).switchOff();
			}
		}
	}

	@Override
	public int getDeviceStatus(Context context, String deviceKey) {
		int status = -1;
		if (deviceKey.equals(WIFI_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.WIFI_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (WIFIDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.WIFI_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.WIFI_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(BLUETOOTH_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.BLUETOOTH_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (BluetoothDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.BLUETOOTH_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.BLUETOOTH_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(MOBILEDATA_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.MOBILEDATA_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (MobileDataDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(HAFEEDBACK)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.HAPTICFEEDBACK_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (HapticFeedbackDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.HAPTICFEEDBACK_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.HAPTICFEEDBACK_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(AIRPLANE_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.AIRPLANE_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (AirplaneDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.AIRPLANE_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.AIRPLANE_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(SYNCINFO_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.SYNCINFO_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (SyncInfoDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(ROTATE_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.ROTATE_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (RotateDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.ROTATE_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.ROTATE_KEY, 0);
					status = 0;
				}
			}
		}

		if (deviceKey.equals(SCREENTIMEOUT_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.SCREENTIMEOUT_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				status = ScreenSleepDevice.getInstance(context).getValue();
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENTIMEOUT_KEY, status);
			}
		}

		if (deviceKey.equals(SCREENBRIGHTNESS_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.SCREENBRIGHTNESS_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				status = ScreenBrightnessDevice.getInstance(context).getValue();
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENBRIGHTNESS_KEY, status);
			}
		}

		if (deviceKey.equals(RINGANDVIBRATE_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.RINGANDVIBRATE_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				status = VibrateAndRingDevice.getInstance(context).getValue();
				DeviceData.getInstance(context).saveDevice(DeviceData.RINGANDVIBRATE_KEY, status);
			}
		}
		
		if (deviceKey.equals(GPS_KEY)) {
			status = DeviceData.getInstance(context).getDeviceValue(DeviceData.GPS_KEY);
			if (status == -1) {// 还没有数据,需要先从设备读取
				if (GpsDevice.getInstance(context).getDeviceStatus()) {
					DeviceData.getInstance(context).saveDevice(DeviceData.GPS_KEY, 1);
					status = 1;
				} else {
					DeviceData.getInstance(context).saveDevice(DeviceData.GPS_KEY, 0);
					status = 0;
				}
			}
		}
		
		return status;
	}

	@Override
	public void registDataObserver(OnSharedPreferenceChangeListener listener, Context context) {
		// 入口暂时放到这里
		SystemSettingsHandler.getInstance(context).systemSettingsObserver();// 监听系统setting变化
		if (this.listener == null) {
			SharedPreferences mSetting = DeviceData.getInstance(context).getDeviceDataSharedPreferences();
			mSetting.registerOnSharedPreferenceChangeListener(listener);
		}

	}
}
