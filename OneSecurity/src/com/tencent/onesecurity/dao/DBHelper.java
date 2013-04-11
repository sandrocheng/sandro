package com.tencent.onesecurity.dao;


import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Handler;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.common.SimpleCallback;

/**
 * 数据库操作帮助类
 */
/**
* @ClassName: DBHelper
* @Description:数据库操作助手
* 追加可配置参数用数据库Jess
* @author: Buck
* @date: 2012-10-15 下午2:14:38
* @author：Jess  
*
*/
public final class DBHelper{
	/** 数据库名 */
	private static final String DB_NAME = "one-security.db";
	/** 关闭数据库的延时时间 */
	private static final long CLOSE_DELAY_TIME = 3000l;			// 
	
	/** 实例 */
	private static DBHelper mInstance = null; 
	/** 锁 ，保证DBHelper同一时间只有一个对象操作 */
	private static Object mDBLock = new Object();
	/** 实例 */
//	private static final int DB_VERSION = 1;
//	private static final int DB_VERSION = 2;	// 系统消息表追加了Receiver_time字段
//	private static final int DB_VERSION = 3;	// 增加了 数据上报数据库  已过期
//	private static final int DB_VERSION = 4;	// 数据上报数据库增加新版
//	private static final int DB_VERSION = 5;	// app上报增加新数据库
//	private static final int DB_VERSION = 6;    // 使灰度版，主版本数据库版本错开
	private static final int DB_VERSION = 7;	// 增加闪屏数据表
	
	/** DBHelper*/
	private SQLiteOpenHelper mDatabase;
	/** Handler */
	private Handler mHandler; 
	
	/** ----数据库用到的表---- */
	/** 核心参数配置表 */
	private final String CREATE_SCRIPT_T_CORE_CONFIG = "CREATE TABLE IF NOT EXISTS "
			+ CoreConfigDao.TB_CORE_CONFIG + " ("
			+ CoreConfigDao.COLUMN_CONFIG_MAP + " BLOB )";
	
	/** 系统消息表 */
	private final String CREATE_SCRIPT_T_MESSAGE = "CREATE TABLE IF NOT EXISTS "
			+ MessageDao.TB_MESSAGE + " ( "
			+ MessageDao.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
			+ MessageDao.COLUMN_MSG_ID + " TEXT, "
			+ MessageDao.COLUMN_MSG_TYPE + " INTEGER, "
			+ MessageDao.COLUMN_NOTICE_TIME + " INTEGER, "
			+ MessageDao.COLUMN_TITLE + " TEXT, "
			+ MessageDao.COLUMN_SUMMARY + " TEXT, "
			+ MessageDao.COLUMN_URL + " TEXT, "
			+ MessageDao.COLUMN_HAS_READ + " INTEGER, "
			+ MessageDao.COLUMN_HAS_REVEAL + " INTEGER, "
			+ MessageDao.COLUMN_RECEIVE_TIME + " INTEGER)"
			;
	/** Feature上报表 */
	private final String CREATE_SCRIPT_T_FEATUR_EREPORT = "CREATE TABLE IF NOT EXISTS "
			+ FeatureReportDao.TB_FEATURE + " ( "
			+ FeatureReportDao.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
			+ FeatureReportDao.COLUMN_FEATURE_ID + " INTEGER, "
			+ FeatureReportDao.COLUMN_FEATURE_COUNT + " INTEGER, "
			+ FeatureReportDao.COLUMN_FEATURE_DATE + " INTEGER)"
			;
	/**白名单 灰度第二版 */
	private final String CREATE_SCRIPT_T_WHITE_LIST = "CREATE TABLE IF NOT EXISTS " +
			VirusWhiteListDao.TB_WHITE_LIST + "(" +
			VirusWhiteListDao.COL_ID + " INTEGER PRIMARY KEY, " +
			VirusWhiteListDao.COL_PACKAGE_NAME + " TEXT, " +
			VirusWhiteListDao.COL_SIGNATURE + " TEXT, " +
			VirusWhiteListDao.COL_APP_NAME + " TEXT, " +
			VirusWhiteListDao.COL_APP_PATH + " TEXT, " +
			VirusWhiteListDao.COL_APP_DESC + " TEXT, " +
			VirusWhiteListDao.COL_APP_TYPE + " INTEGER, " +
			VirusWhiteListDao.COL_APP_LOCATION + " INTEGER DEFAULT(0), " +
			VirusWhiteListDao.COL_APP_ADD_TIME + " INTEGER)" ;

