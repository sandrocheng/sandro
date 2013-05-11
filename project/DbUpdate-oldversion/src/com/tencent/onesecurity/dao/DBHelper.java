package com.tencent.onesecurity.dao;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.tencent.onesecurity.MainApplication;

public class DBHelper {

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
	
	private static final int DB_VERSION = 1;
	
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
			}

			/**
			 * 数据库更新回调
			 */
			@Override
			public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
				
			}
		};
	}
	
	public void createData(){
		SQLiteDatabase database = mDatabase.getWritableDatabase();
		for(int i = 0;i<40;i++){
			ContentValues contentValues = new ContentValues();
			contentValues.put(FeatureReportDao.COLUMN_FEATURE_ID, i);
			contentValues.put(FeatureReportDao.COLUMN_FEATURE_COUNT, i);
			contentValues.put(FeatureReportDao.COLUMN_FEATURE_DATE, System.currentTimeMillis());
			database.insert(FeatureReportDao.TB_FEATURE, FeatureReportDao.COLUMN_ID, contentValues);
		}
	}

}
