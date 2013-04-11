package com.sandro.util;


public final class LogUtil {
	
	public static void d(String tag, Object data){
		android.util.Log.d(tag, data.toString());
	}
	
	public static void e(String tag, Object data){
		android.util.Log.e(tag, data.toString());
	}
	
	public static void i(String tag, Object data){
		android.util.Log.i(tag, data.toString());
	}
	
	public static void w(String tag, Object data){
		android.util.Log.w(tag, data.toString());
	}

}
