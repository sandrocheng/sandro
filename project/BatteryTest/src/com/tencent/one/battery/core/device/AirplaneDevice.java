package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.Intent;
import android.provider.Settings;

public class AirplaneDevice implements DeviceGovernor {

//	private boolean isOpen = false;
	
	private Context context = null;

	// Android中如何判断系统当前是否处于飞行模式中：
	public static boolean IsAirModeOn(Context context) {
		return (Settings.System.getInt(context.getContentResolver(), Settings.System.AIRPLANE_MODE_ON, 0) == 1 ? true : false);
	}

	// 如何切换飞行模式
	public static void setAirplaneMode(Context context, boolean enabling) {
		Settings.System.putInt(context.getContentResolver(), Settings.System.AIRPLANE_MODE_ON, enabling ? 1 : 0);
		Intent intent = new Intent(Intent.ACTION_AIRPLANE_MODE_CHANGED);
		intent.putExtra("state", enabling);
//		context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
		context.sendBroadcast(intent);
	}

	@Override
	public void switchOff() {
		if (IsAirModeOn(this.context)) {
			setAirplaneMode(this.context, false);
//			this.isOpen = false;
		}
	}

	@Override
	public void switchOn() {
		if (!IsAirModeOn(this.context)) {
			setAirplaneMode(this.context, true);
//			this.isOpen = true;
		}

	}

	@Override
	public boolean getDeviceStatus() {
		return IsAirModeOn(this.context);
	}

	private AirplaneDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (AirplaneDevice.class) {
				if (mInstance == null) {
					mInstance = new AirplaneDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
	}

	@Override
	public int getValue() {
		return 0;
	}

}
