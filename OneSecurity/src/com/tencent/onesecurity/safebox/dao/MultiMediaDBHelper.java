package com.tencent.onesecurity.safebox.dao;

import java.io.File;
import java.io.IOException;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.common.SimpleCallback;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.util.FileUtil;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;

/**
 * @ClassName: SecureDBHelper
 * @Description: 私密箱DB处理类单独处理图片
 * @author Joy
 * @date: 2012-11-1 下午4:42:12
 */
public class MultiMediaDBHelper {

	private static final long CLOSE_DELAY_TIME = 3000l;
	private static MultiMediaDBHelper mInstance = null;

	private Handler mHandler;
	private SQLiteDatabase db;

	private static final String DB_NAME = "osmultimedia.db";
	private static String dbPath = Environment.getExternalStorageDirectory().getPath() + File.separator
			+ DaoConstant.SECURE_BASE_PATH;
	private static String dbFile = dbPath + File.separator + DB_NAME;

	private static Object mDBLock = new Object();
	private Runnable mCloseDatabaseRunnable = new Runnable() {

		@Override
		public void run() {
			synchronized (MultiMediaDBHelper.class) {
				// == JOY OPZ ==
				if (db!=null && db.isOpen()) {
					db.close();
				}
			}
		}
	};

	public static String TB_MULTIMEDIA = "multimedia";
	public static String TB_SETTING = "setting";
	//public static String TB_TMP_PICS = "tmp_pics";

	private static String PREFIX_CREATE_TB = "CREATE TABLE IF NOT EXISTS ";

	private static String CREATE_TB_MULTIMEDIA = PREFIX_CREATE_TB + TB_MULTIMEDIA + "(" + DaoConstant.COL_MM_ID
			+ " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, " + DaoConstant.COL_MM_TYPE + " INTEGER, " + DaoConstant.COL_MM_EXT_TYPE
			+ " TEXT, " + DaoConstant.COL_MM_ORIGIN_FILENAME + " TEXT, " + DaoConstant.COL_MM_ORIGIN_DURATION
			+ " INTEGER, " + DaoConstant.COL_MM_ORIGIN_CREATE_TIME + " TEXT, " + DaoConstant.COL_MM_ORIGIN_PATH
			+ " TEXT, " + DaoConstant.COL_MM_SECURE_FILENAME + " TEXT, " + DaoConstant.COL_MM_THUMB + " TEXT, "
			+ DaoConstant.COL_MM_CREATE_TIME + " INTEGER, " + DaoConstant.COL_MM_UPDATE_TIME + " INTEGER, "
			+ DaoConstant.COL_MM_ORIGIN_HEAD + " BLOB, " + DaoConstant.COL_MM_STATE + " INTEGER DEFAULT(0), "
			+ DaoConstant.COL_MM_ENCRYPT_FLAG + " INTEGER DEFAULT(1), "
			+ DaoConstant.COL_MM_SIZE + "  INTEGER DEFAULT(0), " // 12.24 优化
			+ DaoConstant.COL_MM_DIRECTION + " INTEGER DEFAULT(0))";
	
	private static String CREATE_TB_SETTING = PREFIX_CREATE_TB + TB_SETTING + "(" + DaoConstant.COL_SETTING_ID
			+ " INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, " + DaoConstant.COL_SETTING_KEY + " TEXT, "
			+ DaoConstant.COL_SETTING_VALUE + " TEXT, " + DaoConstant.COL_SETTING_UPDATE_TIME + " INTEGER)";

	private MultiMediaDBHelper(Context context) throws SdCardNotExistException {
		mHandler = new Handler(context.getMainLooper());
		getDatabase();
	}

	public static MultiMediaDBHelper getInstance() throws SdCardNotExistException {
		return getInstance(MainApplication.getContext());
	}

	public static MultiMediaDBHelper getInstance(Context context) throws SdCardNotExistException {
		synchronized (MultiMediaDBHelper.class) {
			if (mInstance == null) {
				mInstance = new MultiMediaDBHelper(context);
			}
		}
		return mInstance;
	}

	private boolean checkFile() {
		File file = new File(dbFile);
		if (!file.exists()) {
			try {
				File dir = new File(dbPath);
				if (!dir.exists()) {
					if (!dir.mkdirs())
						return false;
				}

				db = null;
				return file.createNewFile();
			} catch (IOException e) {
				Log.i("DB", e.getMessage());
				return false;
			}
		}
		return true;
	}

	private SQLiteDatabase getDatabase() throws SdCardNotExistException {
		if (FileUtil.hasStorageCard() == false) {
			throw new SdCardNotExistException();
		}
		if (checkFile() == false) {
			throw new SdCardNotExistException();
		}

		try {
			if (db == null) {
				db = SQLiteDatabase.openOrCreateDatabase(dbFile, null);
				db.setLockingEnabled(false);
				this.createTable(db);
			} else if (!db.isOpen()) {
				db = SQLiteDatabase.openOrCreateDatabase(dbFile, null);
			}
		} catch (Exception e) {
			Log.i("DB", e.getMessage());
			throw new SdCardNotExistException();
		}

		return db;
	}

	private void createTable(SQLiteDatabase db) {
		// db.execSQL(CREATE_TB_CONFIG);
		// db.execSQL(CREATE_TB_USER_INFO);
		// db.execSQL(CREATE_TB_NOTE);
		db.execSQL(CREATE_TB_MULTIMEDIA);
		db.execSQL(CREATE_TB_SETTING);
		//db.execSQL(CREATE_TB_TMP_PICS);
		versionCheck();
	}
	
