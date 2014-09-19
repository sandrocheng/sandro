package com.tencent.util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.renderscript.FieldPacker;
import android.view.View;
import android.webkit.WebView;
import android.widget.TextView;


/**
 * 反射调用的类
 *
 */
public class ReflectedMethods {
    
    /**
     * 多进程间共享同一个SharePrefrence时，使用该方法加载SharePrefrence。<br>
     * 该方法当API LEVEL > 11时，使用MODE_MULTI_PROCESS模式加载SharePrefrence。否则，使用MODE_PRIVATE模式加载。
     * @param context
     * @param name
     * @return
     */
    public static SharedPreferences loadMultiProcessSharePrefrence(Context context, String name){
    	if(context == null || name == null || name.length() <= 0){
    		return null;
    	}
    	Class owennerClass;
		int mode = -1;
		try {
			owennerClass = Class.forName("android.content.Context");
			Field field = owennerClass.getField("MODE_MULTI_PROCESS");
			mode = (Integer)field.get(owennerClass);
		}
		catch (ClassNotFoundException e1) {
//			e1.printStackTrace();
		}
		catch (NoSuchFieldException e) {
//			e.printStackTrace();
		}
		catch (IllegalArgumentException e) {
//			e.printStackTrace();
		} 
		catch (IllegalAccessException e) {
//			e.printStackTrace();
		} 
		catch(Exception e){
//			e.printStackTrace();
		}
		if(mode == -1){
			mode = Context.MODE_PRIVATE;
		}
		SharedPreferences preference = context.getSharedPreferences(name, mode);
		return preference;
    }
    
    
	private final static ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Field>> REG_FIELD_CACHE;
	private static ConcurrentHashMap<Class<?>, ArrayList<String>> PRELOAD_FIELD;
	private final static ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Method>> REG_METHOD_CACHE;
	private static ConcurrentHashMap<Class<?>, ArrayList<String>> PRELOAD_METHOD;
	private final static ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Class<?>[]>> REG_METHOD_TYPES_CACHE;
	private final static boolean IS_CACHE_REF;
	private static int INIT_SIZE = 0;
	static {
		if (Build.VERSION.SDK_INT < Build.VERSION_CODES.ICE_CREAM_SANDWICH) {
			REG_FIELD_CACHE = new ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Field>>(
					6);
			PRELOAD_FIELD = new ConcurrentHashMap<Class<?>, ArrayList<String>>(6);
			REG_METHOD_CACHE = new ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Method>>(
					6);
			PRELOAD_METHOD = new ConcurrentHashMap<Class<?>, ArrayList<String>>(6);
			REG_METHOD_TYPES_CACHE = new ConcurrentHashMap<Class<?>, ConcurrentHashMap<String, Class<?>[]>>(
					4);
			IS_CACHE_REF = true;
			INIT_SIZE = 3;
			regFieldCache(android.view.View.class, "mHasPerformedLongPress");
			regFieldCache(android.view.View.class, "mPrivateFlags");
			regFieldCache(android.view.View.class, "mAttachInfo");
			INIT_SIZE = 2;
			regFieldCache(TextView.class, "mSingleLine");
			regFieldCache(TextView.class, "mTextSelectHandleRes");
			
			INIT_SIZE = 3;
			regMethodCache(WebView.class, "addJavascriptInterface", Object.class, String.class);
			regMethodCache(WebView.class, "onPause");
			regMethodCache(WebView.class, "onResume");
			
			INIT_SIZE = 5;
			regMethodCache(View.class,"dispatchFinishTemporaryDetach");
			regMethodCache(View.class,"dispatchStartTemporaryDetach");
			regMethodCache(View.class,"computeOpaqueFlags");
			regMethodCache(View.class,"recomputePadding");
			regMethodCache(View.class,"dispatchDetachedFromWindow");
		} else {
			REG_FIELD_CACHE = null;
			REG_METHOD_CACHE = null;
			REG_METHOD_TYPES_CACHE = null;
			IS_CACHE_REF = false;
		}
	}

