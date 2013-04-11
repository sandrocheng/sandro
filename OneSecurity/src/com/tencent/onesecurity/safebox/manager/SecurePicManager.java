/**
 * FileName: SecurePicManager.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-31 下午12:00:43
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-31 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.manager;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import android.content.Intent;
import android.net.Uri;
import android.os.Environment;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.service.ImportFileService;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
import com.tencent.onesecurity.safebox.util.FileWorker;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.util.FileUtil;

/**
 * @ClassName: SecurePicManager
 * @Description:私密空间图片管理
 * @author: Matrix
 * @date: 2012-10-31 下午12:00:43
 * 
 */
public class SecurePicManager{
	
	private final String TAG = "SecurePicManager"	;

	private int mRecoverySuccessCounts = 0;
	private int mDeleteSuccessCounts = 0;
	
	private int mRecoveryFailedCounts = 0 ;
	private int mDeleteFailedCounts = 0;
	
	private boolean isCancel = false;

	// 加密文件的全路径
	public static final String securePath = Environment.getExternalStorageDirectory().getPath() + File.separator
			+ DaoConstant.SECURE_BASE_PATH + File.separator + DaoConstant.SECURE_PIC_PATH + File.separator;
	
	//private List<String> mPathList = new ArrayList<String>() ;
	// 12.24 优化
	//private ArrayList<AblumnPicEntity> restoreQueue = new ArrayList<AblumnPicEntity>();
	// 12.24 优化
	//public boolean isOnQueue = false;
	
	public static boolean isMediaScanStart = false ;
	
	private static class ManagerHolder {
		private static SecurePicManager picManager = new SecurePicManager();
	}

	public static SecurePicManager getInstance() {
		return ManagerHolder.picManager;
	}

	public static void freeInstance() {
		if (ManagerHolder.picManager != null) {
			ManagerHolder.picManager = null;
		}
	}

