package com.sandro.applock;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

public class CoreService extends TMSService{
	
	private LogCatThread logCatThread;
	
//	private MessengerHandler messengerHandler = new MessengerHandler();
	
//	private final Messenger serviceMessenger = new Messenger(messengerHandler);
	
	public static final int MESSAGE_SAY_HELLO = 1000;
	
	public static final int MESSAGE_GET_LOG = 1001;
	
	private Messenger clientMessenger;
	
	QScannerManager qScannerMananger = null;
	

	@Override
	public void onCreate() {
		super.onCreate();
		logCatThread = new LogCatThread();
		qScannerMananger = ManagerCreator.getManager(QScannerManager.class);
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
		qScannerMananger.freeScanner();	
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

//	private class MessengerHandler extends Handler {
//		@Override
//		public void handleMessage(Message msg) {
//			switch (msg.what) {
//			case MESSAGE_SAY_HELLO:
//				if (msg.replyTo != null) {
//					clientMessenger = msg.replyTo;
//				}
//				break;
//			default:
//				super.handleMessage(msg);
//				break;
//			}
//		}
//	}
	
	private class LogCatThread extends Thread{
		private boolean start = false;
		private final Pattern actPat = Pattern.compile("act=([^ ]+)");
		private final Pattern cmpPat = Pattern.compile("cmp=([^} ]+)");
		private final static int TIME_LENGTH = 18;
		private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		
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
			String timeStr = Calendar.getInstance().get(Calendar.YEAR) + "-" + line.substring(0, TIME_LENGTH);
			Date date;
			try {
				date = simpleDateFormat.parse(timeStr);
			} catch (ParseException e) {
				Log.e("CoreService", "handleLog ParseException : " + e.toString());
				return;
			}
			
			Calendar dateCalHigh = Calendar.getInstance();
			dateCalHigh.setTime(date);
			dateCalHigh.add(Calendar.SECOND, 5);
			
			if(dateCalHigh.after(Calendar.getInstance())){
				String packageName = getPackageName(packageStr);
				sendLog(packageName);
				
				startLockActivity(packageName);
				Log.d("CoreService", packageName);
			}
//			else{
//				Log.w("CoreService","error time : " + simpleDateFormat.format(dateCalHigh.getTime()));
//			}
		}

		private void startLockActivity(final String packageName) {
			final String AppName = getAppName(packageName);
			if(AppName == null){
				return;
			}
			List<String> pkgNames = new ArrayList<String>();
			pkgNames.add(packageName);
			qScannerMananger.scanPackages(pkgNames, new QScanListener() {

				@Override
				public void onCloudScan() {
					super.onCloudScan();
				}

				@Override
				public void onCloudScanError(int arg0) {
					super.onCloudScanError(arg0);
				}

				@Override
				public void onPackageScanProgress(int arg0,
						QScanResultEntity arg1) {
					super.onPackageScanProgress(arg0, arg1);
				}

				@Override
				public void onScanCanceled() {
					super.onScanCanceled();
				}

				@Override
				public void onScanContinue() {
					super.onScanContinue();
				}

				@Override
				public void onScanFinished(ArrayList<QScanResultEntity> results) {
					QScanResultEntity entity = null;
					if (results != null && results.size() != 0) {
						entity = results.get(0);
						if (entity.type != QScanConstants.TYPE_OK && entity.type != QScanConstants.TYPE_UNKNOWN) {

							Intent intent = new Intent();
							intent.setClass(CoreService.this,LockActivity.class);
							intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
									| Intent.FLAG_ACTIVITY_CLEAR_TOP);
							intent.putExtra(LockActivity.INTENT_EXTRA_APP_NAME, AppName);
							intent.putExtra(LockActivity.INTENT_EXTRA_PACKAGE_NAME, packageName);
							CoreService.this.startActivity(intent);
						}
					}
					
				}

				@Override
				public void onScanPaused() {
					super.onScanPaused();
				}

				@Override
				public void onScanStarted() {
					super.onScanStarted();
				}

				@Override
				public void onSdcardScanProgress(int arg0,
						QScanResultEntity arg1) {
					super.onSdcardScanProgress(arg0, arg1);
				}
			}, false);
					
		}
		
		private String getPackageName(String packageStr){
			 String str = packageStr.replace("cmp=", "");
			 String s = "/.";
			 int index = str.indexOf(s);
			 if(index>0){
				return str.substring(0, index);
			 }
			return "";
		}
		
		private String getAppName(String packageName){
			PackageManager packageManager = CoreService.this.getPackageManager();
			ApplicationInfo info;
			try {
				info = packageManager.getApplicationInfo(packageName,PackageManager.GET_META_DATA);
				if(info!=null){
					String appName = (String) info.loadLabel(packageManager);
					return appName;
				}
			} catch (NameNotFoundException e) {
			}

			
			return null;
		}
	}

}
