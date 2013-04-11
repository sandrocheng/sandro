package com.tencent.onesecurity.manager.optimize;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.ConcurrentHashMap;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.model.AutoBootAppModel;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper;
import com.tencent.tmsecure.module.optimize.IAutoBootHelper.Pair;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;

/**
 * AutoBootManager
 * 
 * @ClassName: AutoBootManager
 * @Description:封装开机自启动模块的全部逻辑
 * @author: Jack Wang
 * @date: 2013-01-24 上午10:18:16
 * 
 */
public class AutoBootManager {
	/** 单例 */
	private static AutoBootManager instance = null;
	
	/** 软件管理相关管理器 */
	private SoftwareManager mSoftwareManager = null;
	
	/** 系统优化管理器 */
	private OptimizeManager mOptimizeManager = null;
	
	/** 开机自启动管理器 */
	private IAutoBootHelper mAutoBootHelper = null;
	
	private final ConcurrentHashMap<String, ArrayList<String>> mHashMap = new ConcurrentHashMap<String, ArrayList<String>>();
    
	/**
	 * 私有构造方法
	 */
	private AutoBootManager() {
		mOptimizeManager = ManagerCreator.getManager(OptimizeManager.class);
		mAutoBootHelper = mOptimizeManager.getAutoBootHelper();
		
		mSoftwareManager = ManagerCreator.getManager(SoftwareManager.class);
	}

	/**
	 * 获得单例的AutoBootManager对象
	 * @return
	 */
	public static AutoBootManager getInstance() {
		if (instance == null) {
			synchronized (AutoBootManager.class) {
				if (instance == null) {
					instance = new AutoBootManager();
				}
			}
		}
		return instance;
	}
    
	public void destroy() {
		instance = null;
	}
	
	public ArrayList<AutoBootAppModel> getAutoBootAppsBySDK() {
		ArrayList<AutoBootAppModel> arraylist = new ArrayList<AutoBootAppModel>();
		
		ArrayList<Pair<String, Boolean>> apps = mAutoBootHelper.getAllAutoBootApps();
		AutoBootAppModel autoBootAppModel;
		for (Iterator<Pair<String, Boolean>> iteratorHash = apps.iterator(); iteratorHash.hasNext();) {
			Pair<String, Boolean> entry = (Pair<String, Boolean>)iteratorHash.next();
            String pkgName = entry.first;
            // 排除自己
    		if (pkgName == null || pkgName.equals(ApplicationConfig.MY_PACKAGE_NAME)) {
    			entry = (Pair<String, Boolean>)iteratorHash.next();
    			pkgName = entry.first;
    		}
    		
            autoBootAppModel = new AutoBootAppModel();
            autoBootAppModel.setPkgName(pkgName);
            autoBootAppModel.setAutoBootEnabled(entry.second);
            
			// 标志位FLAG_APP_INFO： 包名、应用程序名、是否为系统应用、icon
			AppEntity appEntity = getAppEntity(pkgName, AppEntity.FLAG_APP_INFO|AppEntity.FLAG_ICON);
			if (appEntity != null) {
				autoBootAppModel.setAppName(appEntity.getAppName());
				autoBootAppModel.setSystemApp(appEntity.isSystemApp());
				autoBootAppModel.setIcon(appEntity.getIcon());
				
				arraylist.add(autoBootAppModel);
			}
        }
		
		return arraylist;
	}
	public boolean setAutoBootEnableBySDK(String pkgName, boolean enabled) {
		return mAutoBootHelper.setAutoBootEnable(pkgName, enabled);
	}
	
