package com.sandro.util;

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
	
	/**
	 * 获取类的属性值
	 * @return
	 */
	public static Object ReflectFieldValue(Class<?> clazz,Object classObj,String FieldName){
		try {
			Field field = clazz.getDeclaredField(FieldName);
			return field.get(classObj);
		} catch (SecurityException e) {
			Log.e("BatteryCalManager", "getPowerCpuActive SecurityException : " + e.toString());
		} catch (NoSuchFieldException e) {
			Log.e("BatteryCalManager", "getPowerCpuActive NoSuchFieldException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e("BatteryCalManager", "getPowerCpuActive IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e("BatteryCalManager", "getPowerCpuActive IllegalAccessException : " + e.toString());
		}
		return null;
	}
}
