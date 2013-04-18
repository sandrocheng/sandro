
package com.tinyscreen.quteWatcher.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

import com.tinyscreen.quteWatcher.MainApp;


/**
 * 获取Manifest文件里的值
 * @author boone
 * @version 1.0
 */
public class VersionUtil {
    
    /**
     * 获取配置信息
     * 
     * @Description
     * @version 1.0
     
     */
    public static PackageInfo getConfiguration() {
        Context context = MainApp.getContext();
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo pinfo = pm.getPackageInfo(context.getPackageName(),
                    PackageManager.GET_CONFIGURATIONS);
            return pinfo;
        } catch (NameNotFoundException e) {
            return null;
        }
    }
    
    /**
     * 获取Version Name
     * @Description 
     */
    public static String getVersionName() {
        PackageInfo pinfo = getConfiguration();
        if (null != pinfo) {
            return pinfo.versionName;
        }
        
        return null;
    }
    
    /**
     * 获取Version Code
     * @Description 
     */
    public static int getVersionCode() {
        PackageInfo pinfo = getConfiguration();
        if (null != pinfo) {
            return pinfo.versionCode;
        }
        
        return 0;
    }
}
