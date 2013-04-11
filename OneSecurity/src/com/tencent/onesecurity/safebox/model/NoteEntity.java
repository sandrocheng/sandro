package com.tencent.onesecurity.safebox.model;

/**
 * @ClassName: NoteEntity  
 * @Description: 文本表实体
 * @author Joy
 * @date: 2012-11-1 下午4:42:37
 */
public class NoteEntity {
	private long id;
	private byte[] title;
	private byte[] content;
	private long createTime;
	private long updateTime;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public byte[] getTitle() {
		return title;
	}
	public void setTitle(byte[] title) {
		this.title = title;
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
	public byte[] getContent() {
		return content;
	}
	public void setContent(byte[] content) {
		this.content = content;
	}
}
