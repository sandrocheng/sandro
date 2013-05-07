package com.tencent.onesecurity.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class SecureService extends Service{

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

}
