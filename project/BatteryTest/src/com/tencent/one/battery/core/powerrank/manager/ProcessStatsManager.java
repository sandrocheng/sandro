package com.tencent.one.battery.core.powerrank.manager;

import java.util.HashMap;
import java.util.Map;

import com.tencent.one.battery.core.powerrank.proxy.PowerProfileProxy;
import com.tencent.one.battery.core.powerrank.proxy.ProcProxy;
import com.tencent.one.battery.core.powerrank.vo.ProcessStats;

import android.util.Log;


/**
 * 计算uid下的process的耗电数据
 * 
 * @since 1.0
 * @author LionLiu
 */
public class ProcessStatsManager {

    private String TAG = "ProcessStatsManager";

    /**
     * CPU前台运行时间(详细显示用)
     */
    long cpuFgTime = 0;

    /**
     *  CPU运行时间(计算电量用)
     */
    long cpuTime = 0;

    /**
     *  当前uid消耗的总电量
     */
    double power = 0;

    /**
     *  用于记录uid下的每个process的耗电量
     */
    Map<String, ProcessStats> processPowerMap = new HashMap<String, ProcessStats>();

    /**
     *  当前uid下的进程中消耗CPU最大的电量
     */
    double highestDrain = 0;

    /**
     *  当前uid下中消耗CPU电量最多的进程名
     */
    String packageWithHighestDrain = null;

    /**
     * 计算该uid下的process的CPU耗电情况, 循环process数组<br>
     * 1) 获取process在用户态和核心态运行的时间(1/100秒)，进程的前台CPU时间(单位未定，作为前台显示用)<br>
     * 2) 获取process在每个CPU主频上运行的时间数，并计算出在每个CPU主频上运行的时间比例<br>
     * 3) 计算出process在每个CPU主频上消耗的电量： 该主频运行时间百分比 *(用户态CPU总时间 + 核心态CPU总时间)* 该主频平均耗电<br>
     * 4) 各个主频的耗电量相加
     * 
     * @param processStats
     * @param powerProfile
     * @param which 信息统计类型
     * @param speedSteps CPU运行的主频个数
     * @param powerCpuNormal 每个CPU主频的平均耗电
     * @since 1.0
     * @author LionLiu
     */
    public void calProcessStats(Map<String, Object> processStats, PowerProfileProxy powerProfile,
            int which, int speedSteps, double[] powerCpuNormal) {

        // CPU不同频率下工作的时间
        final long[] cpuSpeedStepTimes = new long[speedSteps];

        // 计算process的CPU耗电
        for (Map.Entry<String, Object> ent : processStats.entrySet()) {
            Object ps = ent.getValue();
            ProcessStats pStats = new ProcessStats();
            // 进程在用户态执行的时间(1/100秒)
            final long userTime = ProcProxy.getUserTime(ps, which);
            
            // 进程在核心态执行的时间(1/100秒)
            final long systemTime = ProcProxy.getSystemTime(ps, which);
            
            // 进程在前台时候的CPU执行时间(微秒)
            final long foregroundTime = ProcProxy.getForegroundTime(ps, which);
            Log.i(TAG, "Process - " + ent.getKey() + ", userTime: " + userTime + ", systemTime: "
                    + systemTime + ", foregroundTime: " + foregroundTime);
            
            // API中表示这个方法是微秒，为什么还是*10-TODO
            cpuFgTime += foregroundTime * 10;
            // 临时变量，当前进程的CPU用户态+核心态时间 
            //这两个时间怀疑很可能是读取linux proc/uid/stat文件的结果，单位应该是jieffs，而不是
            //微秒，这个单位androidapi应该是写错了，所以x10 是一般手机上linux的jieffs单位是10毫秒。
            final long tmpCpuTime = (userTime + systemTime) * 10;
            // 记录CPU在这个频率上的总时间
            int totalTimeAtSpeeds = 0;
            // 获取process在不同的CPU频率下工作的时间(近似值，用于计算使用时间比例)
            for (int step = 0; step < speedSteps; step++) {
                cpuSpeedStepTimes[step] = ProcProxy.getTimeAtCpuSpeedStep(ps, step, which);
                totalTimeAtSpeeds += cpuSpeedStepTimes[step];
            }
            if (totalTimeAtSpeeds == 0)
                totalTimeAtSpeeds = 1;
            Log.i(TAG, "totalTimeAtSpeeds - " + totalTimeAtSpeeds);
            // 计算process在每个CPU频率下工作的时间百分比
            // 进程CPU消耗的总电量
            double processPower = 0;
            for (int step = 0; step < speedSteps; step++) {
                // 指定频率占用时间在总时间里的比例
                double ratio = (double)cpuSpeedStepTimes[step] / totalTimeAtSpeeds;
                // 根本比例计算指定频率消耗的电量（真实耗电量的（1000*3600）倍）
                processPower += ratio * tmpCpuTime * powerCpuNormal[step];
                // 每小时耗电量 = 每毫秒耗电量 *1000*3600
                // 每毫秒耗电量 = 每小时耗电量/(1000*3600)
                // cpu占用比例 * cpu时间ms * 每小时耗电量 = 耗电量（ma）的 （1000*3600）倍
                // cpu时间（ms）/( 1000*3600) * 每小时耗电量（ma/h） = 耗电量　
                // cpu时间（ms） * 每小时耗电量（ma/h） = (1000*3600) * 耗电量
                // getAveragePower取出来的平均电量在OS4.0下为几百(怀疑为每小时)，OS2.3下为零点几(怀疑为每秒)
            }
            cpuTime += tmpCpuTime;
            pStats.cpuTime = tmpCpuTime;
            power += processPower;
            pStats.power = processPower / 1000;
            // 保存该Process的包名和耗电量,4.0下少除3600

            // 记录这个uid中CPU耗电最多的 process，传入sipper中
            if (packageWithHighestDrain == null || packageWithHighestDrain.startsWith("*")) {
                highestDrain = processPower;
                packageWithHighestDrain = ent.getKey();
            } else if (highestDrain < processPower && !ent.getKey().startsWith("*")) {
                highestDrain = processPower;
                packageWithHighestDrain = ent.getKey();
            }
            processPowerMap.put(ent.getKey(), pStats);
        } // end of Process for loop
        Log.i(TAG, "Max drain of " + highestDrain + " by " + packageWithHighestDrain);

        if (cpuFgTime > cpuTime) {
            // 数据还没来得及采集，纠正下，用于详细显示
            cpuTime = cpuFgTime;
        }
    }
}
