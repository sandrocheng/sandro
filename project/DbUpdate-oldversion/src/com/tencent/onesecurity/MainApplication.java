package com.tencent.onesecurity;

import com.tencent.onesecurity.service.SecureService;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

public class MainApplication extends Application{

	private static Context mContext;
	
	@Override
	public void onCreate() {
		super.onCreate();
		mContext = getApplicationContext();
		
		systemInit();
	}

	private void systemInit() {
		Intent intent = new Intent(this,SecureService.class);
		this.startService(intent);
	}
	
	public static Context getContext() {
		return mContext;
	}

}
