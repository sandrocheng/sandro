package com.tencent.one.battery.core.powerrank.proxy;


import com.tencent.one.battery.core.util.ReflectUtil;

import android.content.Context;
import android.util.Log;


/**
 * @ClassName: ProcessProxy
 * @Description:反射 android.os.Process 获取实例和对应方法
 * @author: Lion
 */
public class ProcessProxy {

    private final static String TAG = "ProcessProxy";

    /**
     * 反射 android.os.Process
     */
    private static Class<?> processClass = null;

    /**
     * Defines the UID/GID for the WIFI supplicant process.
     */
    private static int WIFI_UID;
    
    /**
     * Defines the UID/GID under which the telephony code runs.
     */
    private static int PHONE_UID;
    
    /**
     * Defines the UID/GID under which system code runs.
     */
    private static int SYSTEM_UID;
    
    /**
     * Defines the UID/GID for the user shell.
     * @hide
     */
    private static int SHELL_UID;
    
    /**
     * Defines the UID/GID for the log group.
     * @hide
     */    
    private static int LOG_UID;
    
    /**
     * Defines the UID/GID for the mediaserver process.
     * @hide
     */    
	private static int MEDIA_UID;
	
	/**
     * Defines the UID/GID for the DRM process.
     * @hide
     */	
	private static int DRM_UID;
	
	/**
     * Defines the UID/GID for the group that controls VPN services.
     * @hide
     */
	private static int VPN_UID;
	
	/**
     * Defines the UID/GID for the NFC service process.
     * @hide
     */
	private static int NFC_UID;
    /**
     * @param context
     */
    public ProcessProxy(Context context) {
        ClassLoader localClassLoader = context.getClassLoader();
        try {
            processClass = localClassLoader.loadClass("android.os.Process");
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "processClass reflect error ClassNotFoundException : " + e.toString());
        } catch (SecurityException e) {
            Log.e(TAG, "processClass reflect error SecurityException : " + e.toString());
        } catch (IllegalArgumentException e) {
            Log.e(TAG, "processClass reflect error IllegalArgumentException : " + e.toString());
        }
        WIFI_UID = getWifiUid();
        PHONE_UID = getPhoneUid();
        SYSTEM_UID = getSystemUid();
        SHELL_UID = getShellUid();
        LOG_UID = getLogUid();
        MEDIA_UID = getMediaUid();
        DRM_UID = getDrmUid();
        VPN_UID = getVpnUid();
        NFC_UID = getNfcUid();
    }

    /**
     * 反射获取PowerProfile.POWER_WIFI_ON的值
     * 
     * @return
     */
    private static int getWifiUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "WIFI_UID");
    }

    public static int get_WIFI_UID() {
        return WIFI_UID;
    }
    
    
    /**
     * 反射获取Process.PHONE_UID的值
     * 
     * @return
     */
    private static int getPhoneUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "PHONE_UID");
    }

    public static int get_PHONE_UID() {
        return PHONE_UID;
    }
    
    /**
     * 反射获取Process.SYSTEM_UID的值
     * 
     * @return
     */
    private static int getSystemUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "SYSTEM_UID");
    }

    public static int get_SYSTEM_UID() {
        return SYSTEM_UID;
    }
    
    
    /**
     * 反射获取Process.SHELL_UID的值
     * 
     * @return
     */
    private static int getShellUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "SHELL_UID");
    }

    public static int get_SHELL_UID() {
        return SHELL_UID;
    }
    
    
    /**
     * 反射获取Process.LOG_UID的值
     * 
     * @return
     */
    private static int getLogUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "LOG_UID");
    }

    public static int get_LOG_UID() {
        return LOG_UID;
    }
    
    
    /**
     * 反射获取Process.MEDIA_UID的值
     * 
     * @return
     */
    private static int getMediaUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return 0;//(Integer)ReflectUtil.ReflectFieldValue(processClass, null, "MEDIA_UID");
    }

    public static int get_MEDIA_UID() {
        return MEDIA_UID;
    }
    
    
    /**
     * 反射获取Process.DRM_UID的值
     * 
     * @return
     */
    private static int getDrmUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return 0;//(Integer)ReflectUtil.ReflectFieldValue(processClass, null, "DRM_UID");
    }

    public static int get_DRM_UID() {
        return DRM_UID;
    }
    
    
    /**
     * 反射获取Process.DRM_UID的值
     * 
     * @return
     */
    private static int getVpnUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return 0;//(Integer)ReflectUtil.ReflectFieldValue(processClass, null, "VPN_UID");
    }

    public static int get_VPN_UID() {
        return VPN_UID;
    }
    
    /**
     * 反射获取Process.NFC_UID的值
     * 
     * @return
     */
    private static int getNfcUid() {
        if (processClass == null || processClass == null) {
            return 0;
        }
        return (Integer)ReflectUtil.ReflectFieldValue(processClass, null, "NFC_UID");
    }

    public static int get_NFC_UID() {
        return NFC_UID;
    }
    
}
