package com.guangli.applock;

import android.content.Intent;
import android.graphics.drawable.Drawable;
/**
 * 
 * @author lance.liang
 * An entity for app; 
 */
public class AppInfo {
	/**
	 * An entity for app;
	 * 实体类，用于封装应用信息
	 */
	private String appLabel;
	private String appName;
	private Drawable appIcon;
	private Intent intent;
	private String pkgName;
	private boolean isChecked;
	private Drawable lockeIcon;
	public Drawable getLockeIcon() {
		return lockeIcon;
	}
	public void setLockeIcon(Drawable lockeIcon) {
		this.lockeIcon = lockeIcon;
	}
	public boolean isChecked() {
		return isChecked;
	}
	public void setChecked(boolean isChecked) {
		this.isChecked = isChecked;
	}
	public String getAppLabel() {
		return appLabel;
	}
	public void setAppLabel(String appLabel) {
		this.appLabel = appLabel;
	}
	public String getAppName() {
		return appName;
	}
	public void setAppName(String appName) {
		this.appName = appName;
	}
	public Drawable getAppIcon() {
		return appIcon;
	}
	public void setAppIcon(Drawable appIcon) {
		this.appIcon = appIcon;
	}
	public Intent getIntent() {
		return intent;
	}
	public void setIntent(Intent intent) {
		this.intent = intent;
	}
	public String getPkgName() {
		return pkgName;
	}
	public void setPkgName(String pkgName) {
		this.pkgName = pkgName;
	}
	
	
	
}
