package com.tencent.onesecurity.util;

import android.content.Context;
import android.net.wifi.WifiManager;

public class SwitchWifi {
	private WifiManager wifi;
	
	public SwitchWifi(Context context) {
		super();
		
		wifi = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
	}
	
	/**
	 * 取得wifi开关状态
	 * @return
	 */
	public boolean getWifiStatus() {
		return wifi.isWifiEnabled();
	}
	
	/**
	 * 设置wifi开关状态
	 * @param status
	 */
	public void setWifiStatus(boolean status) {
		this.wifi.setWifiEnabled(status);
	}
}
