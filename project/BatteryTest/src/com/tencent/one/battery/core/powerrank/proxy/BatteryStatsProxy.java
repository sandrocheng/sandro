package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.tencent.one.battery.core.util.ReflectUtil;


import android.content.Context;
import android.os.IBinder;
import android.util.Log;

public class BatteryStatsProxy {

    public static final int NUM_SCREEN_BRIGHTNESS_BINS = 5;

    private String TAG = "BatteruStatsProxy";

    /**
     * 反射获取的com.android.internal.app.IBatteryStats$Stub$Proxy的对象
     */
    private Object mBatteryStatsProxy = null;

    /**
     * 反射 com.android.internal.app.IBatteryStats类
     */
    private Class<?> batteryStatsClass = null;

    /**
     * PowerProfile.POWER_CPU_ACTIVE Power consumption when CPU is in power
     * collapse mode. public static final String POWER_CPU_ACTIVE =
     * "cpu.active";
     */
//    private String POWER_CPU_ACTIVE = null;

    // Added by Lionliu
    /**
     * Include all of the data in the stats, including previously saved data.
     * public static final int STATS_SINCE_CHARGED = 0;
     */
    private int STATS_SINCE_CHARGED;

    /**
     * Include only the run since the last time the device was unplugged in the
     * stats. public static final int STATS_SINCE_UNPLUGGED = 3;
     */
    private int STATS_SINCE_UNPLUGGED;

    /**
     * Include only the last run in the stats.
     */
    public int STATS_LAST;

    /**
     * Include only the current run in the stats.
     */
    public int STATS_CURRENT;

    /**
     * A constant indicating a partial wake lock timer.
     */
    private int WAKE_TYPE_PARTIAL;

    public int NUM_SIGNAL_STRENGTH_BINS = 0;

    public BatteryStatsProxy(Context context) {
        reflectBatteryStats(context);
        STATS_SINCE_CHARGED = getStatusSinceCharged();
        STATS_SINCE_UNPLUGGED = getStatusSinceUnplugged();
        STATS_LAST = getStatusLast();
        STATS_CURRENT = getStatusCurrent();
        WAKE_TYPE_PARTIAL = getWakeTypePartial();
        NUM_SIGNAL_STRENGTH_BINS = getNumSignalStrengthBins();
    }

    public Object getBatteryStatsProxy() {
        return this.mBatteryStatsProxy;
    }

