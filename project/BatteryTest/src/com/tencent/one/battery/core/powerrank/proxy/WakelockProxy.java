package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.util.Log;

/**
 * 
 * @ClassName: WakelockProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl$Uid$Wakelock
 *                 获取实例和对应方法
 * @author: Lion
 * 
 */
public class WakelockProxy {
	
	private final static String TAG = "WakelockProxy";
	
	/**
	 * 反射 com.android.internal.os.BatteryStatsImpl$Uid$Wakelock
	 */
	private static Class<?> wakelockClass = null;

	/**
	 * 
	 * @param context
	 */
	public WakelockProxy(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			wakelockClass = localClassLoader.loadClass("com.android.internal.os.BatteryStatsImpl$Uid$Wakelock");
		} catch (ClassNotFoundException e) {
			Log.e("WakelockProxy", "wakelockClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e("WakelockProxy", "wakelockClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e("WakelockProxy", "wakelockClass reflect error IllegalArgumentException : " + e.toString());
		}
	}

	/**
	 * The statistics associated with a particular wake lock.
	 */
	public static Object getWakeTime(Object object, int type) {
		if (type == -1) {
			return 0l;
		}
		Method getWakeTimeMethod = null;

		try {
			getWakeTimeMethod = wakelockClass.getMethod("getWakeTime", int.class);
			return (Object) getWakeTimeMethod.invoke(object, type);
		} catch (SecurityException e) {
			Log.e(TAG, "getWakeTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getWakeTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getWakeTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getWakeTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getWakeTime InvocationTargetException : " + e.toString());
		}
		return 0l;
	}
}
