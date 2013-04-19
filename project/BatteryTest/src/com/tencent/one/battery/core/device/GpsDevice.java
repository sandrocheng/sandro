/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;

/**
 * @author boone
 * 
 */
public class GpsDevice implements DeviceGovernor {

	/**
	 * 取得当前GPS状态
	 * 
	 * @return
	 */
	public boolean getGPSStatus(Context context) {
		String nowStatus = Settings.System.getString(context.getContentResolver(), Settings.System.LOCATION_PROVIDERS_ALLOWED);
		if (nowStatus != null && nowStatus.contains("gps")) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 设置GPS状态
	 * 
	 * @return
	 */
	public void setGPSStatus(Context context) {
		Intent intent = new Intent(Settings.ACTION_LOCATION_SOURCE_SETTINGS);
		context.startActivity(intent);
	}
	

	@Override
	public void switchOff() {
		setGPSStatus(this.context);
	}

	@Override
	public void switchOn() {
		setGPSStatus(this.context);
	}
	
	private GpsDevice(Context context) {
		this.context = context;
	}
	
	private Context context;
	
	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (GpsDevice.class) {
				if (mInstance == null) {
					mInstance = new GpsDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		// TODO Auto-generated method stub
		return getGPSStatus(this.context);
	}

	@Override
	public int getValue() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
		
	}
}
