package com.tencent.onesecurity.safebox.manager;

import java.io.IOException;
import java.util.LinkedList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Images.Thumbnails;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.model.ImageForQueueEntity;
import com.tencent.onesecurity.safebox.model.MultiMediaEntity;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
import com.tencent.onesecurity.safebox.util.FileWorker;
import com.tencent.onesecurity.safebox.util.MemoryStatus;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * @ClassName: AblumGridActivity
 * @Description:维护加密队列单例
 * @author: rabbiy
 * @date: 2012-10-30 上午18:09:03
 * 
 */
public class SecureQueueManager {
	
	public final static int ERROR_NULL = 0;
	public final static int ERROR_COMMON = -1;
	public final static int ERROR_THUMBNAIL = -2;
	public final static int ERROR_MOVE = -3;
	public final static int ERROR_ENCRYPT = -4;
	public final static int ERROR_DB_INSERT = -5;
	public final static int ERROR_STOP = -6; //  点击cancel
	public final static int ERROR_SDCARD_NO_SPACE = -7; //  点击cancel
	
	private static SecureQueueManager mInstance = null;
	public SecureQueue squeue;
	public int nowCount = 0; // 加密进行时索引
	public int falseCount = 0; // 错误数
	public int flageState = 0; // 状态位
	public int squeueCount = 0; // 总数
	private LinkedList<ImageForQueueEntity> imageForQueueData; // 维护队列
	private int sucCount = 0; // 错误列表
	private Context mContext = null; // 上下文
	
	public boolean killedCamera = false;
	private boolean isNewCamera = false;
	
	public boolean isNewCamera() {
		return isNewCamera;
	}

	public void setNewCamera(boolean isNewCamera) {
		this.isNewCamera = isNewCamera;
	}

	public boolean isKilledCamera() {
		return killedCamera;
	}

	public void setKilledCamera(boolean killedCamera) {
		this.killedCamera = killedCamera;
	}
	
	private AtomicBoolean isOnImport = new AtomicBoolean(false);
	
	private BlockingQueue<Long> deleteQueue = new ArrayBlockingQueue<Long>(100);

	public boolean isDeleteQueueEmpty() {
		return deleteQueue.isEmpty();
	}

	public int getNowCount() {
		return nowCount;
	}

	public void setNowCount(int nowCount) {
		this.nowCount = nowCount;
	}

	public int getFlageState() {
		return flageState;
	}

	public void setFlageState(int flageState) {
		this.flageState = flageState;
	}

	public Context getmContext() {
		return mContext;
	}

	public void setmContext(Context mContext) {
		this.mContext = mContext;
	}

	public int getFalseCount() {
		return falseCount;
	}

	public void setFalseCount(int falseCount) {
		this.falseCount = falseCount;
	}

	public int getSqueueCount() {
		return squeueCount;
	}

	public void setSqueueCount(int squeueCount) {
		this.squeueCount = squeueCount;
	}

	public LinkedList<ImageForQueueEntity> getImageForQueueData() {
		return imageForQueueData;
	}

	public void setImageForQueueData(LinkedList<ImageForQueueEntity> imageForQueueData) {
		this.imageForQueueData = imageForQueueData;
	}

	public static SecureQueueManager getInstance() {
		if (mInstance == null) {
			synchronized (SecureQueueManager.class) {
				if (mInstance == null) {
					mInstance = new SecureQueueManager();
				}
			}
		}
		return mInstance;
	}

