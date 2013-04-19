package com.tencent.one.battery.core.powerrank.manager;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.hardware.SensorManager;
import android.os.Process;
import android.util.Log;
import android.util.SparseArray;

import com.tencent.one.battery.core.powerrank.proxy.BatteryStatsImplProxy;
import com.tencent.one.battery.core.powerrank.proxy.BatteryStatsProxy;
import com.tencent.one.battery.core.powerrank.proxy.PowerProfileProxy;
import com.tencent.one.battery.core.powerrank.proxy.ProcessProxy;
import com.tencent.one.battery.core.powerrank.proxy.SensorProxy;
import com.tencent.one.battery.core.powerrank.proxy.TimerProxy;
import com.tencent.one.battery.core.powerrank.proxy.UidProxy;
import com.tencent.one.battery.core.powerrank.proxy.WakelockProxy;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper.DrainType;


/**
 * uid(App)的电量计算数据
 * 
 * @since 1.0
 * @author LionLiu
 */
public class UidStatsManager {

    private final static String TAG = "UidStatsManager";

    // App的wake lock总时间，用于系统额外awak电量计算(毫秒)
    public long appWakelockTime;

    // App造成的wifi开启时间(毫秒)
    public long mAppWifiRunning;

    // 系统APP记录，用于外层计算
    public BatterySipper osApp;

    // 耗电最大的电量
    public double mMaxPower = 1;

    // 耗电最大的电量
    public double mTotalPower;

    // WIFI的总耗电量
    public double mWifiPower;

    // 蓝牙的总耗电量
    public double mBluetoothPower;

    // uid的耗电列表(包括WIFI，屏幕等硬件)
    public final List<BatterySipper> mUsageList = new ArrayList<BatterySipper>();

    // 应用的wifi耗电，最后会统计并加入到mUsageList中
    public final List<BatterySipper> mWifiSippers = new ArrayList<BatterySipper>();

    // 应用的蓝牙耗电，最后会统计并加入到mUsageList中
    public final List<BatterySipper> mBluetoothSippers = new ArrayList<BatterySipper>();
    
//boone   private PowerUsageDao powerUsageDao= new PowerUsageDao();