    /**
     * 反射获取BatteryStats.STATS_SINCE_CHARGED的值
     * 
     * @return
     */
    private int getStatusSinceCharged() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(batteryStatsClass, mBatteryStatsProxy,
                "STATS_SINCE_CHARGED");
    }

    /**
     * 反射获取BatteryStats.STATUS_SINCE_UNPLUGGED的值
     * 
     * @return
     */
    private int getStatusSinceUnplugged() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(batteryStatsClass, mBatteryStatsProxy,
                "STATS_SINCE_UNPLUGGED");
    }

    /**
     * 反射获取BatteryStats.STATS_LAST的值
     * 
     * @return
     */
    private int getStatusLast() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(batteryStatsClass, mBatteryStatsProxy,
                "STATS_LAST");
    }

    /**
     * 反射获取BatteryStats.STATS_CURRENT的值
     * 
     * @return
     */
    private int getStatusCurrent() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(batteryStatsClass, mBatteryStatsProxy,
                "STATS_CURRENT");
    }

    /**
     * 反射获取BatteryStats.WAKE_TYPE_PARTIAL的值
     * 
     * @return
     */
    private int getWakeTypePartial() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(batteryStatsClass, mBatteryStatsProxy,
                "WAKE_TYPE_PARTIAL");
    }

    /**
     * 反射获取BatteryStats.NUM_SIGNAL_STRENGTH_BINS的值
     * 
     * @return
     */
    private int getNumSignalStrengthBins() {
        if (batteryStatsClass == null || mBatteryStatsProxy == null) {
            return -1;
        }
        return 1;// (Integer) ReflectUtil.ReflectFieldValue(batteryStatsClass,
                 // mBatteryStatsProxy, "NUM_SIGNAL_STRENGTH_BINS");
    }

    /**
     * 反射获取//com.android.internal.app.IBatteryStats.getStatistics()方法的返回值
     * 
     * @return
     */
    public byte[] getStatistics(Context context) {
        if (mBatteryStatsProxy == null) {
            Log.w(TAG, "getStatistics mBatteryStatsProxy is null ");
            return null;
        }
        byte[] data = null;
        try {
            Class<?> IBatteryStatsClass = context.getClassLoader().loadClass(
                    "com.android.internal.app.IBatteryStats");
            Method getStatisticsMethod = IBatteryStatsClass.getMethod("getStatistics");
            data = (byte[])getStatisticsMethod.invoke(mBatteryStatsProxy, new Object[0]);
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "getStatistics error ClassNotFoundException : " + e.toString());
        } catch (SecurityException e) {
            Log.e(TAG, "getStatistics error SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getStatistics error NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getStatistics error IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getStatistics error IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getStatistics error InvocationTargetException : " + e.toString());
        }
        return data;
    }

    private void reflectBatteryStats(Context context) {
        ClassLoader localClassLoader = context.getClassLoader();
        try {
            IBinder batteryInfoBinder = reflectBatteryInfoBinder(localClassLoader);
            // com.android.internal.app.IBatteryStats.Stub类
            Class<?> IBatteryStatsStubClass = localClassLoader
                    .loadClass("com.android.internal.app.IBatteryStats$Stub");
            // com.android.internal.app.IBatteryStats.Stub.asInterface方法的参数类型
            Class<?>[] asInterfaceMethodParamType = new Class<?>[] {
                IBinder.class
            };
            // com.android.internal.app.IBatteryStats.Stub.asInterface方法
            Method asInterfaceMethod = IBatteryStatsStubClass.getMethod("asInterface",
                    asInterfaceMethodParamType);
            mBatteryStatsProxy = asInterfaceMethod
                    .invoke(IBatteryStatsStubClass, batteryInfoBinder);
            Log.i(TAG, "mBatteryStatsProxy name : " + mBatteryStatsProxy.getClass().getName());
            batteryStatsClass = Class.forName("android.os.BatteryStats");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "reflect error ClassNotFoundException : " + e.toString());
        } catch (SecurityException e) {
            Log.e(TAG, "reflect error SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "reflect error NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "reflect error IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "reflect error IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "reflect error InvocationTargetException : " + e.toString());
        }
    }

    /**
     * 反射获取batteryinfo的binder ServiceManager.getService("batteryinfo")
     * 
     * @param localClassLoader
     * @return
     * @throws ClassNotFoundException
     * @throws SecurityException
     * @throws NoSuchMethodException
     * @throws IllegalArgumentException
     * @throws IllegalAccessException
     * @throws InvocationTargetException
     */
    private IBinder reflectBatteryInfoBinder(ClassLoader localClassLoader)
            throws ClassNotFoundException, SecurityException, NoSuchMethodException,
            IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        Class<?> serviceManagerClass = null;
        IBinder batteryInfoBinder = null;

        serviceManagerClass = localClassLoader.loadClass("android.os.ServiceManager");
        // ServiceManager.getService的参数类型
        Class<?>[] serviceManagerParamType = new Class[1];
        serviceManagerParamType[0] = String.class;
        Method getServiceMethod = serviceManagerClass.getMethod("getService",
                serviceManagerParamType);
        // ServiceManager.getService的参数值
        Object[] serviceManagerParamValue = new Object[1];
        serviceManagerParamValue[0] = "batteryinfo";
        batteryInfoBinder = (IBinder)getServiceMethod.invoke(serviceManagerClass,
                serviceManagerParamValue);
        return batteryInfoBinder;
    }

    /**
     * BatteryStats.STATS_SINCE_CHARGED
     * 
     * @return
     */
    public int get_STATS_SINCE_CHARGED() {
        return STATS_SINCE_CHARGED;
    }

    /**
     * BatteryStats.STATS_SINCE_UNPLUGGED
     * 
     * @return
     */
    public int get_STATS_SINCE_UNPLUGGED() {
        return STATS_SINCE_UNPLUGGED;
    }

    /**
     * BatteryStats.STATS_LAST
     * 
     * @return
     */
    public int get_STATS_LAST() {
        return STATS_LAST;
    }

    /**
     * BatteryStats.STATS_CURRENT
     * 
     * @return
     */
    public int get_STATS_CURRENT() {
        return STATS_CURRENT;
    }

    /**
     * BatteryStats.WAKE_TYPE_PARTIAL
     * 
     * @return
     */
    public int get_WAKE_TYPE_PARTIAL() {
        return WAKE_TYPE_PARTIAL;
    }

    /**
     * BatteryStats.WAKE_TYPE_PARTIAL
     * 
     * @return
     */
    public int get_NUM_SIGNAL_STRENGTH_BINS() {
        return NUM_SIGNAL_STRENGTH_BINS;
    }
}
