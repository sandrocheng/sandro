/**
 * 
 */
package com.tencent.one.battery.core.device;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.net.ConnectivityManager;

/**
 * @author matrixxu
 * 
 */
public class MobileDataDevice implements DeviceGovernor {

	private Context context = null;

	@Override
	public void switchOff() {
		if (getDeviceStatus()) {
			setMobileDataStatus(context, false);
		}
	}

	@Override
	public void switchOn() {
		if (!getDeviceStatus()) {
			setMobileDataStatus(context, true);
		}
	}

	@Override
	public boolean getDeviceStatus() {
		return getNetState(context);
	}

	private MobileDataDevice(Context context) {
		this.context = context;
	}

	public static boolean getNetState(Context context) {
		ConnectivityManager cm;
		cm = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		Class<?> cmClass = cm.getClass();
		Class<?>[] argClasses = null;
		Object[] argObject = null;
		Boolean isOpen = false;
		try {
			Method method = cmClass.getMethod("getMobileDataEnabled", argClasses);
			isOpen = (Boolean) method.invoke(cm, argObject);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isOpen;
	}

	public void setMobileDataStatus(Context context, boolean enabled) {
		ConnectivityManager conMgr = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
		// ConnectivityManager类
		Class<?> conMgrClass = null;
		// ConnectivityManager类中的字段
		Field iConMgrField = null;
		// IConnectivityManager类的引用
		Object iConMgr = null;
		// IConnectivityManager类
		Class<?> iConMgrClass = null;
		// setMobileDataEnabled方法
		Method setMobileDataEnabledMethod = null;
		try {
			// 取得ConnectivityManager类
			conMgrClass = Class.forName(conMgr.getClass().getName());
			// 取得ConnectivityManager类中的对象Mservice
			iConMgrField = conMgrClass.getDeclaredField("mService");
			// 设置mService可访问
			iConMgrField.setAccessible(true);
			// 取得mService的实例化类IConnectivityManager
			iConMgr = iConMgrField.get(conMgr);
			// 取得IConnectivityManager类
			iConMgrClass = Class.forName(iConMgr.getClass().getName());
			// 取得IConnectivityManager类中的setMobileDataEnabled(boolean)方法
			setMobileDataEnabledMethod = iConMgrClass.getDeclaredMethod("setMobileDataEnabled", Boolean.TYPE);
			// 设置setMobileDataEnabled方法是否可访问
			setMobileDataEnabledMethod.setAccessible(true);
			// 调用setMobileDataEnabled方法
			setMobileDataEnabledMethod.invoke(iConMgr, enabled);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (NoSuchFieldException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (MobileDataDevice.class) {
				if (mInstance == null) {
					mInstance = new MobileDataDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public int getValue() {
		return 0;
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
		
	}
}
