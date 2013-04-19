package com.tencent.one.battery.core.powerrank.vo;


/**
 * 计算APP耗电量的时候，记录process信息
 * 
 * @since 1.0
 * @author lionliu
 */
public class ProcessStats {

    // process的运行时间(毫秒)
    public long cpuTime;

    // process运行时间内耗费的电量(少除3600)
    public double power;
}
