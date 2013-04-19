package com.tencent.one.battery.core.powerrank.proxy;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;

/**
 * @ClassName: BatteryStatsImplProxy
 * @Description:反射 com.android.internal.os.BatteryStatsImpl 获取实例和对应方法
 * @author: Sandro
 * @date: 2013-1-16 上午09:55:40
 */
public class BatteryStatsImplProxy {

    private String TAG = "BatteryStatsImplProxy";

    /**
     * 反射 com.android.internal.os.BatteryStatsImpl
     */
    private Class<?> batteryStatsImplClass = null;

    /**
     * com.android.internal.os.BatteryStatsImpl对象
     */
    private Object batteryStatsImplInstance = null;

    /**
     * STATS_SINCE_CHARGED的默认值
     */
    public final static int DEFAULST_STATS_SINCE_CHARGED = -987666321;

    /**
     * 反射获取 BatteryStats.STATS_SINCE_CHARGED的值 Include all of the data in the
     * stats, including previously saved data.
     */
    private int STATS_SINCE_CHARGED = DEFAULST_STATS_SINCE_CHARGED;

    /**
     * @param context
     * @param statics IBatteryStats.getStatistics()获取的电池信息数组
     */
    public BatteryStatsImplProxy(Context context, byte[] statics) {
        reflectBatteryStatsImpl(context, statics);
    }

    public Object getBatteryStatsImplInstance() {
        return batteryStatsImplInstance;
    }

    /**
     * 反射获取BatteryStatsImpl 实例
     */
    private void reflectBatteryStatsImpl(Context context, byte[] statics) {
        if (statics == null) {
            return;
        }
        ClassLoader localClassLoader = context.getClassLoader();
        try {
            batteryStatsImplClass = localClassLoader
                    .loadClass("com.android.internal.os.BatteryStatsImpl");
            Parcel parcel = Parcel.obtain();
            parcel.unmarshall(statics, 0, statics.length);
            parcel.setDataPosition(0);
            batteryStatsImplInstance = ((Parcelable.Creator<?>)batteryStatsImplClass.getField(
                    "CREATOR").get(batteryStatsImplClass)).createFromParcel(parcel);

        } catch (ClassNotFoundException e) {
            Log.e(TAG,
                    "batteryStatsImplClass reflect error ClassNotFoundException : " + e.toString());
        } catch (SecurityException e) {
            Log.e(TAG, "batteryStatsImplClass reflect error SecurityException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG,
                    "batteryStatsImplClass reflect error IllegalArgumentException : "
                            + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG,
                    "batteryStatsImplClass reflect error IllegalAccessException : " + e.toString());
        } catch (NoSuchFieldException e) {
            Log.e(TAG, "batteryStatsImplClass reflect error NoSuchFieldException : " + e.toString());
        }
    }

    public int get_STATS_SINCE_CHARGED() {
        return STATS_SINCE_CHARGED;
    }

