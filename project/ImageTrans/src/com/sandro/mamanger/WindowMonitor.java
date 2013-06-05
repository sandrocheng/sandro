package com.sandro.mamanger;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.sandro.ImageTrans.MainApp;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.os.Handler;
import android.os.Message;
import android.util.Log;


/**
 * 应用开启后同时启动定时任务和logcat任务线程监控屏幕
 * 如果logcat发现到了应用启动则会关闭定时任务线程
 * 如果定时任务发现了n次应用启动，没有比关闭说明log线程没能监控到应用启动，此时会关闭log线程
 * @author sandrocheng
 *
 */
public class WindowMonitor {

	private static WindowMonitor manager;
	private LogCatThread logCatThread;
	private Object monitorLock = new Object();
	private MonitorListener monitorListener;
	
	private static final int MSG_LOOP = 100;
	
	/**
	 * 监控模式：双线程监控
	 */
	private static final int MONITOR_PATTERN_BOATH = 0;
	/**
	 * 监控模式：log线程监控
	 */
	private static final int MONITOR_PATTERN_LOGCAT = 1;
	/**
	 * 监控模式：定时监控
	 */
	private static final int MONITOR_PATTERN_TIMER = 2;
	
	/**
	 * 监控模式
	 */
	private int monitorPattern = MONITOR_PATTERN_BOATH;
	
	private ActivityManager activityManager;
	
	/**
	 * 当timeCount >5 关闭locat线程
	 */
	private int timeCount = 0;
	
