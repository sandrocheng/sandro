package com.tencent.one.battery.demo.service;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.IBinder;

import com.tencent.one.battery.core.batteryinfo.BatteryInfoReceiver;
import com.tencent.one.battery.core.device.NetworkReceiver;

/**
 * os中的SecurityService
 * 
 * @author sandrocheng
 * 
 */
public class CoreService extends Service {

	private BatteryInfoReceiver batteryInfoReceiver;
	private NetworkReceiver wifiReceiver;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		IntentFilter netfilter = new IntentFilter();
		// 这里写上所有的action
		netfilter.addAction(Intent.ACTION_BATTERY_CHANGED);// 电量改变
		batteryInfoReceiver = new BatteryInfoReceiver();
		registerReceiver(batteryInfoReceiver, netfilter);

		IntentFilter mFilter = new IntentFilter();
		// // 网络状态变化
		// mFilter.addAction(ConnectivityManager.CONNECTIVITY_ACTION);
		// // wifi开关变化
		mFilter.addAction(WifiManager.WIFI_STATE_CHANGED_ACTION);
		// 蓝牙开关变化
		mFilter.addAction(BluetoothAdapter.ACTION_STATE_CHANGED);
		mFilter.addAction("android.intent.action.MOBILEDATA_MODE");
		
		wifiReceiver = new NetworkReceiver();
		registerReceiver(wifiReceiver, mFilter);// 动态注册
		super.onCreate();
	}

	@Override
	public void onDestroy() {
		this.unregisterReceiver(wifiReceiver);
		this.unregisterReceiver(batteryInfoReceiver);
		super.onDestroy();
	}

}
