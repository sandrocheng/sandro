package com.tencent.onesecurity.safebox.dao;

import com.tencent.onesecurity.MainApplication;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class SafeBoxDBHelper {
	
	private static final String DB_NAME = "one-security-safebox.db";
	
	/** DB 版本号 */
	private static final int DB_VERSION = 1;

	private static SafeBoxDBHelper mInstance = null; 
	
	private SQLiteOpenHelper mDatabase;
	
	private static String PREFIX_CREATE_TB = "CREATE TABLE IF NOT EXISTS ";
	
	public static String TB_NOTE = "note";
	
	private static String CREATE_TB_NOTE = PREFIX_CREATE_TB + TB_NOTE + "(" 
			+ DaoConstant.COL_NT_ID + " INTEGER PRIMARY KEY, " 
			+ DaoConstant.COL_NT_TITLE + " BLOB, "
			+ DaoConstant.COL_NT_CONTENT + " BLOB, "
			+ DaoConstant.COL_NT_CREATE_TIME + " INTEGER, "
			+ DaoConstant.COL_NT_UPDATE_TIME + " INTEGER)";
	
	public synchronized static SafeBoxDBHelper getInstance() {
		if (mInstance == null) {
			if (mInstance == null) {
				mInstance = new SafeBoxDBHelper();
			}
		}
		return mInstance;
	}
	
	public void createData(){
		SQLiteDatabase database = mDatabase.getWritableDatabase();
		for(int i = 0;i<200;i++){
			ContentValues contentValues = new ContentValues();
			contentValues.put(DaoConstant.COL_NT_TITLE, new String("title " + i).getBytes());
			contentValues.put(DaoConstant.COL_NT_CONTENT, new String("content " + i).getBytes());
			contentValues.put(DaoConstant.COL_NT_CREATE_TIME, System.currentTimeMillis());
			contentValues.put(DaoConstant.COL_NT_UPDATE_TIME, System.currentTimeMillis());
			database.insert(TB_NOTE, DaoConstant.COL_NT_ID, contentValues);
		}
	}
	
	public void createDB(){
		mDatabase = new SQLiteOpenHelper(MainApplication.getContext(), DB_NAME, null, DB_VERSION){

			/**
			 * 数据库初次创建
			 */
			@Override
			public void onCreate(SQLiteDatabase db) {
				db.execSQL(CREATE_TB_NOTE);
				Log.i("SafeBoxDBHelper", "mDatabase onCreate");
			}

			/**
			 * 数据库更新回调
			 */
			@Override
			public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
				Log.i("SafeBoxDBHelper", "mDatabase onUpgrade");
			}
		};
		Log.i("SafeBoxDBHelper", "mDatabase onCreate over");
		
		// 不使用线程锁
		mDatabase.getWritableDatabase().setLockingEnabled(false);
	}

}
