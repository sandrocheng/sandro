/**
 * 
 */
package com.tencent.one.battery.demo.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;

import com.tencent.one.battery.core.batteryinfo.BatteryInfoManager;

/**
 * @author matrixxu
 * 
 */
public class DemoReceiver extends BroadcastReceiver {

	private int plugged;

	private int chargTimeNeeded;

	private int currentLevel;

	@Override
	public void onReceive(Context context, Intent intent) {
		SharedPreferences.Editor localEditor = PreferenceManager.getDefaultSharedPreferences(context).edit();
		if (intent.getAction().equals(BatteryInfoManager.POWER_PLUGGED_ACTION)) {
			plugged = intent.getIntExtra(BatteryInfoManager.PLUGGED_TYPE_KEY, 0);
			localEditor.putInt(BatteryInfoManager.PLUGGED_TYPE_KEY, plugged);
			localEditor.putBoolean(BatteryInfoManager.IS_PLUGGED, true);
			localEditor.commit();
			return;
		}

		if (intent.getAction().equals(BatteryInfoManager.POWER_UNPLUGGED_ACTION)) {
			localEditor.putBoolean(BatteryInfoManager.IS_PLUGGED, false);
			localEditor.commit();
			return;
		}

		if (intent.getAction().equals(BatteryInfoManager.CHARG_TIME_RECAL_ACTION)) {
			chargTimeNeeded = intent.getIntExtra(BatteryInfoManager.CHARG_TIME_KEY, 0);
			localEditor.putInt(BatteryInfoManager.CHARG_TIME_KEY, chargTimeNeeded);
			localEditor.commit();
			return;
		}

		if (intent.getAction().equals(BatteryInfoManager.CHARG_COMPLETE_ACTION)) {
			chargTimeNeeded = intent.getIntExtra(BatteryInfoManager.CHARG_TIME_KEY, 0);
			localEditor.putInt(BatteryInfoManager.CHARG_TIME_KEY, chargTimeNeeded);
			localEditor.commit();
			return;
		}

		if (intent.getAction().equals(BatteryInfoManager.BATTERY_LEVEL_CHANGED_ACTION)) {
			currentLevel = intent.getIntExtra(BatteryInfoManager.LEVEL_KEY, 0);
			localEditor.putInt(BatteryInfoManager.LEVEL_KEY, currentLevel);
			localEditor.commit();
			return;
		}
	}

}
