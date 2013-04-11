package com.tencent.onesecurity.dao;

import java.util.ArrayList;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.tencent.onesecurity.model.FeatureReportEntity;

/**
 * Feature上报DAO
 * @ClassName: MessageDao
 * @Description:Feature上报的增，删，改，查
 * @author: Tony
 * @date: 2013-01-21 下午11:52:54
 * 
 */
public class FeatureReportDao {
	/** 表名：Message*/
	public static final String TB_FEATURE = "t_feature_report";				// 消息表
	
	public static final String COLUMN_ID = "ID";
	public static final String COLUMN_FEATURE_ID = "FEATURE_ID";
	public static final String COLUMN_FEATURE_COUNT = "FEATURE_COUNT";
	public static final String COLUMN_FEATURE_DATE = "FEATURE_DATE";
	
	private Object dbLock = new Object();
	/**
	 * 插入一个消息
	 * @param entity
	 */
	public long insertOrUpdataFeature(FeatureReportEntity entity) {
		synchronized (dbLock) {
			try {

				FeatureReportEntity featureReportEntity = getFeatureReportEntity(entity);
				if(featureReportEntity != null){
					featureReportEntity.featureCount++;
					outputEntity("UPDATA", featureReportEntity);
					DBHelper.getInstance().update(TB_FEATURE, getInsertData(featureReportEntity),
							FeatureReportDao.COLUMN_ID + "=?", new String[]{String.valueOf(featureReportEntity.id)});
				}else{
					outputEntity("INSERT", entity);
					return DBHelper.getInstance().insert(TB_FEATURE, getInsertData(entity));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return -1l;
		}
		
	}
	
	public long getLastDate() {
		String sql = "select "
		+ FeatureReportDao.COLUMN_FEATURE_DATE
		+ " FROM " + FeatureReportDao.TB_FEATURE
		+ " ORDER BY " + FeatureReportDao.COLUMN_ID 
		+ " DESC";
		long data = 0;
		Cursor cursor= null;
		try {
			cursor = DBHelper.getInstance().query(sql);
			if (cursor != null && cursor.moveToFirst()) {
				data = cursor.getLong(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			if(cursor!=null){
				cursor.close();
			}				
		}
		return data;
	}
	
	private FeatureReportEntity getFeatureReportEntity(FeatureReportEntity entity) {
		String queryStr = "select " + FeatureReportDao.COLUMN_ID + ", "
				+ FeatureReportDao.COLUMN_FEATURE_ID + ", "
				+ FeatureReportDao.COLUMN_FEATURE_COUNT + ", "
				+ FeatureReportDao.COLUMN_FEATURE_DATE + " FROM "
				+ FeatureReportDao.TB_FEATURE + " WHERE "
				+ FeatureReportDao.COLUMN_FEATURE_ID + " = " + entity.featureId
				+ " AND " + FeatureReportDao.COLUMN_FEATURE_DATE + " = "
				+ entity.featureDate;
		Cursor cursor = null;
		FeatureReportEntity featureReportEntity = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				featureReportEntity = getMessageFromCursor(cursor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cursor != null) {
				cursor.close();
			}
		}
		return featureReportEntity;
	}

	
	/**
	 * 根据条件删除消息
	 * @param whereClause
	 * @param whereArgs
	 */
	public int deleteMessage(String whereClause, String[] whereArgs) {
		try {
			return DBHelper.getInstance().delete(TB_FEATURE, whereClause, whereArgs);
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
	public int deleteData(ArrayList<FeatureReportEntity> featureReportEntitys) {
		synchronized (dbLock) {
			int reasultCode = -1;
			for (FeatureReportEntity entity : featureReportEntitys) {
				FeatureReportEntity featureReportEntity = getFeatureReportEntity(entity);
				if(featureReportEntity.featureCount > entity.featureCount){
					featureReportEntity.featureCount -= entity.featureCount;
					reasultCode = DBHelper.getInstance().update(TB_FEATURE, getInsertData(featureReportEntity),
							FeatureReportDao.COLUMN_ID + " =? ", new String[]{String.valueOf(featureReportEntity.id)});
				}else{
					reasultCode = DBHelper.getInstance().delete(TB_FEATURE, 
							FeatureReportDao.COLUMN_ID + " =? ", new String[]{entity.id+""});
				}
				if(reasultCode < 0){
					break;
				}
			}
			
			return reasultCode;
		}
	}
	/**
	 * 消息查询
	 * @param queryStr
	 * @return
	 */
	public ArrayList<FeatureReportEntity> queryReportData(String queryStr, int num) {
		synchronized (dbLock) {
			ArrayList<FeatureReportEntity> result = null;
			Cursor cursor = null;
			try {
				cursor = DBHelper.getInstance().query(queryStr);
				if (cursor != null && cursor.moveToFirst()) {
					result = new ArrayList<FeatureReportEntity>();
					do {
						result.add(getMessageFromCursor(cursor));
						if(num >0 && result.size() >= num){
							break;
						}
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
	}
	
	/**
	 * 查询记录数
	 * @param queryStr
	 * @return
	 */
	public int queryReportDataCnt(String queryStr) {
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
	private FeatureReportEntity getMessageFromCursor(Cursor cursor) {
		FeatureReportEntity entity = new FeatureReportEntity();
		entity.id = cursor.getInt(cursor.getColumnIndex(COLUMN_ID));
		entity.featureId = cursor.getInt(cursor.getColumnIndex(COLUMN_FEATURE_ID));
		entity.featureCount = cursor.getInt(cursor.getColumnIndex(COLUMN_FEATURE_COUNT));
		entity.featureDate = cursor.getLong(cursor.getColumnIndex(COLUMN_FEATURE_DATE));
		return entity;
	}
	/**
	 * 根据entity创建用于保存数据库的ContentValues对象(Insert)
	 * @param entity
	 * @return
	 */
	private ContentValues getInsertData(FeatureReportEntity entity) {
		ContentValues result = new ContentValues();
		result.put(COLUMN_FEATURE_ID, entity.featureId);
		result.put(COLUMN_FEATURE_COUNT, entity.featureCount);
		result.put(COLUMN_FEATURE_DATE, entity.featureDate);
		return result;
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entity
	 */
	private void outputEntity(String func, FeatureReportEntity entity) {
		String strEntity = func + ": id=" + entity.id
							+ " featureId=" + entity.featureId
							+ " featureCount=" + entity.featureCount
							+ " featureDate=" + entity.featureDate
						;
		Log.d("FeatureReportDao", strEntity);
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entities
	 */
	private void outputEntities(String func, ArrayList<FeatureReportEntity> entities) {
		if (entities == null || entities.size() == 0) return;
		for (int i = 0; i < entities.size(); i++) {
			outputEntity(func, entities.get(i));
		}
	}
}