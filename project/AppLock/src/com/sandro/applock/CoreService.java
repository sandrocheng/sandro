package com.sandro.applock;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Pattern;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

public class CoreService extends Service{
	
	private LogCatThread logCatThread;
	
	private MessengerHandler messengerHandler = new MessengerHandler();
	
	private final Messenger serviceMessenger = new Messenger(messengerHandler);
	
	public static final int MESSAGE_SAY_HELLO = 1000;
	
	public static final int MESSAGE_GET_LOG = 1001;
	
	private Messenger clientMessenger;

	@Override
	public IBinder onBind(Intent intent) {
		return serviceMessenger.getBinder();
	}

	@Override
	public void onCreate() {
		super.onCreate();
		logCatThread = new LogCatThread();
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		if(!logCatThread.isAlive()){
			logCatThread.start();
		}
		
		return super.onStartCommand(intent, flags, startId);
	}

	@Override
	public void onDestroy() {
		logCatThread.stopRead();
		super.onDestroy();
	}

	private class MessengerHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MESSAGE_SAY_HELLO:
				if (msg.replyTo != null) {
					clientMessenger = msg.replyTo;
					Log.i("CoreService", "MESSAGE_SAY_HELLO");
				}
				break;
			default:
				super.handleMessage(msg);
				break;
			}
		}
	}
	
	private class LogCatThread extends Thread{
		private boolean start = false;
		private final Pattern actPat = Pattern.compile("act=([^ ]+)");
		private final Pattern cmpPat = Pattern.compile("cmp=([^} ]+)");
		private final Pattern datPat = Pattern.compile("dat=([^} ]+)");
		private final Pattern pat = Pattern.compile("([^ ]+)/([^: ]+)");
		
		private static final String LOG_PATTERN = "logcat -v time ActivityManager:I WindowManager:I *:S"; 
		  
		private LogCatThread(){
			super("LogCatThread");
		}
		
		private void stopRead(){
			start = false;
		}
		
		@Override
		public void start(){
			start = true;
			super.start();
		}

		@Override
		public void run() {
			try {
				Process process = Runtime.getRuntime().exec(LOG_PATTERN);
				BufferedReader bufferedReader = new BufferedReader(
						new InputStreamReader(process.getInputStream()));
				String line = "";
				while (start && (line = bufferedReader.readLine()) != null) {
					if (clientMessenger != null) {
						Message clientMsg = Message.obtain(null,
								MESSAGE_GET_LOG);
						clientMsg.obj = line;
						try {
							clientMessenger.send(clientMsg);
						} catch (RemoteException e) {
							clientMessenger = null;
						}
					}
				}
			} catch (IOException e) {
			}
		}
	}

}
