package com.tencent.onesecurity.safebox.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.safebox.model.ConfigEntity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;

/**
 * @ClassName: ConfigDao  
 * @Description: 配置表(config)Dao
 * @author Joy
 * @date: 2012-11-1 下午4:39:52
 */
public class ConfigDao {
	private SafeBoxDBHelper dbHelper;
	private static ConfigDao instance;
	private String tablename = SafeBoxDBHelper.TB_CONFIG;
	
	private ConfigDao() throws SdCardNotExistException{
		dbHelper = SafeBoxDBHelper.getInstance();
	}
	
	public static ConfigDao getInstance() throws SdCardNotExistException{
		synchronized (ConfigDao.class) {
			if (instance == null) {
				instance = new ConfigDao();
			}
		}
		return instance;
	}
	
	/**
	 * 根据type获取List
	 * @param type
	 * @return
	 * @throws SdCardNotExistException 
	 */
	public List<ConfigEntity> findListByType(int type) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " WHERE type="+type + " ORDER BY " + DaoConstant.COL_CONFIG_ID);
		
		dbHelper.close();
		
		return getList(cursor);
	}
	
	/**
	 * 根据type获取一条记录
	 * @param type
	 * @return
	 * @throws SdCardNotExistException 
	 */
	public String findContentByType(int type) throws SdCardNotExistException {
		ConfigEntity entity = new ConfigEntity();
		List<ConfigEntity> list = findListByType(type);
		if (list != null && list.size() > 0) {
			entity = list.get(0);
		}
		
		dbHelper.close();
		
		return entity.getContent();
	}
	
	/**
	 * 插入一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public long insert(ConfigEntity entity) throws SdCardNotExistException {
		long id = dbHelper.insert(SafeBoxDBHelper.TB_CONFIG, DaoConstant.COL_CONFIG_ID, generateContentValues(entity));
		dbHelper.close();
		return id;
	}
	
	/**
	 * 修改一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int update(ConfigEntity entity) throws SdCardNotExistException {
		int res = dbHelper.update(SafeBoxDBHelper.TB_CONFIG, generateContentValues(entity), DaoConstant.COL_CONFIG_ID + "=" + entity.getId(), null);
		dbHelper.close();
		return res;
	}
	
	private List<ConfigEntity> getList(Cursor cursor) {
		List<ConfigEntity> list = new ArrayList<ConfigEntity>();
		
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_CONFIG_ID);
			int i_content = cursor.getColumnIndexOrThrow(DaoConstant.COL_CONFIG_CONTENT);
			int i_type = cursor.getColumnIndexOrThrow(DaoConstant.COL_CONFIG_TYPE);
		
		
			while (!cursor.isAfterLast()) {
				ConfigEntity entity = new ConfigEntity();
				entity.setId(cursor.getLong(i_id));
				entity.setContent(cursor.getString(i_content));
				entity.setType(cursor.getInt(i_type));
				
				list.add(entity);
				cursor.moveToNext();
			}
		}
		cursor.close();
		
		return list;
	}
	
	private ContentValues generateContentValues(ConfigEntity entity){
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_CONFIG_CONTENT, entity.getContent());
		contentValues.put(DaoConstant.COL_CONFIG_TYPE, entity.getType());
		
		return contentValues;
	}
	
}
