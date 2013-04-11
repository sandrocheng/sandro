package com.tencent.onesecurity.safebox.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.model.MultiMediaEntity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;

/**
 * @ClassName: MultiMediaDao  
 * @Description: 媒体表(multimedia)Dao
 * @author Joy
 * @date: 2012-11-1 下午4:40:35
 */
public class MultiMediaDao {

	private MultiMediaDBHelper dbHelper;
	private static MultiMediaDao instance;
	private String tablename = MultiMediaDBHelper.TB_MULTIMEDIA;
	
	private MultiMediaDao() throws SdCardNotExistException{
		dbHelper = MultiMediaDBHelper.getInstance();
	}
	
	public static MultiMediaDao getInstance() throws SdCardNotExistException {
		synchronized (MultiMediaDao.class) {
			if (null == instance) {
				instance = new MultiMediaDao();
			}
		}
		return instance;
	}
	
	/**
	 * 获取记录数
	 * @param type 媒体文件类型
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int getCountByType(int type) throws SdCardNotExistException {
		Cursor cursor = null;
		int size = 0;
		cursor = dbHelper.query("SELECT  1  FROM  " + tablename + " WHERE type=" + type);
		if (cursor != null) {
			size = cursor.getCount();
			cursor.close() ;
		}
		dbHelper.close();
		return size;
	}
	
	/**
	 * 根据媒体类型获取List
	 * @param type
	 * @return
	 * @throws SdCardNotExistException
	 */
	public List<MultiMediaEntity> findByType(int type) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " WHERE type=" + type + " ORDER BY create_time DESC");
		List<MultiMediaEntity> list = getList(cursor);
		
		dbHelper.close();
		return list;
	}
	
	/**
	 * 根据媒体类型获取单个数据
	 * @param type
	 * @return
	 * @throws SdCardNotExistException
	 */
	public MultiMediaEntity getEntity(int type, long id) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " WHERE type=" + type +" and _id = " + id);
		List<MultiMediaEntity> list = getList(cursor);
		dbHelper.close();
		if (list.size() > 0) {
			return list.get(0);
		}
		return null;
	}
	
	/**
	 * 插入一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public long insert(MultiMediaEntity entity) throws SdCardNotExistException {
		long id = dbHelper.insert(tablename, DaoConstant.COL_MM_ID, generateContentValues(entity));
		dbHelper.close();
		return id;
	}
	
	// == JOY OPZ start ==
	public long insertWhithoutClose(MultiMediaEntity entity) throws SdCardNotExistException {
		long id = dbHelper.insert(tablename, DaoConstant.COL_MM_ID, generateContentValues(entity));
		return id;
	}
	
	public void closeDB() {
		dbHelper.close();
	}
	// == JOY OPZ end ==
	
	/**
	 * 修改一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int update(MultiMediaEntity entity) throws SdCardNotExistException {
		int res = dbHelper.update(tablename, generateContentValues(entity), DaoConstant.COL_MM_ID + "=" + entity.getId(), null);
		dbHelper.close();
		return res;
	}
	
	/**
	 * 删除一条记录
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
	public boolean deleteById(long id) throws SdCardNotExistException {
		int count = dbHelper.delete(tablename, DaoConstant.COL_MM_ID + "=" + id, null);
		dbHelper.close();
		return count>0;
	}

	/**
	 * 获取AblumnPicEntityList
	 * 
	 * @param type
	 * @return
	 * @throws SdCardNotExistException
	 */
	public List<AblumnPicEntity> getAblumnPicEntityList(int type) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT " 
				+ DaoConstant.COL_MM_ID +", "
				+ DaoConstant.COL_MM_ORIGIN_FILENAME + ", " 
				+ DaoConstant.COL_MM_ORIGIN_PATH + ", "
				+ DaoConstant.COL_MM_SECURE_FILENAME + ","
				+ DaoConstant.COL_MM_DIRECTION
				+ " FROM " + tablename 
				+ " WHERE " + DaoConstant.COL_MM_TYPE + " = " + type 
				+ " ORDER BY "+ DaoConstant.COL_MM_CREATE_TIME +" DESC");
		List<AblumnPicEntity> list = getAblumnEntityListFromCursor(cursor);
		dbHelper.close();
		return list;
	}

	/**
	 * 根据id 取AblumnPicEntity
	 * 
	 * @param type
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
	public AblumnPicEntity getAblumnPicEntity(int type,long id) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT " 
				+ DaoConstant.COL_MM_ID +", "
				+ DaoConstant.COL_MM_ORIGIN_FILENAME + ", " 
				+ DaoConstant.COL_MM_ORIGIN_PATH + ", "
				+ DaoConstant.COL_MM_SECURE_FILENAME +", "
				+ DaoConstant.COL_MM_SIZE +", "
				+ DaoConstant.COL_MM_EXT_TYPE + ","
				+ DaoConstant.COL_MM_DIRECTION
				
				+ " FROM " + tablename 
				+ " WHERE " + DaoConstant.COL_MM_TYPE + " = " + type 
				+ " AND "+ DaoConstant.COL_MM_ID + " = " + id
				+ " ORDER BY "+ DaoConstant.COL_MM_CREATE_TIME +" DESC");
		AblumnPicEntity entity = getAblumnEntityFromCursor(cursor) ;
		dbHelper.close();
		return entity;
	}
	/**
	 * 私密图片个数,数据上报用
	 * @return
	 * @throws SdCardNotExistException 
	 */
	public int getSecurePicsNum() throws SdCardNotExistException {
		Cursor cursor = null;
		int size = 0;
		String[] columns = new String[] { DaoConstant.COL_MM_ID };
		cursor = dbHelper.query(tablename, columns, null, null, null, null, null);
		if (cursor != null) {
			size = cursor.getCount();
			cursor.close() ;
		}
		dbHelper.close() ;
		return size;
	}
	
	// == JOY OPZ ==
	/**
	 * 根据加密后的名字 取AblumnPicEntity
	 * 
	 * @param type
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
//	public boolean isExistBySecureNameWhithoutClose(String secName) throws SdCardNotExistException {
//		Cursor cursor = dbHelper.query("SELECT 1"
//				+ " FROM " + tablename 
//				+ " WHERE " + DaoConstant.COL_MM_SECURE_FILENAME + " = '" + secName + "'" );
//		return cursor.getCount() > 0;
//	}
	
	public MultiMediaEntity getItemById(long id){
		MultiMediaEntity entity = null;

		Cursor cursor = null;
		try {
			cursor = dbHelper.query(MultiMediaDBHelper.TB_MULTIMEDIA, null, "_id=?", new String[]{String.valueOf(id)} , null, null, "create_time desc");

			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ID);
			int i_type = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_TYPE);
			int i_extType = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_EXT_TYPE);
			int i_originFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_FILENAME);
			int i_originDuration = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_DURATION);
			int i_originCreateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_CREATE_TIME);
			int i_originPath = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_PATH);
			int i_secureFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_SECURE_FILENAME);
			int i_thumb = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_THUMB);
			int i_createTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_CREATE_TIME);
			int i_updateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_UPDATE_TIME);
			int i_originHead = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_HEAD);
			int i_state = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_STATE);
			int i_encryptFlag = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ENCRYPT_FLAG);
			int i_direction = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_DIRECTION);
			
			if(cursor.moveToFirst() == false){
				return null;
			}
			entity = new MultiMediaEntity();
			entity.setId(cursor.getLong(i_id));
			entity.setType(cursor.getInt(i_type));
			entity.setExtType(cursor.getString(i_extType));
			entity.setOriginFilename(cursor.getString(i_originFilename));
			entity.setOriginDuration(cursor.getLong(i_originDuration));
			entity.setOriginCreateTime(cursor.getString(i_originCreateTime));
			entity.setOriginPath(cursor.getString(i_originPath));
			entity.setSecureFilename(cursor.getString(i_secureFilename));
			entity.setThumb(cursor.getBlob(i_thumb));
			entity.setCreateTime(cursor.getLong(i_createTime));
			entity.setUpdateTime(cursor.getLong(i_updateTime));
			entity.setOriginHead(cursor.getBlob(i_originHead));
			entity.setState(cursor.getInt(i_state));
			entity.setEncryptFlag(cursor.getInt(i_encryptFlag));
			entity.setDirection(cursor.getInt(i_direction));
			
		} catch (SdCardNotExistException e1) {
			return null;
		} catch(Exception e){
			entity = null;
		} finally {
			try {
				if (cursor != null && !cursor.isClosed()) {
					cursor.close();
				}
				dbHelper.close();
			} catch (Exception e) {
				// none
			}
		}
		
		return entity;
	}
	/**
	 * 获取AblumnEntity
	 * @param cursor
	 * @return
	 */
	private AblumnPicEntity getAblumnEntityFromCursor(Cursor cursor) {
		AblumnPicEntity ablumnPicEntity = null ;
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ID);
			int i_originFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_FILENAME);
			int i_originPath = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_PATH);
			int i_secureFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_SECURE_FILENAME);
			int i_secureSize= cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_SIZE);
			int i_secureType = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_EXT_TYPE);// 12.14 优化
			int i_direction = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_DIRECTION);
			
			ablumnPicEntity = new AblumnPicEntity();

			ablumnPicEntity.setImgId(cursor.getLong(i_id));
			ablumnPicEntity.setDisplayName(cursor.getString(i_originFilename));
			ablumnPicEntity.setImgAbsPath(cursor.getString(i_originPath));
			ablumnPicEntity.setImgSecureName(cursor.getString(i_secureFilename));
			ablumnPicEntity.setImgSize(cursor.getInt(i_secureSize));
			ablumnPicEntity.setImgType(cursor.getString(i_secureType));
			ablumnPicEntity.setDirection(cursor.getInt(i_direction));

		}
		cursor.close();
		return ablumnPicEntity;
	}
	private List<AblumnPicEntity> getAblumnEntityListFromCursor(Cursor cursor) {
		List<AblumnPicEntity> list = new ArrayList<AblumnPicEntity>();
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ID);
			int i_originFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_FILENAME);
			int i_originPath = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_PATH);
			int i_secureFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_SECURE_FILENAME);
			int i_direction = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_DIRECTION);
			
			while (!cursor.isAfterLast()) {
				AblumnPicEntity entity = new AblumnPicEntity();
				entity.setImgId(cursor.getLong(i_id));
				entity.setDisplayName(cursor.getString(i_originFilename));
				entity.setImgAbsPath(cursor.getString(i_originPath));
				entity.setImgSecureName(cursor.getString(i_secureFilename));
				entity.setDirection(cursor.getInt(i_direction));
				
				list.add(entity);
				cursor.moveToNext();
			}
		}
		cursor.close();
		return list;
	}
	private List<MultiMediaEntity> getList(Cursor cursor) {
		List<MultiMediaEntity> list = new ArrayList<MultiMediaEntity>();
		
		if (cursor.moveToFirst()) {
			
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ID);
			int i_type = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_TYPE);
			int i_extType = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_EXT_TYPE);
			int i_originFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_FILENAME);
			int i_originDuration = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_DURATION);
			int i_originCreateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_CREATE_TIME);
			int i_originPath = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_PATH);
			int i_secureFilename = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_SECURE_FILENAME);
			int i_thumb = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_THUMB);
			int i_createTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_CREATE_TIME);
			int i_updateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_UPDATE_TIME);
			int i_originHead = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ORIGIN_HEAD);
			int i_state = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_STATE);
			int i_encryptFlag = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_ENCRYPT_FLAG);
			int i_direction = cursor.getColumnIndexOrThrow(DaoConstant.COL_MM_DIRECTION);
			
			while (!cursor.isAfterLast()) {
				MultiMediaEntity entity = new MultiMediaEntity();
				entity.setId(cursor.getLong(i_id));
				entity.setType(cursor.getInt(i_type));
				entity.setExtType(cursor.getString(i_extType));
				entity.setOriginFilename(cursor.getString(i_originFilename));
				entity.setOriginDuration(cursor.getLong(i_originDuration));
				entity.setOriginCreateTime(cursor.getString(i_originCreateTime));
				entity.setOriginPath(cursor.getString(i_originPath));
				entity.setSecureFilename(cursor.getString(i_secureFilename));
				entity.setThumb(cursor.getBlob(i_thumb));
				entity.setCreateTime(cursor.getLong(i_createTime));
				entity.setUpdateTime(cursor.getLong(i_updateTime));
				entity.setOriginHead(cursor.getBlob(i_originHead));
				entity.setState(cursor.getInt(i_state));
				entity.setEncryptFlag(cursor.getInt(i_encryptFlag));
				entity.setDirection(cursor.getInt(i_direction));
				
				list.add(entity);
				cursor.moveToNext();
			}
		}
		cursor.close();
		return list;
	}
	
	private ContentValues generateContentValues(MultiMediaEntity entity){
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_MM_TYPE, entity.getType());
		contentValues.put(DaoConstant.COL_MM_EXT_TYPE, entity.getExtType());
		contentValues.put(DaoConstant.COL_MM_ORIGIN_FILENAME, entity.getOriginFilename());
		contentValues.put(DaoConstant.COL_MM_ORIGIN_DURATION, entity.getOriginDuration());
		contentValues.put(DaoConstant.COL_MM_ORIGIN_CREATE_TIME, entity.getOriginCreateTime());
		contentValues.put(DaoConstant.COL_MM_ORIGIN_PATH, entity.getOriginPath());
		contentValues.put(DaoConstant.COL_MM_SECURE_FILENAME, entity.getSecureFilename());
		contentValues.put(DaoConstant.COL_MM_THUMB, entity.getThumb());
		contentValues.put(DaoConstant.COL_MM_CREATE_TIME, entity.getCreateTime());
		contentValues.put(DaoConstant.COL_MM_UPDATE_TIME, System.currentTimeMillis());
		contentValues.put(DaoConstant.COL_MM_ORIGIN_HEAD, entity.getOriginHead());
		contentValues.put(DaoConstant.COL_MM_STATE, entity.getState());
		contentValues.put(DaoConstant.COL_MM_ENCRYPT_FLAG, entity.getEncryptFlag());
		contentValues.put(DaoConstant.COL_MM_SIZE, entity.getSize()); // 12.14 优化
		contentValues.put(DaoConstant.COL_MM_DIRECTION, entity.getDirection());
		return contentValues;
	}
}
