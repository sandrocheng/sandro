package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.tencent.one.battery.core.util.ReflectUtil;


import android.content.Context;
import android.util.Log;


/**
 * 
 * @ClassName: SensorProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl$Uid$Sensor 获取实例和对应方法
 * @author: Lion
 * 
 */
public class SensorProxy {

	private final static String TAG = "SensorProxy";
	/**
	 * 反射 com.android.internal.os.BatteryStatsImpl$Uid
	 */
	private static Class<?> sensorClass = null;
	
	private static int GPS;

	/**
	 * 
	 * @param context
	 */
	public SensorProxy(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			sensorClass = localClassLoader.loadClass("com.android.internal.os.BatteryStatsImpl$Uid$Sensor");
		} catch (ClassNotFoundException e) {
			Log.e(TAG, "sensorClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e(TAG, "sensorClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "sensorClass reflect error IllegalArgumentException : " + e.toString());
		}
		GPS = getGPS();
	}

	/**
	 * 反射获取Sensor.GPS的值
	 * 
	 * @return
	 */
	private static int getGPS() {
		if (sensorClass == null || sensorClass == null) {
			return -1;
		}
		return (Integer) ReflectUtil.ReflectSuperFieldValue(sensorClass, null, "GPS");
	}
	
	public static int get_GPS() {
		return GPS;
	}
	
	/**
	 * 获取sensor type
	 * 
	 * @param object
	 * @return
	 */
	public static int getHandle(Object object) {
		Method getHandleMethod = null;

		try {
			getHandleMethod = sensorClass.getMethod("getHandle");
			return (Integer) getHandleMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getHandle SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getHandle NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getHandle IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getHandle IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getHandle InvocationTargetException : " + e.toString());
		}
		return 0;
	}

	/**
	 * 获取sensor的 Timer
	 * 
	 * @param object
	 * @return
	 */
	public static Object getSensorTime(Object object) {
		Method getSensorTimeMethod = null;

		try {
			getSensorTimeMethod = sensorClass.getMethod("getSensorTime");
			return getSensorTimeMethod.invoke(object);
		} catch (SecurityException e) {
			Log.e(TAG, "getSensorTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getSensorTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getSensorTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getSensorTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getSensorTime InvocationTargetException : " + e.toString());
		}
		return null;
	}
}
