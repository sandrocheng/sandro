package com.tencent.onesecurity.safebox.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.update.UpdateInterface;
import com.tencent.onesecurity.update.UpdateManager;

public class SafeBoxDBHelper implements UpdateInterface{
	
	private static final String DB_NAME = "one-security-safebox.db";
	
	/** DB 版本号 */
	private static final int DB_VERSION = 2;
	
	private int oldVersion;

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
				SafeBoxDBHelper.this.oldVersion = oldVersion;
				Log.i("SafeBoxDBHelper", "mDatabase - onUpgrade : " + oldVersion);
			}
		};
		Log.i("SafeBoxDBHelper", "mDatabase onCreate over");
		
		// 不使用线程锁
		mDatabase.getWritableDatabase().setLockingEnabled(false);
	}

	@Override
	public boolean isNeedUpdate() {
		Log.i("DBversion", "SafeBoxDBHelper oldVersion : " + oldVersion);
		if(this.oldVersion == 1){
			return true;
		}
		return false;
	}

	@Override
	public int updateCount() {
		String sql = "select count(" + DaoConstant.COL_NT_ID + ") from " + TB_NOTE;
		Cursor cur = this.query(sql);
		int count = 0;
		if(cur!=null){
			try {
				cur.moveToFirst();
				count = cur.getInt(0);
				Log.i("SafeBoxDBHelper", "count : " + count);
			} catch (Exception e) {
				Log.e("SafeBoxDBHelper", "updateCount Exception :" + e.toString());
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
				Thread.sleep(20);
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
			Log.e("SafeBoxDBHelper", "query Exception" + e.toString());
		}
		return cur;
	}

}
