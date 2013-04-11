package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Log;

import com.tencent.onesecurity.widget.shortcut.LockReceiver;

/**
 * 锁屏
 * 
 * @author boone
 * 
 */
public class ScreenSleepDevice implements DeviceGovernor {

	/**
	 * 锁屏
	 */
	public static void lockScreen(Context context) {
		Intent intent = new Intent(context, LockReceiver.Controller.class);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		context.startActivity(intent);
	}

	/**
	 * 获得锁屏时间 毫秒
	 */
	public int getScreenOffTime(Context context) {
		int screenOffTime = 0;
		try {
			screenOffTime = Settings.System.getInt(
					context.getContentResolver(),
					Settings.System.SCREEN_OFF_TIMEOUT);
		} catch (Exception localException) {

		}
		return screenOffTime;
	}

	/**
	 * 设置背光时间 毫秒
	 */
	public void setScreenOffTime(Context context, int timeout) {
		Log.w("service", "setScreenOffTime timeout=" + timeout);
		try {
			Settings.System.putInt(context.getContentResolver(),
					Settings.System.SCREEN_OFF_TIMEOUT, timeout * 1000);
		} catch (Exception localException) {
			localException.printStackTrace();
		}
	}

	@Override
	public void switchOff() {
		// TODO Auto-generated method stub

	}

	@Override
	public void switchOn() {
		// TODO Auto-generated method stub

	}

	private Context context = null;

	private ScreenSleepDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (ScreenSleepDevice.class) {
				if (mInstance == null) {
					mInstance = new ScreenSleepDevice(context);
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
	public void setValue(int value) {
		setScreenOffTime(this.context, value);
	}

	@Override
	public int getValue() {
		return getScreenOffTime(this.context) / 1000;
	}
}
