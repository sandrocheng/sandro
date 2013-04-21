/**
 * 
 */
package com.tencent.one.battery.core.device;

/**
 * @author matrixxu 设备管理接口,负责控制设备开关
 */
public interface DeviceGovernor {
	/** 设备关闭*/
	public void switchOff();
	/** 设备开启*/
	public void switchOn();
	/** 设备当前开关状态*/
	public boolean getDeviceStatus();
	/** 有的设备不仅只有开关属性，还包括数值类属性，如屏幕亮度,超时时间，响铃振动模式*/
	public void setValue(int value);
	/** 获取设备的数值*/
	public int getValue();
}