	/**
	 * 取得开机自启动应用列表
	 * @return
	 */
	public ArrayList<AutoBootAppModel> getAutoBootApps() {
		ArrayList<AutoBootAppModel> arraylist = new ArrayList<AutoBootAppModel>();
		
		PackageManager mPackageManager = MainApplication.getContext().getPackageManager();
		Intent intent = new Intent(Intent.ACTION_BOOT_COMPLETED);  
		List<ResolveInfo> resolveInfoList = mPackageManager.queryBroadcastReceivers(intent, PackageManager.GET_DISABLED_COMPONENTS);
		Iterator<ResolveInfo> iterator = resolveInfoList.iterator();
		mHashMap.clear();
		
		do
        {
            if(!iterator.hasNext()) {
                break;
            }
            ResolveInfo resolveInfo = (ResolveInfo)iterator.next();
            String pkgName = resolveInfo.activityInfo.packageName;
            // 排除自己
    		if (pkgName == null || pkgName.equals(ApplicationConfig.MY_PACKAGE_NAME)) {
    			continue;
    		}
    		
            String receiverName = resolveInfo.activityInfo.name;
            ArrayList<String> receiverArray = null;
            if(mHashMap.containsKey(pkgName)) {
            	receiverArray = (ArrayList<String>)mHashMap.get(pkgName);
            } else {
            	receiverArray = new ArrayList<String>();
            	mHashMap.put(pkgName, receiverArray);
            }
            if(!receiverArray.contains(receiverName)) {
            	receiverArray.add(receiverName);
            }
        } while(true);
		
		AutoBootAppModel autoBootAppModel;
		for (Iterator<Entry<String, ArrayList<String>>> iteratorHash = mHashMap.entrySet().iterator(); iteratorHash.hasNext();) {
            Entry<String, ArrayList<String>> entry = (Entry<String, ArrayList<String>>)iteratorHash.next();
            String pkgName = (String)entry.getKey();
            
            autoBootAppModel = new AutoBootAppModel();
            autoBootAppModel.setPkgName(pkgName);
            autoBootAppModel.setAutoBootEnabled(isAppAutoBoot(pkgName));
            
			// 标志位FLAG_APP_INFO： 包名、应用程序名、是否为系统应用、icon
			AppEntity appEntity = getAppEntity(pkgName, AppEntity.FLAG_APP_INFO|AppEntity.FLAG_ICON);
			if (appEntity != null) {
				autoBootAppModel.setAppName(appEntity.getAppName());
				autoBootAppModel.setSystemApp(appEntity.isSystemApp());
				autoBootAppModel.setIcon(appEntity.getIcon());
				
				arraylist.add(autoBootAppModel);
			}
        }

        return arraylist;
	}
	
	/**
	 * 设置开机自启动开关
	 * @param packageName
	 * @param flag
	 * @return
	 */
	public boolean setAutoBootEnable(String pkgName, boolean flag) {
		ArrayList<String> arraylist = (ArrayList<String>)mHashMap.get(pkgName);
		if (arraylist != null && arraylist.size() > 0) {
			for (int i = 0; i < arraylist.size(); i++) {
				String mCommand = String.format("pm %s '%s/%s'", new Object[] {(flag ? "enable" : "disable"), pkgName, arraylist.get(i)});
				execCommand(mCommand);
			}
		}
		
		return true;
	}
	
	/**
	 * 根据包名取得AppEntity对象
	 * @param pkgName 包名
	 * @param flag 标志位
	 * @return
	 */
	private AppEntity getAppEntity(String pkgName, int flag) {
		// 根据包名获取应用程序的信息
		return mSoftwareManager.getAppInfo(pkgName, flag);
	}
	
	/**
	 * 判断应用是否能够开机自启动
	 * @param pkgName
	 * @return
	 */
    private boolean isAppAutoBoot(String pkgName) {
        boolean flag = false;
        ArrayList<String> arraylist = (ArrayList<String>)mHashMap.get(pkgName);
        if(arraylist != null && arraylist.size() > 0) {
            boolean flag1 = true;
            Iterator<String> iterator = arraylist.iterator();
            do
            {
                if(!iterator.hasNext()) {
                    break;
                }
                String receiverName = (String)iterator.next();
                flag1 &= isAppAutoBoot(pkgName, receiverName, MainApplication.getContext().getPackageManager());
            } while(flag1);
            flag = flag1;
        }
        return flag;
    }
    
    private boolean isAppAutoBoot(String pkgName, String receiverName, PackageManager packagemanager) {
        ComponentName componentname = new ComponentName(pkgName, receiverName);
        int i = packagemanager.getComponentEnabledSetting(componentname);
        return i != 2;
    }
    
    
    private void execCommand(String command) {
		Runtime runtime = Runtime.getRuntime();
		Process proc = null;
		try {
			proc = runtime.exec("su");
			PrintWriter pw = new PrintWriter(proc.getOutputStream());
			InputStreamReader in = new InputStreamReader(proc.getInputStream());
			pw.println(command);
			pw.flush();
			pw.close();
			
			StringBuilder result = new StringBuilder();
			char[] buf = new char[1024];
			if (result != null) {
				int length;
				while ((length = in.read(buf)) != -1) {
					result.append(buf, 0, length);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
