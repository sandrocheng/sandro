package com.tencent.onesecurity.manager.battery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;

import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.service.SecureService;

/**
 * 
 * @author gordonbi
 * 
 */
public class BatteryManagerImpl {

	private IntentFilter mIntentFilter;

	public BatteryMonitorListener mListener;

	public static int mExtraLevel = 0;

	public static boolean mIsCharging = false;

	public static final int HIGH_BATTERY = 30;
	public static final int MIDDLE_BATTERY = 10;
	public static final int LOW_BATTERY = 0;
	
	private static BatteryManagerImpl mInstance;
	
	private BatteryManagerImpl() {
			
	}
	
	public static BatteryManagerImpl getSingleInstance() {
		if(mInstance==null){
			mInstance = new BatteryManagerImpl();
		}
		return mInstance;
	}
	
	public void registerMonitorBattery(Context context) {
		mIntentFilter = new IntentFilter();
		mIntentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);
		context.registerReceiver(mIntentReceiver, mIntentFilter);
	}

	public void unregisterMonitorBattery(Context context) {
		context.unregisterReceiver(mIntentReceiver);
	}

	public interface BatteryMonitorListener {
		void onNotify();
	}

	private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {

		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(Intent.ACTION_BATTERY_CHANGED)) {
				setChargingStatus(intent);
				setExtraLevel(intent);
				if (mListener!=null) {
					mListener.onNotify();
				}
				
				int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0);
				if (status == BatteryManager.BATTERY_STATUS_CHARGING) {
					boolean isSaved = ConfigDao.getInstance().isSavePowerMode();
					if (isSaved) {
						// 如果用户充电则恢复到省电模式之前的设置
						Intent intentBatteryChanged = new Intent(context,
								SecureService.class);
						intentBatteryChanged
								.setFlags(SecureService.ROLLBACK_USER_MODE);
						context.startService(intentBatteryChanged);
					}
				}
			}
		}

		private void setChargingStatus(Intent intent) {
			int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, BatteryManager.BATTERY_STATUS_NOT_CHARGING);

			mIsCharging = (status == BatteryManager.BATTERY_STATUS_CHARGING || status == BatteryManager.BATTERY_STATUS_FULL);
		}

		/**
		 * from 0 to EXTRA_SCALE.
		 * 
		 * @param intent
		 */
		private void setExtraLevel(Intent intent) {
			mExtraLevel = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);// 当前电量数值
		}
	};
}
