package com.sandro.applock;

import com.sandro.applock.core.LockManager;
import com.tencent.tmsecure.common.TMSService;

public class CoreService extends TMSService{
	
	@Override
	public void onCreate() {
		super.onCreate();
		LockManager.getIntance().init();
	}

	@Override
	public void onDestroy() {
		LockManager.getIntance().destory();
		super.onDestroy();
	}


}
