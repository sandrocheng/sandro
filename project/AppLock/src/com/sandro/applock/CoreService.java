package com.sandro.applock;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
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
	
	private void sendLog(String line) {
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

	private class MessengerHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MESSAGE_SAY_HELLO:
				if (msg.replyTo != null) {
					clientMessenger = msg.replyTo;
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
		private final static int TIME_LENGTH = 18;
		private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
		
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
				Matcher actMatcher = null;
				Matcher cmpMatcher = null;
				while (start && (line = bufferedReader.readLine()) != null) {
					actMatcher = actPat.matcher(line); 
					cmpMatcher = cmpPat.matcher(line);
					if(actMatcher.find() && cmpMatcher.find()){
						handleLog(line, cmpMatcher.group());
					}
				}
			} catch (IOException e) {
			}
		}

		private void handleLog(String line, String packageStr) {
			String timeStr = (String) line.substring(0, TIME_LENGTH);
			Date date;
			try {
				date = simpleDateFormat.parse(timeStr);
			} catch (ParseException e) {
				Log.e("CoreService", "handleLog ParseException : " + e.toString());
				return;
			}
			
			Calendar dateCal = Calendar.getInstance();
			dateCal.setTime(date);
			dateCal.set(Calendar.YEAR, 2013);
			
			Log.i("CoreService", "timeStr : " + timeStr
					+ " ,format : " + simpleDateFormat.format(dateCal.getTime())
					+ ",convert : " + dateCal.get(Calendar.YEAR) + " "
					+ " " + dateCal.get(Calendar.MONTH)
					+ " " + dateCal.get(Calendar.DAY_OF_MONTH)
					+ " " + dateCal.get(Calendar.HOUR_OF_DAY)
					+ " " + dateCal.get(Calendar.MINUTE)
					+ " " + dateCal.get(Calendar.SECOND));
			
//			Calendar realDate = Calendar.getInstance();
//			realDate.set(dateCal.get(Calendar.YEAR), 
//					dateCal.get(Calendar.MONTH), 
//					dateCal.get(Calendar.DAY_OF_MONTH), 
//					dateCal.get(Calendar.HOUR_OF_DAY), 
//					dateCal.get(Calendar.MINUTE), 
//					dateCal.get(Calendar.SECOND));
			
			
//			if(dateCalHigh.after(Calendar.getInstance())){
//				Log.i("CoreService", timeStr + " : " + packageStr);
//				sendLog(packageStr);
//			}else{
//				Log.d("CoreService",  " dateCalHigh : " + simpleDateFormat.format(dateCalHigh.getTime())
//						+ " ,dateCur : " + simpleDateFormat.format(Calendar.getInstance().getTime()));
//			}
		}
	}

}
