package com.sandro.applock.core;

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

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;

import com.sandro.applock.LockActivity;
import com.sandro.applock.MainApp;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.qscanner.QScanListener;
import com.tencent.tmsecure.module.qscanner.QScanResultEntity;
import com.tencent.tmsecure.module.qscanner.QScannerManager;

public class LockManager {
	
	private static LockManager manager;
	
	private LogCatThread logCatThread;
	
	private TimerThread timerThread;
	
	private QScannerManager qScannerMananger = null;
	
	private ActivityManager activityManager;

	private LockManager(){};
	
	public static LockManager getIntance(){
		if(manager == null){
			manager = new LockManager();
		}
		return manager;
	}
	
	public void init(){
		activityManager = (ActivityManager) MainApp.getAppContext().getSystemService(Activity.ACTIVITY_SERVICE);
		logCatThread = new LogCatThread();
		timerThread = new TimerThread();
		qScannerMananger = ManagerCreator.getManager(QScannerManager.class);
		timerThread.start();
		logCatThread.start();
	}
	
	public void destory(){
		logCatThread.stopRead();
		qScannerMananger.freeScanner();	
	}
	
	/**
	 * 200ms轮寻一次查看开启的应用
	 * @author sandrocheng
	 *
	 */
	private class TimerThread extends Thread{
		private boolean start = false;
		private int count = 0;
		
		private TimerThread(){
			super("LockAppTimerThread");
		}
		
		@Override
		public void start(){
			start = true;
			super.start();
		}
		
		private void stopThread(){
			start = false;
		}
		
		@Override
		public void run() {
			while(start){
				try {
					Thread.sleep(200l);
					List<RunningTaskInfo> rtinfos = activityManager.getRunningTasks(1);
        			if(rtinfos.size()>0){
        				RunningTaskInfo info = rtinfos.get(0);
        				String tempName = info.baseActivity.getPackageName();
        				
        				
        				
        				
        			}					
				} catch (InterruptedException e) {
				}
			}
		}
	}
	
	/**
	 * 监听log的线程
	 * @author sandrocheng
	 *
	 */
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
				scanPackage(packageName);
				Log.d("CoreService", packageName);
			}
//			else{
//				Log.w("CoreService","error time : " + simpleDateFormat.format(dateCalHigh.getTime()));
//			}
		}

		private void scanPackage(final String packageName) {
			final String appName = getAppName(packageName);
			if(appName == null){
				return;
			}
			timerThread.stopThread();
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
							intent.setClass(MainApp.getAppContext(),LockActivity.class);
							intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
									| Intent.FLAG_ACTIVITY_CLEAR_TOP);
							intent.putExtra(LockActivity.INTENT_EXTRA_APP_NAME, appName);
							intent.putExtra(LockActivity.INTENT_EXTRA_PACKAGE_NAME, packageName);
							MainApp.getAppContext().startActivity(intent);
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
			PackageManager packageManager = MainApp.getAppContext().getPackageManager();
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
