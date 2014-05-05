package com.sandro.example;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

public class CoreService extends Service{

	private ScrapView scrapView;
	private WindowManager mWindowManager;
	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
//		mWindowManager = (WindowManager) this.getSystemService(Context.WINDOW_SERVICE);
//		scrapView = new ScrapView(this);
//		scrapView.setBackgroundColor(0xffffffff);
//		
//		LayoutParams params = new LayoutParams(); 
//		params.width = WindowManager.LayoutParams.FILL_PARENT;
//		params.height = WindowManager.LayoutParams.FILL_PARENT;
//		mWindowManager.addView(scrapView, params);		
	}

	@Override
	public void onDestroy() {
		mWindowManager.removeView(scrapView);
		super.onDestroy();
	}

	

}
