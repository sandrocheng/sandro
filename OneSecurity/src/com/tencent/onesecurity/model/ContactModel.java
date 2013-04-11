package com.tencent.onesecurity.model;

/** 
 * @author Davy
 * @version 创建时间：2012-10-23 上午9:27:54 
 * 类说明     联系人
 */
public class ContactModel {
	// ID
	private Integer id;
	//姓名 可能为空
	private String mContactName;
	//电话 可能为空
	private String[] mPhoneNum;
	// 是否选中
	private boolean mIsSelect;
	// 选中的电话索引
	private int index;

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	/**  
	* Constructor Method  
	* @author Davy  
	* @update 2012-10-23 上午9:30:11  
	* @param mContactName
	* @param mPhoneNum  
	*/  
	     
	public ContactModel(Integer id, String mContactName, String[] mPhoneNum) {
		super();
		this.id = id;
		this.mContactName = mContactName;
		this.mPhoneNum = mPhoneNum;
	}

	  
	/**  
	* Constructor Method  
	* @author Davy  
	* @update 2012-10-23 上午9:32:03  
	* @param mContactName
	* @param mPhoneNum
	* @param mIsSelect  
	*/  
	     
	public ContactModel(String mContactName, String[] mPhoneNum, boolean mIsSelect) {
		super();
		this.mContactName = mContactName;
		this.mPhoneNum = mPhoneNum;
		this.mIsSelect = mIsSelect;
	}

	public String getmContactName() {
		return mContactName;
	}

	public void setmContactName(String mContactName) {
		this.mContactName = mContactName;
	}

	public String[] getmPhoneNum() {
		return mPhoneNum;
	}

	public void setmPhoneNum(String[] mPhoneNum) {
		this.mPhoneNum = mPhoneNum;
	}
	public boolean ismIsSelect() {
		return mIsSelect;
	}

	public void setmIsSelect(boolean mIsSelect) {
		this.mIsSelect = mIsSelect;
	}
}