	/** app上报表 */
	private final String CREATE_SCRIPT_T_APP_EREPORT = "CREATE TABLE IF NOT EXISTS "
			+ AppReportDao.TB_APP_REPORT + " ( "
			+ AppReportDao.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
			+ AppReportDao.COLUMN_APP_NAME + " TEXT, "
			+ AppReportDao.COLUMN_PACKAGE_NAME + " TEXT, "
			+ AppReportDao.COLUMN_REPORT_TYPE + " INTEGER, "
			+ AppReportDao.COLUMN_VIRUS_NAME + " TEXT, "
			+ AppReportDao.COLUMN_VIRUS_TYPR + " INTEGER, "
			+ AppReportDao.COLUMN_REPORT_STATE + " INTEGER)"
			;
	
	/** 闪屏下发表 */
	private final String CREATE_SCRIPT_T_APP_SPLASH = "CREATE TABLE IF NOT EXISTS "
			+ SplashDao.TB_APP_SPLASH + " ( "
			+ SplashDao.COLUMN_ID + " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "
			+ SplashDao.COLUMN_START_TIME + " INTEGER, "
			+ SplashDao.COLUMN_END_TIME + " INTEGER, "
			+ SplashDao.COLUMN_SPLASH_PIC + " BLOB)"
			;
	
	/**
	 * 数据库关闭线程
	 */
	private Runnable mCloseDatabaseRunnable = new Runnable() {
		
		@Override
		public void run() {
			synchronized (mDBLock) {
				mDatabase.close();
			}
		}
	};
	
	/**
	 * 构造
	 * @param context
	 */
	private DBHelper(Context context) {
		mHandler = new Handler(context.getMainLooper());
		mDatabase = new SQLiteOpenHelper(context, DB_NAME, null, DB_VERSION){

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
				if (oldVersion < 2) {
					String sql = "ALTER TABLE " + MessageDao.TB_MESSAGE + " ADD " + MessageDao.COLUMN_RECEIVE_TIME + " INTEGER";
					db.execSQL(sql);
				}
				if (oldVersion < 4) {
					db.execSQL(CREATE_SCRIPT_T_FEATUR_EREPORT);
				}
				if (oldVersion < 5) {
					db.execSQL(CREATE_SCRIPT_T_APP_EREPORT);
				}
				if(oldVersion < 6){
					db.execSQL(CREATE_SCRIPT_T_WHITE_LIST);
				}
				if (oldVersion < 7) {//闪屏下发
					db.execSQL(CREATE_SCRIPT_T_APP_SPLASH);
				}
			}
		};
		
