package com.tencent.onesecurity.safebox.util;

import java.io.IOException;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore.Images;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.model.MultiMediaEntity;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.Log;

public class ImportUtil {
	
	
	public static boolean import1Photo(String takeFileDir, String type) {
//		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "通过照相机加密照片", "私密图片", 1L);
		if (takeFileDir != null) {
			int exifImage = 0;
			
			if(type.equals("image/jpeg")){
				ExifInterface exifInterface;
				try {
					exifInterface = new ExifInterface(takeFileDir);
					exifImage =  exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
					Log.i("通知", "exif = " + exifImage);
				} catch (IOException e) {
				}
			}
			
			String resultForMove = FileWorker.importFile(takeFileDir, DaoConstant.MEDIA_TYPE_PIC);
			
			if (resultForMove != null) {
				// 移动成功开始加密
				String forMovePath = FileWorker.getSecureFilePathByName(resultForMove, DaoConstant.MEDIA_TYPE_PIC);
				byte[] resultForHead = EncryptWorker.encryptFile(forMovePath);
				if (resultForHead != null) {
					// 加密成功 暂时不管
//					boolean rename4Encrypt = FileWorker.rename4Encrypt(forMovePath);
					if (intSertDaoResult(takeFileDir, resultForMove, type, exifImage) == true) {	
						return true;
					}else {
						//解密移动
						fileRollback(resultForMove,resultForHead, takeFileDir);
						return false;
					}
				}else {
					//解密移动
					fileRollback(resultForMove,null, takeFileDir);
					return false;
				}
			}else {
//				fileRollback(null,null, takeFileDir);
				
			}
		}
		return false;
	}
		
	/**
	 * @param path 图片原始路径
	 * @param rename 加密后名字
	 * @return 成功与否
	 */
	public static boolean intSertDaoResult(String path, String rename, String type, int exif) {
		if (path == null || rename == null) {
			return false;
		}
		MultiMediaEntity entityForEncrypt = new MultiMediaEntity();
		entityForEncrypt.setType(DaoConstant.MEDIA_TYPE_PIC);
		String[] tmp = path.split("/");		
		entityForEncrypt.setOriginFilename(tmp[tmp.length - 1]);
		entityForEncrypt.setSecureFilename(rename);
		entityForEncrypt.setOriginPath(path);
		entityForEncrypt.setDirection(exif);
		entityForEncrypt.setState(DaoConstant.MEDIA_STATE_DONE);
		entityForEncrypt.setExtType(type);
		entityForEncrypt.setCreateTime(System.currentTimeMillis()) ;
		long idForEnity = -1;
		try {
			idForEnity = MultiMediaDao.getInstance().insertWhithoutClose(entityForEncrypt);  // TODO 这个地方没有关DB，目前的逻辑不需要关。如果以后增加其他逻辑，需要注意
		} catch (Exception e) {
			return false;
		}
		return idForEnity > 0;
	}
	
	
	/**
	 * @param codeName 加密后名字
	 * @param head	解密头
	 * @param orangePath 原始路径
	 * @return
	 */
	public static boolean fileRollback(String codeName, byte[] head, String orangePath) {
//		log.info("improt image Start reBack");
		if (head != null) {
			// 解密并移动
			boolean retForRecover = FileWorker.recoverFile(codeName, head, DaoConstant.MEDIA_TYPE_PIC);
			String retForExport = FileWorker.exportFile(codeName, orangePath, DaoConstant.MEDIA_TYPE_PIC);
			if (retForExport !=null && retForRecover == true) {
				return true;
			} else {
				return false;
			}
		} else {
			// 仅移动
			String retForExport = FileWorker.exportFile(codeName, orangePath, DaoConstant.MEDIA_TYPE_PIC);
			if (retForExport != null) {
				return true;
			} else {
				return false;
			}
		}
	}
	
	public static int deleteImgFromMediaStore(long imgId) {
		ContentResolver mResolver = MainApplication.getContext().getContentResolver();
		
		Uri uri = ContentUris.withAppendedId(Images.Media.EXTERNAL_CONTENT_URI, imgId);
		return mResolver.delete(uri, null, null);

	}
}
