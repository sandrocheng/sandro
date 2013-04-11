/**
* FileName: NoteManager.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Sean
* @version V1.3
* Createdate: 2012-10-31 上午11:35:16
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-31 QQD
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.safebox.manager;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import android.text.format.DateFormat;

import com.tencent.onesecurity.safebox.dao.NoteDao;
import com.tencent.onesecurity.safebox.model.NoteEntity;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;

/**
 * @ClassName: NoteManager
 * @Description:note逻辑处理类
 * @author: Sean
 * @date: 2012-10-31 上午11:35:16
 *
 */
public class NoteManager {

	private static NoteManager mInstance = null;
	/*--josh fix bug NO 9576123----20121203-------S-*/
	private static final String DATA_FORMAT_TO_Y = "MM/dd/yyyy";// 日期格式（不同年）
	/*--josh fix bug NO 9576123----20121203-------E-*/
	private static final String DATA_FORMAT_TO_M = "HH:mm";// 日期格式显示精确到分(当天)
	
	/*--jack fix bug NO 9588485----20121209-------S-(MMM. dd->MM/dd)-*/
	/*--josh fix bug NO 9576123----20121203-------S-*/
	private static final String DATA_FORMAT_TO_D = "MM/dd";// 日期格式显示精确到日（同年不同天）
	/*--josh fix bug NO 9576123----20121203-------E-*/
	/*--jack fix bug NO 9588485----20121209-------E-*/
	
	// private static final long OneDay = 60*60*24*1000;//一天的毫秒数
	public List<NoteEntity> list;// 所有note列表
	
	private static final int NumofCutWords = 40;

	public NoteManager() {
		
	}

	// 实例化本体
	public static NoteManager getInstance() {
		if (mInstance == null) {
			synchronized (SecureQueueManager.class) {
				if (mInstance == null) {
					mInstance = new NoteManager();
				}
			}
		}
		return mInstance;
	}

	
	/**
	 * @param updateTime
	 *            最后一次修改的时间
	 * @return 返回规定格式日期字符串
	 */
	public String formatDataListItem(long updateTime) {
		if (updateTime <= 0) {
			return "";
		}
		SimpleDateFormat dft;
		long systemTime = System.currentTimeMillis();// DateTimeUtil.getStandardCurrentTimeMillis();
		long systmeDate = Long.valueOf(DateFormat.format("yyyyMMdd", systemTime).toString());
		long msgUpdateDate = Long.valueOf(DateFormat.format("yyyyMMdd", updateTime).toString());
		Date date = new Date(updateTime);

		if (msgUpdateDate == systmeDate) {// 当前Note时间与系统时间为同年同天
			dft = new SimpleDateFormat(DATA_FORMAT_TO_D);// 24小时制
			return dft.format(date);
		}
		if (Math.abs((systmeDate / 10000) - (msgUpdateDate / 10000)) >= 1) {// 当前Note时间与系统时间不同年
			dft = new SimpleDateFormat(DATA_FORMAT_TO_Y);// 24小时制
			return dft.format(date);
		}
		dft = new SimpleDateFormat(DATA_FORMAT_TO_D);// 当前Note时间与系统时间同年不同天
		return dft.format(date);
	}
	
	/**
	 * @param updateTime
	 *            最后一次修改的时间
	 * @return 返回规定格式日期字符串
	 */
	public String formatData(long updateTime) {
		if (updateTime <= 0) {
			return "";
		}
		SimpleDateFormat dft;
		long systemTime = System.currentTimeMillis();// DateTimeUtil.getStandardCurrentTimeMillis();
		long systmeDate = Long.valueOf(DateFormat.format("yyyyMMdd", systemTime).toString());
		long msgUpdateDate = Long.valueOf(DateFormat.format("yyyyMMdd", updateTime).toString());
		Date date = new Date(updateTime);

		if (msgUpdateDate == systmeDate) {// 当前Note时间与系统时间为同年同天
			dft = new SimpleDateFormat(DATA_FORMAT_TO_Y + " " + DATA_FORMAT_TO_M);// 24小时制
			return dft.format(date);
		}
		if (Math.abs((systmeDate / 10000) - (msgUpdateDate / 10000)) >= 1) {// 当前Note时间与系统时间不同年
			dft = new SimpleDateFormat(DATA_FORMAT_TO_Y + " " + DATA_FORMAT_TO_M);// 24小时制
			return dft.format(date);
		}
		dft = new SimpleDateFormat(DATA_FORMAT_TO_Y + " " + DATA_FORMAT_TO_M);// 当前Note时间与系统时间同年不同天
		return dft.format(date);
	}

	// 添加NOTE数据处理
	public long saveDate(String date) {
		String dates = date;
		String title;
		long id=-1;
		if (dates.length() <= NumofCutWords) {
			title = dates;
		} else {
			title = dates.substring(0, NumofCutWords);
		}
		NoteDao noteDao;

		NoteEntity note = new NoteEntity();
		long time = System.currentTimeMillis();
		note.setCreateTime(time);
		note.setUpdateTime(time);
		note.setContent(encryptText(dates));
		note.setTitle(encryptText(title));
		try {
			noteDao = NoteDao.getInstance();
			id=noteDao.insert(note);
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
			return id;
		}

		return id;
	}

	// 更新NOTE数据处理
	public boolean updateDate(String date, long id) {
		String dates = date;
		String title;
		if (dates.length() <= NumofCutWords) {
			title = dates;
		} else {
			title = dates.substring(0, NumofCutWords);
		}
		NoteDao noteDao;
		long time = System.currentTimeMillis();
		NoteEntity note = new NoteEntity();
		note.setUpdateTime(time);
		note.setId(id);
		note.setContent(encryptText(dates));
		note.setTitle(encryptText(title));
		try {
			noteDao = NoteDao.getInstance();
			noteDao.update(note);
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	// 单条删除NOTE数据处理
	public boolean deleteItemDate(long Id) {
		try {
			NoteDao.getInstance().deleteById(Id);
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
			return false;
		}

		return true;
	}

	// 批量删除NOTE数据处理
	public boolean deleteItemsDate(long[] Ids) {
		for (int i = 0; i < Ids.length; i++) {
			long id = Ids[i];
			try {
				NoteDao.getInstance().deleteById(id);
			} catch (SdCardNotExistException e) {
				e.printStackTrace();
				return false;
			}
		}

		return true;
	}

	// 获取文本
	public String getDate(byte[] date) {
		String text = "empty";
		if (date != null) {
			text = decryptText(date);
		}

		return text;
	}

	// 加密文本
	private byte[] encryptText(String date) {
		String test = date;
		byte[] content = EncryptWorker.encryptText(test);
		return content;
	}

	// 解密文本
	private String decryptText(byte[] date) {
		byte[] dates = date;
		byte[] content = EncryptWorker.decryptText(dates);
		String text = new String(content);
		return text;
	}

	// 获取所有note列表
	public List<NoteEntity> getNoteListWithoutContent() throws SdCardNotExistException{
		list = NoteDao.getInstance().findAllWithoutContent();
		return list;
	}

	public void clearList() {
		if (list != null) {
			list.clear();
			list = null;
		}
        if(mInstance!=null){
        	mInstance=null;
        }
	}
}
