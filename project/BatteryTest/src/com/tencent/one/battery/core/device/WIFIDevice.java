/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.Context;
import android.net.wifi.WifiManager;

/**
 * @author matrixxu
 * 
 */
public class WIFIDevice implements DeviceGovernor {

	private WifiManager wifi;

	public boolean getWifiStatus() {
		return wifi.isWifiEnabled();
	}

	@Override
	public void switchOff() {
		if (getWifiStatus()) {
			this.wifi.setWifiEnabled(false);
		}
	}

	@Override
	public void switchOn() {
		if (!getWifiStatus()) {
			this.wifi.setWifiEnabled(true);
		}
	}

	private WIFIDevice(Context context) {
		wifi = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (WIFIDevice.class) {
				if (mInstance == null) {
					mInstance = new WIFIDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		return getWifiStatus();
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
