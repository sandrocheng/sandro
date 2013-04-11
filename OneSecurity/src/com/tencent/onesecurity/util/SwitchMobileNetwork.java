package com.tencent.onesecurity.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.content.Context;
import android.net.ConnectivityManager;

public class SwitchMobileNetwork {
	private ConnectivityManager conMgr;
	
	public SwitchMobileNetwork(Context context) {
		super();
		
		conMgr = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
	}
	
	/**
	 * 设置移动数据开关状态
	 * @param enabled
	 */
	public void setMobileDataStatus(boolean enabled) {
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
			
		} catch (NoSuchFieldException e) {
			
		} catch (SecurityException e) {
			
		} catch (NoSuchMethodException e) {
			
		} catch (IllegalArgumentException e) {
			
		} catch (IllegalAccessException e) {
			
		} catch (InvocationTargetException e) {
			
		}
	}
	
	/**
	 *  获取移动数据开关状态
	 * @param getMobileDataEnabled
	 * @return
	 */
	public boolean getMobileDataStatus() {
		Class cmClass = conMgr.getClass();
		Class[] argClasses = null;
		Object[] argObject = null;
		Boolean isOpen = false;
		
		try {
			Method method = cmClass.getMethod("getMobileDataEnabled", argClasses);
			isOpen = (Boolean) method.invoke(conMgr, argObject);
		} catch (Exception e) {
			
		}
		return isOpen;
	}
}
