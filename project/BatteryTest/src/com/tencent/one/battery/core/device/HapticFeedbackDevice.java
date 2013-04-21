package com.tencent.one.battery.core.device;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings.SettingNotFoundException;

public class HapticFeedbackDevice implements DeviceGovernor {
	/**
	 * 触感反馈设置状态
	 * 
	 * hapticFeedBack = 0 关闭 hapticFeedBack=1 开启
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public static void saveHapticFeedBack(ContentResolver resolver, int hapticFeedBack) {
		Uri uri = android.provider.Settings.System.getUriFor("haptic_feedback_enabled");
		android.provider.Settings.System.putInt(resolver, "haptic_feedback_enabled", hapticFeedBack);
		resolver.notifyChange(uri, null);
	}

	/**
	 * 触感反馈现在的值
	 * 
	 * @param resolver
	 * @return
	 */
	public static boolean getHapticFeedBack(ContentResolver resolver) {
		boolean hapticFeedBack = false;
		try {
			hapticFeedBack = android.provider.Settings.System.getInt(resolver, "haptic_feedback_enabled") == 1;
		} catch (SettingNotFoundException e) {

		}
		return hapticFeedBack;
	}

	@Override
	public void switchOff() {
		if (getHapticFeedBack(this.context.getContentResolver())) {
			saveHapticFeedBack(this.context.getContentResolver(), 0);
		}

	}

	@Override
	public void switchOn() {
		if (!getHapticFeedBack(this.context.getContentResolver())) {
			saveHapticFeedBack(this.context.getContentResolver(), 1);
		}

	}

	@Override
	public boolean getDeviceStatus() {
		return getHapticFeedBack(this.context.getContentResolver());

	}

	private Context context = null;

	private HapticFeedbackDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (HapticFeedbackDevice.class) {
				if (mInstance == null) {
					mInstance = new HapticFeedbackDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public int getValue() {
		return 0;
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
		
	}
}
