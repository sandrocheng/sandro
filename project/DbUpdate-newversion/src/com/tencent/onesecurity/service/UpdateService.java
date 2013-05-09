package com.tencent.onesecurity.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

import com.tencent.onesecurity.update.UpdateManager;

public class UpdateService extends Service{
	
	public static final String START_UPDATE_ACTION = "com.tencent.action.update.start";
	
	/**
	 * 升级数据总量
	 */
	private int updateCount = 0;
	
	private UpdateThread updateThread;
	
	public static final int RESRESH_COUNT = 100;
	
	/**
	 * 客户端绑定后通知service，并传递自己的handler引用
	 */
	public static final int MESSAGE_SAY_HELLO = 101;
	
	public static final int MESSAGE_UPDATE_FINISH = 102;
	
	private Messenger clientMessenger;
	
	private Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch(msg.what){
			case RESRESH_COUNT:
				Log.i("UpdateService", "update current : " + msg.arg1 + "  total : " + updateCount);
				if(clientMessenger!=null){
		    		Message clientMsg = Message.obtain(null,RESRESH_COUNT);
		    		clientMsg.arg1 = msg.arg1;
		    		clientMsg.arg2 = updateCount;
		    		sendToClient(clientMsg);
				}
				break;
			case MESSAGE_UPDATE_FINISH:
				UpdateService.this.stopSelf();
				break;
            case MESSAGE_SAY_HELLO:
                if(msg.replyTo == null){
                	Log.w("UpdateService", "mHandler MESSAGE_SAY_HELLO msg.replyTo is null ");
                }else{
                	clientMessenger = msg.replyTo;
                }
                break;				
			}
		}
		
	};
	
	final Messenger mMessenger = new Messenger(mHandler);

	@Override
	public IBinder onBind(Intent intent) {
		return mMessenger.getBinder();
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
	
	private void sendToClient(Message clientMsg) {
		try {
			clientMessenger.send(clientMsg);
		} catch (RemoteException e) {
			clientMessenger = null;
			Log.w("UpdateService", "handler what : " + clientMsg.what + " RemoteException : " + e.toString());
		}
	}
	
	private class UpdateThread extends Thread{
		private UpdateThread(){
			super("UpdateThread");
		}

		@Override
		public void run() {
			updateCount = UpdateManager.getInstance().getUpdateCounts();
			UpdateManager.getInstance().updateApp(mHandler);
			UpdateManager.getInstance().updateFinish();
			
			if(clientMessenger!=null){
	    		Message clientMsg = Message.obtain(null,MESSAGE_UPDATE_FINISH);
	        	sendToClient(clientMsg);
	        	
	        	Message msg = mHandler.obtainMessage(MESSAGE_UPDATE_FINISH);
	        	msg.sendToTarget();
			}
		}
	}

}
