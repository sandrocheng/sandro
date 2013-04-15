package com.tinyscreen.quteWatcher;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

/**
 * 
 * @author sandrocheng
 *
 */
public class MainApp extends Application{

	private static Context mContext;
	@Override
	public void onCreate(){
		mContext = super.getApplicationContext();
		Intent intent = new Intent(mContext, CoreService.class);
		mContext.startService(intent);
	}
	
	public static Context getContext(){
		return mContext;
	}
}
