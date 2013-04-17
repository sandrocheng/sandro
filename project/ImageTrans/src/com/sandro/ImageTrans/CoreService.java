package com.sandro.ImageTrans;

import android.app.Service;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import android.util.Log;

import com.sandro.mamanger.ScreenSaverManager;

public class CoreService extends Service {

	public final static String ACTION_START_SINGLE_PAGE = "com.sandro.start.single.page";
	
	private ScreenSaverReceiver mSSReceiver = new ScreenSaverReceiver();
	
	private ScreenSaverManager screenSaverManager;
	
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
		screenSaverManager = new ScreenSaverManager();
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if (intent == null) {
			super.onStartCommand(intent, flags, startId);
		}
		String action = intent.getAction();
		if(action == null)
			super.onStartCommand(intent, flags, startId);
		Log.i("CoreService", "onStartCommand action : " + action);
		if(action.equals(ACTION_START_SINGLE_PAGE)){
			intent.setClass(this, SingleScreenActivity.class);
			intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			startActivity(intent);
		}
		else if (intent.getAction().equals(Intent.ACTION_SCREEN_ON)){
	
		}else if(intent.getAction().equals(Intent.ACTION_SCREEN_OFF)){

		}else if(intent.getAction().equals(ScreenSaverReceiver.ACTION_SCREEN_SAVER_CLOSE)){

		}
		return super.onStartCommand(intent, flags, startId);
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		unregisterReceiver(mSSReceiver);
	}
	
}
