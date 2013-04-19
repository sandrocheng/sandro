package com.tencent.one.battery.core.powerrank.vo;


import java.util.HashMap;
import java.util.Map;


import android.content.Context;
import android.graphics.drawable.Drawable;

public class BatterySipper implements Comparable<BatterySipper> {

	public enum DrainType {
		IDLE, CELL, PHONE, WIFI, BLUETOOTH, SCREEN, APP
	}

	final HashMap<String, UidToDetail> mUidCache = new HashMap<String, UidToDetail>();
//	final ArrayList<BatterySipper> mRequestQueue;
//	final Handler mHandler;
	public String name;
	//public Drawable icon;
	public int iconId; // For passing to the detail screen.
	public int uid;
	public double value;
	public double[] values;
	public DrainType drainType;
	public long usageTime;
	public long cpuTime;
	public long gpsTime;
	public long wifiRunningTime;
	public long cpuFgTime;
	public long wakeLockTime;
	public long tcpBytesReceived;
	public long tcpBytesSent;
	public double percent;
	public double noCoveragePercent;
	public String defaultPackageName;
	// 保存uid下的process的耗电量
	public Map<String, ProcessStats> processPowerMap = new HashMap<String, ProcessStats>();
	// uid下的process的个数
	public int processNum;

	static class UidToDetail {
		String name;
		String packageName;
		Drawable icon;
	}

	// BatterySipper(ArrayList<BatterySipper> requestQueue, Handler handler,
	// String label,
	// DrainType drainType, int iconId, int uid, double[] values) {
	// mContext = MainApplication.getContext();
	// mRequestQueue = requestQueue;
	// mHandler = handler;
	// this.values = values;
	// name = label;
	// this.drainType = drainType;
	// if (iconId > 0) {
	// icon = mContext.getResources().getDrawable(iconId);
	// }
	// if (values != null)
	// value = values[0];
	// if ((label == null || iconId == 0) && uid != -1) {
	// getQuickNameIconForUid(uid);
	// }
	// this.uid = uid;
	// }

	public BatterySipper(Context mContext,String label, DrainType drainType, int iconId, int uid, double[] values) {

		this.values = values;
		name = label;
		this.drainType = drainType;
		if (iconId > 0) {
			this.iconId = iconId;
		}
		if (values != null)
			value = values[0];
		if ((label == null || iconId == 0) && uid != -1) {
			// getQuickNameIconForUid(uid);
		}
		this.uid = uid;
	}

	public double getSortValue() {
		return value;
	}

	public double[] getValues() {
		return values;
	}

	public Drawable getIcon(Context context) {
		return context.getResources().getDrawable(iconId);
	}

	public int compareTo(BatterySipper other) {
		// Return the flipped value because we want the items in descending
		// order
		return (int) (other.getSortValue()*1000 - getSortValue()*1000);
	}

//	void getQuickNameIconForUid(int uid) {
//		final String uidString = Integer.toString(uid);
//		if (mUidCache.containsKey(uidString)) {
//			UidToDetail utd = mUidCache.get(uidString);
//			defaultPackageName = utd.packageName;
//			name = utd.name;
//			icon = utd.icon;
//			return;
//		}
//		PackageManager pm = mContext.getPackageManager();
//		final Drawable defaultActivityIcon = pm.getDefaultActivityIcon();
//		String[] packages = pm.getPackagesForUid(uid);
//		icon = pm.getDefaultActivityIcon();
//		if (packages == null) {
//			// name = Integer.toString(uid);
//			if (uid == 0) {
//				// name =
//				// mContext.getResources().getString(R.string.process_kernel_label);-TODO
//				name = "Android 系统";
//			} else if ("mediaserver".equals(name)) {
//				// name =
//				// mContext.getResources().getString(R.string.process_mediaserver_label);-TODO
//				name = "媒体服务器";
//			}
//			iconId = R.drawable.icon;
//			icon = mContext.getResources().getDrawable(iconId);
//			return;
//		} else {
//			// name = packages[0];
//		}
//		synchronized (mRequestQueue) {
//			mRequestQueue.add(this);
//		}
//	}
//
//	/**
//	 * Sets name and icon
//	 * 
//	 * @param uid
//	 *            Uid of the application
//	 */
//	void getNameIcon() {
//		PackageManager pm = mContext.getPackageManager();
//		final Drawable defaultActivityIcon = pm.getDefaultActivityIcon();
//		String[] packages = pm.getPackagesForUid(uid);
//		if (packages == null) {
//			name = Integer.toString(uid);
//			return;
//		}
//
//		String[] packageLabels = new String[packages.length];
//		System.arraycopy(packages, 0, packageLabels, 0, packages.length);
//
//		int preferredIndex = -1;
//		// Convert package names to user-facing labels where possible
//		for (int i = 0; i < packageLabels.length; i++) {
//			// Check if package matches preferred package
//			if (packageLabels[i].equals(name))
//				preferredIndex = i;
//			try {
//				ApplicationInfo ai = pm.getApplicationInfo(packageLabels[i], 0);
//				CharSequence label = ai.loadLabel(pm);
//				if (label != null) {
//					packageLabels[i] = label.toString();
//				}
//				if (ai.icon != 0) {
//					defaultPackageName = packages[i];
//					icon = ai.loadIcon(pm);
//					break;
//				}
//			} catch (NameNotFoundException e) {
//			}
//		}
//		if (icon == null)
//			icon = defaultActivityIcon;
//
//		if (packageLabels.length == 1) {
//			name = packageLabels[0];
//		} else {
//			// Look for an official name for this UID.
//			for (String pkgName : packages) {
//				try {
//					final PackageInfo pi = pm.getPackageInfo(pkgName, 0);
//					if (pi.sharedUserLabel != 0) {
//						final CharSequence nm = pm.getText(pkgName, pi.sharedUserLabel, pi.applicationInfo);
//						if (nm != null) {
//							name = nm.toString();
//							if (pi.applicationInfo.icon != 0) {
//								defaultPackageName = pkgName;
//								icon = pi.applicationInfo.loadIcon(pm);
//							}
//							break;
//						}
//					}
//				} catch (PackageManager.NameNotFoundException e) {
//				}
//			}
//		}
//		final String uidString = Integer.toString(uid);
//		UidToDetail utd = new UidToDetail();
//		utd.name = name;
//		utd.icon = icon;
//		utd.packageName = defaultPackageName;
//		mUidCache.put(uidString, utd);
//		// mHandler.sendMessage(mHandler.obtainMessage(PowerUsageSummary.MSG_UPDATE_NAME_ICON,
//		// this));
//	}
}