    /**
     * 根据uid，计算App的耗电信息。<br>
     * 一) 获取预定义的CPU不同频率和不同频率下的平均耗电量 <br>
     * 二) 计算网络传输的每byte的平均耗电量<br>
     * 三) 获取uid列表，并循环：<br>
     * &nbsp;&nbsp;&nbsp;1) 计算同一个uid的process的CPU耗电量并统计(具体业务在ProcessStatsManager)<br>
     * &nbsp;&nbsp;&nbsp;2) 计算uid的持有wake lock耗电(只统计持有partial，且在用户关闭屏幕后的耗电)<br>
     * &nbsp;&nbsp;&nbsp;3) 计算网络数据传输耗电，根据(二)计算出来的平均值<br>
     * &nbsp;&nbsp;&nbsp;4) 计算由于APP开启的WIFI耗电(不计算流量)<br>
     * &nbsp;&nbsp;&nbsp;5) 计算GPS和其他传感器的耗电<br>
     * &nbsp;&nbsp;&nbsp;6) 统计耗电信息，并初始化BatterySipper，根据uid类型的不同，加入到不同的List<br>
     * 
     * @param batteryStatsImpl
     * @param powerProfile
     * @param batteryInfo
     * @param uSecTime 电池使用时间
     * @param which 电池信息取值类型
     * @since 1.0
     * @author LionLiu
     */
    public void calUidPowerUsage(Context context,BatteryStatsImplProxy batteryStatsImpl,
            PowerProfileProxy powerProfile, BatteryStatsProxy batteryInfo, long uSecTime, int which) {
        SensorManager sensorManager = (SensorManager) context.getSystemService(
                Context.SENSOR_SERVICE);
        // 预定义的CPU的频率个数
        final int speedSteps = powerProfile.getNumSpeedSteps();
        // App的耗电主要来自于CPU，如果Cpu的主频个数未取到，直接返回
        if (0 == speedSteps) {
            return;
        }
        Log.i(TAG, "CPU定义的频率个数 speedSteps : " + speedSteps);

        // CPU不同频率下的平均耗电量
        final double[] powerCpuNormal = new double[speedSteps];
        for (int p = 0; p < speedSteps; p++) {
            powerCpuNormal[p] = powerProfile.getAveragePower(p);
            Log.i(TAG, "calPower p : " + p + " ,powerCpuNormal[p] : " + powerCpuNormal[p]);
        }
        // 网络数据传输的耗电平均值：mA/Byte
        final double averageCostPerByte = getAverageDataCost(powerProfile, batteryStatsImpl, which);
        Log.i(TAG, "数据传输的耗电平均值 averageCostPerByte : " + averageCostPerByte);
        
        SparseArray<Object> uidStats = batteryStatsImpl.getUidStats();
        final int NU = uidStats.size();
        // GPS的sensor type值
        int gpsType = SensorProxy.get_GPS();
        Log.i(TAG, "gpsType： " + gpsType);
        int wifiUid = ProcessProxy.get_WIFI_UID();
        // Process.WIFI_UID
        Log.i(TAG, "wifiUid： " + wifiUid);
        
        // 将数据库中包含的所有uid建一个set
//        HashSet<Integer> uidSet = new HashSet<Integer>();
//boone        ArrayList<PowerUsageEntity> uidList = powerUsageDao.queryPowerUsage();
//        
//boone       if (uidList != null && uidList.size() > 0)
//        
//boone       for (PowerUsageEntity entity:uidList) {
//boone        	uidSet.add(entity.uid);
//boone		}
        
        
        for (int iu = 0; iu < NU; iu++) {
            Log.i(TAG, " ");
            Object u = uidStats.valueAt(iu);
            int uid = UidProxy.getUid(u);
//            
//boone            PowerUsageEntity powerUsageEntity = new PowerUsageEntity();
//boone            powerUsageEntity.uSecTime = uSecTime;
//            
//            // add by lynnawang
//boone            powerUsageEntity.uid = uid; 
//            
            Log.i(TAG, "uid: " + uid);
            double power;
//            // Wakelock持有时间
            long wakelockTime = 0;
            Log.i(TAG, "uid index： " + uid);
//
//            // 计算Process的CPU耗电,key为ProcessName
            Map<String, Object> processStats = UidProxy.getProcessStats(u);
            ProcessStatsManager processManager = new ProcessStatsManager();
            if (processStats.size() > 0) {
//                // 计算uid下的Process的CPU耗电
                processManager.calProcessStats(processStats, powerProfile, which, speedSteps,
                        powerCpuNormal);
            }
//            // 记录需要存储的值   add by lynna
            power = processManager.power / 1000;
//            
//            // add by lynnawang
//boone            powerUsageEntity.processPower = processManager.power / 1000;
//
//            // 计算wake lock耗电(毫秒)
            wakelockTime = getWakeLockTime(batteryInfo, uSecTime, which, u);
//            
//            // 应用持有的partial锁时间
            appWakelockTime += wakelockTime;
//            
//            // 记录需要存储的值   add by lynna
            if (powerProfile.getAveragePower(powerProfile
                    .get_POWER_CPU_AWAKE()) != 0.0) {
            	power += (wakelockTime * powerProfile.getAveragePower(powerProfile
                        .get_POWER_CPU_AWAKE())) / 1000;
//            	// add by lynnawang
//boone                powerUsageEntity.awakeProcessPower = (wakelockTime * powerProfile.getAveragePower(powerProfile
//boone                        .get_POWER_CPU_AWAKE())) / 1000;;
            } else {
//            	
//            	// 记录需要存储的值   add by lynna
            	power += (wakelockTime * powerProfile.getAveragePower(powerProfile
                        .get_POWER_CPU_ACTIVE())) / 1000;
//            	// add by lynnawang
//boone                powerUsageEntity.awakeProcessPower = (wakelockTime * powerProfile.getAveragePower(powerProfile
//boone                        .get_POWER_CPU_ACTIVE())) / 1000;;
            } 
            

            // 计算数据传输耗电
            long tcpBytesReceived = UidProxy.getTcpBytesReceived(u, which);
            Log.i(TAG, "tcpBytesReceived： " + tcpBytesReceived);
            long tcpBytesSent = UidProxy.getTcpBytesSent(u, which);
            Log.i(TAG, "tcpBytesSent： " + tcpBytesSent);
            power += (tcpBytesReceived + tcpBytesSent) * averageCostPerByte;
            
            // add by lynnawang
//boone            powerUsageEntity.tcpBytesPower = (tcpBytesReceived + tcpBytesSent) * averageCostPerByte;

            // 计算WIFI开启的耗电
            // WIFI的运行时间(毫秒),未取到值，一直为0-TODO
            long wifiRunningTimeMs = UidProxy.getWifiRunningTime(u, uSecTime, which) / 1000;
            
            Log.i(TAG, "wifiRunningTimeMs： " + wifiRunningTimeMs);
            mAppWifiRunning += wifiRunningTimeMs;
            power += (wifiRunningTimeMs * powerProfile.getAveragePower(powerProfile
                    .get_POWER_WIFI_ON())) / 1000;
            
            // add by lynnawang
//boone            powerUsageEntity.wifiRunningPower = (wifiRunningTimeMs * powerProfile.getAveragePower(powerProfile
//boone                    .get_POWER_WIFI_ON())) / 1000;

            // 计算GPS和传感器的耗电（手势操作GPS定位）gpsType = -10000
            SensorStatsManager sensorStatsManager = new SensorStatsManager();
            sensorStatsManager.calSenserStats(powerProfile, sensorManager, gpsType, u, uSecTime,
                    which);
            power += sensorStatsManager.power / 1000;

            // add by lynnawang
//boone            powerUsageEntity.sensorPower = sensorStatsManager.power / 1000;
            Log.i(TAG, "UID " + uid + ": power=" + power);

            // 如果应用正在耗电(power!=0)， 则将其加入到对应的耗电列表中
            if (power != 0 || uid == 0) {
                BatterySipper app = new BatterySipper(context,processManager.packageWithHighestDrain,
                        DrainType.APP, 0, uid, new double[] {
                            power
                        });
                app.cpuTime = processManager.cpuTime;
                app.usageTime = app.cpuTime;
                app.gpsTime = sensorStatsManager.gpsTime;
                app.wifiRunningTime = wifiRunningTimeMs;
                app.cpuFgTime = processManager.cpuFgTime;
                app.wakeLockTime = wakelockTime;
                app.tcpBytesReceived = tcpBytesReceived;
                app.tcpBytesSent = tcpBytesSent;
                app.processPowerMap = processManager.processPowerMap;
                app.processNum = app.processPowerMap.size();

                if (uid == wifiUid) {
                    mWifiSippers.add(app);
                } else if (uid == Process.BLUETOOTH_GID) {
                    mBluetoothSippers.add(app);
                } else {
                    mUsageList.add(app);
                }
                if (uid == 0) {
                    osApp = app;
                }

            } // end of if (power != 0)...

            if (uid == wifiUid) {
                mWifiPower += power;
            } else if (uid == Process.BLUETOOTH_GID) {
                mBluetoothPower += power;
            } else {
                if (power > mMaxPower)
                    mMaxPower = power;
                mTotalPower += power;
            }

            Log.i(TAG, "Added power = " + power);
//boone            long result;
//boone           
//boone            //数据库中已有数据，更新，没有，插入
//boone            if (uidSet.contains(uid)) {
//boone            	result = powerUsageDao.updatePowerUsage(powerUsageEntity, PowerUsageDao.COLUMN_UID + "=?",
//boone        				new String[] { String.valueOf(uid) });
//boone            } else {
//boone            	result = powerUsageDao.insertPowerUsage(powerUsageEntity);
//boone            }
//boone            
//boone            Log.i(TAG, "result = " + result);
        } // end of uid loop
    }

