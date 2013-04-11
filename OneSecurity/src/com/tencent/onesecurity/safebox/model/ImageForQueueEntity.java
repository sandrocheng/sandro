package com.tencent.onesecurity.safebox.model;

import java.io.ByteArrayOutputStream;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;

/**
 * 
 * @ClassName: ConfigEntity
 * @Description:用于维护队列
 * @author: Rabbiy
 * @id 队列维护键值
 * @imagePath 文件绝对路径
 * @creatTime 文件创建时间戳
 * @imageThumb 缩略图
 * @date: 2012-10-31 下午5:15:49
 * 
 */

public class ImageForQueueEntity {

	private long id;
	private String imagePath;
	private String imageType;
	private String imageName;
	private long createTime;
	private byte[] imageThumb;
	private int size; // 12.14 优化
	private int oritation;

	public int getOritation() {
		return oritation;
	}

	public void setOritation(int oritation) {
		this.oritation = oritation;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getImageName() {
		return imageName;
	}

	public void setImageName(String imageName) {
		this.imageName = imageName;
	}

	public String getImageType() {
		return imageType;
	}

	public void setImageType(String imageType) {
		this.imageType = imageType;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public byte[] getImageThumb() {
		return imageThumb;
	}

	public void setImageThumb(Bitmap map) {
		if (map == null) {
			this.imageThumb = null;
			return;
		}
		ByteArrayOutputStream baoStream = new ByteArrayOutputStream();
		map.compress(CompressFormat.JPEG, 75, baoStream);
		if (map != null) {
			map.recycle();
		}
		this.imageThumb = baoStream.toByteArray();
	}

}
