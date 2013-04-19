package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

import android.content.Context;
import android.util.Log;

/**
 * 
 * @ClassName: UidProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl$Uid 获取实例和对应方法
 * @author: Lion
 * 
 */
public class UidProxy {

	private final static String TAG = "UidProxy";
	/**
	 * 反射 com.android.internal.os.BatteryStatsImpl$Uid
	 */
	private static Class<?> uidClass = null;

	/**
	 * 
	 * @param context
	 */
	public UidProxy(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			uidClass = localClassLoader.loadClass("com.android.internal.os.BatteryStatsImpl$Uid");
		} catch (ClassNotFoundException e) {
			Log.e(TAG, "uidClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e(TAG, "uidClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "uidClass reflect error IllegalArgumentException : " + e.toString());
		}
	}

	/**
	 * 获取uid对应的Process信息
	 * 
	 * @param object
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, Object> getProcessStats(Object object) {
		Method getProcessStatsmMethod = null;

		try {
			getProcessStatsmMethod = uidClass.getMethod("getProcessStats");
			return (Map<String, Object>) getProcessStatsmMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getProcessStats SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getProcessStats NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getProcessStats IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getProcessStats IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getProcessStats InvocationTargetException : " + e.toString());
		}
		return null;
	}

	/**
	 * 获取某个uid的wakelock信息 Returns a mapping containing wakelock statistics.
	 * 
	 * @return a Map from Strings to Uid.Wakelock objects.
	 */
	@SuppressWarnings("unchecked")
	public static Map<String, Object> getWakelockStats(Object object) {
		Method getWakelockStatsMethod = null;

		try {
			getWakelockStatsMethod = uidClass.getMethod("getWakelockStats");
			return (Map<String, Object>) getWakelockStatsMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getWakelockStats SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getWakelockStats NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getWakelockStats IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getWakelockStats IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getWakelockStats InvocationTargetException : " + e.toString());
		}
		return null;
	}

	/**
	 * 获取某uid接收的流量（bytes）
	 * 
	 * @param object
	 * @param which
	 * @return
	 */
	public static long getTcpBytesReceived(Object object, int which) {
		Method getTcpBytesReceivedMethod = null;

		try {
			getTcpBytesReceivedMethod = uidClass.getMethod("getTcpBytesReceived", int.class);
			return (Long) getTcpBytesReceivedMethod.invoke(object, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getTcpBytesReceived SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getTcpBytesReceived NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getTcpBytesReceived IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getTcpBytesReceived IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getTcpBytesReceived InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * 获取某uid发送的流量（bytes）
	 * 
	 * @param object
	 * @param which
	 * @return
	 */
	public static long getTcpBytesSent(Object object, int which) {
		Method getTcpBytesSentMethod = null;

		try {
			getTcpBytesSentMethod = uidClass.getMethod("getTcpBytesSent", int.class);
			return (Long) getTcpBytesSentMethod.invoke(object, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getTcpBytesSent SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getTcpBytesSent NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getTcpBytesSent IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getTcpBytesSent IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getTcpBytesSent InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * 获取wifi运行时间(微秒)
	 * 
	 * @param object
	 * @param time
	 * @param which
	 * @return
	 */
	public static long getWifiRunningTime(Object object, long time, int which) {
		Method getWifiRunningTimeMethod = null;

		try {
			getWifiRunningTimeMethod = uidClass.getMethod("getWifiRunningTime", long.class, int.class);
			getWifiRunningTimeMethod.setAccessible(true);
			return (Long) getWifiRunningTimeMethod.invoke(object, time, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getWifiRunningTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getWifiRunningTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getWifiRunningTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getWifiRunningTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getWifiRunningTime InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * Returns a mapping containing sensor statistics.
	 * 
	 * @return a Map from Integer sensor ids to Uid.Sensor objects.
	 */
	@SuppressWarnings("unchecked")
	public static Map<Integer, Object> getSensorStats(Object object) {
		Method getSensorStatsMethod = null;

		try {
			getSensorStatsMethod = uidClass.getMethod("getSensorStats");
			return (Map<Integer, Object>) getSensorStatsMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getSensorStats SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getSensorStats NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getSensorStats IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getSensorStats IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getSensorStats InvocationTargetException : " + e.toString());
		}
		return null;
	}

	/**
	 * 获取 uid
	 * 
	 * @param object
	 * @return
	 */
	public static int getUid(Object object) {
		Method getUidMethod = null;

		try {
			getUidMethod = uidClass.getMethod("getUid");
			return (Integer) getUidMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getUid SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getUid NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getUid IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getUid IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getUid InvocationTargetException : " + e.toString());
		}
		return 0;
	}
}
