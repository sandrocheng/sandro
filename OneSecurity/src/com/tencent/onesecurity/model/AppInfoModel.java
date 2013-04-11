package com.tencent.onesecurity.model;

import android.graphics.drawable.Drawable;

/**
 * 用于在UI上显示正在运行的应用结果Model
* @ClassName: AppInfoModel
* @Description:用于在UI上显示正在运行的应用结果Model
* @author: Jack Wang
* @date: 2012-10-16 下午6:02:53
*
 */
public class AppInfoModel extends AppInfoBaseModel implements Comparable<AppInfoModel>{
	private static final long serialVersionUID = 6000919920150746788L;
	
	/** 选中状态 */
	private boolean isSelected;
	/** 应用的图标 */
	private Drawable icon;
	
	private boolean isNeedRemove;
	
	/** 建议结束状态 */
	private boolean isAdviseClose;
	
	public AppInfoModel() {
		
	}

	public boolean isSelected() {
		return isSelected;
	}

	public void setSelected(boolean isSelected) {
		this.isSelected = isSelected;
	}

	public Drawable getIcon() {
		return icon;
	}

	public void setIcon(Drawable icon) {
		this.icon = icon;
	}

	/**
	 * @return the isNeedRemove
	 */
	public boolean isNeedRemove() {
		return isNeedRemove;
	}

	/**
	 * @param isNeedRemove the isNeedRemove to set
	 */
	public void setNeedRemove(boolean isNeedRemove) {
		this.isNeedRemove = isNeedRemove;
	}

	@Override
	public int compareTo(AppInfoModel another) {
		return (this.getRamSize() > another.getRamSize()) ? -1 : 1;
	}

	public boolean isAdviseClose() {
		return isAdviseClose;
	}

	public void setAdviseClose(boolean isAdviseClose) {
		this.isAdviseClose = isAdviseClose;
	}
	
}
