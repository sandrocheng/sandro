package com.tencent.one.battery.core.powerrank.proxy;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.util.Log;

/**
 * 
 * @ClassName: TimerProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl$Timer 获取实例和对应方法
 * @author: Lion
 * 
 */
public class TimerProxy {

	private final static String TAG = "TimerProxy";

	/**
	 * 反射 com.android.internal.os.BatteryStatsImpl$Timer
	 */
	private static Class<?> timerClass = null;

	/**
	 * 
	 * @param context
	 */
	public TimerProxy(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			timerClass = localClassLoader.loadClass("com.android.internal.os.BatteryStatsImpl$Timer");
		} catch (ClassNotFoundException e) {
			Log.e("WakelockProxy", "timerClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e("WakelockProxy", "timerClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e("WakelockProxy", "timerClass reflect error IllegalArgumentException : " + e.toString());
		}
	}

	/**
	 * Returns the total time in microseconds associated with this Timer for the
	 * selected type of statistics.
	 * 
	 * @param batteryRealtime
	 *            system realtime on battery in microseconds
	 * @param which
	 *            one of STATS_TOTAL, STATS_LAST, or STATS_CURRENT
	 * @return a time in microseconds(微秒)
	 */
	public static long getTotalTimeLocked(Object object, long batteryRealtime, int which) {
		if (which == -1) {
			return 0l;
		}
		Method getTotalTimeLockedMethod = null;

		try {
			getTotalTimeLockedMethod = timerClass.getMethod("getTotalTimeLocked", long.class, int.class);
			return (Long) getTotalTimeLockedMethod.invoke(object, batteryRealtime, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getTotalTimeLocked SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getTotalTimeLocked NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getTotalTimeLocked IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getTotalTimeLocked IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getTotalTimeLocked InvocationTargetException : " + e.toString());
		}
		return 0l;
	}
}
