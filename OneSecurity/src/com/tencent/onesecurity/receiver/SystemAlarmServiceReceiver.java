package com.tencent.onesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.scheduletask.SystemTimerManager;
import com.tencent.onesecurity.service.ScheduleTaskProcessService;

/**
 * 系统AlarmServiceTimer接收器，接收来自AlarmManager的广播
 * @ClassName: CoreTimerReceiver
 * @Description:
 * @author: Jess Yan
 * @date: 2012-11-10 下午05:54:46
 *
 */
public class SystemAlarmServiceReceiver extends BroadcastReceiver{
	public static PowerManager.WakeLock wakeLock = null;
	
	@Override
	public void onReceive(Context context, Intent intent) {
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
		Log.d("TIMER", "System wake me up. onReceiver");
		if (intent.getAction().equals(SystemTimerManager.SYSTEM_TIMER_TRIGGER_ACTION)) {
			
			Intent noticeService = new Intent();
			noticeService.setClass(context, ScheduleTaskProcessService.class);
			noticeService.setAction(ScheduleTaskProcessService.ACTION_TIMER_TRIGGER);
			context.startService(noticeService);
			
			if (wakeLock == null) {
				Log.d("WAKE_LOCK", "SystemAlarmServiceReceiver, no wake lock, so new one lock.");
				PowerManager pm = (PowerManager) MainApplication.getContext().getSystemService(Context.POWER_SERVICE);
				wakeLock = pm.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK, "ONE_SECURITY");
			}
			if (!wakeLock.isHeld()) {
				wakeLock.acquire();
				Log.d("WAKE_LOCK", "SystemAlarmServiceReceiver, no lock has been held, so acquire lock.");
			} else {
				Log.d("WAKE_LOCK", "SystemAlarmServiceReceiver, someone holding this lock. ");
			}
		}
	}
}