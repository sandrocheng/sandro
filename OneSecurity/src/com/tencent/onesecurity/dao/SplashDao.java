package com.tencent.onesecurity.dao;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.tencent.onesecurity.model.SplashEntity;

/**
 * 下发闪屏DAO
 * @ClassName: SplashDao
 * @Description:后台下发闪屏的增，删，改，查
 * @author: Kevin
 * @date: 2013-03-11 下午11:52:54
 * 
 */
public class SplashDao {
	/** 表名：SplashDao*/
	public static final String TB_APP_SPLASH = "t_app_splash";				// AppReportDao表
	
	public static final String COLUMN_ID = "ID";
	public static final String COLUMN_START_TIME = "START_TIME";
	public static final String COLUMN_END_TIME = "END_TIME";
	public static final String COLUMN_SPLASH_PIC = "SPLASH_PIC";
	
	private Object dbLock = new Object();
	
	/**
	 * 根据数据库是否有数据判断插入还是更新
	 * @param entity
	 * @return
	 */
	public long insertOrUpdate(SplashEntity entity) {
		synchronized (dbLock) {
			try {

				SplashEntity splashEntity = getSplashtEntity();
				if(splashEntity != null){
					outputEntity("UPDATE ", splashEntity);
					return DBHelper.getInstance().update(TB_APP_SPLASH, generateContentValues(entity), COLUMN_ID + "=" + splashEntity.id, null);
				}else{
					return DBHelper.getInstance().insert(TB_APP_SPLASH, generateContentValues(entity));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return -1l;
		}
		
	}
	
	public SplashEntity getSplashtEntity() {
		String queryStr = "select " + "* "
				+ " FROM "
				+ TB_APP_SPLASH;
		Cursor cursor = null;
		SplashEntity splashEntity = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				splashEntity = getMessageFromCursor(cursor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cursor != null) {
				cursor.close();
			}
		}
		return splashEntity;
	}
	
	/**
	 * 从游标中读出数据，并封装成AppReportEntity对象返回
	 * @param cursor
	 * @return
	 */
	private SplashEntity getMessageFromCursor(Cursor cursor) {
		SplashEntity entity = new SplashEntity();
		entity.id = cursor.getInt(cursor.getColumnIndex(COLUMN_ID));
		entity.startTime = cursor.getLong(cursor.getColumnIndex(COLUMN_START_TIME));
		entity.endTime = cursor.getLong(cursor.getColumnIndex(COLUMN_END_TIME));
		entity.splashPic = cursor.getBlob(cursor.getColumnIndex(COLUMN_SPLASH_PIC));
		return entity;
	}
	
	/**
	 * 根据entity创建用于保存数据库的ContentValues对象(Insert)
	 * @param entity
	 * @return
	 */
	private ContentValues generateContentValues(SplashEntity entity) {
		ContentValues result = new ContentValues();
		result.put(COLUMN_START_TIME, entity.startTime);
		result.put(COLUMN_END_TIME, entity.endTime);
		result.put(COLUMN_SPLASH_PIC, entity.splashPic);
		return result;
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entity
	 */
	private void outputEntity(String func, SplashEntity entity) {
		String strEntity = func + ": id=" + entity.id
						+ "; startTime=" + entity.startTime
						+ "; endTime=" + entity.endTime
						;
		Log.d("SplashDao", strEntity);
	}
}
