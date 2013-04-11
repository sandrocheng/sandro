/**
 * FileName: AblumManager.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-1 上午9:56:57
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-1 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.manager;

import java.util.ArrayList;
import java.util.List;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Media;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.model.AblumnEntity;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;

/**
 * @ClassName: AblumManager
 * @Description:导入前相册管理
 * @author: Matrix
 * @date: 2012-11-1 上午9:56:57
 * 
 */
public class AblumManager {

	private ContentResolver mResolver = MainApplication.getContext()
			.getContentResolver();

	private Uri uri = Media.EXTERNAL_CONTENT_URI;

	private static final String[] projection_1 = { "count(*)",
			Media.BUCKET_DISPLAY_NAME, Media.BUCKET_ID, Media.DATA, Media._ID };

	private static final String where_1 = "1=1) group by " + Media.BUCKET_ID
			+ " -- (";

	private static final String[] projection_2 = { Media._ID, Media.DISPLAY_NAME, Media.DATA, Media.MIME_TYPE,
			Media.SIZE };

	private static final String where_2 = Media.BUCKET_ID + " = ?";
	
	private static final String order_2 = Media._ID + " desc";

	public List<AblumnEntity> getAblumList() {
		return this.copyPicsFromMediaStore();
	}

	/**
	 * find all of pictures in ablumn
	 * 
	 * @return
	 */
	public List<AblumnPicEntity> getPicsByAblumnFolder(String bucketId) {
		
		List<AblumnPicEntity> apList = new ArrayList<AblumnPicEntity>();
		
		Cursor cursor = null;
		try {
			cursor = mResolver.query(uri, projection_2, where_2,
					new String[] { bucketId }, order_2);
			int i_imgId = cursor.getColumnIndexOrThrow(Media._ID);
			int i_disName = cursor.getColumnIndexOrThrow(Media.DISPLAY_NAME);
			int i_absPath = cursor.getColumnIndexOrThrow(Media.DATA);
			//rabbiy add 12.14 优化
			int i_imgType = cursor.getColumnIndexOrThrow(Media.MIME_TYPE); 
			int i_imgSize = cursor.getColumnIndexOrThrow(Media.SIZE);
			while (cursor.moveToNext()) {
				AblumnPicEntity apEntity = new AblumnPicEntity();
				apEntity.setImgId(cursor.getLong(i_imgId));
				apEntity.setDisplayName(cursor.getString(i_disName));
				apEntity.setImgAbsPath(cursor.getString(i_absPath));
				//rabbiy add 12.14 优化
				apEntity.setImgType(cursor.getString(i_imgType));
				apEntity.setImgSize(cursor.getInt(i_imgSize));
				
				apList.add(apEntity);
			}
			cursor.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cursor != null && !cursor.isClosed()) {
				cursor.close();
			}
		}
		
		return apList;
	}

	//

	/**
	 * Copy picture from MediaStore insert into TMP_PIC_TABLE The method will
	 * wast a lot of time.
	 */
	public List<AblumnEntity> copyPicsFromMediaStore() {
		List<AblumnEntity> list = new java.util.ArrayList<AblumnEntity>();
		
		Cursor cursor = null;
		try {
			cursor = mResolver.query(uri, projection_1, where_1, null, null);
			while (cursor.moveToNext()) {
				int count = cursor.getInt(0);
				String bucketName = cursor.getString(1);
				String bucketId = cursor.getString(2);
				long imgId = cursor.getLong(4);
				AblumnEntity tpEntity = new AblumnEntity();
				tpEntity.imgId = imgId;
				tpEntity.bucketId = bucketId;
				tpEntity.count = count;
				tpEntity.bucketDisplayName = bucketName;
				int column_index = cursor.getColumnIndex(Media.DATA);
				String absPath = cursor.getString(column_index);
				String picName = getPicName(absPath);
				String parentFolderPath = getParentPath(absPath, picName);
				tpEntity.absolutePath = absPath;
				tpEntity.parentPath = parentFolderPath;
				tpEntity.filename = picName;

				list.add(tpEntity);
			}
			cursor.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (cursor != null && !cursor.isClosed()) {
				cursor.close();
			}
		}
		return list;
	}

	/**
	 * Get pic parent folder path
	 * 
	 * @param absPath
	 * @param picName
	 * @return
	 */
	private String getParentPath(String absPath, String picName) {
		int index = absPath.lastIndexOf(new String("/"));
		String rString = absPath.substring(0, index);
		
		int indexLast = rString.lastIndexOf(new String("/"));
		String rStringLast = absPath.substring(indexLast + 1, rString.length());
		return rStringLast; //absPath.substring(0, absPath.length() - picName.length());
	}

	/**
	 * Get picture File name
	 * 
	 * @param absPath
	 * @return
	 */
	private String getPicName(String absPath) {
		String[] tmp = absPath.split("/");
		return tmp[tmp.length - 1];
	}
}