    /**
     * 计算数据流量(WIFI和移动数据)的平均耗电: mA/Byte<br>
     * 1. 给出Wifi和Mobile的默认bps (bit per second)<br>
     * 2. 获取Wifi和Mobile的 每秒耗电量 (mA/s)<br>
     * 3.获取Wifi和Mobile的 流量 (Byte) <br>
     * 4. 矫正Mobile的bps<br>
     * 5. 计算Wifi和Mobile的 耗电量/流量：(mA/Byte) = (mA/s) / bps / 8 <br>
     * 6. 计算Wifi + Mobile的平均耗电量
     * 
     * @return 数据流量的 平均耗电
     * @since 1.0
     * @author LionLiu
     */
    private double getAverageDataCost(PowerProfileProxy powerProfile,
            BatteryStatsImplProxy batteryStatsImpl, int which) {
        // Wifi的默认bps (bit per second)，未从手机中取真实值
        final long WIFI_BPS = 1000000;
        // Mobile的默认bps (bit per second)，未从手机中取真实值
        final long MOBILE_BPS = 200000;

        // 获取 Wifi 和 Mobile 的每秒耗电量: mA/s,
        // (getAveragePower不同的OS单位不同，除以3600有问题，需确认)TODO
        final double WIFI_POWER = powerProfile
                .getAveragePower(powerProfile.get_POWER_WIFI_ACTIVE()) / 3600;
        Log.i(TAG, "WIFI_POWER : " + WIFI_POWER);
        final double MOBILE_POWER = powerProfile.getAveragePower(powerProfile
                .get_POWER_RADIO_ACTIVE()) / 3600;
        Log.i(TAG, "MOBILE_POWER : " + MOBILE_POWER);

        // 获取Mobile总流量：Byte
        final long mobileReceived = batteryStatsImpl.getMobileTcpBytesReceived(which);
        final long mobileSent = batteryStatsImpl.getMobileTcpBytesSent(which);
        Log.i(TAG, " Mobile: received: " + mobileReceived + ", sent: " + mobileSent);
        final long mobileData = mobileReceived + mobileSent;
        Log.i(TAG, " Mobile: " + mobileData);

        // 获取Wifi总流量：Byte
        final long totalReceived = batteryStatsImpl.getTotalTcpBytesReceived(which);
        final long totalSent = batteryStatsImpl.getTotalTcpBytesSent(which);
        Log.i(TAG, " Total: received: " + totalReceived + ", sent: " + totalSent);
        final long wifiData = totalReceived + totalSent - mobileData;
        Log.i(TAG, " Wifi: " + wifiData);

        // 矫正Mobile的 bps：bit/s TODO radioDataUptimeMs的含义
        final long radioDataUptimeMs = batteryStatsImpl.getRadioDataUptime() / 1000;
        Log.i(TAG, " radioDataUptimeMs: " + radioDataUptimeMs);
        final long mobileBps = radioDataUptimeMs != 0 ? mobileData * 8 * 1000 / radioDataUptimeMs
                : MOBILE_BPS;

        // 计算Mobile和Wifi的 mA/Byte
        double mobileCostPerByte = MOBILE_POWER / (mobileBps / 8);
        double wifiCostPerByte = WIFI_POWER / (WIFI_BPS / 8);
        if (wifiData + mobileData != 0) {
            // 计算Mobile和Wifi的平均 mA/Byte
            return (mobileCostPerByte * mobileData + wifiCostPerByte * wifiData)
                    / (mobileData + wifiData);
        } else {
            return 0;
        }
    }

