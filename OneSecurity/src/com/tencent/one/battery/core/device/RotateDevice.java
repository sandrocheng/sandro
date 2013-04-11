/**
 * 
 */
package com.tencent.one.battery.core.device;


import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;

/**
 * @author boone
 * 
 */
public class RotateDevice implements DeviceGovernor {


	private Context context = null;

	public boolean getScreenrotate(ContentResolver resolver) {
		boolean screenrotate = false;
		try {
			screenrotate = android.provider.Settings.System.getInt(resolver, Settings.System.ACCELEROMETER_ROTATION) == 1;
		} catch (SettingNotFoundException e) {
		}
		return screenrotate;
	}
	
	/**
	 * 横竖屏切换设置状态
	 * 
	 * screenrotate = 0 关闭 screenrotate = 1 开启
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public void saveScreenrotate(ContentResolver resolver, int screenrotate) {
		Uri uri = android.provider.Settings.System.getUriFor(Settings.System.ACCELEROMETER_ROTATION);
		android.provider.Settings.System.putInt(resolver, Settings.System.ACCELEROMETER_ROTATION, screenrotate);
		resolver.notifyChange(uri, null);
	}

	@Override
	public void switchOff() {
		if (getScreenrotate(context.getContentResolver())) {
			saveScreenrotate(context.getContentResolver(), 0);
		}
	}

	@Override
	public void switchOn() {
		if (!getScreenrotate(context.getContentResolver())) {
			saveScreenrotate(context.getContentResolver(), 1);
		}

	}

	private RotateDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (RotateDevice.class) {
				if (mInstance == null) {
					mInstance = new RotateDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		return getScreenrotate(context.getContentResolver());
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
