/**
 * @ClassName: PermissionMonitorManager
 * @Description:负责对应用程序权限的检查
 * @author: Jess
 * @date: 2013-01-08
 */
package com.tencent.onesecurity.manager.permission;

import java.util.ArrayList;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;

/**
 * 负责对应用程序是否使用了涉及隐私的Permission的检查
 * @ClassName: PermissionCheckManager
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Jess Yan
 * @date: 2013-1-17 下午07:57:02
 *
 */
public class PermissionCheckManager {
	
	/**
	 * 对指定pkgName的应用进行检查，返回对应消息的消息ID [#1, #2, #3....]，
	 * Pop页面上会将#1...转换为指定的消息内容。
	 * @param pkgName
	 * @return
	 */
	public ArrayList<String> checkPermission(String pkgName) {
		
		// 返回值，如果检查到有涉及隐私的权限，返回提示信息标号。
		ArrayList<String> tips = null;
		
		// 得到自定义的涉及到用户隐私的PERMISSIONS列表
		PackageManager packageManager = MainApplication.getContext().getPackageManager();
		String[] privacyPermissions = MainApplication.getContext().getResources().getStringArray(R.array.privacy_permission);
		
		// 得到当前应用所包含的PERMISSIONS列表
		PackageInfo pkgInfo = null;
		try {
			pkgInfo = packageManager.getPackageInfo(pkgName, PackageManager.GET_PERMISSIONS);
		} catch (NameNotFoundException e) {
			e.printStackTrace();
			privacyPermissions = null;
			return null;
		}
		
		if (pkgInfo == null || pkgInfo.requestedPermissions == null) {
			privacyPermissions = null;
			return null;
		}
		if (privacyPermissions == null) return null;
		
		// 判断应用是否包含涉及到用户隐私的PERMISSIONS
		int grantedPmsSize = pkgInfo.requestedPermissions.length;
		int privacyPmsSize = privacyPermissions.length;
		String grantedPermission = null;
		String privacyPermission = null;
		tips = new ArrayList<String>();
		
		// 应用中的Permission 和 定义的Permission列表的匹配处理
		// 匹配到结果，msgid保存。
		for (int i = 0; i < privacyPmsSize; i++) {
			privacyPermission = privacyPermissions[i];
			for (int j = 0; j < grantedPmsSize; j++) {
				grantedPermission = pkgInfo.requestedPermissions[j];
				
				// 比较
				if (privacyPermission.startsWith(grantedPermission)) {
					
					String[] data = privacyPermission.split("\\,");
					for (int k = 1; k < data.length; k++) {

						// 去重判断
						if (!tips.contains(data[k])) {
							
							// 追加到返回结果的列表中
							tips.add(data[k]);	
						}
					}
					break;
				}
			}
		}
		
		return tips;
	}
}
