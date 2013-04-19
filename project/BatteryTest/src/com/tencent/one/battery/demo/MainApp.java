package com.tencent.one.battery.demo;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

import com.tencent.one.battery.demo.service.CoreService;
import com.tinyscreen.quteWatcher.service.LogUtil;
import com.tinyscreen.quteWatcher.service.WatcherLoader;

public class MainApp extends Application {

	private static Context mContext;

	@Override
	public void onCreate() {
		mContext = super.getApplicationContext();
		Intent intent = new Intent(mContext, CoreService.class);
		mContext.startService(intent);
		WatcherLoader.startQuteWatcher(mContext);
		LogUtil.i("MainApp", "BatterySDK oncreate");
	}

	public static Context getContext() {
		return mContext;
	}
}
