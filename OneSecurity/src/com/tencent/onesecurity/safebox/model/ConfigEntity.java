package com.tencent.onesecurity.safebox.model;

/**
 * 
 * @ClassName: ConfigEntity
 * @Description:配置
 * @author: Matrix
 * @date: 2012-10-30 下午2:06:49
 * 
 */
public class ConfigEntity {

	private long id;
	// 内容
	private String content;
	// 类型: 1，提示问题
	private int type;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
}
