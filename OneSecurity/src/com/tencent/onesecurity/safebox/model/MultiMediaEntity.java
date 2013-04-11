package com.tencent.onesecurity.safebox.model;


/**
 * @ClassName: MultiMediaEntity
 * @Description: 媒体表实体
 * @author Joy
 * @date: 2012-11-1 下午4:37:54
 */
public class MultiMediaEntity {
	private long id;
	// 媒体类型：0-图片，1-视频，2-音频
	private int type;
	// 具体类型: jpg、png、mp3、3gp等
	private String extType;
	private String originFilename;
	private long originDuration;
	private String originCreateTime;
	private String originPath;
	private String secureFilename;
	private byte[] thumb;
	private long createTime;
	private long updateTime;
	private byte[] originHead;
	private int state;
	private int encryptFlag;
	private int direction; // add by joy 2012.01.07

	public int getDirection() {
		return direction;
	}

	public void setDirection(int direction) {
		this.direction = direction;
	}

	private int size; // 12.14 优化

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getExtType() {
		return extType;
	}

	public void setExtType(String extType) {
		this.extType = extType;
	}

	public String getOriginFilename() {
		return originFilename;
	}

	public void setOriginFilename(String originFilename) {
		this.originFilename = originFilename;
	}

	public long getOriginDuration() {
		return originDuration;
	}

	public void setOriginDuration(long originDuration) {
		this.originDuration = originDuration;
	}

	public String getOriginCreateTime() {
		return originCreateTime;
	}

	public void setOriginCreateTime(String originCreateTime) {
		this.originCreateTime = originCreateTime;
	}

	public String getOriginPath() {
		return originPath;
	}

	public void setOriginPath(String originPath) {
		this.originPath = originPath;
	}

	public String getSecureFilename() {
		return secureFilename;
	}

	public void setSecureFilename(String secureFilename) {
		this.secureFilename = secureFilename;
	}

	public byte[] getThumb() {
		return thumb;
	}

	public void setThumb(byte[] thumb) {
		this.thumb = thumb;
	}

	public byte[] getOriginHead() {
		return originHead;
	}

	public void setOriginHead(byte[] originHead) {
		this.originHead = originHead;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public long getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(long updateTime) {
		this.updateTime = updateTime;
	}

	public int getEncryptFlag() {
		return encryptFlag;
	}

	public void setEncryptFlag(int encryptFlag) {
		this.encryptFlag = encryptFlag;
	}
}