		// 不使用线程锁
		mDatabase.getWritableDatabase().setLockingEnabled(false);
	}
	
	/**
	 * 实例化对象
	 * @return
	 */
	public static DBHelper getInstance(){
		return getInstance(MainApplication.getContext());
	}
	
	/**
	 * 根据上下文对象实例化对象
	 * @param context
	 * @return
	 */
	public static DBHelper getInstance(Context context){
		if(mInstance == null) {
			synchronized (DBHelper.class) {
				if(mInstance == null) {
					mInstance = new DBHelper(context);
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
		db.execSQL(CREATE_SCRIPT_T_CORE_CONFIG);
		db.execSQL(CREATE_SCRIPT_T_MESSAGE);
		db.execSQL(CREATE_SCRIPT_T_FEATUR_EREPORT);
		db.execSQL(CREATE_SCRIPT_T_WHITE_LIST);
		db.execSQL(CREATE_SCRIPT_T_APP_EREPORT);
		db.execSQL(CREATE_SCRIPT_T_APP_SPLASH);
	}	

	/**
	 * 有返回结果查询
	 * @param queryStr
	 *            SQL语句
	 * @return 当前游标
	 */
	public Cursor query(String queryStr) {
		checkTheadValid();
		synchronized (mDBLock) {
			return mDatabase.getReadableDatabase().rawQuery(queryStr, null);
		}
	}

	/**
	 * 有返回结果查询
	 * 
	 * @param table
	 * @param columns
	 * @param selection
	 * @param selectionArgs
	 * @param groupBy
	 * @param having
	 * @param orderBy
	 * @return
	 */
	public Cursor query(String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.query(table, columns, selection, selectionArgs, groupBy, having, orderBy);
		}
	}

	/**
	 * 无返回结果查询
	 * 
	 * @param queryStr
	 *            SQL语句
	 * @return
	 */
	public void noneQuery(String queryStr) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			database.execSQL(queryStr);
		}
	}

	/**
	 * 插入数据
	 * 
	 * @param table
	 *            表名
	 * @param nullColumnHack
	 *            空列
	 * @param values
	 *            值
	 * @return 插入成功返回ID值，失败返回-1
	 */
	public long insert(String table, String nullColumnHack, ContentValues values) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.insert(table, nullColumnHack, values);
		}
	}
	
	/**
	 * 插入数据
	 * @param table
	 * @param values
	 * @return
	 */
	public long insert(String table, ContentValues values) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.insert(table, null, values);
		}
	}

	/**
	 * 删除数据
	 * 
	 * @param table
	 *            表名
	 * @param whereClause
	 * @param whereArgs
	 * @return 删除条数
	 */
	public int delete(String table, String whereClause, String[] whereArgs) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.delete(table, whereClause, whereArgs);
		}
	}

	/**
	 * 更新数据
	 * 
	 * @param table
	 *            表名
	 * @param values
	 * @param whereClause
	 * @param whereArgs
	 * @return
	 */
	public int update(String table, ContentValues values, String whereClause, String[] whereArgs) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.update(table, values, whereClause, whereArgs);
		}
	}

	/**
	 * 删除所有数据
	 * 
	 * @param table
	 * @return
	 */
	public int deleteTable(String table) {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			return database.delete(table, null, null);
		}
	}
	
	/**
	 *  删除数据表
	 * @param table
	 * @param db
	 */
//	private void dropTable(String table, SQLiteDatabase db) {
//		String sql = "DROP TABLE IF EXISTS "+table;
//		db.execSQL(sql);
//	}
	
	/**
	 * 事务操作
	 * @param callback
	 * @return
	 */
	public boolean execTransaction(SimpleCallback callback){
		checkTheadValid();
		
		boolean result = false;
		synchronized (mDBLock) {
			SQLiteDatabase database = mDatabase.getWritableDatabase();
			database.beginTransaction();
			
			try{
				callback.onCallback(this);
				database.setTransactionSuccessful();
				result = true;
			}finally{
				database.endTransaction();
				close();
			}
		}
		return result;
	}
	
	/**
	 * 关闭数据库
	 */
	public synchronized void close() {
		mHandler.removeCallbacks(mCloseDatabaseRunnable);
		mHandler.postDelayed(mCloseDatabaseRunnable, CLOSE_DELAY_TIME);
	}
	
	private void checkTheadValid(){
//		if(Thread.currentThread().getId() == 1){
//			StackTraceElement[] trace = new Throwable().getStackTrace();
//			String methodname =  trace[2].getMethodName();
//			StringBuffer sb = new StringBuffer();
//			for(int i=6; i>=2; i--){
//				sb.append(trace[i].getFileName().replace(".java", "") + "->");
//			}
//			
//			Log.e("DBHelper",  String.format("Traces: %s%s", sb.toString(), methodname));
//		}
	}
}
