package com.sandro.ImageTrans;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class ScreenSaverReceiver extends BroadcastReceiver{
	
	public static final String ACTION_SCREEN_SAVER_CLOSE = "com.sandro.screenSaverClose.action";
	
	public static boolean SCREEN_SAVER_SETTING = false;
	
	public ScreenSaverReceiver(){

	}

	@Override
	public void onReceive(Context context, Intent intent) {
		if(intent== null){
			return;
		}
		String action = intent.getAction();
		Log.i("ScreenSaverReceiver", "action : " + action);
		
		if(!SCREEN_SAVER_SETTING){
			return;
		}
		if(action !=null){
			Intent serviceIntent = new Intent(context, CoreService.class);
			serviceIntent.setAction(action);
			context.startService(serviceIntent);
		}
	}

	
//	private void showScreenSaver() {
//		if(screenShow)
//			return;
//		keyguardLock.disableKeyguard();
//		mWindowManager.addView(screenSaverView, params);
//		screenShow = true;
//	}
//	
//	private void closeScreenView(){
//		if(screenShow){
//			WindowManager mWindowManager = (WindowManager) MainApp.getContext().getSystemService(Context.WINDOW_SERVICE);
//			mWindowManager.removeView(screenSaverView);	
//			screenShow = false;
//			keyguardLock.reenableKeyguard();
//		}
//	}

}
