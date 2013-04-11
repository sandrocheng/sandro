package com.sandro.smstotxlqqmail;

import android.app.Application;
import android.content.Context;

public class MainApp extends Application{

	private static Context context;
	
	@Override
	public void onCreate() {
		context = this.getApplicationContext();
	}
	
	public static Context getAppContext(){
		return context;
	}
}
