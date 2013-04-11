package com.tencent.onesecurity.safebox.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.safebox.model.AuthorityEntity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;

/**
 * @ClassName: AuthorityDao  
 * @Description: 权限表(user_info)Dao
 * @author Joy
 * @date: 2012-11-1 下午4:39:23
 */
public class AuthorityDao {
	private SafeBoxDBHelper dbHelper;
	private static AuthorityDao instance;
	private String tablename = SafeBoxDBHelper.TB_USER_INFO;

	private AuthorityDao() throws SdCardNotExistException {
		dbHelper = SafeBoxDBHelper.getInstance();
	}

	public static AuthorityDao getInstance() throws SdCardNotExistException {
		synchronized (AuthorityDao.class) {
			if (instance == null) {
				instance = new AuthorityDao();
			}
		}
		return instance;
	}

	/**
	 * 获取当前用户信息
	 * 
	 * @return
	 * @throws SdCardNotExistException
	 */
	public AuthorityEntity findUser() throws SdCardNotExistException {
		AuthorityEntity entity = null;
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename);
		List<AuthorityEntity> list = getList(cursor);
		if (null != list && list.size()>0) {
			entity = list.get(0);
		}

		dbHelper.close();
		return entity;
	}

	/**
	 * 插入一条记录
	 * 
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public long insert(AuthorityEntity entity) throws SdCardNotExistException {
		long id = dbHelper.insert(SafeBoxDBHelper.TB_USER_INFO, DaoConstant.COL_USER_ID, generateContentValues(entity));
		dbHelper.close();
		return id;
	}

	/**
	 * 修改一条记录
	 * 
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int update(AuthorityEntity entity) throws SdCardNotExistException {
		int res = dbHelper.update(tablename, generateContentValues(entity), DaoConstant.COL_USER_ID + "=" + entity.getId(), null);
		dbHelper.close();
		return res;
	}
	
	/**
	 * 根据id删除一条记录
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
	public boolean deleteById(long id) throws SdCardNotExistException {
		int count = dbHelper.delete(tablename, DaoConstant.COL_USER_ID + "=" + id, null);
		dbHelper.close();
		return count > 0;
	}
	
	/**
	 * 清除表内所有记录
	 * @return
	 * @throws SdCardNotExistException
	 */
	public boolean deleteAll() throws SdCardNotExistException {
		int count = dbHelper.deleteTable(tablename);
		dbHelper.close();
		return count > 0;
	}

	private List<AuthorityEntity> getList(Cursor cursor) {
		List<AuthorityEntity> list = new ArrayList<AuthorityEntity>();

		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_ID);
			int i_password = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_PASSWORD);
			int i_question = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_QUESTION);
			int i_answer = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_ANSWER);
			int i_createTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_CREATE_TIME);
			int i_updateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_USER_UPDATE_TIME);

			while (!cursor.isAfterLast()) {
				AuthorityEntity entity = new AuthorityEntity();

				entity.setId(cursor.getLong(i_id));
				entity.setPassword(cursor.getString(i_password));
				entity.setQuestion(cursor.getString(i_question));
				entity.setAnswer(cursor.getString(i_answer));
				entity.setCreateTime(cursor.getLong(i_createTime));
				entity.setUpdateTime(cursor.getLong(i_updateTime));

				list.add(entity);
				cursor.moveToNext();
			}
		}
		cursor.close();

		return list;
	}

	public static ContentValues generateContentValues(AuthorityEntity entity) {
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_USER_PASSWORD, entity.getPassword());
		contentValues.put(DaoConstant.COL_USER_QUESTION, entity.getQuestion());
		contentValues.put(DaoConstant.COL_USER_ANSWER, entity.getAnswer());
		contentValues.put(DaoConstant.COL_USER_UPDATE_TIME, entity.getUpdateTime());
		contentValues.put(DaoConstant.COL_USER_CREATE_TIME, entity.getCreateTime());
		return contentValues;
	}
}
