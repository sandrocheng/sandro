package com.tencent.onesecurity.model;

import android.graphics.drawable.Drawable;

import com.tencent.onesecurity.ui.model.ModelBase;

/**
 * 自启动应用Model
 * 
 * @ClassName: AutoBootAppModel
 * @Description:自启动应用Model
 * @author: Jack Wang
 * @date: 2013-01-24 下午3:32:18
 * 
 */
public class AutoBootAppModel extends ModelBase {
	private static final long serialVersionUID = 1L;

	/** 包名称 */
	private String pkgName;
	/** 软件名称 */
	private String appName;
	/** 应用的图标 */
	private Drawable icon;
	/** 开机自启动是否打开 */
	private boolean isAutoBootEnabled;
	/** 是否是系统应用 */
	private boolean isSystemApp;
	/** 是否是列表的表头 */
	private boolean isListHeader;

	public AutoBootAppModel() {

	}

	public String getPkgName() {
		return pkgName;
	}

	public void setPkgName(String pkgName) {
		this.pkgName = pkgName;
	}

	public String getAppName() {
		return appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public Drawable getIcon() {
		return icon;
	}

	public void setIcon(Drawable icon) {
		this.icon = icon;
	}

	public boolean isAutoBootEnabled() {
		return isAutoBootEnabled;
	}

	public void setAutoBootEnabled(boolean isAutoBootEnabled) {
		this.isAutoBootEnabled = isAutoBootEnabled;
	}

	public boolean isSystemApp() {
		return isSystemApp;
	}

	public void setSystemApp(boolean isSystemApp) {
		this.isSystemApp = isSystemApp;
	}

	public boolean isListHeader() {
		return isListHeader;
	}

	public void setListHeader(boolean isListHeader) {
		this.isListHeader = isListHeader;
	}

}
