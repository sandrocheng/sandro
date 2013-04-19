package com.tencent.one.battery.core.powerrank.proxy;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.tencent.one.battery.core.util.ReflectUtil;


import android.content.Context;
import android.util.Log;


/**
 * 
 * @ClassName: PowerProfileProxy
 * @Description:通过反射com.android.internal.os.PowerProfile类库获取实例
 * @author: Sandro
 * @date: 2013-1-16 上午09:52:26
 * 
 */
public class PowerProfileProxy {

	private String TAG = "PowerProfileProxy";

	/**
	 * 反射 com.android.internal.os.PowerProfile类库的对象实例
	 */
	private Object powerProfileInstance = null;

	/**
	 * 反射 com.android.internal.os.PowerProfile类
	 */
	private Class<?> powerProfileClass = null;

	/**
	 * PowerProfile.POWER_CPU_ACTIVE Power consumption when CPU is in power
	 * collapse mode. public static final String POWER_CPU_ACTIVE =
	 * "cpu.active";
	 */
	private String POWER_CPU_ACTIVE = null;

	/**
	 * PowerProfile.POWER_RADIO_ACTIVE Power consumption when talking on the
	 * phone. public static final String POWER_RADIO_ACTIVE = "radio.active";
	 */
	private String POWER_RADIO_ACTIVE = null;

	/**
	 * PowerProfile.POWER_WIFI_ACTIVE Power consumption when WiFi driver is
	 * transmitting/receiving. public static final String POWER_WIFI_ACTIVE =
	 * "wifi.active";
	 */
	private String POWER_WIFI_ACTIVE = null;

	/**
	 * Power consumption when CPU is awake (when a wake lock is held). This
	 * should be 0 on devices that can go into full CPU power collapse even when
	 * a wake lock is held. Otherwise, this is the power consumption in addition
	 * to POWERR_CPU_IDLE due to a wake lock being held but with no CPU
	 * activity.
	 */
	private String POWER_CPU_AWAKE = null;

	/**
	 * Power consumption when WiFi driver is on. public static final String
	 * POWER_WIFI_ON = "wifi.on";
	 */
	private String POWER_WIFI_ON = null;

	/**
	 * Power consumption when GPS is on.
	 * public static final String POWER_GPS_ON = "gps.on";
	 */
	private String POWER_GPS_ON = null;
	
	/**
	 * Power consumption when Bluetooth driver is on.
	 * public static final String POWER_BLUETOOTH_ON = "bluetooth.on";
	 */
	private String POWER_BLUETOOTH_ON = null;

 /**
     * Power consumption when CPU is in power collapse mode.
     */
    public String POWER_CPU_IDLE = null;
    /**
     * Power consumption when Bluetooth driver gets an AT command.
     */
    public String POWER_BLUETOOTH_AT_CMD = null;

    
    /**
     * Power consumption when cell radio is on but not on a call.
     */
    public String POWER_RADIO_ON = null;
    
    
    /**
     * Power consumption when cell radio is hunting for a signal.
     */
    public String POWER_RADIO_SCANNING = null;
	
	/**
     * Power consumption when screen is on, not including the backlight power.
     */
    public String POWER_SCREEN_ON = null;
	
	
	/**
     * Power consumption at full backlight brightness. If the backlight is at
     * 50% brightness, then this should be multiplied by 0.5
     */
    public String POWER_SCREEN_FULL = null;
    
	public PowerProfileProxy(Context context) {
		reflectPowerProfile(context);
		POWER_CPU_ACTIVE = getPowerCpuActive();
		POWER_RADIO_ACTIVE = getPowerRadioActive();
		POWER_WIFI_ACTIVE = getPowerWifiActive();
		POWER_CPU_AWAKE = getPowerCpuAwake();
		POWER_WIFI_ON = getPowerWifiOn();
		POWER_GPS_ON = getPowerGpsOn();
		POWER_BLUETOOTH_ON = this.getPowerBlueToothOn();
		POWER_RADIO_ON = getPowerRadioOn();
		POWER_RADIO_SCANNING = getPowerRadioScanning();
		POWER_SCREEN_FULL = getPowerScreenFull();
		POWER_SCREEN_ON = getPowerScreenOn();
		POWER_CPU_IDLE = getPowerCpuIdle();
		POWER_BLUETOOTH_AT_CMD = getPower_BlueToothAtCmd();
	}

