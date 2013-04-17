package com.sandro.ImageTrans;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.WindowManager;

import com.sandro.custom.view.ScreenSaverView;

public class ScreenSaverReceiver extends BroadcastReceiver{
	
	private KeyguardManager keyguardManager;
	
	private KeyguardManager.KeyguardLock keyguardLock;
	
	private ScreenSaverView screenSaverView;
	
	private boolean screenShow = false;
	
	private WindowManager.LayoutParams params = new WindowManager.LayoutParams();
	
	private WindowManager mWindowManager;
	
	public static final String ACTION_SCREEN_SAVER_CLOSE = "com.sandro.screenSaverClose.action";
	
	public ScreenSaverReceiver(){
		keyguardManager = (KeyguardManager)MainApp.getContext().getSystemService(Context.KEYGUARD_SERVICE);
		keyguardLock = keyguardManager.newKeyguardLock(Context.KEYGUARD_SERVICE);
		
		LayoutInflater inflater = LayoutInflater.from(MainApp.getContext());
		screenSaverView = (ScreenSaverView) inflater.inflate(
				R.layout.screen_saver_splash_layout, null);
		params.width = WindowManager.LayoutParams.FILL_PARENT;
		params.height = WindowManager.LayoutParams.FILL_PARENT;
//		params.flags |= WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED;
//		params.flags |= WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD;
		if (android.os.Build.VERSION.SDK_INT >= 10) {
			params.type = 2010;
		} else {
			params.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
		}
		mWindowManager = (WindowManager) MainApp
				.getContext().getSystemService(Context.WINDOW_SERVICE);
	}

	@Override
	public void onReceive(Context context, Intent intent) {
		if(intent.getAction() == null){
			return;
		}

		if (intent.getAction().equals(Intent.ACTION_SCREEN_ON)){
			Log.i("ScreenSaverReceiver", "ACTION_SCREEN_ON");
			
			showScreenSaver();		
		}else if(intent.getAction().equals(Intent.ACTION_SCREEN_OFF)){
			Log.i("ScreenSaverReceiver", "ACTION_SCREEN_OFF");
			closeScreenView();
		}else if(intent.getAction().equals(ACTION_SCREEN_SAVER_CLOSE)){
			Log.i("ScreenSaverReceiver", "ACTION_SCREEN_SAVER_CLOSE");
			closeScreenView();
		}
	}

	
	private void showScreenSaver() {
		if(screenShow)
			return;
		keyguardLock.disableKeyguard();
		mWindowManager.addView(screenSaverView, params);
		screenShow = true;
	}
	
	private void closeScreenView(){
		if(screenShow){
			WindowManager mWindowManager = (WindowManager) MainApp.getContext().getSystemService(Context.WINDOW_SERVICE);
			mWindowManager.removeView(screenSaverView);	
			screenShow = false;
			keyguardLock.reenableKeyguard();
		}
	}

}
