package com.tencent.one.battery.core.device;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;
import android.util.Log;
import android.view.WindowManager;

public class ScreenBrightnessDevice implements DeviceGovernor {
	/**
	 * 判断是否开启了自动亮度调节
	 * 
	 * @param aContext
	 * @return
	 */
	public static boolean isAutoBrightness(Context context) {
		boolean automicBrightness = false;
		try {
			automicBrightness = Settings.System.getInt(context
					.getContentResolver(),
					Settings.System.SCREEN_BRIGHTNESS_MODE) == Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC;
		} catch (SettingNotFoundException e) {
			e.printStackTrace();
		}
		return automicBrightness;
	}

	/**
	 * 获取屏幕的亮度
	 * 
	 * @param activity
	 * @return
	 */
	public static int getScreenBrightness(Context context) {
		double nowBrightnessValue = 0;
		ContentResolver resolver = context.getContentResolver();
		try {
			nowBrightnessValue = android.provider.Settings.System.getInt(
					resolver, Settings.System.SCREEN_BRIGHTNESS);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (int)(Math.ceil(nowBrightnessValue * 100d / 255d));
	}

	/**
	 * 设置亮度
	 * 
	 * @param activity
	 * @param brightness
	 */
	public static void setBrightness(Activity activity, int brightness) {
		// Settings.System.putInt(activity.getContentResolver(),
		// Settings.System.SCREEN_BRIGHTNESS_MODE,
		// Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL);
		// b是一个浮点数 从0~1 ，表示亮度
		Log.i("ui", "setBrightness   set brightness=" + brightness);
		WindowManager.LayoutParams lp = activity.getWindow().getAttributes();
		lp.screenBrightness = Float.valueOf((brightness) * 255 / 100)
				* (1f / 255f);
		activity.getWindow().setAttributes(lp);

	}

	/**
	 * 停止自动亮度调节
	 * 
	 * @param activity
	 */
	public static void stopAutoBrightness(Context context) {
		Settings.System.putInt(context.getContentResolver(),
				Settings.System.SCREEN_BRIGHTNESS_MODE,
				Settings.System.SCREEN_BRIGHTNESS_MODE_MANUAL);
	}

	/**
	 * 开启亮度自动调节
	 * 
	 * @param activity
	 */
	public static void startAutoBrightness(Context context) {
		Settings.System.putInt(context.getContentResolver(),
				Settings.System.SCREEN_BRIGHTNESS_MODE,
				Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC);
	}

	/**
	 * 保存亮度设置状态
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public static void notifySetting(ContentResolver resolver, int brightness) {
		Uri uri = android.provider.Settings.System
				.getUriFor("screen_brightness");
		// s设置屏幕亮度，brightness值为30-255
		android.provider.Settings.System.putInt(resolver, "screen_brightness",
				brightness * 255 / 100);
		// resolver.registerContentObserver(uri, true, myContentObserver);
		resolver.notifyChange(uri, null);
	}

	/**
	 * 设置系统亮度的方法
	 * 
	 * @param resolver
	 * @param activity
	 * @param brightness
	 */
	public static void saveBrightness(Activity activity, int brightness) {
		// 亮度
		if (ScreenBrightnessDevice.isAutoBrightness(activity)) {
			ScreenBrightnessDevice.stopAutoBrightness(activity);
		}
		ScreenBrightnessDevice.setBrightness((Activity) activity, brightness);
		ScreenBrightnessDevice.notifySetting(activity.getContentResolver(),
				brightness);
	}

	@Override
	public void switchOff() {
		stopAutoBrightness(this.context);

	}

	@Override
	public void switchOn() {
		startAutoBrightness(this.context);

	}

	private Context context = null;

	private ScreenBrightnessDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (ScreenBrightnessDevice.class) {
				if (mInstance == null) {
					mInstance = new ScreenBrightnessDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getValue() {
		if (isAutoBrightness(this.context)) {
			return 1;
		} else {
			return getScreenBrightness(this.context);
		}
	}

	@Override
	public void setValue(int value) {
		saveBrightness((Activity)this.context,value);

	}
}