	public SecurePicManager() {
	}
	/**
	 * 批量删除私密空间内图片
	 * 
	 * @return
	 */
	public void batchRemoveSecurePics(long[] imageIds) {
		AblumnPicEntity entity = null;
		//rabbiy add 由于点cancel的时候return所以没有清零
		mDeleteSuccessCounts = 0;
		mDeleteFailedCounts = 0 ;
		if (imageIds == null) {
			return;
		}
		for (long id : imageIds) {
			try {
				if (isCancel) {
					break;
				}
				entity = MultiMediaDao.getInstance().getAblumnPicEntity(DaoConstant.MEDIA_TYPE_PIC, id);
				String secureFileName = entity.getImgSecureName();
				String secureFilePath = FileWorker.getSecureFilePathByName(secureFileName, DaoConstant.MEDIA_TYPE_PIC);
				MultiMediaDao.getInstance().deleteById(entity.getImgId()); // DB先执行，在删除本地文件
				FileUtil.deleteFile(secureFilePath);
				if (mPicsListener != null) {
					mPicsListener.onHandleDeletePics(++mDeleteSuccessCounts);
				}
				// add by joy 删除缩略图
				FileWorker.deleteThumb(secureFileName);
			} catch (SdCardNotExistException e) {
				if (imageIds != null) {
					mDeleteFailedCounts = imageIds.length - mDeleteSuccessCounts ;
				}
				break ; // 直接跳转页面
			}catch(Exception e){
				com.tencent.onesecurity.util.Log.w(TAG, "batchRemoveSecurePics  Exception") ; 
				if(imageIds != null){
					mDeleteFailedCounts = imageIds.length - mDeleteSuccessCounts ;
				}
				break ;
			}
		}
		if (mPicsListener != null) {
			mPicsListener.onFinishedDeletePics(mDeleteSuccessCounts,mDeleteFailedCounts,isCancel);
		}
		isCancel = false ;
		mDeleteSuccessCounts = 0;
		mDeleteFailedCounts = 0 ;
	}
	/**
	 * 批量导出
	 * 
	 * 导出后刷新媒体库
	 * 
	 * @param picsID
	 */
	public void batchRecoverySecurePics(long[] picsID) {
		
		//rabbiy fix 9595910
		mRecoverySuccessCounts = 0;
		mRecoveryFailedCounts = 0 ;
		AblumnPicEntity entity = null;
		if (picsID == null) {
			return;
		}
		for (long id : picsID) {
			if(isCancel){
				break ;
			}
			try {
				entity = MultiMediaDao.getInstance().getAblumnPicEntity( DaoConstant.MEDIA_TYPE_PIC, id);
				String originPath = entity.getImgAbsPath();
				String secureFileName = entity.getImgSecureName();
				String secureFilePath = FileWorker.getSecureFilePathByName(secureFileName, DaoConstant.MEDIA_TYPE_PIC);
				
				if (!EncryptWorker.decryptFile(secureFilePath)) { // 失败
					com.tencent.onesecurity.util.Log.w(TAG, "decryptFile  failed") ;
					mRecoveryFailedCounts ++ ;
					continue;
				}
				String originalAbsPath = FileWorker.exportFile(secureFileName, originPath, DaoConstant.MEDIA_TYPE_PIC) ;
				if (originalAbsPath != null) {
					entity.setImgAbsPath(originalAbsPath) ;
				} else {
					com.tencent.onesecurity.util.Log.w(TAG, "exportFile  failed");
					EncryptWorker.encryptFile(secureFilePath);
					mRecoveryFailedCounts++;
					continue;
				}
				MultiMediaDao.getInstance().deleteById(entity.getImgId());
				if (mPicsListener != null) {
					mPicsListener.onHandleRecoverPics(++mRecoverySuccessCounts,originPath);
				}
				// 成功
				//mPathList.add(originalAbsPath) ;
				
				// 12.24 优化
				//restoreQueue.add(entity) ;
				// add by joy 删除缩略图
				FileWorker.deleteThumb(secureFileName);
				
			} catch (SdCardNotExistException e) {
				if (picsID != null) {
					mRecoveryFailedCounts = picsID.length - mRecoverySuccessCounts;
				}
				break ; // SDCardListener会接收到 直接跳转页面
			} catch (Exception e) {
				com.tencent.onesecurity.util.Log.w(TAG, "batchRecoverySecurePics  Exception");
				if (entity != null) {
					FileWorker
							.importFile(entity.getImgAbsPath(), entity.getImgSecureName(), DaoConstant.MEDIA_TYPE_PIC);
					EncryptWorker.encryptFile(FileWorker.getSecureFilePathByName(entity.getImgSecureName(),
							DaoConstant.MEDIA_TYPE_PIC));
				}
				if (picsID != null) {
					mRecoveryFailedCounts = picsID.length - mRecoverySuccessCounts;
				}
				break;
			}
		}
		sendScanBroadst() ;
		if (mPicsListener != null) {
			mPicsListener.onFinishedRecoveryPics(mRecoverySuccessCounts, mRecoveryFailedCounts, isCancel);
		}
		isCancel = false;
		mRecoverySuccessCounts = 0;
		mRecoveryFailedCounts = 0;
		// 刷新系统数据库
//		if (!mPathList.isEmpty()) {
//			MediaScanner mediaScanner = new MediaScanner(MainApplication.getContext());
//			mediaScanner.scanFile(getOriginPath(), null);
//		}
		// 12.24 优化
		//updateMeidaStore() ;
	

	}
	/**
	 * 发送扫描广播
	 */
	private void sendScanBroadst() {
		isMediaScanStart = true ;
		Uri uri = Uri.parse("file://" + Environment.getExternalStorageDirectory());
		Intent intent = new Intent(Intent.ACTION_MEDIA_MOUNTED, uri);
		intent.setFlags(ImportFileService.FLAG_SDCARD_SCAN);
		MainApplication.getContext().sendBroadcast(intent);
	}
//	private void updateMeidaStore() {
//		if (restoreQueue.isEmpty() == false) {
//			isOnQueue = true;
//			for (AblumnPicEntity restoreTake : restoreQueue) {
//				restore4MediaStore(restoreTake);
//			}
//			restoreQueue.clear();
//			isOnQueue = false;
//		}
//	}
	/**
	 * 获取绝对路径数组
	 * 
	 * @return
	 */
	// private String[] getOriginPath() {
	// int size = mPathList.size();
	// String[] originPath = new String[size];
	// for (int i = 0; i < size; i++) {
	// originPath[i] = mPathList.get(i);
	// }
	// mPathList.clear();
	// return originPath;
	// }
	/**
	 * 导出单个图片
	 * 
	 * @param selectList
	 */
	public void recoverySecurePic(AblumnPicEntity mediaEntity) {
		// 源文件路径
		String originPath = mediaEntity.getImgAbsPath();
		String secureFileName = mediaEntity.getImgSecureName();
		String secureFilePath = FileWorker.getSecureFilePathByName(secureFileName, DaoConstant.MEDIA_TYPE_PIC);
		if (!EncryptWorker.decryptFile(secureFilePath)) { // 失败
			return;
		}
		String originalAbsPath = FileWorker.exportFile(secureFileName, originPath, DaoConstant.MEDIA_TYPE_PIC) ;

		if (originalAbsPath != null) {
			mediaEntity.setImgAbsPath(originalAbsPath) ;
		} else {
			EncryptWorker.encryptFile(secureFilePath);
			return;
		}
		try {
			MultiMediaDao.getInstance().deleteById(mediaEntity.getImgId());
			//  在查看大图界面快速快速回复，有问题
//			MediaScanner mediaScanner = new MediaScanner(MainApplication.getContext());
//			mediaScanner.scanFile(originPath, null);
			Intent intent = new Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE,Uri.fromFile(new File(originPath))) ;
			MainApplication.getContext().sendBroadcast(intent) ;
//			restore4MediaStore(mediaEntity) ; // 12.14 优化
			
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
		} catch (Exception e) {
			if (mediaEntity != null) {
				FileWorker.importFile(mediaEntity.getImgAbsPath(), mediaEntity.getImgSecureName(),
						DaoConstant.MEDIA_TYPE_PIC);
				EncryptWorker.encryptFile(FileWorker.getSecureFilePathByName(mediaEntity.getImgSecureName(),
						DaoConstant.MEDIA_TYPE_PIC));
			}
			com.tencent.onesecurity.util.Log.w(TAG, "recoverySecurePic  Exception") ;

		}
		// add by joy 删除缩略图
		FileWorker.deleteThumb(secureFileName);
	}

	/**
	 * 删除单张图片
	 * 
	 * @param id
	 */
	public void removePicByID(long id, String secureAbsName) {
		try {
			MultiMediaDao.getInstance().deleteById(id);
			FileUtil.deleteFile(secureAbsName);
			
			// add by joy 删除缩略图
			if (secureAbsName != null && secureAbsName.length() > 0) {
				FileWorker.deleteThumb(secureAbsName.substring(secureAbsName.lastIndexOf("/") + 1));
			}
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
		}catch(Exception e){
			//ToastUtil.ShowSimpleTextLongToast(MainApplication.getContext().getString(R.string.vault_photos_sdcard_isfull)) ;
			com.tencent.onesecurity.util.Log.w(TAG, "removePicByID  Exception") ;

		}
	}

	/**
	 * 取DB中的图片
	 * 
	 * @return
	 * @throws SdCardNotExistException 
	 */
	public List<AblumnPicEntity> getPicsFromDB() throws SdCardNotExistException {
		List<AblumnPicEntity> imageList = new ArrayList<AblumnPicEntity>();
		imageList = MultiMediaDao.getInstance().getAblumnPicEntityList(DaoConstant.MEDIA_TYPE_PIC);
		return imageList;
	}

	public void setCancel(boolean isCancel) {
		this.isCancel = isCancel;
	}

	
	/**
	 * @Methods: restore4MediaStore
	 * @Description:TODO
	 * @author: rabbiy
	 * @date: 2012-12-12 上午10:05:13
	 * @param restoreEnity
	 */
	// public void restore4MediaStore(AblumnPicEntity restoreEnity){
	// ContentValues newValues = new ContentValues(6);
	//		
	// String displayName = restoreEnity.getDisplayName();
	// int pointIndex = displayName.lastIndexOf(new String("."));
	// String title = displayName.substring(0, pointIndex);
	//        
	// newValues.put(MediaStore.Images.Media.TITLE,
	// title);
	// newValues.put(MediaStore.Images.Media.DISPLAY_NAME,
	// displayName);
	// newValues.put(MediaStore.Images.Media.DATA,
	// restoreEnity.getImgAbsPath());
	// newValues.put(MediaStore.Images.Media.DATE_MODIFIED,
	// System.currentTimeMillis() / 1000);
	// newValues.put(MediaStore.Images.Media.SIZE, restoreEnity.getImgSize());
	// newValues.put(MediaStore.Images.Media.MIME_TYPE,restoreEnity.getImgType());
	// ContentResolver mResolver =
	// MainApplication.getContext().getContentResolver();
	// try {
	// mResolver.insert(
	// MediaStore.Images.Media.EXTERNAL_CONTENT_URI, newValues);
	// } catch (Exception e) {
	// // 拔掉SD卡 crash
	// com.tencent.onesecurity.util.Log.w(TAG, "update meida store error") ;
	// }
	// }
	
	

	/**
	 * 
	* @ClassName: SecurePicsListener
	* @Description:导出删除图片监听器 
	* @author: lee
	* @date: 2012-12-4 下午05:12:34
	*
	 */
	public interface SecurePicsListener {
		/**
		 * 处理导出
		 * 
		 * @param count
		 * @param path
		 */
		void onHandleRecoverPics(int count, String path);

		/**
		 * 处理删除
		 * 
		 * @param count
		 */
		void onHandleDeletePics(int count);

		/**
		 * 删除结束
		 */
		void onFinishedDeletePics(int succCount, int failedCount, boolean isCancel);

		/**
		 * 导出结束
		 * 
		 * @param succCount
		 * @param failedCount
		 */
		void onFinishedRecoveryPics(int succCount, int failedCount, boolean isCancel);
	}
	private SecurePicsListener mPicsListener;

	public void registSecurePicListener(SecurePicsListener mPicsListener) {
		this.mPicsListener = mPicsListener;
	}

	public void unRegistSecurePicListener() {
		if (this.mPicsListener != null) {
			this.mPicsListener = null;
		}
	}
}