    /**
     * 获取Mobile Data 发送的byte数
     * 
     * @param which
     * @return
     */
    public long getMobileTcpBytesSent(int which) {
        if (which == -1) {
            return 0;
        }
        Method getMobileTcpBytesSentMethod = null;

        try {
            getMobileTcpBytesSentMethod = batteryStatsImplClass.getMethod("getMobileTcpBytesSent",
                    int.class);
            return (Long)getMobileTcpBytesSentMethod.invoke(batteryStatsImplInstance, which);
        } catch (SecurityException e) {
            Log.e(TAG, "getMobileTcpBytesSent SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getMobileTcpBytesSent NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getMobileTcpBytesSent IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getMobileTcpBytesSent IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getMobileTcpBytesSent InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * 获取Mobile Data 接收的byte数
     * 
     * @param which
     * @return
     */
    public long getMobileTcpBytesReceived(int which) {
        if (which == -1) {
            return 0;
        }
        Method getMobileTcpBytesReceivedMethod = null;

        try {
            getMobileTcpBytesReceivedMethod = batteryStatsImplClass.getMethod(
                    "getMobileTcpBytesReceived", int.class);
            return (Long)getMobileTcpBytesReceivedMethod.invoke(batteryStatsImplInstance, which);
        } catch (SecurityException e) {
            Log.e(TAG, "getMobileTcpBytesReceived SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getMobileTcpBytesReceived NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getMobileTcpBytesReceived IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getMobileTcpBytesReceived IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getMobileTcpBytesReceived InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * 获取手机发送的byte总数(包括Wifi和Mobile Data)
     * 
     * @param which
     * @return
     */
    public long getTotalTcpBytesReceived(int which) {
        if (which == -1) {
            return 0;
        }
        Method getTotalTcpBytesReceivedMethod = null;

        try {
            getTotalTcpBytesReceivedMethod = batteryStatsImplClass.getMethod(
                    "getTotalTcpBytesReceived", int.class);
            return (Long)getTotalTcpBytesReceivedMethod.invoke(batteryStatsImplInstance, which);
        } catch (SecurityException e) {
            Log.e(TAG, "getTotalTcpBytesReceived SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getTotalTcpBytesReceived NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getTotalTcpBytesReceived IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getTotalTcpBytesReceived IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getTotalTcpBytesReceived InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * 获取手机接收的byte总数(包括Wifi和Mobile Data)
     * 
     * @param which
     * @return
     */
    public long getTotalTcpBytesSent(int which) {
        if (which == -1) {
            return 0;
        }
        Method getTotalTcpBytesSentMethod = null;

        try {
            getTotalTcpBytesSentMethod = batteryStatsImplClass.getMethod("getTotalTcpBytesSent",
                    int.class);
            return (Long)getTotalTcpBytesSentMethod.invoke(batteryStatsImplInstance, which);
        } catch (SecurityException e) {
            Log.e(TAG, "getTotalTcpBytesSent SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getTotalTcpBytesSent NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getTotalTcpBytesSent IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getTotalTcpBytesSent IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getTotalTcpBytesSent InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the duration that the cell radio was up for data transfers.
     * 
     * @param which
     * @return
     */
    public long getRadioDataUptime() {

        Method getRadioDataUptimeMethod = null;
        try {
            getRadioDataUptimeMethod = batteryStatsImplClass.getMethod("getRadioDataUptime");
            return (Long)getRadioDataUptimeMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getRadioDataUptime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getRadioDataUptime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getRadioDataUptime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getRadioDataUptime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getRadioDataUptime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * 返回电池的使用时间 Returns the total, last, or current battery realtime in
     * microseconds.
     * 
     * @param curTime the current elapsed realtime in microseconds.
     * @param which one of STATS_TOTAL, STATS_LAST, or STATS_CURRENT.
     */
    public long computeBatteryRealtime(long curTime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod(
                    "computeBatteryRealtime", long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance, curTime,
                    which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * 返回包含每个uid的数据的数组
     */
    @SuppressWarnings("unchecked")
    public SparseArray<Object> getUidStats() {
        Method getUidStatsMethod = null;

        try {
            getUidStatsMethod = batteryStatsImplClass.getMethod("getUidStats");
            return (SparseArray<Object>)getUidStatsMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getUidStats SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getUidStats NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getUidStats IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getUidStats IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getUidStats InvocationTargetException : " + e.toString());
        }
        return null;
    }

    /**
     * Returns the total, last, or current battery uptime in microseconds.
     * 
     * @param curTime the elapsed realtime in microseconds.
     * @param which one of STATS_TOTAL, STATS_LAST, or STATS_CURRENT.
     */
    public long computeBatteryUptime(long curTime, int which) {
        Method computeBatteryUptimeMethod = null;

        try {
            computeBatteryUptimeMethod = batteryStatsImplClass.getMethod("computeBatteryUptime",
                    long.class, int.class);
            return (Long)computeBatteryUptimeMethod
                    .invoke(batteryStatsImplInstance, curTime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryUptime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryUptime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryUptime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryUptime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryUptime InvocationTargetException : " + e.toString());
        }
        return 0l;
    }
    
	/**
	 * Returns the time in microseconds that the screen has been on while the
	 * device was running on battery.
	 * 屏幕在设备上运行的耗电量，单位微秒，
	 */
	public long getScreenOnTime(long batteryRealtime, int which) {
        Method getScreenOnTimeMethod = null;

        try {
            getScreenOnTimeMethod = batteryStatsImplClass.getMethod("getScreenOnTime", long.class,
                    int.class);
            return (Long)getScreenOnTimeMethod.invoke(batteryStatsImplInstance, batteryRealtime,
                    which);
        } catch (SecurityException e) {
            Log.e(TAG, "getScreenOnTime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getScreenOnTime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getScreenOnTime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getScreenOnTime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getScreenOnTime InvocationTargetException : " + e.toString());
        }
        return 0l;
    }

    /**
     * 尚未查到对应的说明 测试一直为0
     * 
     * @return
     */
    public int getBluetoothPingCount() {
        Method getBluetoothPingCountMethod = null;
        try {
            getBluetoothPingCountMethod = batteryStatsImplClass.getMethod("getBluetoothPingCount");
            return (Integer)getBluetoothPingCountMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getScreenOnTime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getScreenOnTime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getScreenOnTime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getScreenOnTime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getScreenOnTime InvocationTargetException : " + e.toString());
        }
        return 0;

    }

    /**
     * Returns the time in microseconds that bluetooth has been on while the
     * device was running on battery.
     * 
     * @param batteryRealtime
     * @param which
     * @return
     */
    public long getBluetoothOnTime(long batteryRealtime, int which) {
        Method getBluetoothOnTimeMethod = null;

        try {
            getBluetoothOnTimeMethod = batteryStatsImplClass.getMethod("getBluetoothOnTime",
                    long.class, int.class);
            return (Long)getBluetoothOnTimeMethod.invoke(batteryStatsImplInstance, batteryRealtime,
                    which);
        } catch (SecurityException e) {
            Log.e(TAG, "getBluetoothOnTime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getBluetoothOnTime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getBluetoothOnTime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getBluetoothOnTime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getBluetoothOnTime InvocationTargetException : " + e.toString());
        }
        return 0l;
    }

    public long getPhoneOnTime(long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            long i = 3;
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod("getPhoneOnTime",
                    long.class, int.class);
            i = (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance,
                    batteryRealtime, which);
            return i;
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 100;
    }

    /**
     * Returns the time in microseconds that wifi has been on while the device
     * was running on battery. {@hide}
     */
    public long getWifiOnTime(long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod("getWifiOnTime",
                    long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance,
                    batteryRealtime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the time in microseconds that wifi has been on and the driver has
     * been in the running state while the device was running on battery.
     * {@hide}
     */
    public long getGlobalWifiRunningTime(long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod(
                    "getGlobalWifiRunningTime", long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance,
                    batteryRealtime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the time in microseconds that the phone has been running with the
     * given signal strength. {@hide}
     */
    public long getPhoneSignalStrengthTime(int strengthBin, long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod(
                    "getPhoneSignalStrengthTime", int.class, long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance, strengthBin,
                    batteryRealtime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the time in microseconds that the phone has been trying to
     * acquire a signal. {@hide}
     */
    public long getPhoneSignalScanningTime(long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod(
                    "getPhoneSignalScanningTime", long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance,
                    batteryRealtime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the time in microseconds that the screen has been on with the
     * given brightness {@hide}
     */
    public long getScreenBrightnessTime(int brightnessBin, long batteryRealtime, int which) {
        if (which == -1) {
            return 0;
        }
        Method computeBatteryRealtimeMethod = null;

        try {
            computeBatteryRealtimeMethod = batteryStatsImplClass.getMethod(
                    "getScreenBrightnessTime", int.class, long.class, int.class);
            return (Long)computeBatteryRealtimeMethod.invoke(batteryStatsImplInstance,
                    brightnessBin, batteryRealtime, which);
        } catch (SecurityException e) {
            Log.e(TAG, "computeBatteryRealtime SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "computeBatteryRealtime NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "computeBatteryRealtime IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "computeBatteryRealtime InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the battery percentage level at the last time the device was
     * unplugged from power, or the last time it booted on battery power.
     */
    public int getDischargeStartLevel() {
        Method getDischargeStartLevelMethod = null;

        try {
            getDischargeStartLevelMethod = batteryStatsImplClass
                    .getMethod("getDischargeStartLevel");
            return (Integer)getDischargeStartLevelMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeStartLevel SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getDischargeStartLevel NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getDischargeStartLevel IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getDischargeStartLevel IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getDischargeStartLevel InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Returns the current battery percentage level if we are in a discharge
     * cycle, otherwise returns the level at the last plug event.
     */
    public int getDischargeCurrentLevel() {
        Method getDischargeCurrentLevelMethod = null;

        try {
            getDischargeCurrentLevelMethod = batteryStatsImplClass
                    .getMethod("getDischargeCurrentLevel");
            return (Integer)getDischargeCurrentLevelMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeCurrentLevel SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getDischargeCurrentLevel NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getDischargeCurrentLevel IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getDischargeCurrentLevel IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getDischargeCurrentLevel InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged since the stats were last reset
     * after charging, as a lower-end approximation.
     */
    public int getLowDischargeAmountSinceCharge() {
        Method getLowDischargeAmountSinceChargeMethod = null;

        try {
            getLowDischargeAmountSinceChargeMethod = batteryStatsImplClass
                    .getMethod("getLowDischargeAmountSinceCharge");
            return (Integer)getLowDischargeAmountSinceChargeMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getLowDischargeAmountSinceCharge SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getLowDischargeAmountSinceCharge NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG,
                    "getLowDischargeAmountSinceCharge IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getLowDischargeAmountSinceCharge IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG,
                    "getLowDischargeAmountSinceCharge InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged since the stats were last reset
     * after charging, as an upper-end approximation.
     */
    public int getHighDischargeAmountSinceCharge() {
        Method getHighDischargeAmountSinceChargeMethod = null;

        try {
            getHighDischargeAmountSinceChargeMethod = batteryStatsImplClass
                    .getMethod("getHighDischargeAmountSinceCharge");
            return (Integer)getHighDischargeAmountSinceChargeMethod
                    .invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getHighDischargeAmountSinceCharge SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getHighDischargeAmountSinceCharge NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG,
                    "getHighDischargeAmountSinceCharge IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getHighDischargeAmountSinceCharge IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG,
                    "getHighDischargeAmountSinceCharge InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged while the screen was on, since
     * the last time power was unplugged.
     */
    public int getDischargeAmountScreenOn() {
        Method getDischargeAmountScreenOnMethod = null;

        try {
            getDischargeAmountScreenOnMethod = batteryStatsImplClass
                    .getMethod("getDischargeAmountScreenOn");
            return (Integer)getDischargeAmountScreenOnMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeAmountScreenOn SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getDischargeAmountScreenOn NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getDischargeAmountScreenOn IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getDischargeAmountScreenOn IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getDischargeAmountScreenOn InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged while the screen was on, since
     * the last time the device was charged.
     */
    public int getDischargeAmountScreenOnSinceCharge() {
        Method getDischargeAmountScreenOnSinceChargeMethod = null;

        try {
            getDischargeAmountScreenOnSinceChargeMethod = batteryStatsImplClass
                    .getMethod("getDischargeAmountScreenOnSinceCharge");
            return (Integer)getDischargeAmountScreenOnSinceChargeMethod
                    .invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeAmountScreenOnSinceCharge SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOnSinceCharge NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOnSinceCharge IllegalArgumentException : "
                            + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOnSinceCharge IllegalAccessException : "
                            + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOnSinceCharge InvocationTargetException : "
                            + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged while the screen was on, since
     * the last time the device was charged.
     */
    public int getDischargeAmountScreenOff() {
        Method getDischargeAmountScreenOffMethod = null;

        try {
            getDischargeAmountScreenOffMethod = batteryStatsImplClass
                    .getMethod("getDischargeAmountScreenOff");
            return (Integer)getDischargeAmountScreenOffMethod.invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeAmountScreenOff SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getDischargeAmountScreenOff NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getDischargeAmountScreenOff IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getDischargeAmountScreenOff IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getDischargeAmountScreenOff InvocationTargetException : " + e.toString());
        }
        return 0;
    }

    /**
     * Get the amount the battery has discharged while the screen was off, since
     * the last time the device was charged.
     */
    public int getDischargeAmountScreenOffSinceCharge() {
        Method getDischargeAmountScreenOffSinceChargeMethod = null;

        try {
            getDischargeAmountScreenOffSinceChargeMethod = batteryStatsImplClass
                    .getMethod("getDischargeAmountScreenOffSinceCharge");
            return (Integer)getDischargeAmountScreenOffSinceChargeMethod
                    .invoke(batteryStatsImplInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getDischargeAmountScreenOffSinceCharge SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOffSinceCharge NoSuchMethodException : "
                            + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOffSinceCharge IllegalArgumentException : "
                            + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOffSinceCharge IllegalAccessException : "
                            + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG,
                    "getDischargeAmountScreenOffSinceCharge InvocationTargetException : "
                            + e.toString());
        }
        return 0;
    }
}
