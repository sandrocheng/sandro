package com.sandro.applock;

import android.app.Application;
import android.content.Context;

import com.tencent.tmsecure.common.TMSApplication;

public class MainApp extends Application{

	private static Context context;
	
	@Override
	public void onCreate() {
		context = this.getApplicationContext();
		ApplicationConfig.initData();
		TMSApplication.init(context, CoreService.class, new ApplicationConfig());
	}
	
	public static Context getAppContext(){
		return context;
	}
}
