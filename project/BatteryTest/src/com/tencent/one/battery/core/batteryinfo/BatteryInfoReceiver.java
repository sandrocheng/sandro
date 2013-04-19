/**
 * 
 */
package com.tencent.one.battery.core.batteryinfo;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.BatteryManager;

/**
 * @author matrixxu
 * 
 */
public class BatteryInfoReceiver extends BroadcastReceiver {

	// private static String TAG = "BatteryInfoReceiver";

	private int mLevel = 0;

	private boolean isCharging = false;

	private static long start;

	private static long end;

	// private Intent intent = null;

	@Override
	public void onReceive(Context context, Intent intent) {
		if (intent.getAction().equals(Intent.ACTION_BATTERY_CHANGED)) {
			int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0);// …状态，定义值是BatteryManager.BATTERY_STATUS_XXX
			double extralevel = (double) intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
			double maxLevel = (double) intent.getIntExtra(BatteryManager.EXTRA_SCALE, 0);
			double level = extralevel;
			if (maxLevel != 0) {
				level = 100 * extralevel / maxLevel;
			}

			BatteryInfoManager.onBatteryReceiver(context, (int) level);

			int chargType = intent.getIntExtra(BatteryManager.EXTRA_PLUGGED, 0);
			if (status == BatteryManager.BATTERY_STATUS_FULL) {// 充满电
				BatteryInfoManager.chargComplete(context);
			}

			if (status != BatteryManager.BATTERY_STATUS_CHARGING) {
				isCharging = false;
				BatteryInfoManager.powerUnplugged(context);
				this.mLevel = 0;
				return;
			}

			if (!isCharging) {// 插上充电器
				isCharging = true;

				BatteryInfoManager.powerPlugged(chargType, context);
				BatteryInfoManager.estimateWastTime(context, (int) level, chargType);// 立即估算时间
			}

			if (this.mLevel == 0) {
				this.mLevel = (int) level;
				start = System.currentTimeMillis();
				return;
			} else {
				if (level - this.mLevel >= 1) {
					end = System.currentTimeMillis();
					this.mLevel = (int) level;
					long wastTime = end - start;// 计算增长1%的耗时
					start = System.currentTimeMillis();
					BatteryInfoManager.reEstimateWastTime(context, (int) level, wastTime, chargType);// 重新估算时间
				}
			}
		}
	}
}
