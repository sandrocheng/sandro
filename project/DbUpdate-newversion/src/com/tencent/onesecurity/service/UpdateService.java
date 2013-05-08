package com.tencent.onesecurity.service;

import com.tencent.onesecurity.update.UpdateManager;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class UpdateService extends Service{
	
	public static final String START_UPDATE_ACTION = "com.tencent.action.update.start";
	
	/**
	 * 升级数据总量
	 */
	private int updateCount = 0;
	
	private UpdateThread updateThread;

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
		updateThread = new UpdateThread();
	}



	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if(intent!=null){
			String action = intent.getAction();
			if(START_UPDATE_ACTION.equals(action)){
				updateThread.start();
			}
		}
		return super.onStartCommand(intent, flags, startId);
	}
	
	private class UpdateThread extends Thread{
		private UpdateThread(){
			super("UpdateThread");
		}

		@Override
		public void run() {
			updateCount = UpdateManager.getInstance().getUpdateCounts();
			
		}
		
		
	}

}
