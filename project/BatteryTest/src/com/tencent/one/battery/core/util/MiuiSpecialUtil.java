package com.tencent.one.battery.core.util;

import android.content.ContentResolver;
import android.os.Build;
import android.provider.Settings;

public class MiuiSpecialUtil {

	/**
	 * 判断是否是小米手机，是的话，返回true
	 * 
	 * @return
	 */
	public static boolean isMiui() {
		boolean bool = false;
		if ((Build.MANUFACTURER.contains("MIUI"))
				|| (Build.ID.contains("MIUI"))
				|| (Build.MODEL.contains("MIUI"))
				|| (Build.MODEL.startsWith("MI-ONE"))) {
			bool = true;
		}
		return bool;
	}

	/**
	 * 判断当前取得当前电池状态是否是关闭的
	 * @param paramContentResolver
	 * @return
	 */
	public static boolean monitorHistoryIsClosed(
			ContentResolver paramContentResolver) {
		try {
			int monitorHistory = Settings.System.getInt(paramContentResolver,
					"monitor_history");
			if (monitorHistory == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Settings.SettingNotFoundException localSettingNotFoundException) {
			return false;
		}
	}

	/**
	 * 打开获得状态的控制按钮
	 * @param paramContentResolver
	 * @return
	 */
	public static void setMonitorHistory(ContentResolver paramContentResolver, int paramInt) {
		Settings.System.putInt(paramContentResolver,"monitor_history", paramInt);
	}

}