	/**
	 * @param data
	 *            传入队列用于后续处理
	 */
	public void checkQueue() {
		squeueCount = imageForQueueData.size();
		squeue = new SecureQueue();
		squeue.importQueue(imageForQueueData);
	}

//	final Logger log = Logger.getLogger(SecureQueueManager.class);

	
	// == JOY OPZ ==
	/**
	 * 恢复损坏的图片
	 */
	public void recoverBroken() {
//		String dirName = Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_RECOVER_PATH;
//		File recoverDir = new File(dirName);
//		
//		File tmpDir = new File(Environment.getExternalStorageDirectory().getPath() + File.separator + DaoConstant.SECURE_BASE_PATH + File.separator + DaoConstant.SECURE_PIC_TMP);
//		if (tmpDir.exists()) {
//			File[] fileList = tmpDir.listFiles();
//			for (int i=0;i<fileList.length;i++) {
//				
//				if (!recoverDir.exists()) {
//					recoverDir.mkdirs();
//				}
//				
//				File file = fileList[i];
//				String rename = file.getName();
//				
//				// 如果以.b结尾，则是未加密的图片,先加密
////				if (rename.endsWith(".b")) {
////					String absName = FileWorker.getSecureFile4TmpPathByName(rename, DaoConstant.MEDIA_TYPE_PIC);
////					EncryptWorker.encryptFile(absName);
////					FileWorker.rename4Encrypt(absName);
////				}
//				
//				try {
//					if (false == MultiMediaDao.getInstance().isExistBySecureNameWhithoutClose(rename)) {
//						String oName = DaoConstant.SECURE_RECOVER_PATH + System.currentTimeMillis() + i;
//						ImageForQueueEntity entity = new ImageForQueueEntity();
//						entity.setImageName(oName);
//						entity.setImageType(String.valueOf(DaoConstant.MEDIA_TYPE_PIC));
//						entity.setImagePath(dirName + File.separator + oName);
//						
//						intSertDaoResult(entity, rename);
//					}
//					
//				} catch (SdCardNotExistException e) {
//					break;
//				}
////				if (rename.endsWith(".b")) {
////					rename += "in";
////				}
//				FileWorker.moveFromTmp(rename);
//			}
//			
//			try {
//				MultiMediaDao.getInstance().closeDB();
//			} catch (SdCardNotExistException e) {
//			}
//		}
	}
		
	/**
	 * 开始执行队列操作 flageState状态控制，用于判断是否执行
	 */
	public int startSecureQueue() {
		if(!MemoryStatus.isAvaiableSpace()){
			return ERROR_SDCARD_NO_SPACE ;
		}
		if (flageState == 0) {
			ImageForQueueEntity firstenity = squeue.getFrist();
			if (firstenity == null) {
				// 队列已经空了
				return ERROR_COMMON;
			}
			nowCount++;
			
			// == JOY OPZ delete start ==
//			// 优先去获取缩略图~如果没有则算失败
//			if (imageNoneThumb(firstenity) == false) {
//				falseCount++;
//				log.info("falseCount++ = " + falseCount);
//				squeue.removeFirst();
//				return ERROR_THUMBNAIL;
//			}
			// == JOY OPZ delete end ==
			if(firstenity.getImageType().equals("image/jpeg")){
				ExifInterface exifInterface;
				try {
					exifInterface = new ExifInterface(firstenity.getImagePath());
					firstenity.setOritation(exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1));
					Log.i("通知", "exif = " + exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1));
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}else{
				firstenity.setOritation(0);
			}
			
			String resultForMove = FileWorker.importFile(firstenity.getImagePath(), DaoConstant.MEDIA_TYPE_PIC);
			if (resultForMove != null) {
				// 移动成功开始加密
				String forMovePath = FileWorker.getSecureFilePathByName(resultForMove, DaoConstant.MEDIA_TYPE_PIC);
				byte[] resultForHead = EncryptWorker.encryptFile(forMovePath);
				if (resultForHead != null) {
					// 加密成功 暂时不管
//					boolean rename4Encrypt = FileWorker.rename4Encrypt(forMovePath);
					// 开始写db
					if (intSertDaoResult(firstenity, resultForMove) == true) {
						// 彻底成功
						setSucCount(getSucCount() + 1);
//						log.info("setSucCount++ = " + getSucCount());
						
						//加入队列
						try {
							deleteQueue.put(firstenity.getId());
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
						//暂时不管
//						FileWorker.moveFromTmp(resultForMove);
						squeue.removeFirst();
						return ERROR_NULL;
					} else {
						falseCount++;
//						log.info("falseCount++ = " + falseCount);
						// 开始回滚
						if (fileRollback(resultForMove, resultForHead, firstenity.getImagePath()) == true) {
							squeue.removeFirst();
							return ERROR_DB_INSERT;
						} else {
							squeue.removeFirst();
							return ERROR_DB_INSERT;
						}
					}
				} else {
					// 加密失败
					falseCount++;
//					log.info("falseCount++ = " + falseCount);
					// 开始回滚
					if (fileRollback(resultForMove, resultForHead, firstenity.getImagePath()) == true) {
						squeue.removeFirst();
						return ERROR_ENCRYPT;
					} else {
						squeue.removeFirst();
						return ERROR_ENCRYPT;
					}
				}
			} else {
				// 移动失败
				falseCount++;
//				log.info("falseCount++ = " + falseCount);
				if (fileRollback(resultForMove, null, firstenity.getImagePath()) == true) {
					squeue.removeFirst();
					return ERROR_MOVE;
				} else {
					squeue.removeFirst();
					return ERROR_MOVE;
				}
			}
		} else {
			// 暂停时操作
			return ERROR_STOP;
		}
	}

