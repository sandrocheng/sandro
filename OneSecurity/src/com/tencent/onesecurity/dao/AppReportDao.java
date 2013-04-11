package com.tencent.onesecurity.dao;

import java.util.ArrayList;

import android.content.ContentValues;
import android.database.Cursor;
import android.util.Log;

import com.tencent.onesecurity.model.AppReportEntity;

/**
 * app上报DAO
 * @ClassName: AppReportDao
 * @Description:Feature上报的增，删，改，查
 * @author: Tony
 * @date: 2013-01-21 下午11:52:54
 * 
 */
public class AppReportDao {
	/** 表名：AppReport*/
	public static final String TB_APP_REPORT = "t_app_report";				// AppReportDao表
	
	public static final String COLUMN_ID = "ID";
	public static final String COLUMN_APP_NAME = "APP_NAME";
	public static final String COLUMN_PACKAGE_NAME = "PACKAGE_NAME";
	public static final String COLUMN_REPORT_TYPE = "REPORT_TYPE";
	public static final String COLUMN_VIRUS_NAME = "VIRUS_NAME";
	public static final String COLUMN_VIRUS_TYPR = "VIRUS_TYPR";
	public static final String COLUMN_REPORT_STATE = "REPORT_STATE";
	private Object dbLock = new Object();
	
	/**
	 * 插入一个AppReport
	 * @param entity
	 */
	public long insert(AppReportEntity entity) {

		outputEntity("INSERT", entity);
		try {
			return DBHelper.getInstance().insert(TB_APP_REPORT, getInsertData(entity));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1l;
	}
	
	public long insertOrUpdata(AppReportEntity entity) {
		synchronized (dbLock) {
			try {

				AppReportEntity appReportEntity = getAppReportEntity(entity);
				if(appReportEntity != null &&appReportEntity.equals(entity)){
					outputEntity("SAME ", appReportEntity);
				}else{
					outputEntity("INSERT", entity);
					return DBHelper.getInstance().insert(TB_APP_REPORT, getInsertData(entity));
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return -1l;
		}
		
	}
	
	private AppReportEntity getAppReportEntity(AppReportEntity entity) {
		String queryStr = "select " + "* "
				+ " FROM "
				+ TB_APP_REPORT + " WHERE "
				+ COLUMN_PACKAGE_NAME + " = '" 
				+ entity.packageName + "' AND "
				+ COLUMN_REPORT_TYPE + " = " 
				+ entity.reportType;
		Cursor cursor = null;
		AppReportEntity appReportEntity = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				appReportEntity = getMessageFromCursor(cursor);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cursor != null) {
				cursor.close();
			}
		}
		return appReportEntity;
	}
	
	/**
	 * 根据条件删除AppReport
	 * @param whereClause
	 * @param whereArgs
	 */
	public int delete(String whereClause, String[] whereArgs) {
		try {
			return DBHelper.getInstance().delete(TB_APP_REPORT, whereClause, whereArgs);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}

	
	/**
	 * 根据条件更新消息
	 * @param whereClause
	 * @param whereArgs
	 */
	public int updata(ArrayList<AppReportEntity> featureReportEntitys) {
		StringBuffer sb = new StringBuffer();
		int size = featureReportEntitys.size();
		for (int i = 0; i < size; i++) {
			sb.append("'" + featureReportEntitys.get(i).id + "'");
			if (i != size - 1) {
				sb.append(",");
			}
		}
		String sql = " update " + TB_APP_REPORT + " SET "
					+ COLUMN_REPORT_STATE + " = " 
					+ AppReportEntity.REPORT_OK
					+ " WHERE " + AppReportDao.COLUMN_ID 
					+ " IN ( " + sb.toString()+" ) ";
		outputEntities("updata ", featureReportEntitys);
		try {
			ContentValues result = new ContentValues();

			result.put(COLUMN_REPORT_STATE, AppReportEntity.REPORT_OK);

			DBHelper.getInstance().noneQuery(sql);
			return 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
	/**
	 * 消息AppReport
	 * @param queryStr
	 * @return
	 */
	public ArrayList<AppReportEntity> queryReportData(String queryStr, int num) {
		ArrayList<AppReportEntity> result = null;
		Cursor cursor = null;
		try {
			cursor = DBHelper.getInstance().query(queryStr);
			if (cursor != null && cursor.moveToFirst()) {
				result = new ArrayList<AppReportEntity>();
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
	 * 从游标中读出数据，并封装成AppReportEntity对象返回
	 * @param cursor
	 * @return
	 */
	private AppReportEntity getMessageFromCursor(Cursor cursor) {
		AppReportEntity entity = new AppReportEntity();
		entity.id = cursor.getInt(cursor.getColumnIndex(COLUMN_ID));
		entity.appName = cursor.getString(cursor.getColumnIndex(COLUMN_APP_NAME));
		entity.packageName = cursor.getString(cursor.getColumnIndex(COLUMN_PACKAGE_NAME));
		entity.reportType = cursor.getInt(cursor.getColumnIndex(COLUMN_REPORT_TYPE));
		entity.virusName = cursor.getString(cursor.getColumnIndex(COLUMN_VIRUS_NAME));
		entity.virusType = cursor.getInt(cursor.getColumnIndex(COLUMN_VIRUS_TYPR));
		entity.reportState = cursor.getInt(cursor.getColumnIndex(COLUMN_REPORT_STATE));
		return entity;
	}
	/**
	 * 根据entity创建用于保存数据库的ContentValues对象(Insert)
	 * @param entity
	 * @return
	 */
	private ContentValues getInsertData(AppReportEntity entity) {
		ContentValues result = new ContentValues();
		result.put(COLUMN_APP_NAME, entity.appName);
		result.put(COLUMN_PACKAGE_NAME, entity.packageName);
		result.put(COLUMN_REPORT_TYPE, entity.reportType);
		result.put(COLUMN_VIRUS_NAME, entity.virusName);
		result.put(COLUMN_VIRUS_TYPR, entity.virusType);
		result.put(COLUMN_REPORT_STATE, entity.reportState);
		return result;
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entity
	 */
	private void outputEntity(String func, AppReportEntity entity) {
		String strEntity = func + ": id=" + entity.id
						+ "; appName=" + entity.appName
						+ "; packageName=" + entity.packageName
						+ "; reportType=" + entity.reportType
						+ "; virusName=" + entity.virusName
						+ "; virusType=" + entity.virusType
						+ "; reportState=" + entity.reportState
						;
		Log.d("AppReportDao", strEntity);
	}
	
	/**
	 * 输出日志
	 * @param func
	 * @param entities
	 */
	private void outputEntities(String func, ArrayList<AppReportEntity> entities) {
		if (entities == null || entities.size() == 0) return;
		for (int i = 0; i < entities.size(); i++) {
			outputEntity(func, entities.get(i));
		}
	}
}