	/**
	 * DB版本检查
	 */
	public void versionCheck() {

		try {
			String val = null;
			Cursor cursor = query("SELECT * FROM " + TB_SETTING + " WHERE " + DaoConstant.COL_SETTING_KEY + "='" + DaoConstant.SETTING_KEY_DB_VERSION + "'");
			while (cursor.moveToNext()) {
				int valInd = cursor.getColumnIndex(DaoConstant.COL_SETTING_VALUE);
				val = cursor.getString(valInd);
				break;
			}
			cursor.close();
			
			// 为兼容上一个版本，临时代码。TODO start
//			String createSql = null;
//			cursor = query("SELECT * FROM sqlite_master WHERE tbl_name='" + TB_MULTIMEDIA + "'");
//			while (cursor.moveToNext()) {
//				int valInd = cursor.getColumnIndex("sql");
//				createSql = cursor.getString(valInd);
//				break;
//			}
//			cursor.close();
//			
//			if (createSql != null && createSql.length() > 0) {
//				if (createSql.indexOf(DaoConstant.COL_MM_SIZE) < 0) {
//					String sql = "ALTER TABLE " + TB_MULTIMEDIA + " ADD " + DaoConstant.COL_MM_SIZE + " INTEGER DEFAULT(0)";
//					db.execSQL(sql);
//				}
//			}
			// 为兼容上一个版本，临时代码。TODO end
			
			if (val != null && val.length()>0) {
				if (!DaoConstant.DB_VERSION_CURRENT.equals(val)) {
					
					versionCheckDetail();

					ContentValues contentValues = new ContentValues();
					contentValues.put(DaoConstant.COL_SETTING_KEY, DaoConstant.SETTING_KEY_DB_VERSION);
					contentValues.put(DaoConstant.COL_SETTING_VALUE, DaoConstant.DB_VERSION_CURRENT);
					contentValues.put(DaoConstant.COL_SETTING_UPDATE_TIME, System.currentTimeMillis());
					
					update(TB_SETTING, contentValues, DaoConstant.COL_SETTING_KEY + "='" + DaoConstant.SETTING_KEY_DB_VERSION + "'" , null);
				}
			} else {
				
				versionCheckDetail();
				
				ContentValues contentValues = new ContentValues();
				contentValues.put(DaoConstant.COL_SETTING_KEY, DaoConstant.SETTING_KEY_DB_VERSION);
				contentValues.put(DaoConstant.COL_SETTING_VALUE, DaoConstant.DB_VERSION_CURRENT);
				contentValues.put(DaoConstant.COL_SETTING_UPDATE_TIME, System.currentTimeMillis());
				
				insert(TB_SETTING,DaoConstant.COL_SETTING_ID, contentValues);
			}
			
		} catch (SdCardNotExistException e) {
		}
	}
	
	private void versionCheckDetail() throws SdCardNotExistException {
		String createSql = null;
		Cursor cursor = query("SELECT * FROM sqlite_master WHERE tbl_name='" + TB_MULTIMEDIA + "'");
		while (cursor.moveToNext()) {
			int valInd = cursor.getColumnIndex("sql");
			createSql = cursor.getString(valInd);
			break;
		}
		cursor.close();
		
		if (createSql != null && createSql.length() > 0) {
			// V2.0
			if (createSql.indexOf(DaoConstant.COL_MM_SIZE) < 0) {
				String sql = "ALTER TABLE " + TB_MULTIMEDIA + " ADD " + DaoConstant.COL_MM_SIZE + " INTEGER DEFAULT(0)";
				db.execSQL(sql);
			}
			// V2.0.2
			if (createSql.indexOf(DaoConstant.COL_MM_DIRECTION) < 0) {
				String sql = "ALTER TABLE " + TB_MULTIMEDIA + " ADD " + DaoConstant.COL_MM_DIRECTION+ " INTEGER DEFAULT(0)";
				db.execSQL(sql);
			}
		}
	}

	public Cursor query(String queryStr) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().rawQuery(queryStr, null);
		}
	}

	public Cursor query(String table, String[] columns, String selection, String[] selectionArgs, String groupBy,
			String having, String orderBy) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			SQLiteDatabase database = getDatabase();
			return database.query(table, columns, selection, selectionArgs, groupBy, having, orderBy);
		}
	}

	public void noneQuery(String queryStr) throws SQLException, SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			getDatabase().execSQL(queryStr);
		}
	}

	public long insert(String table, String nullColumnHack, ContentValues values) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().insert(table, nullColumnHack, values);
		}
	}

	public long insert(String table, ContentValues values) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().insert(table, null, values);
		}
	}

	public int delete(String table, String whereClause, String[] whereArgs) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().delete(table, whereClause, whereArgs);
		}
	}

	public int update(String table, ContentValues values, String whereClause, String[] whereArgs)
			throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().update(table, values, whereClause, whereArgs);
		}
	}

	public int deleteTable(String table) throws SdCardNotExistException {
		checkTheadValid();
		synchronized (mDBLock) {
			return getDatabase().delete(table, null, null);
		}
	}

	// private void dropTable(String table, SQLiteDatabase db) {
	// String sql = "DROP TABLE IF EXISTS "+table;
	// db.execSQL(sql);
	// }
	/**
	 * 事务操作
	 * 
	 * @param callback
	 * @return
	 */
	public boolean execTransaction(SimpleCallback callback) {
		checkTheadValid();

		boolean result = false;
		synchronized (mDBLock) {
			db.beginTransaction();

			try {
				callback.onCallback(this);
				db.setTransactionSuccessful();
				result = true;
			} finally {
				db.endTransaction();
				close();
			}
		}
		return result;
	}

	public synchronized void close() {
		mHandler.removeCallbacks(mCloseDatabaseRunnable);
		mHandler.postDelayed(mCloseDatabaseRunnable, CLOSE_DELAY_TIME);
	}

	private void checkTheadValid() {

	}
}
