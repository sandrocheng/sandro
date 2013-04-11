package com.tencent.onesecurity.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.common.SimpleCallback;
import com.tencent.onesecurity.model.ScanResultModel;

/**
 * @ClassName: VirusWhiteListDao
 * @Description:病毒白名单
 * @author: lee
 * @date: 2013-2-18 下午06:26:02
 */
public class VirusWhiteListDao {

	/** 表名：白名单 */
	public static final String TB_WHITE_LIST = "t_white_list";

	/** ID */
	public static final String COL_ID = "_id";
	/** 包名 */
	public static final String COL_PACKAGE_NAME = "col_package_name";
	/** 应用签名 */
	public static final String COL_SIGNATURE = "col_signature";
	/** 应用名 */
	public static final String COL_APP_NAME = "col_app_name";
	/** apk路径 */
	public static final String COL_APP_PATH = "col_app_path";
	/** 应用描述 */
	public static final String COL_APP_DESC = "col_app_desc";
	/** 应用类型 */
	public static final String COL_APP_TYPE = "col_app_type";
	/** apk位置，0手机内存，1SD卡中 */
	public static final String COL_APP_LOCATION = "col_app_location";
	/** 加入白名单时间 */
	public static final String COL_APP_ADD_TIME = "col_app_add_time";

	private DBHelper dbHelper;

	public VirusWhiteListDao() {
		dbHelper = DBHelper.getInstance();
	}


	/**
	 * 插入一条记录
	 * 
	 * @param entity
	 * @return
	 */
	public long insert(ScanResultModel entity) {
		long id = dbHelper.insert(TB_WHITE_LIST, COL_ID, generateContentValues(entity));
		dbHelper.close();
		return id;
	}

	/**
	 * 批量插入
	 * 
	 * @param modelList
	 * @return
	 */
	public boolean insert(final List<ScanResultModel> modelList) {
		return dbHelper.execTransaction(new SimpleCallback() {
			@Override
			public void onCallback(Object data) {
				for (ScanResultModel scanModel : modelList) {
					dbHelper.insert(TB_WHITE_LIST, COL_ID, generateContentValues(scanModel));
				}
			}
		});
	}

	/**
	 * 更新一条记录
	 * 
	 * @param entity
	 * @return
	 */
	public int update(ScanResultModel entity) {
		int res = dbHelper.update(TB_WHITE_LIST, generateContentValues(entity), COL_SIGNATURE + "=? AND " + COL_PACKAGE_NAME + "=?", new String[]{entity.signature,entity.packageName});
		dbHelper.close();
		return res;
	}

	/**
	 * 根据ID更新
	 * 
	 * @param entity
	 * @return
	 */
	public int updateById(ScanResultModel entity) {
		int res = dbHelper
				.update(TB_WHITE_LIST, generateContentValues(entity), COL_ID + "=" + entity.whiteListId, null);
		dbHelper.close();
		return res;
	}

	/**
	 * 删除一条记录
	 * 
	 * @param signature
	 * @param appName
	 * @return
	 */
	public boolean delete(String signature, String packageName) {
		int count = dbHelper.delete(TB_WHITE_LIST, COL_SIGNATURE + "='" + signature + "' AND " + COL_PACKAGE_NAME + "='"
				+ packageName +"'", null);
		dbHelper.close();
		return count > 0;
	}

	/**
	 * 根据ID 删除一条记录
	 * 
	 * @param id
	 * @return
	 */
	public boolean delete(long id) {
		int count = dbHelper.delete(TB_WHITE_LIST, COL_ID + "=" + id, null);
		dbHelper.close();
		return count > 0;
	}
	/**
	 * 批量删除
	 * @param allLists
	 * @return
	 */
	public boolean delete(List<ScanResultModel> allLists) {
		boolean isDeleted = false;
		if (allLists.size() > 0) {
			StringBuffer where = new StringBuffer();
			where.append(COL_ID + " IN (");
			for (ScanResultModel scanModel : allLists) {
				where.append(scanModel.whiteListId + ",");
			}
			where.deleteCharAt(where.length() - 1);
			where.append(")");
			isDeleted = dbHelper.delete(TB_WHITE_LIST, where.toString(), null) > 0;
			dbHelper.close();
		} else {
			isDeleted = true;
		}
		return isDeleted;

	}
	/**
	 * 查找一条记录
	 * 
	 * @param signature
	 * @param appName
	 * @return
	 */
	public ScanResultModel getScanResultModel(String signature, String packageName) {
		Cursor cursor = dbHelper.query("SELECT * " 
				+ " FROM " + TB_WHITE_LIST 
				+ " WHERE " + COL_SIGNATURE + " = '" + signature 
				+ "' AND " + COL_PACKAGE_NAME + " = '" + packageName
				+ "' ORDER BY " + COL_APP_ADD_TIME + " DESC");
		ScanResultModel resultModel = getScanModelFromCrusor(cursor);
		cursor.close();
		dbHelper.close();
		return resultModel;
	}
	/**
	 * 查找一条记录
	 * 
	 * @param id
	 * @return
	 */
	public ScanResultModel getScanResultModel(long id) {
		Cursor cursor = dbHelper.query("SELECT * " 
				+ " FROM " + TB_WHITE_LIST 
				+ " WHERE " + COL_ID + " = " + id 
				+ " ORDER BY " + COL_APP_ADD_TIME + " DESC");
		ScanResultModel resultModel = getScanModelFromCrusor(cursor);
		cursor.close();
		dbHelper.close();
		return resultModel;
	}