	private void reflectPowerProfile(Context context) {
		try {
			powerProfileClass = Class.forName("com.android.internal.os.PowerProfile");
		} catch (Exception e) {
			Log.e(TAG, "reflectPowerProfile powerProfileClass Exception : " + e.toString());
			return;
		}
		// 取得全部的构造函数
		Constructor<?> cons[] = powerProfileClass.getConstructors();
		try {
			for (Constructor<?> con : cons) {
				powerProfileInstance = (Object) con.newInstance(context);
				break;
			}
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "reflectPowerProfile.newInstance.IllegalArgumentException : " + e.toString());
			return;
		} catch (InstantiationException e) {
			Log.e(TAG, "reflectPowerProfile.newInstance.InstantiationException : " + e.toString());
			return;
		} catch (IllegalAccessException e) {
			Log.e(TAG, "reflectPowerProfile.newInstance.IllegalAccessException : " + e.toString());
			return;
		} catch (InvocationTargetException e) {
			Log.e(TAG, "reflectPowerProfile.newInstance.InvocationTargetException : " + e.toString());
			return;
		}
	}

	/**
	 * 通过反射PowerFile.getNumSpeedSteps Returns the number of speeds that the CPU
	 * can be run at.
	 * 
	 * @return
	 */
	public int getNumSpeedSteps() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return 0;
		}
		Method getNumSpeedStepsMethod = null;
		try {
			getNumSpeedStepsMethod = powerProfileClass.getMethod("getNumSpeedSteps");
		} catch (SecurityException e) {
			Log.e(TAG, "getNumSpeedSteps SecurityException : " + e.toString());
			return 0;
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getNumSpeedSteps NoSuchMethodException : " + e.toString());
			return 0;
		}

		try {
			return (Integer) getNumSpeedStepsMethod.invoke(powerProfileInstance);
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getNumSpeedSteps IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getNumSpeedSteps IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getNumSpeedSteps InvocationTargetException : " + e.toString());
		}
		return 0;
	}

	public Object getPowerProfileInstance() {
		return powerProfileInstance;
	}

	public Class<?> getPowerProfileClass() {
		return powerProfileClass;
	}

	public String get_POWER_CPU_ACTIVE() {
		return POWER_CPU_ACTIVE;
	}

	public String get_POWER_RADIO_ACTIVE() {
		return POWER_RADIO_ACTIVE;
	}

	public String get_POWER_WIFI_ACTIVE() {
		return POWER_WIFI_ACTIVE;
	}

	public String get_POWER_CPU_AWAKE() {
		return POWER_CPU_AWAKE;
	}

	public String get_POWER_WIFI_ON() {
		return POWER_WIFI_ON;
	}
	
	public String get_POWER_GPS_ON() {
		return POWER_GPS_ON;
	}
	
	public String getPOWER_BLUETOOTH_ON(){
		return POWER_BLUETOOTH_ON;
	}
	
		public String get_POWER_CPU_IDLE() {
		return POWER_CPU_IDLE;
	}
	
	public String get_POWER_SCREEN_ON() {
		return POWER_SCREEN_ON;
	}
	
	public String get_POWER_SCREEN_FULL() {
		return POWER_SCREEN_FULL;
	}
	
	public String get_POWER_BLUETOOTH_ON() {
		return POWER_BLUETOOTH_ON;
	}
	
	
	public String get_POWER_BLUETOOTH_AT_CMD() {
		return POWER_BLUETOOTH_AT_CMD;
	}
	
	public String get_POWER_RADIO_ON() {
		return POWER_RADIO_ON;
	}
	
	public String get_POWER_RADIO_SCANNING() {
		return POWER_RADIO_SCANNING;
	}
	/**
	 * 反射获取PowerProfile.POWER_BLUETOOTH_ON的值
	 * @return
	 */
	private String getPowerBlueToothOn(){
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_BLUETOOTH_ON");
	}
	
	/**
	 * 反射获取PowerProfile.POWER_CPU_ACTIVE的值
	 * 
	 * @return
	 */
	private String getPowerCpuActive() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_CPU_ACTIVE");
	}

	/**
	 * 反射获取PowerProfile.POWER_RADIO_ACTIVE的值
	 * 
	 * @return
	 */
	private String getPowerRadioActive() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_RADIO_ACTIVE");
	}

	/**
	 * 反射获取PowerProfile.POWER_WIFI_ACTIVE的值
	 * 
	 * @return
	 */
	private String getPowerWifiActive() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_WIFI_ACTIVE");
	}

	/**
	 * 反射获取POWER_SCREEN_FULL的值
	 * 
	 * @return
	 */
	private String getPowerScreenFull() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_SCREEN_FULL");
	}
	
	/**
	 * 反射获取POWER_SCREEN_ON的值
	 * 
	 * @return
	 */
	private String getPowerScreenOn() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_SCREEN_ON");
	}
	
	/**
	 * 反射获取POWER_CPU_IDLE的值
	 * 
	 * @return
	 */
	private String getPowerCpuIdle() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_CPU_IDLE");
	}
	
	/**
	 * 反射获取PowerProfile.POWER_CPU_AWAKE的值
	 * 
	 * @return
	 */
	private String getPowerCpuAwake() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_CPU_AWAKE");
	}	
	
	/**
	 * 反射获取PowerProfile.POWER_BLUETOOTH_AT_CMD的值
	 * 
	 * @return
	 */
	private String getPower_BlueToothAtCmd() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_BLUETOOTH_AT_CMD");
	}
	
	
	/**
	 * 反射获取PowerProfile.POWER_BLUETOOTH_AT_CMD的值
	 * 
	 * @return
	 */
	private String getPowerWifiOn() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_WIFI_ON");
	}

	/**
	 * 反射获取PowerProfile.POWER_GPS_ON的值
	 * 
	 * @return
	 */
	private String getPowerGpsOn() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_GPS_ON");
	}
	
	/**
	 * 反射获取PowerProfile.POWER_RADIO_ON的值
	 * 
	 * @return
	 */
	private String getPowerRadioOn() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_RADIO_ON");
	}
	
	/**
	 * 反射获取PowerProfile.POWER_RADIO_SCANNING的值
	 * 
	 * @return
	 */
	private String getPowerRadioScanning() {
		if (powerProfileClass == null || powerProfileInstance == null) {
			return null;
		}
		return (String) ReflectUtil.ReflectFieldValue(powerProfileClass, powerProfileInstance, "POWER_RADIO_SCANNING");
	}
	/**
	 * Returns the average current in mA consumed by the subsystem
	 * 
	 * @param type
	 *            the subsystem type
	 * @return the average current in milliAmps.(单位为mA/h)
	 */
	public double getAveragePower(String type) {
		if (type == null) {
			return 0d;
		}
		Method getAveragePowerMethod = null;

		try {
			getAveragePowerMethod = powerProfileClass.getMethod("getAveragePower", String.class);
			return (Double) getAveragePowerMethod.invoke(powerProfileInstance, type);
		} catch (SecurityException e) {
			Log.e(TAG, "getAveragePower SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getAveragePower NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getAveragePower IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getAveragePower IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getAveragePower InvocationTargetException : " + e.toString());
		}
		return 0d;
	}

	/**
	 * Returns the average current in mA consumed by the subsystem for the given
	 * level.
	 * 
	 * @param type
	 *            the subsystem type
	 * @param level
	 *            the level of power at which the subsystem is running. For
	 *            instance, the signal strength of the cell network between 0
	 *            and 4 (if there are 4 bars max.) If there is no data for
	 *            multiple levels, the level is ignored.
	 * @return the average current in milliAmps.(单位为mA/h)
	 */
	public double getAveragePower(String type, int level) {
		if (type == null) {
			return 0d;
		}
		Method getAveragePowerMethod = null;

		try {
			getAveragePowerMethod = powerProfileClass.getMethod("getAveragePower", String.class, int.class);
			return (Double) getAveragePowerMethod.invoke(powerProfileInstance, type, level);
		} catch (SecurityException e) {
			Log.e(TAG, "getAveragePower SecurityException : " + e.toString());
		} catch (NoSuchMethodException e) {
			Log.e(TAG, "getAveragePower NoSuchMethodException : " + e.toString());
		} catch (IllegalArgumentException e) {
			Log.e(TAG, "getAveragePower IllegalArgumentException : " + e.toString());
		} catch (IllegalAccessException e) {
			Log.e(TAG, "getAveragePower IllegalAccessException : " + e.toString());
		} catch (InvocationTargetException e) {
			Log.e(TAG, "getAveragePower InvocationTargetException : " + e.toString());
		}
		return 0d;
	}

	/**
	 * 通过反射获取PowerProfile类中 public double getAveragePower(String type, int
	 * level)方法 POWER_CPU_ACTIVE对应类型的值 Returns the average current in mA
	 * consumed by the subsystem for the given level.
	 * 
	 * @param type
	 *            the subsystem type
	 * @param level
	 *            the level of power at which the subsystem is running. For
	 *            instance, the signal strength of the cell network between 0
	 *            and 4 (if there are 4 bars max.) If there is no data for
	 *            multiple levels, the level is ignored.
	 * @return the average current in milliAmps.
	 * @param speedSteps
	 * @return
	 */
	public double getAveragePower(int speedSteps) {
		if (POWER_CPU_ACTIVE == null) {
			return 0d;
		}

		return getAveragePower(POWER_CPU_ACTIVE, speedSteps);
	}
	
    /**
     * 获取电池容量，如果存在返回mAh,否则返回0<br>
     * 取Power_profile.xml中"battery.capacity"的值<br>
     * 为厂商出厂内置文件，如更换电池或者xml文件改变，则该值不一定准确。
     * 
     * @return 电池容量(mAh)
     * @since 1.0
     * @author LionLiu
     */
    public double getBatteryCapacity() {
        Method getBatteryCapacityMethod = null;

        try {
            getBatteryCapacityMethod = powerProfileClass.getMethod("getBatteryCapacity");
            return (Double)getBatteryCapacityMethod.invoke(powerProfileInstance);
        } catch (SecurityException e) {
            Log.e(TAG, "getBatteryCapacity SecurityException : " + e.toString());
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "getBatteryCapacity NoSuchMethodException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "getBatteryCapacity IllegalArgumentException : " + e.toString());
        } catch (IllegalAccessException e) {
            Log.e(TAG, "getBatteryCapacity IllegalAccessException : " + e.toString());
        } catch (InvocationTargetException e) {
            Log.e(TAG, "getBatteryCapacity InvocationTargetException : " + e.toString());
        }
        return 0d;
    }
	/** Added by Lionliu End */
}
