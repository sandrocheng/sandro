package com.tencent.onesecurity.dao;

import java.util.ArrayList;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.tencent.onesecurity.model.MessageEntity;

/**
 * 消息数据DAO
 * @ClassName: MessageDao
 * @Description:提供本地消息的增，删，改，查
 * @author: Jess
 * @date: 2012-11-01 下午14:52:54
 * 
 */
public class MessageDao {
	/** 表名：Message*/
	public static final String TB_MESSAGE = "t_message";				// 消息表
	
	public static final String COLUMN_ID = "ID";
	public static final String COLUMN_MSG_ID = "MSG_ID";
	public static final String COLUMN_MSG_TYPE = "MSG_TYPE";
	public static final String COLUMN_NOTICE_TIME = "NOTICE_TIME";
	public static final String COLUMN_TITLE = "TITLE";
	public static final String COLUMN_SUMMARY = "SUMMARY";
	public static final String COLUMN_URL = "URL";
	public static final String COLUMN_HAS_READ = "HAS_READ";
	public static final String COLUMN_HAS_REVEAL = "HAS_REVEAL";
	public static final String COLUMN_RECEIVE_TIME = "RECEIVE_TIME";
	
	/**
	 * 插入一个消息
	 * @param entity
	 */
	public long insertMessage(MessageEntity entity) {

		outputEntity("INSERT", entity);
		try {
			return DBHelper.getInstance().insert(TB_MESSAGE, getInsertData(entity));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1l;
	}
	
	/**
	 * 根据条件更新消息
	 * @param entity
	 * @param whereClause
	 * @param whereArgs
	 */
	public int updateMessage(MessageEntity entity, String whereClause, String[] whereArgs) {

		outputEntity("UPDATE", entity);
		try {
			return DBHelper.getInstance().update(TB_MESSAGE, getUpdateData(entity), whereClause, whereArgs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * 根据条件删除消息
	 * @param whereClause
	 * @param whereArgs
	 */
	public int deleteMessage(String whereClause, String[] whereArgs) {
		try {
			return DBHelper.getInstance().delete(TB_MESSAGE, whereClause, whereArgs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * 消息查询
	 * @param queryStr
	 * @return
	 */
	public ArrayList<MessageEntity> queryMessages(String queryStr) {
		ArrayList<MessageEntity> result = null;
		Cursor cursor = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				result = new ArrayList<MessageEntity>();
				do {
					result.add(getMessageFromCursor(cursor));
				} while (cursor.moveToNext());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(cursor!=null){
				cursor.close();
			}				
		}
		outputEntities("QUERY", result);
		return result;
	}
	
	/**
	 * 查询记录数
	 * @param queryStr
	 * @return
	 */
	public int queryMessagesCnt(String queryStr) {
		int cnt = 0;
		Cursor cursor = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				cnt = cursor.getCount();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{//code review by gordon cursor 使用后需要关闭
			if(cursor!=null){
				cursor.close();
			}				
		}
		
		return cnt;
	}
	
	/**
	 * 从游标中读出数据，并封装成MessageEntity对象返回
	 * @param cursor
	 * @return
	 */
	private MessageEntity getMessageFromCursor(Cursor cursor) {
		MessageEntity entity = new MessageEntity();
		
		entity.id = cursor.getInt(cursor.getColumnIndex(COLUMN_ID));
		entity.msgId = cursor.getString(cursor.getColumnIndex(COLUMN_MSG_ID));
		entity.msgType = cursor.getInt(cursor.getColumnIndex(COLUMN_MSG_TYPE));
		entity.noticeTime = cursor.getLong(cursor.getColumnIndex(COLUMN_NOTICE_TIME));
		entity.title = cursor.getString(cursor.getColumnIndex(COLUMN_TITLE));
		entity.summary = cursor.getString(cursor.getColumnIndex(COLUMN_SUMMARY));
		entity.url = cursor.getString(cursor.getColumnIndex(COLUMN_URL));
		int hasReadValue = cursor.getInt(cursor.getColumnIndex(COLUMN_HAS_READ));
		entity.hasRead = hasReadValue == 0 ? false : true;
		int hasRevealValue = cursor.getInt(cursor.getColumnIndex(COLUMN_HAS_REVEAL));
		entity.hasReveal = hasRevealValue == 0 ? false : true;
		entity.receiveTime = cursor.getLong(cursor.getColumnIndex(COLUMN_RECEIVE_TIME));

		return entity;
	}
	
	/**
	 * 根据entity创建用于保存数据库的ContentValues对象(Insert)
	 * @param entity
	 * @return
	 */
	private ContentValues getInsertData(MessageEntity entity) {
		ContentValues result = new ContentValues();
		result.put(COLUMN_MSG_ID, entity.msgId);
		result.put(COLUMN_MSG_TYPE, entity.msgType);
		result.put(COLUMN_NOTICE_TIME, entity.noticeTime);
		result.put(COLUMN_TITLE, entity.title);
		result.put(COLUMN_SUMMARY, entity.summary);
		result.put(COLUMN_URL, entity.url);
		if (entity.hasRead != null) {
			result.put(COLUMN_HAS_READ, entity.hasRead ? 1 : 0);
		} else {
			result.put(COLUMN_HAS_READ, 0);
		}
		if (entity.hasReveal != null) {
			result.put(COLUMN_HAS_REVEAL, entity.hasReveal ? 1 : 0);
		} else {
			result.put(COLUMN_HAS_REVEAL, 0);
		}
		result.put(COLUMN_RECEIVE_TIME, entity.receiveTime);
		return result;
	}
	
	/**
	 * 根据entity创建用于保存数据库的ContentValues对象(Update)
	 * @param entity
	 * @return
	 */
	private ContentValues getUpdateData(MessageEntity entity) {
		ContentValues result = new ContentValues();
		if (entity.msgId != null) {
			result.put(COLUMN_MSG_ID, entity.msgId);
		}
		if (entity.msgType != -1) {
			result.put(COLUMN_MSG_TYPE, entity.msgType);
		}
		if (entity.noticeTime != -1) {
			result.put(COLUMN_NOTICE_TIME, entity.noticeTime);
		}
		if (entity.title != null) {
			result.put(COLUMN_TITLE, entity.title);
		}
		if (entity.summary != null) {
			result.put(COLUMN_SUMMARY, entity.summary);
		}
		if (entity.url != null) {
			result.put(COLUMN_URL, entity.url);
		}
		if (entity.hasRead != null) {
			result.put(COLUMN_HAS_READ, entity.hasRead ? 1 : 0);
		}
		if (entity.hasReveal != null) {
			result.put(COLUMN_HAS_REVEAL, entity.hasReveal ? 1 : 0);
		}
		if (entity.receiveTime != -1) {
			result.put(COLUMN_RECEIVE_TIME, entity.receiveTime);
		}
		return result;
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entity
	 */
	private void outputEntity(String func, MessageEntity entity) {
		String strEntity = func + ": id=" + entity.id
							+ " msgId=" + entity.msgId
							+ " msgType=" + entity.msgType
							+ " noticeTime=" + entity.noticeTime
							+ " title=" + entity.title
							+ " summary=" + entity.summary
							+ " url=" + entity.url
							+ " hasRead=" + entity.hasRead
							+ " hasReveal=" + entity.hasReveal
						;
		Log.d("MessageDao", strEntity);
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entities
	 */
	private void outputEntities(String func, ArrayList<MessageEntity> entities) {
		if (entities == null || entities.size() == 0) return;
		for (int i = 0; i < entities.size(); i++) {
			outputEntity(func, entities.get(i));
		}
	}
}