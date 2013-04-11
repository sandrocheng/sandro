package com.tencent.onesecurity.safebox.model;

/**
 * 
 * @ClassName: AuthorityEntity
 * @Description:权限实体
 * @author: Matrix
 * @date: 2012-10-30 下午2:06:19
 * 
 */
public class AuthorityEntity {
	private long id;
	private String password;
	private String question;
	private String answer;
	private long createTime;
	private long updateTime;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public long getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(long updateTime) {
		this.updateTime = updateTime;
	}

	public long getCreateTime() {
		return createTime;
	}

	public void setCreateTime(long createTime) {
		this.createTime = createTime;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
}
