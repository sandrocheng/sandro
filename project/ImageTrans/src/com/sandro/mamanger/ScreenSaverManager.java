package com.sandro.mamanger;

import android.app.KeyguardManager;
import android.app.KeyguardManager.OnKeyguardExitResult;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.WindowManager;

import com.sandro.ImageTrans.MainApp;
import com.sandro.ImageTrans.R;
import com.sandro.custom.view.ScreenSaverBackView;
import com.sandro.custom.view.ScreenSaverView;

public class ScreenSaverManager {

	private KeyguardManager keyguardManager;
	
	private KeyguardManager.KeyguardLock keyguardLock;
	
	private ScreenSaverView screenSaverView;
	
	private WindowManager.LayoutParams screenSaverViewParams = new WindowManager.LayoutParams();
	
	private ScreenSaverBackView screenBackSaverView;
	
	private WindowManager.LayoutParams screenBackSaverViewParams = new WindowManager.LayoutParams();
	
	private WindowManager mWindowManager;
	
	private boolean screenShow;
	
	public ScreenSaverManager(){
		mWindowManager = (WindowManager) MainApp.getContext().getSystemService(Context.WINDOW_SERVICE);
		keyguardManager = (KeyguardManager)MainApp.getContext().getSystemService(Context.KEYGUARD_SERVICE);
		keyguardLock = keyguardManager.newKeyguardLock(Context.KEYGUARD_SERVICE);
		LayoutInflater inflater = LayoutInflater.from(MainApp.getContext());
		createSaverView(inflater);
		createSaverBackView(inflater);
	}

	/**
	 * 创建背景view
	 */
	private void createSaverBackView(LayoutInflater inflater){
		screenBackSaverView= (ScreenSaverBackView)inflater.inflate(
				R.layout.screen_saver_back_splash_layout, null);
		screenBackSaverViewParams.width = WindowManager.LayoutParams.FILL_PARENT;
		screenBackSaverViewParams.height = WindowManager.LayoutParams.FILL_PARENT;
//		if (android.os.Build.VERSION.SDK_INT > 10) {
			screenBackSaverViewParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ERROR;
			screenBackSaverViewParams.flags = WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
					| WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
//		} else {
//			screenBackSaverViewParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ERROR;
//			screenBackSaverViewParams.flags =WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS| WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
//		}
	}
	
	/**
	 * 创建主页面
	 */
	private void createSaverView(LayoutInflater inflater) {
		screenSaverView = (ScreenSaverView) inflater.inflate(
				R.layout.screen_saver_splash_layout, null);
		screenSaverViewParams.width = WindowManager.LayoutParams.FILL_PARENT;
		screenSaverViewParams.height = WindowManager.LayoutParams.FILL_PARENT;//params.flags |= WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED; 		params.flags |= WindowManager.LayoutParams.FLAG_DISMISS_KEYGUARD;
		if (android.os.Build.VERSION.SDK_INT > 10) {
			screenSaverViewParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ERROR;
			screenSaverViewParams.flags = WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
					| WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS
					| WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
					| WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
		} 
		else {
			screenSaverViewParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_OVERLAY;
			screenSaverViewParams.flags =  WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS | WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL;
		}
	}
	
	public void showScreenSaver() {
		if (screenShow)
			return;
		


		mWindowManager.addView(screenBackSaverView, screenBackSaverViewParams);
		Log.i("ScreenSaverManager", "screenBackSaverViewParams  type : "+ screenBackSaverViewParams.type
				+ " ,flags : " + screenBackSaverViewParams.flags);
		mWindowManager.addView(screenSaverView, screenSaverViewParams);
		Log.i("ScreenSaverManager", "screenSaverViewParams  type : "
				+ screenSaverViewParams.type
				+ " flags : "
				+ screenSaverViewParams.flags);		

		screenShow = true;
		keyguardLock.disableKeyguard();
		
	}

	public void closeScreenView() {
		if (screenShow) {
			mWindowManager.removeView(screenSaverView);
			mWindowManager.removeView(screenBackSaverView);
			screenShow = false;
			
			keyguardManager.exitKeyguardSecurely(new OnKeyguardExitResult() {

				@Override
				public void onKeyguardExitResult(boolean success) {
					keyguardLock.reenableKeyguard();
				}
				
			});
		}
	}


}
