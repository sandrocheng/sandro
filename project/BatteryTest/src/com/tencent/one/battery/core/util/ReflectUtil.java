package com.tencent.one.battery.core.util;

import java.lang.reflect.Field;

import android.util.Log;

/**
 * 
 * @ClassName: ReflectUtil
 * @Description:反射工具类
 * @author: Sandro
 * @date: 2013-1-15 下午08:51:57
 * 
 */
public class ReflectUtil {

	private static String TAG = "ReflectUtil";
	/**
	 * 获取类的属性值
	 * 
	 * @return
	 */
	public static Object ReflectFieldValue(Class<?> clazz, Object classObj, String FieldName) {
		try {
			Field field = clazz.getDeclaredField(FieldName);
			return field.get(classObj);
		} catch (SecurityException e) {
			Log.e(TAG, "ReflectFieldValue SecurityException : " + e.toString());
		} catch (NoSuchFieldException e) {
			Log.e(TAG, "ReflectFieldValue NoSuchFieldException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "ReflectFieldValue IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "ReflectFieldValue IllegalAccessException : " + e.toString());
		}
		return null;
	}

	/**
	 * 获取父类的属性值
	 * 
	 * @return
	 */
	public static Object ReflectSuperFieldValue(Class<?> clazz, Object classObj, String FieldName) {
		try {
			Field field = clazz.getSuperclass().getDeclaredField(FieldName);
			return field.get(classObj);
		} catch (SecurityException e) {
			Log.e(TAG, "ReflectSuperFieldValue SecurityException : " + e.toString());
		} catch (NoSuchFieldException e) {
			Log.e(TAG, "ReflectSuperFieldValue NoSuchFieldException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "ReflectSuperFieldValue IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "ReflectSuperFieldValue IllegalAccessException : " + e.toString());
		}
		return null;
	}
}
