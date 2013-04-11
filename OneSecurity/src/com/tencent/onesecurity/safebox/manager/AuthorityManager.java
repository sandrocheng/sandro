/**
 * FileName: SecureManager.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-19 下午4:13:59
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-19 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.manager;

import com.tencent.onesecurity.safebox.dao.AuthorityDao;
import com.tencent.onesecurity.safebox.model.AuthorityEntity;
import com.tencent.onesecurity.safebox.service.SDCardListener.SDCardChangeListener;
import com.tencent.onesecurity.safebox.util.NoDatabaseExistException;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.util.MD5Util;

/**
 * @ClassName: SecureManager
 * @Description:私密箱权限管理类,包括密码设置,登录验证,超时锁屏等
 * @author: Matrix
 * @date: 2012-10-19 下午4:13:59
 * 
 */
public class AuthorityManager {

	private static AuthorityManager mInstance = null;

	private AuthorityDao authorityDao;

	private AuthorityEntity authorityEntity;

	public static AuthorityManager getInstance() {
		if (mInstance == null) {
			synchronized (AuthorityManager.class) {
				if (mInstance == null) {
					mInstance = new AuthorityManager();
				}
			}
		}
		return mInstance;
	}

	/**
	 * 必须得到至少一次首先调用
	 * 
	 * @throws SdCardNotExistException
	 */
	public void createAuthorityEntity() throws SdCardNotExistException {
		if (authorityDao == null) {
			authorityDao = AuthorityDao.getInstance();
		}
		authorityEntity = authorityDao.findUser();
	}

	public String getPassword() {
		if (authorityEntity == null) {
			return null;
		} else {
			return authorityEntity.getPassword();
		}
	}

	public String getQuestion() {
		if (authorityEntity == null) {
			return null;
		} else {
			return authorityEntity.getQuestion();
		}
	}

	public String getAnswer() {
		if (authorityEntity == null) {
			return null;
		} else {
			return authorityEntity.getAnswer();
		}
	}

	public void setPassword(String _password) throws SdCardNotExistException {
		if (authorityEntity == null) {
			authorityEntity = new AuthorityEntity();
			if (_password == null) {
				authorityEntity.setPassword(null);
			} else {
				authorityEntity.setPassword(MD5Util.encrypt_string(_password));
			}
			
			authorityDao.insert(authorityEntity);
		} else {
			if (_password == null) {
				authorityEntity.setPassword(null);
			} else {
				authorityEntity.setPassword(MD5Util.encrypt_string(_password));
			}
			
			authorityDao.update(authorityEntity);
		}
	}

	/**
	 * 设置密码答案及其ID
	 * 
	 * @param _question密码问题
	 * @param _answer密码答案
	 * @return
	 * @throws SdCardNotExistException
	 */
	public void setQuestionAnswer(String _question, String _answer)
			throws SdCardNotExistException, NoDatabaseExistException {
		if (authorityEntity == null) {
			throw new NoDatabaseExistException();
		}
		authorityEntity.setQuestion(_question);
		authorityEntity
				.setAnswer(MD5Util.encrypt_string(_answer.toLowerCase()));
		authorityDao.update(authorityEntity);
	}

	/**
	 * 比较私密空间MD5的密码
	 * 
	 * @param pd
	 * @return
	 */
	public boolean comparePassWordWithMD5(String _password) {
		String md5_pd = MD5Util.encrypt_string(_password);
		String sys_pd = getPassword();
		return md5_pd.equals(sys_pd);
	}

	/**
	 * 比较私密空间MD5的答案
	 * 
	 * @param pd
	 * @return
	 */
	public boolean compareAnswerWithMD5(String _answer) {
		String md5_pdAnswer = MD5Util.encrypt_string(_answer.toLowerCase());
		String sys_pdAnswer = getAnswer();
		return md5_pdAnswer.equals(sys_pdAnswer);
	}

	private long lastLoginTime = 0;
	private final long INTERVALTIOME = 50000;
	private boolean dontCareLock = false;
	/**
	 * 设置是否关注锁状态（输入密码和提示问题时不关注）
	 * @param dontCareLock true不关注;false关注
	 */
	public void setDontCareLock(boolean dontCareLock) {
		this.dontCareLock = dontCareLock;
	}
	/**
	 * 重置密码时间
	 */
	public void resetPassWordTimeout() {
		lastLoginTime = System.currentTimeMillis();
	}
	/**
	 * 密码是否过期
	 * @return
	 */
	private boolean isPassWordTimeout() {
		long time = System.currentTimeMillis();
		boolean ret = false;
		if (time - lastLoginTime > INTERVALTIOME) {
			/*--matt fix bug NO 9576459----20121203-------S-*/
			AuthorityManager.getInstance().setLock(true);
			/*--matt fix bug NO 9576459----20121203-------E-*/
			ret = true;
		} else {
			ret = false;
		}
		return ret;
	}

	private boolean isLock = true;

	/**判断当前是否为锁定状态
	 * @return the isUnlock
	 */
	public boolean isLock() {
		if(dontCareLock){
			return false;
		}
		if(isLock){
			return isLock;
		}else{
			return isPassWordTimeout();
		}
	}
	
	public boolean isPureLock() {
		return isLock;
	}

	/**
	 * @param isUnlock
	 *            the isUnlock to set
	 */
	public void setLock(boolean isLock) {
		if(isLock){
			this.isLock = isLock;
		}else{
			this.isLock = isLock;
			resetPassWordTimeout();
		}
		setDontCareLock(false);
	}

	/**
	 * @return T:已经设置过密码；F:没有设置过密码
	 * @throws SdCardNotExistException
	 *             :SD卡不存在
	 */
	public boolean hasSetPassword() throws SdCardNotExistException {
		createAuthorityEntity();
		return getPassword() != null;
	}

	/**
	 * @return T:已经设置过密码问题答案；F:没有设置过密码问题答案
	 * @throws SdCardNotExistException
	 *             :SD卡不存在
	 */
	public boolean hasSetQuestion() throws SdCardNotExistException {
		createAuthorityEntity();
		return getAnswer() != null;
	}

	private SDCardChangeListener sDCardChangeListener;

	public void registSDCardChangeListener(
			SDCardChangeListener sDCardChangeListener) {
		this.sDCardChangeListener = sDCardChangeListener;
	}

	public void unRegistSDCardChangeListener() {
		this.sDCardChangeListener = null;
	}

	public void notifyMount() {
		if (sDCardChangeListener != null) {
			sDCardChangeListener.onMount();
		}
	}

	public void notifyUnmount() {
		if (sDCardChangeListener != null) {
			sDCardChangeListener.onUnmount();
		}
	}
}