	/**
	 * 停止执行队列操作
	 */
	public void stopSecureQueue() {
		flageState = 1;
		// 停止时操作
		falseCount = 0;
		flageState = 0;
		squeueCount = 0;
		if (squeue != null) {
			squeue.clear();
		}
		setSucCount(0);
		nowCount = 0;

	}

	/**
	 * 暂停执行队列操作
	 */
	public void dismissSecureQueue() {
		flageState = 1;
		// 暂停时处理
	}

	/**
	 * 重启队列
	 */
	public void restartSecureQueue() {
		if (squeue.getFrist() == null) {
			// 队列为空处理
		} else {
			startSecureQueue();
		}
	}

	/**
	 * 此处用于维护队列
	 */
	public class SecureQueue {
		LinkedList<ImageForQueueEntity> linkedList;

		public void importQueue(LinkedList<ImageForQueueEntity> enityList) {
			linkedList = enityList;
		}

		public void put(ImageForQueueEntity entity) {
			linkedList.addLast(entity);
		}

		public boolean removeFirst() {
			if (!linkedList.isEmpty()) {
				linkedList.removeFirst();
				return true;
			} else {

				return false;
			}
		}

		public ImageForQueueEntity getFrist() {
			if (!linkedList.isEmpty()) {
				return linkedList.getFirst();
			} else {
				return null;
			}
		}

		public int size() {
			return linkedList.size();
		}

		public void clear() {
			linkedList.clear();
		}
	}

