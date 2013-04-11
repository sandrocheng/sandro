package com.tencent.onesecurity.widget.shortcut;

import com.tencent.onesecurity.dao.ConfigDao;

/**
 * 快捷方式工具类
 * 
 * @author gordonbi
 * 
 */
public class ShortcutIconUtil {

	/**
	 * 更新一个快捷方式的状态
	 * 
	 * @param mark
	 * @param status
	 * @return
	 */
	public static void updateIconStauts(int mark, int status) {
		String iconStauts = ConfigDao.getInstance().getIconStatus();
		String iconMarks = ConfigDao.getInstance().getIconMark();
		int[] statusArray = getIntArray(iconStauts);
		int[] markArray = getIntArray(iconMarks);
		for (int i = 0; i < markArray.length; i++) {
			if (mark == markArray[i]) {
				statusArray[i] = status;
			}
		}
		ConfigDao.getInstance().setIconStatus(buildIntArrayToString(statusArray));
	}

	/**
	 * 更新快捷方式坐标并更新状态
	 * 
	 * @param marks
	 */
	public static void updateIconMarks(int[] newMarks) {
		String iconStauts = ConfigDao.getInstance().getIconStatus();
		String iconMarks = ConfigDao.getInstance().getIconMark();
		int[] oldStatus = getIntArray(iconStauts);
		int[] oldMark = getIntArray(iconMarks);
		int[] newStatus = new int[oldStatus.length];
		for (int j = 0; j < newMarks.length; j++) {
			for (int i = 0; i < oldMark.length; i++) {
				if (newMarks[j] == oldMark[i]) {
					newStatus[j] = oldStatus[i];
				}
			}
		}
	}

	public static void setIconMarks(int[] marks) {
		ConfigDao.getInstance().setIconMark(buildIntArrayToString(marks));
	}

	public static void setIconStatus(int[] status) {
		ConfigDao.getInstance().setIconStatus(buildIntArrayToString(status));
	}

	public static int[] getIconMarks() {
		String iconMarks = ConfigDao.getInstance().getIconMark();
		int[] markArray = getIntArray(iconMarks);
		return markArray;
	}

	public static int[] getIconStatus() {
		String iconStatus = ConfigDao.getInstance().getIconStatus();
		int[] iconStatusArray = getIntArray(iconStatus);
		return iconStatusArray;
	}

	private static String buildIntArrayToString(int[] ints) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < ints.length; i++) {
			sb.append(ints[i]);
			sb.append(",");
		}
		return sb.toString();
	}

	private static int[] getIntArray(String icons) {
		String[] stringInts = icons.split(",");
		int[] intInts = new int[stringInts.length];
		for (int i = 0; i < stringInts.length; i++) {
			if (stringInts[i] != null && !"".equals(stringInts[i])) {
				intInts[i] = Integer.valueOf(stringInts[i]);
			}
		}
		return intInts;
	}

}
