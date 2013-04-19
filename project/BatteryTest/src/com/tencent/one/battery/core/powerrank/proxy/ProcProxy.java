package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.util.Log;

/**
 * 
 * @ClassName: ProcProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl$Uid$Proc 获取实例和对应方法
 * @author: Lion
 * 
 */
public class ProcProxy {
	
	private final static String TAG = "ProcProxy";
	/**
	 * 反射 com.android.internal.os.BatteryStatsImpl$Uid$Proc
	 */
	private static Class<?> procClass = null;

	/**
	 * 
	 * @param context
	 */
	public ProcProxy(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			procClass = localClassLoader.loadClass("com.android.internal.os.BatteryStatsImpl$Uid$Proc");
		} catch (ClassNotFoundException e) {
			Log.e(TAG, "procClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e(TAG, "procClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e("ProcProxy", "procClass reflect error IllegalArgumentException : " + e.toString());
		}
	}

	/**
	 * 某一进程在用户态的时间(1/100秒) Returns the total time (in 1/100 sec) spent executing
	 * in user code.
	 * 
	 * @param object
	 * @param which
	 * @return
	 */
	public static long getUserTime(Object object, int which) {
		if (which == -1) {
			return 0;
		}
		Method getUserTimeMethod = null;

		try {
			getUserTimeMethod = procClass.getMethod("getUserTime", int.class);
			return (Long) getUserTimeMethod.invoke(object, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getUserTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getUserTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getUserTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getUserTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getUserTime InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * 某一进程在核心态的时间(1/100秒) Returns the total time (in 1/100 sec) spent executing
	 * in system code.
	 * 
	 * @param object
	 * @param which
	 * @return
	 */
	public static long getSystemTime(Object object, int which) {
		if (which == -1) {
			return 0;
		}
		Method getSystemTimeMethod = null;

		try {
			getSystemTimeMethod = procClass.getMethod("getSystemTime", int.class);
			return (Long) getSystemTimeMethod.invoke(object, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getSystemTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getSystemTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getSystemTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getSystemTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getSystemTime InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * 进程在前台时候的CPU执行时间(microseconds) Returns the cpu time spent in microseconds
	 * while the process was in the foreground.
	 * 
	 * @param which
	 *            one of STATS_TOTAL, STATS_LAST, STATS_CURRENT or
	 *            STATS_UNPLUGGED
	 * @return foreground cpu time in microseconds
	 */
	public static long getForegroundTime(Object object, int which) {
		if (which == -1) {
			return 0;
		}
		Method getForegroundTimeMethod = null;

		try {
			getForegroundTimeMethod = procClass.getMethod("getForegroundTime", int.class);
			return (Long) getForegroundTimeMethod.invoke(object, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getForegroundTime SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getForegroundTime NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getForegroundTime IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getForegroundTime IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getForegroundTime InvocationTargetException : " + e.toString());
		}
		return 0l;
	}

	/**
	 * 返回在一个特定的CPU频率上运行的近似时间(微秒)
	 * 
	 * Returns the approximate cpu time spent in microseconds, at a certain CPU
	 * speed.
	 * 
	 * @param speedStep
	 *            the index of the CPU speed. This is not the actual speed of
	 *            the CPU.
	 * @param which
	 *            one of STATS_TOTAL, STATS_LAST, STATS_CURRENT or
	 *            STATS_UNPLUGGED
	 * @see BatteryStats#getCpuSpeedSteps()
	 */
	public static long getTimeAtCpuSpeedStep(Object object, int step, int which) {
		if (which == -1) {
			return 0;
		}
		Method getTimeAtCpuSpeedStepMethod = null;

		try {
			getTimeAtCpuSpeedStepMethod = procClass.getMethod("getTimeAtCpuSpeedStep", int.class, int.class);
			return (Long) getTimeAtCpuSpeedStepMethod.invoke(object, step, which);
		} catch (SecurityException e) {
			Log.e(TAG, "getTimeAtCpuSpeedStep SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getTimeAtCpuSpeedStep NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getTimeAtCpuSpeedStep IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getTimeAtCpuSpeedStep IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getTimeAtCpuSpeedStep InvocationTargetException : " + e.toString());
		}
		return 0l;
	}
}
