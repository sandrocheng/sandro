package com.tinyscreen.quteWatcher.service;

import android.util.Log;

/**
 * 
* @ClassName: LogUtil
* @Description:log管理
* @author: Sandro
* @date: 2013-2-21 下午03:11:50
*
 */
public class LogUtil {

	/**
	 * qute log监控器
	 */
	public static WatcherService WATCHER;
	
	public static void d(String tag, Object data) {
		if(data!=null){
			Log.d(tag, data.toString());
		}
		
		if (WATCHER != null) {
			WATCHER.d(tag, data);
		}
	}

	public static void e(String tag, Object data) {
		if(data!=null){
			Log.e(tag, data.toString());
		}
		
		if (WATCHER != null) {
			WATCHER.e(tag, data);
		}
	}

	public static void i(String tag, Object data) {
		if(data!=null){
			Log.i(tag, data.toString());
		}
		if (WATCHER != null) {
			WATCHER.i(tag, data);
		}
	}

	public static void w(String tag, Object data) {
		if(data != null){
			Log.w(tag, data.toString());
		}
		
		if (WATCHER != null) {
			WATCHER.w(tag, data);
		}
	}
}
