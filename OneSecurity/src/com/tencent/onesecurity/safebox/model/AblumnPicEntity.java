/**
 * FileName: AblumnPicEntity.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-3 上午11:57:22
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-3 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.model;

/**
 * @ClassName: AblumnPicEntity
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-11-3 上午11:57:22
 * 
 */
public class AblumnPicEntity extends BaseGridEntity {

	private String displayName;

	private String imgAbsPath;

	private String imgType;

	private int imgSize;
	
	private int direction; // add by joy 2012.01.07

	public int getDirection() {
		return direction;
	}

	public void setDirection(int direction) {
		this.direction = direction;
	}

	private String imgSecureName; // 修改后的名字

	public String getImgType() {
		return imgType;
	}

	public void setImgType(String imgType) {
		this.imgType = imgType;
	}

	public int getImgSize() {
		return imgSize;
	}

	public void setImgSize(int imgSize) {
		this.imgSize = imgSize;
	}

	public String getImgSecureName() {
		return imgSecureName;
	}

	public void setImgSecureName(String imgSecureName) {
		this.imgSecureName = imgSecureName;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public String getImgAbsPath() {
		return imgAbsPath;
	}

	public void setImgAbsPath(String imgAbsPath) {
		this.imgAbsPath = imgAbsPath;
	}
}
