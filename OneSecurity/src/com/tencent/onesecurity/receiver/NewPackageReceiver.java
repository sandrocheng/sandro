package com.tencent.onesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.service.SecureService;
import com.tencent.onesecurity.util.Log;

/**
 * 新安装的apk监听器
 * @ClassName: NewPackageMonitor
 * @Description:TMS服务中会包含这个监听器，当安装了新的应用后会触发监听器。
 * @author: Jess Yan
 * @date: 2012-10-22 下午05:54:27
 *
 */
public class NewPackageReceiver extends BroadcastReceiver {

	public static final String CONST_SCAN_APP_NAME_INTENT_KEY = "CONST_SCAN_APP_NAME_INTENT_KEY";
	
	@Override
	public void onReceive(Context context, Intent intent) {
		Log.d("TEST", "Receiver: start onReceive.");
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }

		if (intent.getAction().equals("android.intent.action.PACKAGE_ADDED") ||
				intent.getAction().equals("android.intent.action.PACKAGE_REPLACED")) {
			String pkgName = intent.getData().getSchemeSpecificPart();

			Log.d("TEST", "Receiver: check myself.");
			// 覆盖安装时，不检查自己。
			if (pkgName != null && pkgName.equals("com.tencent.onesecurity")) {
				ConfigDao mConfigDao = DaoCreator.createConfigDao();
				mConfigDao.setInstallReported(false);
				return;
			}
			String appName = getAppName(pkgName,context) ;
			// 灰度第四版本合并 : 监听杀毒lee
			if(appName != null){
				StatusBarManager.getInstance().showAutoScanStartNotification(appName);
			}
			
			Log.d("TEST", "Receiver: tell service to process.");
            // 通过 SecureService 扫描指定包名的已安装应用
            Intent secureServiceIntent = new Intent(context, SecureService.class);
            secureServiceIntent.setFlags(SecureService.DO_APP_SCAN);
            secureServiceIntent.putExtra(CONST_SCAN_APP_NAME_INTENT_KEY, pkgName);
			context.startService(secureServiceIntent);
			Log.d("TEST", "Receiver: end of onReceive.");
		}
	}
	
	public String getAppName(String packname, Context context) {
		PackageManager pm = context.getPackageManager();
		try {
			ApplicationInfo info = pm.getApplicationInfo(packname, 0);
			return info.loadLabel(pm).toString();
		} catch (NameNotFoundException e) {
			e.printStackTrace();
			return null;

		}
	}
}