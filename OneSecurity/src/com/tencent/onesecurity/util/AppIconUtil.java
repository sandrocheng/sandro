package com.tencent.onesecurity.util;

import java.io.File;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;

/**
 * @ClassName: AppIconUtil
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: lee
 * @date: 2013-2-18 下午05:58:30
 */
public class AppIconUtil {
	/**
	 * 取得APK Icon
	 */
	public static Drawable getApkIcon(String Path) {
		
		// 未安装的程序通过apk文件获取icon
		String apkPath = Path; // apk 文件所在的路径
		String PATH_PackageParser = "android.content.pm.PackageParser";
		String PATH_AssetManager = "android.content.res.AssetManager";

		try {
			Class<?> pkgParserCls = Class.forName(PATH_PackageParser);
			Class<?>[] typeArgs = { String.class };
			Constructor<?> pkgParserCt = pkgParserCls.getConstructor(typeArgs);
			Object[] valueArgs = { apkPath };
			Object pkgParser = pkgParserCt.newInstance(valueArgs);
			DisplayMetrics metrics = new DisplayMetrics();
			metrics.setToDefaults();
			typeArgs = new Class<?>[] { File.class, String.class,
					DisplayMetrics.class, int.class };
			Method pkgParser_parsePackageMtd = pkgParserCls.getDeclaredMethod(
					"parsePackage", typeArgs);
			valueArgs = new Object[] { new File(apkPath), apkPath, metrics, 0 };
			Object pkgParserPkg = pkgParser_parsePackageMtd.invoke(pkgParser,
					valueArgs);
			Field appInfoFld = pkgParserPkg.getClass().getDeclaredField(
					"applicationInfo");
			ApplicationInfo info = (ApplicationInfo) appInfoFld
					.get(pkgParserPkg);
			Class<?> assetMagCls = Class.forName(PATH_AssetManager);
			Object assetMag = assetMagCls.newInstance();
			typeArgs = new Class[1];
			typeArgs[0] = String.class;
			Method assetMag_addAssetPathMtd = assetMagCls.getDeclaredMethod(
					"addAssetPath", typeArgs);
			valueArgs = new Object[1];
			valueArgs[0] = apkPath;
			assetMag_addAssetPathMtd.invoke(assetMag, valueArgs);
			Resources res = MainApplication.getContext().getResources();// edit
			typeArgs = new Class[3];
			typeArgs[0] = assetMag.getClass();
			typeArgs[1] = res.getDisplayMetrics().getClass();
			typeArgs[2] = res.getConfiguration().getClass();
			Constructor<Resources> resCt = Resources.class
					.getConstructor(typeArgs);
			valueArgs = new Object[3];
			valueArgs[0] = assetMag;
			valueArgs[1] = res.getDisplayMetrics();
			valueArgs[2] = res.getConfiguration();
			res = (Resources) resCt.newInstance(valueArgs);
			if (info != null) {
				if (info.icon != 0) {
					Drawable icon = res.getDrawable(info.icon);
					return icon;
				}
			}
		} catch (Exception e) {

			e.printStackTrace();

			return MainApplication.getContext().getResources()
					.getDrawable(R.drawable.icon_common_question_mark);
		}

		return MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_common_question_mark);
	}

	private static SoftwareManager softwareManager = null;
	
	/**
	 * 取得APP Icon
	 */
	public static Drawable getAppIcon(String pkgName) {
		
		try {
			if (softwareManager == null) {
				softwareManager = ManagerCreator.getManager(SoftwareManager.class);
			}
			
			// 根据包名获取应用程序的Icon
			AppEntity appEntity = softwareManager.getAppInfo(pkgName,
					AppEntity.FLAG_ICON);

			if (null != appEntity) {
				return appEntity.getIcon();
			}

		} catch (Exception e) {
			e.printStackTrace();

			return MainApplication.getContext().getResources()
					.getDrawable(R.drawable.icon_common_question_mark);
		}

		return MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_common_question_mark);
	}
}
