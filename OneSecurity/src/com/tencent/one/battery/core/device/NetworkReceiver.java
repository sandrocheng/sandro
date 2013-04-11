/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.bluetooth.BluetoothAdapter;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.util.Log;

/**
 * @author matrixxu 广播监听WIFI状态 需要动态注册
 */
public class NetworkReceiver extends BroadcastReceiver {

	private String action;

	private Bundle bundle;


	@Override
	public void onReceive(Context context, Intent intent) {
		action = intent.getAction();
		bundle = intent.getExtras();
		if (action.equals(WifiManager.WIFI_STATE_CHANGED_ACTION)) {
			int wifiState = bundle.getInt(WifiManager.EXTRA_WIFI_STATE);
			if (wifiState == WifiManager.WIFI_STATE_DISABLED) {
				Log.d("WIFIReceiver", "close");
				DeviceData.getInstance(context).saveDevice(DeviceData.WIFI_KEY, DeviceData.CLOSE_VALUE);
			}
			if (wifiState == WifiManager.WIFI_STATE_ENABLED) {
				// wifi打开
				DeviceData.getInstance(context).saveDevice(DeviceData.WIFI_KEY, DeviceData.OPEN_VALUE);
			}
		} else if (action.equals(BluetoothAdapter.ACTION_STATE_CHANGED)) {
			int bluetoothState = bundle.getInt(BluetoothAdapter.EXTRA_STATE);
			if (bluetoothState == BluetoothAdapter.STATE_OFF) {
				DeviceData.getInstance(context).saveDevice(DeviceData.BLUETOOTH_KEY, DeviceData.CLOSE_VALUE);
			}
			if (bluetoothState == BluetoothAdapter.STATE_ON) {
				DeviceData.getInstance(context).saveDevice(DeviceData.BLUETOOTH_KEY, DeviceData.OPEN_VALUE);
			}
		} else if (action.equals("android.intent.action.MOBILEDATA_MODE")) {
			boolean isOpen = MobileDataDevice.getInstance(context).getDeviceStatus();
			if (isOpen) {
				DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, DeviceData.OPEN_VALUE);
			} else {
				DeviceData.getInstance(context).saveDevice(DeviceData.MOBILEDATA_KEY, DeviceData.CLOSE_VALUE);
			}
		}
	}
}
