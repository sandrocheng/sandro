/**
 * 
 */
package com.tencent.one.battery.core.batteryinfo;

import android.app.IntentService;
import android.content.Intent;

/**
 * @author matrixxu
 * 
 */
public class HandleService extends IntentService {

	public HandleService() {
		super("handlerservice");
	}

	public static String POWER_PLUGGED_ACTION = "power_plugged_action";

	public static String POWER_UNPLUGGED_ACTION = "power_unplugged_action";

	public static String ESTIMATE_CHARG_TIME_ACTION = "estimate_charg_time";

	public static String REESTIMATE_CHARG_TIME_ACTION = "reestimate_charg_time";

	@Override
	protected void onHandleIntent(Intent intent) {
		String action = intent.getAction();
		if (action.equals(POWER_PLUGGED_ACTION)) {
			BatteryInfoManager.powerPlugged(intent.getIntExtra(BatteryInfoManager.PLUGGED_TYPE_KEY, 0), this);
		}
		else if (action.equals(POWER_UNPLUGGED_ACTION)) {
			BatteryInfoManager.powerUnplugged(this);
		}
		else if (action.equals(ESTIMATE_CHARG_TIME_ACTION)) {
			BatteryInfoManager.estimateWastTime(this, intent.getIntExtra(BatteryInfoManager.LEVEL_KEY, 0),
					intent.getIntExtra(BatteryInfoManager.PLUGGED_TYPE_KEY, 0));// 立即估算时间
		}
		else if (action.equals(REESTIMATE_CHARG_TIME_ACTION)) {
			BatteryInfoManager.reEstimateWastTime(this, intent.getIntExtra(BatteryInfoManager.LEVEL_KEY, 0),
					intent.getIntExtra(BatteryInfoManager.WAST_TIME_KEY, 0), intent.getIntExtra(BatteryInfoManager.PLUGGED_TYPE_KEY, 0));// 重新估算时间
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.IntentService#onCreate()
	 */
	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.IntentService#onDestroy()
	 */
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.IntentService#onStart(android.content.Intent, int)
	 */
	@Override
	public void onStart(Intent intent, int startId) {
		// TODO Auto-generated method stub
		super.onStart(intent, startId);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.IntentService#onStartCommand(android.content.Intent,
	 * int, int)
	 */
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		// TODO Auto-generated method stub
		return super.onStartCommand(intent, flags, startId);
	}

}
