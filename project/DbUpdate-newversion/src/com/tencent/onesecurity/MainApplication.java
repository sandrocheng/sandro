package com.tencent.onesecurity;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.service.SecureService;
import com.tencent.onesecurity.service.UpdateService;
import com.tencent.onesecurity.update.UpdateManager;

public class MainApplication extends Application{

	private static Context mContext;
	
	@Override
	public void onCreate() {
		super.onCreate();
		mContext = getApplicationContext();
		if(UpdateManager.getInstance().checkUpdate()){
			UpdateManager.getInstance().startUpdateService(mContext);
		}else{
			systemInit();
		}
		
	}

	private void systemInit() {
		Intent intent = new Intent(this,SecureService.class);
		this.startService(intent);
	}
	
	public static Context getContext() {
		return mContext;
	}

}
