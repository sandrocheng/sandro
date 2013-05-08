package com.tencent.onesecurity.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class SecureService extends Service{

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		Log.i("SecureService", "SecureService create");
		return super.onStartCommand(intent, flags, startId);
	}
	
	

}
