package com.tencent.one.battery.core.powerrank.manager;


import java.util.Map;

import com.tencent.one.battery.core.powerrank.proxy.PowerProfileProxy;
import com.tencent.one.battery.core.powerrank.proxy.SensorProxy;
import com.tencent.one.battery.core.powerrank.proxy.TimerProxy;
import com.tencent.one.battery.core.powerrank.proxy.UidProxy;



import android.hardware.SensorManager;
import android.util.Log;

/**
 * 计算传感器和GPS的耗电数据
 * 
 * @since 1.0
 * @author lionliu
 */
public class SensorStatsManager {

    private String TAG = "SenserManager";

    /**
     *  uid对应的传感器消耗电量
     */
    public double power;

    /**
     *  uid造成的gps时间(毫秒)
     */
    public long gpsTime;

    /**
     * 计算uid的GPS和其他传感器的耗电信息, 首先获取uid的传感器数据信息，循环:<br>
     * 1) 获取传感器的运行时间（毫秒）<br>
     * 2) 如果传感器类型为GPS，则通过PowerProfile获取GPS的平均耗电<br>
     * 3) 如果传感器为其他类型，则通过sdk SensorManager类获取平均耗电<br>
     * 4) 各个传感器耗电相加
     * 
     * @param powerProfile
     * @param sensorManager
     * @param gpsType GPS的传感器类型常量
     * @param u uid信息
     * @param uSecTime 电池运行时间
     * @param which 数据统计类型
     */
    public void calSenserStats(PowerProfileProxy powerProfile, SensorManager sensorManager,
            int gpsType, Object u, long uSecTime, int which) {
        // uid对应的传感器数据,key为传感器id
        Map<Integer, Object> sensorStats = UidProxy.getSensorStats(u);
        for (Map.Entry<Integer, Object> sensorEntry : sensorStats.entrySet()) {
            Object sensorObj = sensorEntry.getValue();
            // sensor的类型,GPS为-10000
            int sensorType = SensorProxy.getHandle(sensorObj);
            Log.i(TAG, "sensorType： " + sensorType);
            Object timerObj = SensorProxy.getSensorTime(sensorObj);
            // sensor的timer时间：毫秒
            long sensorTime = TimerProxy.getTotalTimeLocked(timerObj, uSecTime, which) / 1000;
            Log.i(TAG, "sensorTime： " + sensorTime);
            // 传感器的平均耗电
            double multiplier = 0;
            // 如果是gps，则调用powerprofile
            if (sensorType == gpsType) {
                // 获取GPS平均耗电:mA/单位？-TODO
                multiplier = powerProfile.getAveragePower(powerProfile.get_POWER_GPS_ON());
                gpsTime = sensorTime;
                Log.i(TAG, "Got GPS with power = " + multiplier);
            } else {
                // 其他的传感器使用sdk方法
                android.hardware.Sensor sensorData = sensorManager.getDefaultSensor(sensorType);
                if (sensorData != null) {
                    // 此方法为sdk中的方法,获取传感器耗电功率：mA/时间单位？-TODO
                    multiplier = sensorData.getPower();
                    Log.i(TAG, "Got sensor " + sensorData.getName() + " with power = " + multiplier);
                }
            }
            power += (multiplier * sensorTime);
        } // end of sensor loop
    }
}