	private Handler mHandler = new Handler(MainApp.getContext().getMainLooper()){

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MSG_LOOP:
				synchronized (monitorLock) {
					List<RunningTaskInfo> rtinfos = activityManager.getRunningTasks(1);
					if(monitorPattern != MONITOR_PATTERN_LOGCAT){
						if(rtinfos.size()>0){
	        				RunningTaskInfo info = rtinfos.get(0);
	        				String packageName = info.baseActivity.getPackageName();
	        				callBackListener(MONITOR_PATTERN_TIMER,packageName);
						}
						if(timeCount>5){
							monitorPattern = MONITOR_PATTERN_TIMER;
							if(logCatThread!=null){
								logCatThread.destory();
								logCatThread = null;
							}
						}else{
							timeCount ++;
						}
						this.sendEmptyMessageDelayed(MSG_LOOP, 1000l);
					}
				}
				break;
			default:
				super.handleMessage(msg);
				break;
			}
		}
		
	};
	
	private WindowMonitor(){
		activityManager =  (ActivityManager) MainApp.getContext().getSystemService(Activity.ACTIVITY_SERVICE);
	}
	
	public static WindowMonitor getIntance(){
		if(manager == null){
			manager = new WindowMonitor();
		}
		return manager;
	}
	
	/**
	 * 注册监听，同时开启监控线程,线程安全
	 * @param listener
	 */
	public  void registMonitor(MonitorListener listener){
		synchronized (monitorLock) {
			if(monitorListener == null && listener!=null){
				startMonitor();
			}
			monitorListener = listener;
		}
		
	}
	
	/**
	 * 注销监听，注销后，线程会关闭,线程安全
	 */
	public void unRegistMonitor(){
		synchronized (monitorLock) {
			monitorListener = null;
			stopMonitor();
		}
	}
	
	/**
	 * 屏幕开启调用，如果有回调接口重新启动监控线程
	 */
	public void screenOn(){
		synchronized (monitorLock) {
			if(monitorListener != null){
				startMonitor();
			}
		}
	}
	
	/**
	 * 屏幕关闭调用，关闭监控线程
	 */
	public void screenOff(){
		synchronized (monitorLock) {
			if(monitorListener != null){
				stopMonitor();
			}
		}
	}
	
	private void callBackListener(int pattern,String packageName){
		synchronized (monitorLock) {
			if(monitorListener != null){
				if(pattern == MONITOR_PATTERN_LOGCAT && monitorPattern == MONITOR_PATTERN_BOATH){
					return;
				}
				monitorListener.onScreen(packageName);
			}
		}
	}
	
	private void startMonitor(){
		stopMonitor();
		synchronized (monitorLock) {
			if(monitorPattern == MONITOR_PATTERN_LOGCAT){
				logCatThread = new LogCatThread();
				logCatThread.start();
			}else if(monitorPattern == MONITOR_PATTERN_TIMER){
				this.mHandler.sendEmptyMessageDelayed(MSG_LOOP, 1000l);
			}else if(monitorPattern == MONITOR_PATTERN_BOATH){
				timeCount = 0;
				logCatThread = new LogCatThread();
				logCatThread.start();
				this.mHandler.sendEmptyMessageDelayed(MSG_LOOP, 1000l);
			}
		}
	}
	
	private void stopMonitor(){
		if(logCatThread!=null){
			logCatThread.destory();
			logCatThread = null;
		}
		mHandler.removeCallbacksAndMessages(null);
	}
	
	/**
	 * 屏幕监控回调接口
	 * @author sandrocheng
	 *
	 */
	public static interface MonitorListener{
		/**
		 * 屏幕当前显示的应用包名
		 * @param packageName
		 */
		public void onScreen(String packageName);
	}
	
	/**
	 * 监听log的线程
	 * @author sandrocheng
	 *
	 */
	private class LogCatThread extends Thread{
		private final Pattern actPat = Pattern.compile("act=([^ ]+)");
		private final Pattern cmpPat = Pattern.compile("cmp=([^} ]+)");
		private final static int TIME_LENGTH = 18;
		private final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
		
		private static final String LOG_PATTERN = "logcat -v time ActivityManager:I WindowManager:I *:S"; 
		
		private Object bufferLock = new Object();
		
		private BufferedReader bufferedReader;
		private InputStreamReader inputStreamReader;
		private Process process;
		private LogCatThread(){
			super("LogCatThread");
		}
		
		@Override
		public synchronized void start() {
			super.start();
		}
		
		private void destory() {
			synchronized (bufferLock) {
				if (process != null) {
					process.destroy();
					process = null;
				}
				if (inputStreamReader != null) {
					try {
						inputStreamReader.close();
					} catch (IOException e) {
					}
					inputStreamReader = null;
				}
				if (bufferedReader != null) {
					try {
						bufferedReader.close();
					} catch (IOException e) {
					}
					bufferedReader = null;
				}
			}
		}

		@Override
		public void run(){
			try {
				Log.d("WindowMonitor", "LogCatThread start ");
				process = Runtime.getRuntime().exec(LOG_PATTERN);
				inputStreamReader = new InputStreamReader(process.getInputStream());
				bufferedReader = new BufferedReader(inputStreamReader);
				
				String line = "";
				Matcher actMatcher = null;
				Matcher cmpMatcher = null;
				while (bufferedReader != null) {
					line = bufferedReader.readLine();
					if (line == null) {
						Log.w("WindowMonitor",
								"LogCatThread.run  bufferedReader.readLine() ");
						break;
					}
					actMatcher = actPat.matcher(line);
					cmpMatcher = cmpPat.matcher(line);
					if (actMatcher.find() && cmpMatcher.find()) {
						handleLog(line, cmpMatcher.group());
					}

				}
			} catch (IOException e) {
				Log.w("WindowMonitor", "LogCatThread.run IOException : " + e.toString());
			}finally{
				destory();
			}
			Log.d("WindowMonitor", "LogCatThread stop ");
		}
		
		private void handleLog(String line, String packageStr) {
			String timeStr = Calendar.getInstance().get(Calendar.YEAR) + "-" + line.substring(0, TIME_LENGTH);
			Date date;
			try {
				date = simpleDateFormat.parse(timeStr);
			} catch (ParseException e) {
				Log.e("WindowMonitor", "handleLog ParseException : " + e.toString());
				return;
			}
			
			Calendar dateCalHigh = Calendar.getInstance();
			dateCalHigh.setTime(date);
			dateCalHigh.add(Calendar.SECOND, 5);
			
			if(dateCalHigh.after(Calendar.getInstance())){
				String packageName = getPackageName(packageStr);
				callBackListener(MONITOR_PATTERN_LOGCAT,packageName);
				Log.i("WindowMonitor", "handleLog packageName : " + packageName);
				monitorPattern = MONITOR_PATTERN_LOGCAT;
				mHandler.removeCallbacksAndMessages(null);
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
}
