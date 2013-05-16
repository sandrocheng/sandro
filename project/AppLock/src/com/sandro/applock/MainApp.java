package com.sandro.applock;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

public class MainApp extends Application{

	private static Context context;
	
	@Override
	public void onCreate() {
		context = this.getApplicationContext();
		Intent intent = new Intent(this,CoreService.class);
		this.startService(intent);
	}
	
	public static Context getAppContext(){
		return context;
	}
}
