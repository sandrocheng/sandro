/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.Context;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

/**
 * @author matrixxu
 * 
 */
public interface DeviceFacade {

	/**
	 * 注册数据库监听，当有数据变更影响数据库会回调通知客户端
	 * 
	 * @param listener
	 * @param context
	 */
	public void registDataObserver(OnSharedPreferenceChangeListener listener, Context context);

	/**
	 * 开关控制
	 * 
	 * @param context
	 * @param deviceKey
	 *            设备表示 请在DeviceManager中查询
	 * @param isOpen
	 *            打开或关闭
	 * @param value
	 *            数值，有的设备不仅只有开关属性，还包括数值类属性，如屏幕亮度，具体用法请参考demo
	 */
	public void deviceControll(Context context, String deviceKey, boolean isOpen, int value);

	/**
	 * 获取当前该设备的状态
	 * 
	 * @param context
	 * @param deviceKey
	 *            设备表示，请在Devicemanager中查询
	 * @return
	 */
	public int getDeviceStatus(Context context, String deviceKey);

}