	/**
	 * 插入Dao
	 */
	public boolean intSertDaoResult(ImageForQueueEntity data, String rename) {
//		log.info("improt image Start Insert db");
		MultiMediaEntity entityForEncrypt = new MultiMediaEntity();
		entityForEncrypt.setType(DaoConstant.MEDIA_TYPE_PIC);
		entityForEncrypt.setOriginFilename(data.getImageName());
		entityForEncrypt.setSecureFilename(rename);
		entityForEncrypt.setCreateTime(data.getCreateTime());
		entityForEncrypt.setOriginPath(data.getImagePath());
//		entityForEncrypt.setThumb(data.getImageThumb()); // == JOY OPZ ==
		entityForEncrypt.setState(DaoConstant.MEDIA_STATE_DONE);
		entityForEncrypt.setExtType(data.getImageType());
		entityForEncrypt.setSize(data.getSize()); // 12.14 优化 
		entityForEncrypt.setDirection(data.getOritation());
		long idForEnity = -1;
		try {
			idForEnity = MultiMediaDao.getInstance().insertWhithoutClose(entityForEncrypt); // == JOY OPZ ==
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return idForEnity > 0;
	}

	public boolean updateDB(MultiMediaEntity enityForUpdate) {
		try {
			MultiMediaDao.getInstance().update(enityForUpdate);
		} catch (SdCardNotExistException e) {
			// TODO 更新DB失败
			// 失败++
			e.printStackTrace();
			falseCount++;
			return false;
		}
		return true;
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
			source = Thumbnails.getThumbnail(mContext.getContentResolver(), data.getId(), Thumbnails.MINI_KIND, null);
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

			// try{
			// source = Thumbnails.getThumbnail(mContext.getContentResolver(),
			// data.getId(), Thumbnails.MICRO_KIND, null);
			// break;
			// }catch(Exception e){
			// Log.i("ERROR", e.getMessage());
			// // Thread thread = Thread.currentThread();
			// try {
			// Thread.sleep((long)300);
			// } catch (InterruptedException e1) {
			// // TODO Auto-generated catch block
			// e1.printStackTrace();
			// }
			// count--;
			// continue;
			// }
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
	public boolean fileRollback(String codeName, byte[] head, String orangePath) {
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

	public int getSucCount() {
		return sucCount;
	}

	public void setSucCount(int sucCount) {
		this.sucCount = sucCount;
	}

	/**
	 * 直接从MediaStore中删除图片记录
	 * @param imgId
	 */
	private void deleteImgFromMediaStore(long imgId) {
		ContentResolver mResolver = MainApplication.getContext().getContentResolver();
		final Uri STORAGE_URI = Images.Media.EXTERNAL_CONTENT_URI;
		Uri uri = ContentUris.withAppendedId(STORAGE_URI, imgId);
		mResolver.delete(uri, null, null);

	}

	/**
	 * @TODO: TODO 删除线程
	 * 
	 */
	private Runnable deleteRun = new Runnable() {
		
		@Override
		public void run() {
			//Rabbiy降低删除线程优先级，因为导入过程是长时间运行的如果不调节，CPU则将一直占用。这会影响导入效率
			//Process.setThreadPriority(Process.THREAD_PRIORITY_BACKGROUND + Process.THREAD_PRIORITY_LESS_FAVORABLE);
			// TODO Auto-generated method stub
			while(true){
				if(deleteQueue.isEmpty() && (isOnImport.get() == false)){
					break;
				}
				try {
					long deleteID =  deleteQueue.take().longValue();
					deleteImgFromMediaStore(deleteID);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}catch (UnsupportedOperationException e) {
					// 导入过程拔掉SD卡捕捉异常
				}
			}
		}
	};
	

	public void startImport() {
		long start = System.currentTimeMillis();

		// SecureQueueManager.getInstance().checkQueue();

		boolean isCancel = false ;
		if (SecureQueueManager.getInstance().squeue != null) {
			int runSize = SecureQueueManager.getInstance().squeue.size();
			isOnImport.set(true);
			new Thread(deleteRun).start();
			for (int i = 0; i < runSize; i++) {
				int errorCode = SecureQueueManager.getInstance().startSecureQueue();
				if (errorCode == SecureQueueManager.ERROR_NULL) { // 成功
					if (mImportPicListener != null) {
						mImportPicListener.onSuccessOperatePics(sucCount);
					}

				} else if (errorCode == SecureQueueManager.ERROR_STOP) { // 点停止跳出循环
					isCancel = true ;
					break;
				}else if(errorCode == SecureQueueManager.ERROR_SDCARD_NO_SPACE){
					falseCount = squeueCount - sucCount ;
					// 去掉导入过程中sd卡不足的提示 del by joy 2013.02.27
//					ToastUtil.ShowSimpleTextLongToast(MainApplication.getContext().getString(R.string.vault_photos_sdcard_isfull)) ;
					break ;
				}
			}
			
			isOnImport.set(false);

			// == JOY OPZ ==
			try {
				MultiMediaDao.getInstance().closeDB();
			} catch (SdCardNotExistException e) {
			}
		}
		if (mImportPicListener != null) {
			mImportPicListener.onFinishedOperatePics(sucCount, falseCount,isCancel);
		}
		
		long end = System.currentTimeMillis();
		
		android.util.Log.i("EN_TEST", "Total:" + (end-start));
	}
	private ImportPicListener mImportPicListener;

	public void registImportPicListener(ImportPicListener listener) {
		this.mImportPicListener = listener;
	}

	public void unregistImportPicListener() {
		if (this.mImportPicListener != null) {
			this.mImportPicListener = null;
		}
	}
	public interface ImportPicListener{
		/**
		 * 操作成功
		 */
		void onSuccessOperatePics(int count) ;
		/**
		 * 操作结束
		 */
		void onFinishedOperatePics(int sucCount,int faildCount,boolean isCancel) ;
	}
}
// // 移动完事
// resultEntity.setSecureFilename(resultForMove);
// resultEntity.setState(DaoConstant.MEDIA_STATE_ENCRYPTING);

// MultiMediaEntity resultEntity = intSertDaoResult(Firstenity);
// if (resultEntity != null) {
// String resultForMove = FileWorker.importFile(resultEntity.getOriginPath(),
// DaoConstant.MEDIA_TYPE_PIC);
// if (resultForMove != null) {
// // 移动完事
// resultEntity.setSecureFilename(resultForMove);
// resultEntity.setState(DaoConstant.MEDIA_STATE_ENCRYPTING);
// if (updateDB(resultEntity) == false) {
// //完事后写DB失败处理
// squeue.removeFirst();
// return;
// } else {
// byte[] resultForHead = EncryptWorker.encryptFile(
// squeue.getFrist().getImagePath());
// if (resultForHead != null) {
// // 加密成功
// resultEntity.setState(DaoConstant.MEDia);
// resultEntity.setOriginHead(resultForHead);
// if (updateDB(resultEntity) == false) {
// squeue.removeFirst();
// return;
// }else{
// //彻底成功
// sucCountPath.add(resultEntity.getOriginPath());
//
// }
// }else {
//
// }
// }
// }else{
//
// }
// if (resultEntity != null) {
// flageCount++;
// // 开始加密
// byte[] resultForHead = EncryptWorker.encryptFile(
// squeue.getFrist().getImagePath());
// if (resultForHead != null) {
// // 开始移动
// resultEntity.setState(DaoConstant.MEDIA_STATE_MOVING);
// resultEntity.setOriginHead(resultForHead);
// if (updateDB(resultEntity) == false) {
// // 移动前DB状态变更失败
// squeue.removeFirst();
// return;
// }
// String resultForMove = FileWorker.importFile(squeue
// .getFrist().getImagePath(),
// DaoConstant.MEDIA_TYPE_PIC);
// if (resultForMove != null) {
// // 彻底完事
// resultEntity.setSecureFilename(resultForMove);
// resultEntity.setState(DaoConstant.MEDIA_STATE_DONE);
// if (updateDB(resultEntity) == false) {
// // 完事后写DB失败处理
// squeue.removeFirst();
//
// return;
// } else {
// sucCountPath.add(resultEntity.getOriginPath());
// squeue.removeFirst();
// return;
// }
// } else {
// // 移动文件失败失败++
// // resultEntity.setEncryptFlag(DaoConstant.MEDIA_ENCRYPT_FLAG_FAL);
// boolean isDecryptSuccess = EncryptWorker
// .decryptFile(resultEntity.getOriginPath());
// if (!isDecryptSuccess) {
// // 解密失败处理
// squeue.removeFirst();
// return;
// }
// // 加密成功并移动成功
// squeue.removeFirst();
// return;
// }
// } else {
// squeue.removeFirst();
// falseCount++;
// return;
// }
// } else {
// // 插入DB失败
// if (squeue.removeFirst() == true) {
// // 失败了删除队列
// falseCount++;
// return;
// } else {
// // 全部完事
// // 队列清空后续处理
// if(squeue != null){
// squeue.clear();
// }
// return;
// }
// }
