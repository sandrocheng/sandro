package com.tencent.onesecurity.safebox.dao;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.safebox.model.NoteEntity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;

/**
 * @ClassName: NoteDao  
 * @Description: 私密文本表(note) Dao
 * @author Joy
 * @date: 2012-11-1 下午4:40:59
 */
public class NoteDao {
	private SafeBoxDBHelper dbHelper;
	private static NoteDao instance;
	private String tablename = SafeBoxDBHelper.TB_NOTE;
	
	private NoteDao() throws SdCardNotExistException{
		dbHelper = SafeBoxDBHelper.getInstance();
	}
	
	public static NoteDao getInstance() throws SdCardNotExistException{
		synchronized (NoteDao.class) {
			if (null == instance) {
				instance = new NoteDao();
			}
		}
		
		return instance;
	}
	
	/**
	 * 获取所有文本记录
	 * @return
	 * @throws SdCardNotExistException
	 */
	public List<NoteEntity> findAll() throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " ORDER BY " + DaoConstant.COL_NT_UPDATE_TIME + " DESC");
		List<NoteEntity> list = getList(cursor);
		
		dbHelper.close();
		return list;
	}
	/**
	 * 获取私密note个数,用于数据上报 
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int getSecureNotesNum() throws SdCardNotExistException {
		Cursor cursor = null;
		int size = 0;
		String[] columns = new String[] { DaoConstant.COL_NT_ID };
		cursor = dbHelper.query(tablename, columns, null, null, null, null, null);
		if (cursor != null) {
			size = cursor.getCount();
			cursor.close() ;
		}
		dbHelper.close();
		return size;
	}
	/**
	 * 获取出Content字段外的所有记录
	 * @return
	 * @throws SdCardNotExistException
	 */
	public List<NoteEntity> findAllWithoutContent() throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT " + DaoConstant.COL_NT_ID + ", " 
												+ DaoConstant.COL_NT_TITLE + ", " 
												+ DaoConstant.COL_NT_CREATE_TIME + ", " 
												+ DaoConstant.COL_NT_UPDATE_TIME + " FROM " + tablename + " ORDER BY " + DaoConstant.COL_NT_UPDATE_TIME + " DESC");
		List<NoteEntity> list = getListWithoutContent(cursor);
		
		dbHelper.close();
		return list;
	}
	
	/**
	 * 根据Id获取content
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
	public byte[] findContentById(long id) throws SdCardNotExistException {
		byte[] data = null;
		Cursor cursor = dbHelper.query("SELECT " + DaoConstant.COL_NT_CONTENT + " FROM " + tablename + " WHERE " + DaoConstant.COL_NT_ID + "=" + id);
		while (cursor.moveToNext()) {
			data = cursor.getBlob(0);
		}
		cursor.close();
		dbHelper.close();
		return data;
	}
	
	/**
	 * 获取所有文本记录的Cursor
	 * @return
	 * @throws SdCardNotExistException
	 */
	public Cursor findAllCursor() throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " ORDER BY " + DaoConstant.COL_NT_UPDATE_TIME + " DESC");
		dbHelper.close();
		return cursor;
	}
	
	/**
	 * 插入一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public long insert(NoteEntity entity) throws SdCardNotExistException {
		long id = dbHelper.insert(tablename, DaoConstant.COL_NT_ID, generateContentValues(entity));
		dbHelper.close();
		
		return id;
	}
	
	/**
	 * 获取总条数
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int findCount() throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT COUNT("+DaoConstant.COL_NT_ID+") FROM " + tablename);
		cursor.moveToNext();
		int count = cursor.getInt(0);
		cursor.close();
		dbHelper.close() ;
		return count;
	}
	
	/**
	 * 取具体某几行的数据
	 * @param start(从0开始)
	 * @param lines
	 * @return
	 * @throws SdCardNotExistException
	 */
	public List<NoteEntity> findLimitRows(int start, int lines) throws SdCardNotExistException {
		Cursor cursor = dbHelper.query("SELECT * FROM " + tablename + " ORDER BY " + DaoConstant.COL_NT_UPDATE_TIME + " DESC LIMIT " + start + "," + lines);
		List<NoteEntity> list = getList(cursor);
		
		dbHelper.close();
		return list;
	}
	
	/**
	 * 根据id删除一条记录
	 * @param id
	 * @return
	 * @throws SdCardNotExistException
	 */
	public boolean deleteById(long id) throws SdCardNotExistException {
		int count = dbHelper.delete(tablename, DaoConstant.COL_NT_ID + "=" +id, null);
		dbHelper.close();
		return count > 0;
	}
	
	/**
	 * 修改一条记录
	 * @param entity
	 * @return
	 * @throws SdCardNotExistException
	 */
	public int update(NoteEntity entity) throws SdCardNotExistException {
		int res = dbHelper.update(tablename, generateContentValues(entity), DaoConstant.COL_NT_ID + "=" + entity.getId(), null);
		dbHelper.close();
		return res;
	}
	
	private List<NoteEntity> getList(Cursor cursor) {
		List<NoteEntity> list = new ArrayList<NoteEntity>();
		
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_ID);
			int i_content = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_CONTENT);
			int i_title = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_TITLE);
			int i_createTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_CREATE_TIME);
			int i_updateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_UPDATE_TIME);
		
			while (!cursor.isAfterLast()) {
				NoteEntity entity = new NoteEntity();
				
				entity.setId(cursor.getLong(i_id));
				entity.setTitle(cursor.getBlob(i_title));
				entity.setContent(cursor.getBlob(i_content));
				entity.setCreateTime(cursor.getLong(i_createTime));
				entity.setUpdateTime(cursor.getLong(i_updateTime));
				
				list.add(entity);
				cursor.moveToNext();
			}
		}
		
		cursor.close();
		
		return list;
	}
	
	private List<NoteEntity> getListWithoutContent(Cursor cursor) {
		List<NoteEntity> list = new ArrayList<NoteEntity>();
		
		if (cursor.moveToFirst()) {
			int i_id = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_ID);
			int i_title = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_TITLE);
			int i_createTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_CREATE_TIME);
			int i_updateTime = cursor.getColumnIndexOrThrow(DaoConstant.COL_NT_UPDATE_TIME);
		
			while (!cursor.isAfterLast()) {
				NoteEntity entity = new NoteEntity();
				
				entity.setId(cursor.getLong(i_id));
				entity.setTitle(cursor.getBlob(i_title));
				entity.setCreateTime(cursor.getLong(i_createTime));
				entity.setUpdateTime(cursor.getLong(i_updateTime));
				
				list.add(entity);
				cursor.moveToNext();
			}
		}
		
		cursor.close();
		
		return list;
	}
	
	private ContentValues generateContentValues(NoteEntity entity){
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_NT_TITLE, entity.getTitle());
		contentValues.put(DaoConstant.COL_NT_CONTENT, entity.getContent());
		contentValues.put(DaoConstant.COL_NT_CREATE_TIME, entity.getCreateTime());
		contentValues.put(DaoConstant.COL_NT_UPDATE_TIME, entity.getUpdateTime());
		
		return contentValues;
	}
}
