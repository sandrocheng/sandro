package com.sandro.ImageTrans;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;

public class CoreService extends Service {

	public final static String ACTION_START_SINGLE_PAGE = "com.sandro.start.single.page";
	
	private ScreenSaverReceiver mSSReceiver = new ScreenSaverReceiver();
	
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}
	
	@Override
	public void onCreate(){
		super.onCreate();
		IntentFilter intentFilter = new IntentFilter(
				Intent.ACTION_SCREEN_ON);
		intentFilter.addAction(Intent.ACTION_SCREEN_OFF);
		intentFilter.addAction(ScreenSaverReceiver.ACTION_SCREEN_SAVER_CLOSE);
		this.registerReceiver(mSSReceiver, intentFilter);
	}
	
	@Override
	public void onStart(Intent intent, int startId){
		if (intent == null) {
			return;
		}
		String action = intent.getAction();
		if(action == null)
			return;
		if(action.equals(ACTION_START_SINGLE_PAGE)){
			intent.setClass(this, SingleScreenActivity.class);
			intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			startActivity(intent);
		}
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		unregisterReceiver(mSSReceiver);
	}
	
}
