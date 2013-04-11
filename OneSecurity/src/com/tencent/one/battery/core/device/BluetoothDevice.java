/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;

/**
 * @author matrixxu
 * 
 */
public class BluetoothDevice implements DeviceGovernor {
	/**
	 * 取得蓝牙的开关状态
	 * 
	 * @return
	 */
	private boolean getBluetoothStatus() {
		BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
		return bluetoothAdapter.isEnabled();
	}

	/**
	 * 设置蓝牙的开关状态
	 * 
	 * @param status
	 */
	private void setBluetoothStatus(boolean status) {
		BluetoothAdapter bluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
		if (status) {
			bluetoothAdapter.enable();
		} else {
			bluetoothAdapter.disable();
		}
	}

	@Override
	public void switchOff() {
		if (getBluetoothStatus()) {
			setBluetoothStatus(false);
		}
	}

	@Override
	public void switchOn() {
		if (!getBluetoothStatus()) {
			setBluetoothStatus(true);
		}

	}

	@Override
	public boolean getDeviceStatus() {
		return getBluetoothStatus();
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (BluetoothDevice.class) {
				if (mInstance == null) {
					mInstance = new BluetoothDevice();
				}
			}
		}
		return mInstance;
	}

	@Override
	public int getValue() {
		return 0;
		// TODO Auto-generated method stub
		
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
		
	}

}
