package com.sandro.applock.core;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

/**
 * 应用开启后同时启动定时任务和logcat任务线程监控 应用启动
 * 如果logcat发现到了应用启动则会关闭定时任务线程
 * 如果定时任务发现了n次应用启动，没有比关闭说明log线程没能监控到应用启动，此时会关闭log线程
 * 扫描的应用会保存到缓存里，每次检测到有应用启动会先从缓存查找，减少系统开销
 * @author sandrocheng
 *
 */
public class LockManager {
	
	private static LockManager manager;
	
	private LogCatThread logCatThread;
	
	private TimerThread timerThread;
	
	private QScannerManager qScannerMananger = null;
	
	private ActivityManager activityManager;

	private LockManager(){};
	
	private Map<String,AppInfo> packageMapping;
	
	public static LockManager getIntance(){
		if(manager == null){
			manager = new LockManager();
		}
		return manager;
	}
	
	public void init(){
		packageMapping = new HashMap<String,AppInfo>();
		activityManager = (ActivityManager) MainApp.getAppContext().getSystemService(Activity.ACTIVITY_SERVICE);
		logCatThread = new LogCatThread();
		timerThread = new TimerThread();
		qScannerMananger = ManagerCreator.getManager(QScannerManager.class);
		timerThread.start();
		logCatThread.start();
	}
	
	private void startLockActivity(String appName,String packageName,String monitor){
		Intent intent = new Intent();
		intent.setClass(MainApp.getAppContext(),LockActivity.class);
		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK
				| Intent.FLAG_ACTIVITY_CLEAR_TOP);
		intent.putExtra(LockActivity.INTENT_EXTRA_APP_NAME, monitor + appName);
		intent.putExtra(LockActivity.INTENT_EXTRA_PACKAGE_NAME, packageName);
		MainApp.getAppContext().startActivity(intent);
	}
	
	private void scanPackage(final String packageName,String appName,String monitor){
		synchronized (packageMapping) {
			AppInfo info = packageMapping.get(packageName);
			if(info == null){
				scanVirus(packageName,appName,monitor);
			}else{
				if(info.isVirus){
					startLockActivity(info.appName,packageName,monitor);
				}
			}
		}
	}

	private void scanVirus(final String packageName,final String appName,final String monitor) {
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
					AppInfo info = new AppInfo();
					if (entity.type != QScanConstants.TYPE_OK && entity.type != QScanConstants.TYPE_UNKNOWN) {
						info.isVirus = true;
						startLockActivity(appName,packageName,monitor);
					}
					info.appName = appName;
					packageMapping.put(packageName, info);
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
		private String curPackageName;
		
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
        				if(tempName.equals("com.sandro.applock")){
        					continue;
        				}
        				if(curPackageName==null){
        					curPackageName = tempName;
        					handlePackage(tempName);
        				}
        				else if(!tempName.equals(curPackageName)){
        					handlePackage(tempName);
        					curPackageName = tempName;
        				}
        			}					
				} catch (InterruptedException e) {
				}
			}
			Log.d("CoreService", "TimerThread stop ");
		}

		private void handlePackage(String packageName) {
			count ++;
			if(count >5 && start){
				logCatThread.stopRead();
			}
			final String appName = getAppName(packageName);
			if(appName == null){
				return;
			}
			scanPackage(packageName,appName,"定时监控-");
			Log.i("CoreService", "TimerThread : " + packageName);
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
			Log.d("CoreService", "LogCatThread stop ");
			
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
				final String appName = getAppName(packageName);
				if(appName == null){
					return;
				}
				scanPackage(packageName,appName,"log监控-");
				timerThread.stopThread();
				Log.i("CoreService", "logcat " + packageName);
			}
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
	}
	
	private class AppInfo{
		private boolean isVirus = false;
		private String appName;
	}
}
