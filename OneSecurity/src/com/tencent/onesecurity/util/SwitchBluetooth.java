package com.tencent.onesecurity.util;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;

public class SwitchBluetooth {
	
	public SwitchBluetooth(Context context) {
		super();
	}
	
	/**
	 * 取得蓝牙的开关状态
	 * @return
	 */
	public boolean getBluetoothStatus() {
		BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
		return bluetoothAdapter.isEnabled();
	}
	
	/**
	 * 设置蓝牙的开关状态
	 * @param status
	 */
	public void setBluetoothStatus(boolean status) {
		BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
		if (status) {
			bluetoothAdapter.enable();
		} else {
			bluetoothAdapter.disable();
		}
	}
}
