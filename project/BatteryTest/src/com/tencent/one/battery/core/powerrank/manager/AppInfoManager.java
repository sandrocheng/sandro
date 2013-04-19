package com.tencent.one.battery.core.powerrank.manager;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tencent.one.battery.core.powerrank.proxy.ProcessProxy;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class AppInfoManager {
	private IAppInfoListener iAppInfoListener = null;
	private static AppInfoManager instance = null;
	private static Context appContext = null;
	private PackageManager pm = null;
	private static final int SYSTEM_UID = 0;
	private static final int MEDIA_UID = 1013;
	private static final int DRM_UID = 1019;
	private static final int VPN_UID = 1016;

	private static String androidSystemName;
	private static String androidMeidaName;

	public static interface IAppInfoListener {
		public void notifyProcess(ArrayList<BatterySipper> batList);
	}

	private AppInfoManager() {
		pm = appContext.getPackageManager();
	}

	private boolean isSystemProcess(int uid) {
		if (uid == SYSTEM_UID || uid == ProcessProxy.get_SYSTEM_UID()
				|| uid == ProcessProxy.get_PHONE_UID()
				|| uid == ProcessProxy.get_SHELL_UID()
				|| uid == ProcessProxy.get_LOG_UID()
				|| uid == ProcessProxy.get_NFC_UID() || uid == MEDIA_UID
				|| uid == DRM_UID || uid == VPN_UID) {
			return true;
		}
		return false;
	}

	private String renameSystemProcess(int uid) {
		String processName = null;
		if (uid == SYSTEM_UID) {
			processName = androidSystemName;
		} else if (uid == ProcessProxy.get_SYSTEM_UID()) {
			processName = androidSystemName;
		} else if (uid == ProcessProxy.get_PHONE_UID()) {
			processName = "PHONE_UID";
		} else if (uid == ProcessProxy.get_SHELL_UID()) {
			processName = "SHELL_UID";
		} else if (uid == ProcessProxy.get_LOG_UID()) {
			processName = "LOG_UID";
		} else if (uid == ProcessProxy.get_WIFI_UID()) {
			processName = "WIFI";
		} else if (uid == MEDIA_UID) {
			processName = androidMeidaName;
		} else if (uid == DRM_UID) {
			processName = "DRM_UID";
		} else if (uid == VPN_UID) {
			processName = "VPN_UID";
		} else if (uid == ProcessProxy.get_NFC_UID()) {
			processName = "NFC_UID";
		} else if (uid == 10021) {
			processName = "Google Service Frame";
		} else {
			processName = null;
		}
		return processName;
	}
	
	/**
	 * 获取App应用的名称，Icon由于和主线已提供不再重复提供，可以获得报名使用主线SDK获取
	 * @param sippers
	 */
	public void getAppNameIcon(ArrayList<BatterySipper> sippers) {
		if (pm == null || sippers == null || sippers.isEmpty()) {
			if (iAppInfoListener != null) {
				iAppInfoListener.notifyProcess(null);
			}
		}

		List<PackageInfo> packinfos = pm
				.getInstalledPackages(PackageManager.GET_UNINSTALLED_PACKAGES
						| PackageManager.GET_PERMISSIONS);
		Map<Integer, ApplicationInfo> nameMap = new HashMap<Integer, ApplicationInfo>();
		for (PackageInfo info : packinfos) {
			String[] premissions = info.requestedPermissions;
			if (premissions != null && premissions.length > 0) {
				for (String premission : premissions) {
					if ("android.permission.INTERNET".equals(premission)) {
						int uid = info.applicationInfo.uid;
						nameMap.put(uid, info.applicationInfo);
					}
				}
			}
		}

		for (int i = 0; i < sippers.size(); i++) {
			ApplicationInfo appInfo = null;
			BatterySipper sipper = sippers.get(i);

			if (isSystemProcess(sipper.uid)) {
				sipper.name = renameSystemProcess(sipper.uid);
				if (sipper.defaultPackageName != null) {
					continue;
				}
			}
			appInfo = nameMap.get(sipper.uid);
			if (appInfo != null) {
				String defname = pm.getApplicationLabel(appInfo).toString();
				sipper.defaultPackageName = appInfo.packageName;
				sipper.name = defname;
			}

			if (sipper.defaultPackageName == null) {
				sipper.defaultPackageName = "system";
			}
		}
		if (iAppInfoListener != null) {
			iAppInfoListener.notifyProcess(sippers);
		}
	}
	
	/**
	 * @param context 
	 * @param systemName Android系统的显示名称
	 * @param mediaName	 媒体服务的显示名称
	 * @return 
	 */

	public static AppInfoManager getInstance(Context context,
			String systemName, String mediaName) {

		if (instance == null) {
			synchronized (AppInfoManager.class) {
				if (instance == null) {
					appContext = context;
					androidSystemName = systemName;
					androidMeidaName = mediaName;
					instance = new AppInfoManager();
				}
			}
		}

		return instance;
	}
	/** 注册获取App应用信息的回调*/
	public void registIAppInfoListener(IAppInfoListener appInfoListener) {
		this.iAppInfoListener = appInfoListener;
	}
	/** 解绑*/
	public void unregistIAppInfoListener() {
		this.iAppInfoListener = null;
	}
}