package com.sandro.example;

import android.app.Application;
import android.content.Context;

public class MainApp extends Application{

	private static Context mContex;
	@Override
	public void onCreate() {
		mContex = this.getApplicationContext();
		super.onCreate();
	}

	public static Context getContext(){
		return mContex;
	}

}
