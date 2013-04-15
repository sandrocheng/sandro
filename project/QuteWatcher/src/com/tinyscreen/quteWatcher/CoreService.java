package com.tinyscreen.quteWatcher;

import java.util.Calendar;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.IBinder;
import android.provider.Settings;

import com.tinyscreen.quteWatcher.Data.FileData;
import com.tinyscreen.quteWatcher.log.InfoObj;
import com.tinyscreen.quteWatcher.log.Log;

public class CoreService extends Service {
	
	private WathcerNotification wathcerNotification;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}
	
	@Override
	public void onCreate(){
		super.onCreate();
		wathcerNotification = new WathcerNotification();
		setForeground(true);
		
		ContentResolver contentResolver = this.getContentResolver();
		contentResolver.registerContentObserver(Settings.System
				.getUriFor(Settings.Secure.LOCATION_PROVIDERS_ALLOWED), true,
				new GpsProvider(new Handler()));
	}
	
	@Override
	public void onStart(Intent intent, int startId){
		if(intent!=null){
			InfoObj obj = (InfoObj) intent.getParcelableExtra(Log.DATA_INFO);
			FileData.addData(obj);
			wathcerNotification.showNewMsg();
		}
	}

	@Override
	public void onDestroy() {
		wathcerNotification.cancel();
		FileData.saveFile();
		Intent intent = new Intent(this, SystemAlarm.class);
		PendingIntent sender = PendingIntent.getBroadcast(this, 0, intent, 0);
		//设定一个10秒后的时间
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(System.currentTimeMillis());
		calendar.add(Calendar.SECOND, 10);
	    AlarmManager alarm=(AlarmManager)getSystemService(ALARM_SERVICE);    
	    alarm.set(AlarmManager.RTC_WAKEUP, calendar.getTimeInMillis(), sender);
	    android.util.Log.i("CoreService", "onDestroy");
		super.onDestroy();
	}
	
	private class GpsProvider extends ContentObserver{

		public GpsProvider(Handler handler) {
			super(handler);
		}

		@Override
		public void onChange(boolean selfChange) {
			super.onChange(selfChange);
			android.util.Log.i("GpsProvider","onchange : " + selfChange);
		}
	}

}