	/**
	 * 查找所有白名單
	 * 
	 * @return
	 */
	public List<ScanResultModel> getAll() {
		List<ScanResultModel> whiteList = new ArrayList<ScanResultModel>();
		Cursor cursor = dbHelper.query("SELECT * " + " FROM " + TB_WHITE_LIST + " ORDER BY " + COL_APP_ADD_TIME
				+ " DESC");
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(COL_ID);
			int i_pkg_name = cursor.getColumnIndexOrThrow(COL_PACKAGE_NAME);
			int i_sign = cursor.getColumnIndexOrThrow(COL_SIGNATURE);
			int i_name = cursor.getColumnIndexOrThrow(COL_APP_NAME);
			int i_path = cursor.getColumnIndexOrThrow(COL_APP_PATH);
			int i_desc = cursor.getColumnIndexOrThrow(COL_APP_DESC);
			int i_type = cursor.getColumnIndexOrThrow(COL_APP_TYPE);
			int i_location = cursor.getColumnIndexOrThrow(COL_APP_LOCATION);
			int i_add_time = cursor.getColumnIndexOrThrow(COL_APP_ADD_TIME);

			while (!cursor.isAfterLast()) {
				ScanResultModel entity = new ScanResultModel();
				entity.whiteListId = cursor.getLong(i_id);
				entity.packageName = cursor.getString(i_pkg_name);
				entity.signature = cursor.getString(i_sign);
				entity.softName = cursor.getString(i_name);
				entity.path = cursor.getString(i_path);
				entity.virusDesc = cursor.getString(i_desc);
				entity.type = cursor.getInt(i_type);
				entity.softScanAddress = cursor.getInt(i_location);
				entity.addWhiteListTime = cursor.getLong(i_add_time);

				whiteList.add(entity);
				cursor.moveToNext();
			}
		}
		cursor.close();
		dbHelper.close();
		return whiteList;
	}

	/**
	 * 获取白名单个数
	 * 
	 * @return
	 */
	public int getWhiteListNum() {
		int num = 0;
		String query = "SELECT count(*) FROM " + TB_WHITE_LIST;
		Cursor cursor = dbHelper.query(query);

		if (cursor.moveToFirst()) {
			num = cursor.getInt(0);
		}
		cursor.close();
		dbHelper.close();

		return num;
	}
	private ScanResultModel getScanModelFromCrusor(Cursor cursor){
		
		if(cursor == null) return null ;
		
		ScanResultModel resultModel = null;
		
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(COL_ID);
			int i_pkg_name = cursor.getColumnIndexOrThrow(COL_PACKAGE_NAME);
			int i_sign = cursor.getColumnIndexOrThrow(COL_SIGNATURE);
			int i_name = cursor.getColumnIndexOrThrow(COL_APP_NAME);
			int i_path = cursor.getColumnIndexOrThrow(COL_APP_PATH);
			int i_desc = cursor.getColumnIndexOrThrow(COL_APP_DESC);
			int i_type = cursor.getColumnIndexOrThrow(COL_APP_TYPE);
			int i_location = cursor.getColumnIndexOrThrow(COL_APP_LOCATION);
			int i_add_time = cursor.getColumnIndexOrThrow(COL_APP_ADD_TIME);
			
			resultModel = new ScanResultModel();
			resultModel.whiteListId = cursor.getLong(i_id);
			resultModel.packageName = cursor.getString(i_pkg_name);
			resultModel.signature = cursor.getString(i_sign);
			resultModel.softName = cursor.getString(i_name);
			resultModel.path = cursor.getString(i_path);
			resultModel.virusDesc = cursor.getString(i_desc);
			resultModel.type = cursor.getInt(i_type);
			resultModel.softScanAddress = cursor.getInt(i_location);
			resultModel.addWhiteListTime = cursor.getLong(i_add_time);
			
		}
		return resultModel ;
	}
	private ContentValues generateContentValues(ScanResultModel entity) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(COL_PACKAGE_NAME, entity.packageName);
		contentValues.put(COL_SIGNATURE, entity.signature);
		contentValues.put(COL_APP_NAME, entity.softName);
		contentValues.put(COL_APP_PATH, entity.path);
		contentValues.put(COL_APP_DESC, entity.virusDesc);
		contentValues.put(COL_APP_TYPE, entity.type);
		contentValues.put(COL_APP_LOCATION, entity.apkType);
		contentValues.put(COL_APP_ADD_TIME, System.currentTimeMillis());
		return contentValues;
	}
}
