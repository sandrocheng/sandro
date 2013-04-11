/**
 * FileName: FileEncryptTask.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-28 下午5:44:19
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-28 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.service;

import android.graphics.Bitmap;
import android.provider.MediaStore.Images.Thumbnails;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.model.ImageForQueueEntity;
import com.tencent.onesecurity.safebox.model.MultiMediaEntity;
import com.tencent.onesecurity.safebox.service.FileHandleThreadPool.TaskThreadObserver;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
import com.tencent.onesecurity.safebox.util.FileWorker;

/**
 * @ClassName: FileEncryptTask
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-11-28 下午5:44:19
 * 
 */
public class FileEncryptTask implements Runnable {

	private ImageForQueueEntity imgEntity;

	public FileEncryptTask(ImageForQueueEntity imgEntity) {
		this.imgEntity = imgEntity;
	}

	private TaskThreadObserver mTaskThreadObserver = new TaskThreadObserver() {

		@Override
		public void onCurrentTaskSuccess() {
			// 成功需要通知主线程计数
			// 并且要通知UI进度条变更
		}

		@Override
		public void onCurrentTaskFailed() {
			// 失败了也需要通知主线程计数

		}
	};

	@Override
	public void run() {
		executeEncrypt();
	}

	public void executeEncrypt() {
		// 优先去获取缩略图~如果没有则算失败
		if (imageNoneThumb(imgEntity) == false) {
			return;
		}
		String resultForMove = FileWorker.importFile(imgEntity.getImagePath(), DaoConstant.MEDIA_TYPE_PIC);
		if (resultForMove != null) {
			// 移动成功开始加密
			String forMovePath = FileWorker.getSecureFilePathByName(resultForMove, DaoConstant.MEDIA_TYPE_PIC);
			byte[] resultForHead = EncryptWorker.encryptFile(forMovePath);
			if (resultForHead != null) {
				// 加密成功
				// 开始写db
				if (intSertDaoResult(imgEntity, resultForMove) == true) {
					// 成功了！
					if (mTaskThreadObserver != null) {
						mTaskThreadObserver.onCurrentTaskSuccess();
					}
					return;
				} else {
					// 加密失败了!
					// 开始回滚
					if (reBackSqueue(resultForMove, resultForHead, imgEntity.getImagePath()) == true) {
						if (mTaskThreadObserver != null) {
							mTaskThreadObserver.onCurrentTaskFailed();
						}
						return;
					}
				}
			} else {
				// 加密失败
				// 开始回滚
				if (reBackSqueue(resultForMove, resultForHead, imgEntity.getImagePath()) == true) {
					if (mTaskThreadObserver != null) {
						mTaskThreadObserver.onCurrentTaskFailed();
					}
					return;
				}
			}
		} else {
			// 移动失败
			if (reBackSqueue(resultForMove, null, imgEntity.getImagePath()) == true) {
				if (mTaskThreadObserver != null) {
					mTaskThreadObserver.onCurrentTaskFailed();
				}
				return;
			}
		}
	}

	/**
	 * 回滚文件时用
	 * 
	 * @param codeName
	 *            加密后文件名
	 * @param head
	 *            加密前头 为空时仅仅移动
	 * @param orangePath
	 *            文件原绝对路径
	 * @return
	 */
	public boolean reBackSqueue(String codeName, byte[] head, String orangePath) {
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

	/**
	 * 插入Dao
	 */
	public boolean intSertDaoResult(ImageForQueueEntity data, String rename) {

		MultiMediaEntity entityForEncrypt = new MultiMediaEntity();
		entityForEncrypt.setType(DaoConstant.MEDIA_TYPE_PIC);
		entityForEncrypt.setOriginFilename(data.getImageName());
		entityForEncrypt.setSecureFilename(rename);
		entityForEncrypt.setCreateTime(data.getCreateTime());
		entityForEncrypt.setOriginPath(data.getImagePath());
		entityForEncrypt.setThumb(data.getImageThumb());
		entityForEncrypt.setState(DaoConstant.MEDIA_STATE_DONE);
		long idForEnity = -1;
		try {
			idForEnity = MultiMediaDao.getInstance().insert(entityForEncrypt);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return idForEnity > 0;
		// return true;
	}

	/**
	 * 取得缩略图
	 * 
	 * @param model对象
	 * @return 拥有缩略图的model对象
	 */
	public boolean imageNoneThumb(ImageForQueueEntity data) {
		// Bitmap source = BitmapFactory.decodeFile(data.getImagePath());
		Bitmap source = null;
		int count = 3;
		do {
			// Thumbnails.MINI_KIND ,类型要和 AsyncImageLoader.loadImageByImgI一致
			source = Thumbnails.getThumbnail(MainApplication.getContext().getContentResolver(), data.getId(), Thumbnails.MINI_KIND, null);
			if (source == null) {
				// Thread thread = Thread.currentThread();
				try {
					Thread.sleep((long) 300);
				} catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				count--;
			} else {
				break;
			}
		} while (count > 0);
		if (source == null) {
			return false;
		} else {
			data.setImageThumb(source);
			if (source != null) {
				source.recycle();
			}
			return true;
		}
	}
}
