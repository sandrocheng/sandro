/**
 * 
 */
package com.tencent.one.battery.core.batteryinfo;

import java.math.BigDecimal;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.BatteryManager;
import android.preference.PreferenceManager;
import android.util.Log;

/**
 * @author matrixxu
 * 
 */
public class BatteryInfoManager {

	public static String POWER_PLUGGED_ACTION = "com.tencent.one.battery.POWER_PLUGGED";

	public static String POWER_UNPLUGGED_ACTION = "com.tencent.one.battery.POWER_UNPLUGGED";

	public static String CHARG_TIME_RECAL_ACTION = "com.tencent.one.battery.CHARG_TIME_RECAL";

	public static String CHARG_COMPLETE_ACTION = "com.tencent.one.battery.CHARG_COMPLETE";

	public static String BATTERY_LEVEL_CHANGED_ACTION = "com.tencent.one.battery.BATTERY_LEVEL_CHANGED";

	public static String LEVEL_KEY = "level";

	public static String WAST_TIME_KEY = "wast_time";

	public static String PLUGGED_TYPE_KEY = "plugged";

	public static String IS_PLUGGED = "is_plugged";

	public static String CHARG_TIME_KEY = "chargtime";

	private final static int WHEN_STABLE_VOLTAGE_LEVEL = 74;

	private final static double DIFFERENT_FACTOR = 1.82;

	public static void powerPlugged(int plugged, Context context) {
		Intent intent = new Intent();
		intent.setAction(POWER_PLUGGED_ACTION);// 发出自定义广播
		intent.putExtra(PLUGGED_TYPE_KEY, plugged);
		context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
	}

	public static void powerUnplugged(Context context) {
		Intent intent = new Intent();
		intent.setAction(POWER_UNPLUGGED_ACTION);// 发出自定义广播
		context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
	}

	public static void chargComplete(Context context) {
		Intent intent = new Intent();
		intent.setAction(CHARG_COMPLETE_ACTION);// 发出自定义广播
		context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
	}

	public static void onBatteryReceiver(Context context, int level) {
		SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
		Editor edit = sp.edit();
		if (sp.getInt(LEVEL_KEY, 0) != level) {
			Intent intent = new Intent();
			intent.setAction(BATTERY_LEVEL_CHANGED_ACTION);// 发出自定义广播
			edit.putInt(LEVEL_KEY, level);
			edit.commit();
			intent.putExtra(LEVEL_KEY, level);
			context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
		}
		
	}

	public static void estimateWastTime(Context context, int level, int chargType) {
		int result = 0;
		float averageValue = 0;
		if (chargType == BatteryManager.BATTERY_PLUGGED_AC) {
			Log.d("sdk", "进入预估函数,当前使用AC充电!");
			averageValue = PerscaleData.getInstance(context).getAverageValueByAcData(level);
		}
		if (chargType == BatteryManager.BATTERY_PLUGGED_USB) {
			Log.d("sdk", "进入预估函数,当前使用USB充电!");
			averageValue = PerscaleData.getInstance(context).getAverageValueByUsbData(level);
		}
		if (averageValue == 0) {
			result = defaultEstimate(level, chargType);// 如果暂时获取不到平均值，则用默认斜率估算法
			Intent intent = new Intent();
			intent.setAction(CHARG_TIME_RECAL_ACTION);// 发出自定义广播
			intent.putExtra(CHARG_TIME_KEY, result);
			context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
			return;
		}
		if (level < WHEN_STABLE_VOLTAGE_LEVEL) {
			result = (int) (averageValue * (WHEN_STABLE_VOLTAGE_LEVEL - level) + averageValue * DIFFERENT_FACTOR * (100 - WHEN_STABLE_VOLTAGE_LEVEL));
		}
		if (level >= WHEN_STABLE_VOLTAGE_LEVEL) {
			result = (int) (averageValue * (100 - level));
		}
		Intent intent = new Intent();
		intent.setAction(CHARG_TIME_RECAL_ACTION);// 发出自定义广播
		intent.putExtra(CHARG_TIME_KEY, result);
		context.sendBroadcast(intent, "com.android.permission.RECV_BATTERY_SDK");
	}

	public static void reEstimateWastTime(Context context, int level, long wastTime, int chargType) {

		// 保留小数点后1位
		float a = (float) (Math.round(wastTime / 1000) / 60.0);
		BigDecimal bd1 = new BigDecimal(a);
		float f1 = bd1.setScale(1, BigDecimal.ROUND_HALF_UP).floatValue();

		PerscaleData.getInstance(context).savePerscale(level, f1, chargType);
		estimateWastTime(context, level, chargType);
	}

	private final static int chargFactorByUSB = 360;

	private final static int charFactorByAC = 180;

	private static int defaultEstimate(int level, int chargType) {
		int t = 100 - level;
		int temp = 0;
		switch (chargType) {
		case BatteryManager.BATTERY_PLUGGED_AC:
			temp = (t * Integer.valueOf(charFactorByAC) + 50) / 100;
			break;
		case BatteryManager.BATTERY_PLUGGED_USB:
			temp = (t * Integer.valueOf(chargFactorByUSB) + 50) / 100;
			break;
		}
		return temp;
	}
}
