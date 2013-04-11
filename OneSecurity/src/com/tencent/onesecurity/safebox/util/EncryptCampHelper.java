package com.tencent.onesecurity.safebox.util;

import android.content.ContentValues;
import android.database.Cursor;

import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.EncryptVersionEnum;
import com.tencent.onesecurity.safebox.dao.SafeBoxDBHelper;

/**
 * 算法兼容
 * @author joycui
 *
 */
public class EncryptCampHelper {

	private SafeBoxDBHelper dbHelper;
	private static Object lock  = new Object();
	private static EncryptCampHelper instance = null;
	
	private EncryptCampHelper() {
	}
	
	public static EncryptCampHelper getInstance() {
		synchronized (lock) {
			if (instance == null) {
				instance = new EncryptCampHelper();
			}
		}
		return instance;
	}
	
	private SafeBoxDBHelper getDBHelper() throws SdCardNotExistException {
		if (dbHelper == null) {
			dbHelper = SafeBoxDBHelper.getInstance();
		}
		return dbHelper;
	}
	
	private String getKey(int type) {
		String key = null;
		
		switch (type) {
		case DaoConstant.MEDIA_TYPE_PIC:
			key = DaoConstant.SETTING_KEY_ENCRYPT_VERSION_PIC;
			break;
		case DaoConstant.MEDIA_TYPE_NOTE:
			key = DaoConstant.SETTING_KEY_ENCRYPT_VERSION_NOTE;
			
		default:
			break;
		}
		return key;
	}
	
	/**
	 * 获取当前数据库中的版本
	 * @return
	 */
	public int getCurrentVersion(int type, boolean isClose) {
		String version = null;
		
		String key = getKey(type);
		
		String[] cols = {DaoConstant.COL_SETTING_VALUE};
		String[] args = {key};
		try {
			Cursor cursor = getDBHelper().query(SafeBoxDBHelper.TB_SETTING, cols,DaoConstant.COL_SETTING_KEY + "=?" , args, null, null, null);
			while (cursor.moveToNext()) {
				version = cursor.getString(0);
				break;
			}
			cursor.close();
			if (isClose) {
				getDBHelper().close();
			}
		} catch (SdCardNotExistException e) {
		}
		
		if (version != null && version.length() > 0) {
			try {
				return Integer.parseInt(version);
			}catch (Exception e) {}
		}
		
		return EncryptVersionEnum.VERSION_NULL;
	}
	
	/**
	 * 更新
	 * @return
	 */
	public boolean update(int type) {
		boolean res = false;
		
		String key = getKey(type);
		
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_SETTING_KEY, key);
		contentValues.put(DaoConstant.COL_SETTING_VALUE, EncryptVersionEnum.CURRENT_VERSION);
		contentValues.put(DaoConstant.COL_SETTING_UPDATE_TIME, System.currentTimeMillis());
		
		try {
			res = getDBHelper().update(SafeBoxDBHelper.TB_SETTING, 
					contentValues,
					DaoConstant.COL_SETTING_KEY + "='" + key + "'" , null)
					> 0;
			getDBHelper().close();
		} catch (SdCardNotExistException e) {
		}
		
		return res;
	}
	
	/**
	 * 插入最新version
	 * @return
	 */
	public boolean insert(int type) {
		boolean res = false;
		
		String key = getKey(type);
		
		ContentValues contentValues = new ContentValues();
		contentValues.put(DaoConstant.COL_SETTING_KEY, key);
		contentValues.put(DaoConstant.COL_SETTING_VALUE, EncryptVersionEnum.CURRENT_VERSION);
		contentValues.put(DaoConstant.COL_SETTING_UPDATE_TIME, System.currentTimeMillis());
		
		try {
			res = getDBHelper().insert(SafeBoxDBHelper.TB_SETTING, DaoConstant.COL_SETTING_ID, contentValues) > 0;
			getDBHelper().close();
		} catch (SdCardNotExistException e) {
		}
		
		return res;
	}
	
	public void versionUpdate(int type) {
		
		int curVer = getCurrentVersion(type, false);
		// 如果是最新的，则不做操作
		if (curVer == EncryptVersionEnum.CURRENT_VERSION) {
			try {
				getDBHelper().close();
			} catch (SdCardNotExistException e) {
			}
			return ;
		} else if (curVer >EncryptVersionEnum.CURRENT_VERSION ) {
			try {
				getDBHelper().close();
			} catch (SdCardNotExistException e) {
			}
			return ;
		} else if (curVer == EncryptVersionEnum.VERSION_NULL) {
			insert(type);
			return ;
		}
		
		// 更新版本
		update(type);
	}
	
	// 给下版算法V2留的接口
	public void ConvertData4Pic() {
//		int curVer = getCurrentVersion(DaoConstant.MEDIA_TYPE_PIC, false);
//		// 如果是可识别的旧版本，则进行解密加密操作
//		switch (curVer) {
//		case EncryptVersionEnum.VERSION_1:
//		{
//		}
//			break;
//		default:
//			break;
//		}
	}
	
	// 给下版算法V2留的接口
	public void ConvertData4Note() {
//		int curVer = getCurrentVersion(DaoConstant.MEDIA_TYPE_NOTE, false);
//		// 如果是可识别的旧版本，则进行解密加密操作
//		switch (curVer) {
//		case EncryptVersionEnum.VERSION_1:
//		{
//		}
//			break;
//		default:
//			break;
//		}
	}
	
//	private void logic4Ver1_pic(){
//		List<MultiMediaEntity> list = null;
//		try {
//			list = MultiMediaDao.getInstance().findByType(DaoConstant.MEDIA_TYPE_PIC);
//		} catch (SdCardNotExistException e) {
//		}
//		
//		if (list == null) return;
//		
//		for(MultiMediaEntity entity : list) {
//			String secureFilePath = FileWorker.getSecureFilePathByName(entity.getSecureFilename(), DaoConstant.MEDIA_TYPE_PIC);
//			EncryptWorker.decryptFileOld(secureFilePath, 128);
//			EncryptWorker.encryptFile(secureFilePath);
//		}
//	}
	
}
