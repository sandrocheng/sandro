package com.tinyscreen.quteWatcher.service;

import java.util.List;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.util.Log;
import dalvik.system.DexClassLoader;

/**
 * 
* @ClassName: WatcherLoader
* @Description:qutewatcher加载器
* @author: Sandro
* @date: 2013-2-21 下午03:12:14
*
 */
public class WatcherLoader {

	/**
	 * 启动qute监控器
	 */
	public static void startQuteWatcher(Context context){
        Intent intent = new Intent();
        intent.setClassName("com.tinyscreen.quteWatcher",
                "com.tinyscreen.quteWatcher.QuteWatcherActivity");
		PackageManager pm = context.getPackageManager();
		final List<ResolveInfo> plugins = pm.queryIntentActivities(intent, 0);
		if(plugins==null || plugins.size()==0){
			Log.e("WatcherLoader", "plugins==null || plugins.size()==0");
			return;
		}
		ResolveInfo rinfo = plugins.get(0);
		ActivityInfo ainfo = rinfo.activityInfo;
		
//		String div = System.getProperty("path.separator");
		String packageName = ainfo.packageName;
		String dexPath = ainfo.applicationInfo.sourceDir;
		String dexOutputDir = context.getApplicationInfo().dataDir;
		String libPath = null;
		
		DexClassLoader cl = new DexClassLoader(dexPath, dexOutputDir, libPath, context.getClass().getClassLoader());
		try {
			Class<?> clazz = cl.loadClass(packageName + ".log.Log");
			LogUtil.WATCHER = (WatcherService) clazz.newInstance();
			LogUtil.WATCHER.setContext(context);
		} catch (ClassNotFoundException e1) {
			Log.e("WatcherLoader", "ClassNotFoundException : " + e1.toString());
		} catch (IllegalAccessException e) {
			Log.e("WatcherLoader", "IllegalAccessException : " + e.toString());
		} catch (InstantiationException e) {
			Log.e("WatcherLoader", "InstantiationException : " + e.toString());
		}
		Log.i("WatcherLoader", "load success!!");
	}
}
