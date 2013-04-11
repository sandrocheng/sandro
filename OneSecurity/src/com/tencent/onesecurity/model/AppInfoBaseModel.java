package com.tencent.onesecurity.model;

import com.tencent.onesecurity.ui.model.ModelBase;

/**
 * 应用信息的model
* @ClassName: AppInfoBaseModel
* @Description:应用信息的model
* @author: Jack Wang
* @date: 2012-11-7 下午7:22:03
*
 */
public class AppInfoBaseModel extends ModelBase {
	private static final long serialVersionUID = -8168931414397759941L;
	/** 包名称 */
	private String pkgName;
	/** 软件名称 */
	private String appName;
	/** pss ram size */
	private long ramSize;
	/** uss ram size */
	private long ussRamSize;
	/** cache size */
	private long cacheSize;
	
	public AppInfoBaseModel() {
		
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

	public long getRamSize() {
		return ramSize;
	}

	public void setRamSize(long ramSize) {
		this.ramSize = ramSize;
	}

	public long getUssRamSize() {
		return ussRamSize;
	}

	public void setUssRamSize(long ussRamSize) {
		this.ussRamSize = ussRamSize;
	}

	public long getCacheSize() {
		return cacheSize;
	}
	
	public void setCacheSize(long cacheSize) {
		this.cacheSize = cacheSize;
	}

}
