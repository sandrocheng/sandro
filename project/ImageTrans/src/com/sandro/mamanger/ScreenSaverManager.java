package com.sandro.mamanger;

import android.app.KeyguardManager;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.WindowManager;

import com.sandro.ImageTrans.MainApp;
import com.sandro.ImageTrans.R;
import com.sandro.custom.view.ScreenSaverView;

public class ScreenSaverManager {

	private KeyguardManager keyguardManager;
	
	private KeyguardManager.KeyguardLock keyguardLock;
	
	private ScreenSaverView screenSaverView;
	
	private WindowManager.LayoutParams params = new WindowManager.LayoutParams();
	
	private WindowManager mWindowManager;
	
	public ScreenSaverManager(){
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
	


}