	public final static <T> void regFieldCache(Class<T> ower, String name) {
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Field> cache = REG_FIELD_CACHE.get(ower);
			if (cache == null) {
				cache = new ConcurrentHashMap<String, Field>(INIT_SIZE);
				ArrayList<String> list = new ArrayList<String>(INIT_SIZE);
				list.add(name);
				PRELOAD_FIELD.put(ower, list);
				REG_FIELD_CACHE.put(ower, cache);
			} else {
				PRELOAD_FIELD.get(ower).add(name);
			}
		}
	}

	public final static <T> void regMethodCache(Class<T> ower, String name,
			Class<?>... parameterTypes) {
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Method> cache = REG_METHOD_CACHE
					.get(ower);
			if (cache == null) {
				cache = new ConcurrentHashMap<String, Method>(INIT_SIZE);
				ArrayList<String> list = new ArrayList<String>(INIT_SIZE);
				list.add(name);
				PRELOAD_METHOD.put(ower, list);
				REG_METHOD_CACHE.put(ower, cache);
			} else {
				PRELOAD_METHOD.get(ower).add(name);
			}
			if (parameterTypes != null) {
				ConcurrentHashMap<String, Class<?>[]> pCache = REG_METHOD_TYPES_CACHE
						.get(ower);
				if (pCache == null) {
					pCache = new ConcurrentHashMap<String, Class<?>[]>(1);
					REG_METHOD_TYPES_CACHE.put(ower, pCache);
				}
				pCache.put(name, parameterTypes);
			}
		}
	}

	/**
	 * 2.3（3.0类似）GetField会把该类以及所有父类和所有的接口的Public Field 返回做缓存（软引用）； 4.0 GetField
	 * 遍历自己和所有的父类，接口，以及父类的接口Public Field 直到找到 对应的Field
	 * 
	 * @param ower
	 * @param name
	 * @return
	 * @throws NoSuchFieldException
	 */
	public final static <T> Field getField(Class<T> ower, String name)
			throws NoSuchFieldException {
		Field field = null;
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Field> cache = REG_FIELD_CACHE.get(ower);
			if (cache != null) {
				field = cache.get(name);
				if (field == null) {
//					for (Map.Entry<String, Field> entry : cache.entrySet()) {
//						if (entry.getValue() == null) {
//							String key = entry.getKey();
//							field = ower.getField(key);
//							if (field != null)
//								cache.put(key, field);
//						}
//					}
					ArrayList<String> list = PRELOAD_FIELD.get(ower);
					if(list != null && list.size() != 0){
						for (String key : list) {
							if(cache.get(key) == null){
								field = ower.getField(key);
								if (field != null)
									cache.put(key, field);
							}
						}
						list.clear();
						PRELOAD_FIELD.remove(ower);
					}else{
						field = ower.getField(name);
						if (field != null)
							cache.put(name, field);
					}
					field = cache.get(name);
				}
			} else {
				field = ower.getField(name);
				cache = new ConcurrentHashMap<String, Field>(3);
				cache.put(name, field);
				REG_FIELD_CACHE.put(ower, cache);
			}
		} else {
			field = ower.getField(name);
		}
		return field;
	}

	/**
	 * 2.3（3.0类似）getDeclaredField 会把该类 所有的Field 初始化返回缓存（软引用） 4.0
	 * getDeclaredField先在自己的静态字段中查找，然后实例字段中查找 （找到返回）
	 * 
	 * @param ower
	 * @param name
	 * @return
	 * @throws NoSuchFieldException
	 */
	public final static <T> Field getDeclaredField(Class<T> ower, String name)
			throws NoSuchFieldException {
		Field field = null;
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Field> cache = REG_FIELD_CACHE.get(ower);
			if (cache != null) {
				field = cache.get(name);
				if (field == null) {
					ArrayList<String> list = PRELOAD_FIELD.get(ower);
					if(list != null && list.size() != 0){
						for (String key : list) {
							if(cache.get(key) == null){
								field = ower.getDeclaredField(key);
								if (field != null)
									cache.put(key, field);
							}
						}
						list.clear();
						PRELOAD_FIELD.remove(ower);
					}else{
						field = ower.getDeclaredField(name);
						if (field != null)
							cache.put(name, field);
					}
					field = cache.get(name);
				}
			} else {
				field = ower.getDeclaredField(name);
				cache = new ConcurrentHashMap<String, Field>(2);
				cache.put(name, field);
				REG_FIELD_CACHE.put(ower, cache);
			}
		} else {
			field = ower.getDeclaredField(name);
		}
		return field;
	}

	/**
	 * 2.3（3.0类似） getMethod 遍历自身以及所有父类以及接口的Public方法排序缓存 4.0 getMethod
	 * 从自己开始遍历，知道找到对应的Public方法（会判断是不是Public），然后同样递归到父类
	 * 
	 * @param ower
	 * @param name
	 * @param parameterTypes
	 * @return
	 * @throws NoSuchMethodException
	 */
	public final static <T> Method getMethod(Class<T> ower, String name,
			Class<?>... parameterTypes) throws NoSuchMethodException {
		Method method = null;
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Method> cache = REG_METHOD_CACHE
					.get(ower);
			if (cache != null) {
				method = cache.get(name);
				if (method == null) {
					ArrayList<String> list = PRELOAD_METHOD.get(ower);
					if(list != null && list.size() != 0){
						for (String key : list) {
							if(cache.get(key) == null){
								Class<?>[] parameter = null;
								ConcurrentHashMap<String, Class<?>[]> pCache = REG_METHOD_TYPES_CACHE
										.get(ower);
								if (pCache != null) {
									parameter = pCache.get(key);
								}
								method = ower.getMethod(key, parameter);
								if (method != null)
									cache.put(key, method);
							}
						}
						list.clear();
						PRELOAD_METHOD.remove(ower);
					}else{
						method = ower.getMethod(name, parameterTypes);
						if (method != null)
							cache.put(name, method);
					}
					method = cache.get(name);
				}
			} else {
				method = ower.getMethod(name, parameterTypes);
				cache = new ConcurrentHashMap<String, Method>(4);
				cache.put(name, method);
				REG_METHOD_CACHE.put(ower, cache);
			}
		} else {
			method = ower.getMethod(name, parameterTypes);
		}
		return method;
	}

	/**
	 * 2.3（3.0类似） getDeclaredMethod 返回该类所有的方法以及接口，排序缓存，然后查找对应的方法 4.0
	 * getDeclaredMethod 只会查找当前类的所有方法，先查找direct方法（static，private和<init>方法）
	 * 
	 * @param ower
	 * @param name
	 * @param parameterTypes
	 * @return
	 * @throws NoSuchMethodException
	 */
	public final static <T> Method getDeclaredMethod(Class<T> ower,
			String name, Class<?>... parameterTypes)
			throws NoSuchMethodException {

		Method method = null;
		if (IS_CACHE_REF) {
			ConcurrentHashMap<String, Method> cache = REG_METHOD_CACHE
					.get(ower);
			if (cache != null) {
				method = cache.get(name);
				if (method == null) {
					ArrayList<String> list = PRELOAD_METHOD.get(ower);
					if(list != null && list.size() != 0){
						for (String key : list) {
							if(cache.get(key) == null){
								Class<?>[] parameter = null;
								ConcurrentHashMap<String, Class<?>[]> pCache = REG_METHOD_TYPES_CACHE
										.get(ower);
								if (pCache != null) {
									parameter = pCache.get(key);
								}
								method = ower.getDeclaredMethod(key, parameter);
								if (method != null)
									cache.put(key, method);
							}
						}
						list.clear();
						PRELOAD_METHOD.remove(ower);
					}else{
						method = ower.getDeclaredMethod(name, parameterTypes);
						if (method != null)
							cache.put(name, method);
					}
					method = cache.get(name);
				}
			} else {
				method = ower.getDeclaredMethod(name, parameterTypes);
				cache = new ConcurrentHashMap<String, Method>(4);
				cache.put(name, method);
				REG_METHOD_CACHE.put(ower, cache);
			}
		} else {
			method = ower.getDeclaredMethod(name, parameterTypes);
		}
		return method;
	}
	
	private static Method GET_DECLARED_FIELDS = null;
	private static boolean IS_ERR = false;
	/**
	 * 返回该类的属性
	 * @param clazz 
	 * @param publicOnly 是否只是Public
	 * @return
	 */
	public static Field[] getNativeDeclaredFields(Class<?> clazz, boolean publicOnly){
		Field[] fields = null;
		if(!IS_ERR){
			try {
				if(GET_DECLARED_FIELDS == null){
					GET_DECLARED_FIELDS = Class.class.getDeclaredMethod("getDeclaredFields", Class.class,boolean.class);
					GET_DECLARED_FIELDS.setAccessible(true);
				}
				fields = (Field[])GET_DECLARED_FIELDS.invoke(null, clazz, publicOnly);
			} catch (Exception e) {
				// TODO: handle exception
				IS_ERR = true;
			}catch (Error e) {
				// TODO: handle exception
				IS_ERR = true;
			}
		}
		if(fields == null){//下面恶心的代码是不会走到的，但是为了安全保留一下
			fields =  clazz.getDeclaredFields();
			if(publicOnly){
				ArrayList<Field> fieldList = new ArrayList<Field>();
				for (Field field : fields) {
					if(Modifier.isPublic(field.getModifiers())){
						fieldList.add(field);
					}
				}
				fields = new Field[fieldList.size()];
				fieldList.toArray(fields);
			}
		}
		return fields;
	}

}