    /**
     * 获取uid持有的 PARTIAL锁时间(毫秒)
     * 
     * @param batteryInfo
     * @param uSecTime 电池运行时间
     * @param which 信息取值类型
     * @param u Uid信息
     * @return 毫秒
     * @since 1.0
     * @author LionLiu
     */
    private long getWakeLockTime(BatteryStatsProxy batteryInfo, long uSecTime, int which, Object u) {
        long wakelockTime = 0l;
        Map<String, Object> wakelockStats = UidProxy.getWakelockStats(u);
        for (Map.Entry<String, Object> wakelockEntry : wakelockStats.entrySet()) {
            Object wakelockObj = wakelockEntry.getValue();
            // Only care about partial wake locks since full wake locks
            // are canceled when the user turns the screen off.
            // 只计算 当用户关闭屏幕后的 partial wake locks
            Object timerObj = WakelockProxy.getWakeTime(wakelockObj,
                    batteryInfo.get_WAKE_TYPE_PARTIAL());
            if (timerObj != null) {
                // uSecTime为电池的使用时间
                wakelockTime += TimerProxy.getTotalTimeLocked(timerObj, uSecTime, which); // 微秒
            }
        }
        // 当前进程持有的partial锁时间,转化为 毫秒
        wakelockTime /= 1000;
        Log.i(TAG, "wakelockTime： " + wakelockTime);
        return wakelockTime;
    }
}
