package com.tencent.one.battery.core.powerrank.proxy;




import com.tencent.one.battery.core.util.ReflectUtil;

import android.content.Context;
import android.util.Log;


/**
 * 
 * @ClassName: PowerProfileProxy
 * @Description:通过反射android.telephony.SignalStrength类库获取实例
 * @author: Josh
 * @date: 2013-1-22
 * 
 */
public class SignalStrengthProxy {
	
	private String TAG = "SignalStrengthProxy";
	
	/** @hide */
    private int NUM_SIGNAL_STRENGTH_BINS = 0;
    
	/**
	 * 反射 android.telephony.SignalStrength类
	 */
	private Class<?> signalStrengthClass = null;
	
	
	public SignalStrengthProxy(Context context) {
		reflectSignalStrength(context);
		getNumSignalStrengthBins();
	}
	
	private void reflectSignalStrength(Context context) {
		ClassLoader localClassLoader = context.getClassLoader();
		try {
			signalStrengthClass = localClassLoader.loadClass("android.telephony.SignalStrength");
		} catch (ClassNotFoundException e) {
			Log.e(TAG, "signalStrengthClass reflect error ClassNotFoundException : " + e.toString());
		} catch (SecurityException e) {
			Log.e(TAG, "signalStrengthClass reflect error SecurityException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "signalStrengthClass reflect error IllegalArgumentException : " + e.toString());
		}
		NUM_SIGNAL_STRENGTH_BINS = getNumSignalStrengthBins();
	}
	
	public int get_NumSignalStrengthBins() {
		return NUM_SIGNAL_STRENGTH_BINS;
	}
	
	/**
	 * 反射获取SignalStrength.NUM_SIGNAL_STRENGTH_BINS的值
	 * 
	 * @return
	 */
	private int getNumSignalStrengthBins() {
		if ( signalStrengthClass == null ) {
			return -1;
		}
		
		if (ReflectUtil.ReflectFieldValue(signalStrengthClass, null, "NUM_SIGNAL_STRENGTH_BINS") != null) {
			return (Integer)ReflectUtil.ReflectFieldValue(signalStrengthClass, null, "NUM_SIGNAL_STRENGTH_BINS") ;
		}
		return 5;
	}

}
