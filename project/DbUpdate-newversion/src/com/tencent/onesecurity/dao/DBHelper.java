package com.tencent.onesecurity.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.update.UpdateInterface;
import com.tencent.onesecurity.update.UpdateManager;

public class DBHelper implements UpdateInterface{

	/** 实例 */
	private static DBHelper mInstance = null;
	
	private static final String DB_NAME = "one-security.db";
	
	/** Feature上报表 */
	private final String CREATE_SCRIPT_T_FEATUR_EREPORT = "CREATE TABLE IF NOT EXISTS "
			+ FeatureReportDao.TB_FEATURE + " ( "
			+ FeatureReportDao.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
			+ FeatureReportDao.COLUMN_FEATURE_ID + " INTEGER, "
			+ FeatureReportDao.COLUMN_FEATURE_COUNT + " INTEGER, "
			+ FeatureReportDao.COLUMN_FEATURE_DATE + " INTEGER)"
			;
	
	private static final int DB_VERSION = 2;
	
	private int oldVersion;
	
	private SQLiteOpenHelper mDatabase;
	
	private DBHelper(){

	}
	
	public static DBHelper getInstance(){
		if(mInstance == null) {
			synchronized (DBHelper.class) {
				if(mInstance == null) {
					mInstance = new DBHelper();
				}
			}
		}
		return mInstance;
	}
	
	/**
	 * 创建数据库
	 * @param db
	 */
	private void onCreate(SQLiteDatabase db) {	
		db.execSQL(CREATE_SCRIPT_T_FEATUR_EREPORT);
	}
	
	public void createDB(){
		mDatabase = new SQLiteOpenHelper(MainApplication.getContext(), DB_NAME, null, DB_VERSION){

			/**
			 * 数据库初次创建
			 */
			@Override
			public void onCreate(SQLiteDatabase db) {
				DBHelper.this.onCreate(db);
				Log.i("OneSecurityDB", "DBHelper mDatabase onCreate");
			}


			@Override
			public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
				DBHelper.this.oldVersion = oldVersion;
				Log.i("OneSecurityDB", "DBHelper mDatabase onUpgrade : " + oldVersion);
			}
		};
		mDatabase.getWritableDatabase().setLockingEnabled(false);
	}

	@Override
	public boolean isNeedUpdate() {
		Log.i("DBversion", "DBHelper oldVersion : " + oldVersion);
		if(DBHelper.this.oldVersion == 1){
			return true;
		}
		return false;
	}

	@Override
	public int updateCount() {
		String sql = "select count(" + FeatureReportDao.COLUMN_ID + ") from " + FeatureReportDao.TB_FEATURE;
		Cursor cur = this.query(sql);
		int count = 0;
		if(cur!=null){
			try {
				cur.moveToFirst();
				count = cur.getInt(0);
				Log.i("DBHelper", "count : " + count);
			} catch (Exception e) {
				Log.e("DBHelper", "updateCount Exception :" + e.toString());
			}finally {
				cur.close();
			}
		}
		return count;
	}

	@Override
	public void update(UpdateManager.UpdateRefresh updateRefresh) {
		int count = this.updateCount();
		for(int i=0;i<count;i++){
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
			}
			updateRefresh.sendRefreshCommend();
		}
	}
	
	/**
	 * 有返回结果查询
	 * 
	 * @param queryStr
	 *            SQL语句
	 * @return 当前游标
	 */
	protected Cursor query(String queryStr) {
		Cursor cur = null;
		try {
			cur = mDatabase.getWritableDatabase().rawQuery(queryStr, null);
		} catch (Exception e) {
			Log.e("DBHelper", "query Exception" + e.toString());
		}
		return cur;
	}

}
