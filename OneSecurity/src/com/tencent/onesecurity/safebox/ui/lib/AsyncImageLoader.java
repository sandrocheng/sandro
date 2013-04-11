/**
 * FileName: sdfdf.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-3 下午2:02:24
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-3 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */

/**
 * @ClassName: AsyncImageLoader
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-11-3 下午2:02:24
 *
 */
package com.tencent.onesecurity.safebox.ui.lib;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.util.EncryptWorker;
import com.tencent.onesecurity.safebox.util.FileWorker;
import com.tencent.onesecurity.util.BitmapUtil;
import com.tencent.onesecurity.util.Log;

public class AsyncImageLoader {

	private LinkedHashMap<Object, Bitmap> imageCacheLinked = null;
	
	private int cacheLenght = 40;

	private Context mContext = null;

	private final int CORE_THREAD_NUM = 0;
	private final int MAX_THREAD_NUM = 5;
	private final int TIMEOUT_TIME = 3;
	private int QUEUE_LEN = 30;

	private ThreadPoolExecutor mThreadPool;

	private ThreadPoolExecutor mThreadPool4thumb;

	private ImageCallback mImageCallback = null;
	
	private Bitmap badBitmap = null;
	
	private Handler reLoadHandler = new Handler(){
		public void handleMessage(Message message) {
			LoadTask task = (LoadTask) message.obj;
			mThreadPool.execute(task);
		}
	};

	public AsyncImageLoader(Context context, ImageCallback imageCallback, Bitmap badBitmap) {
		this.badBitmap = badBitmap;
		
		// tony 动态获取 队列长度 和缓存长度（根据屏幕大小）
		QUEUE_LEN = context.getResources().getInteger(
				R.integer.main_valut_load_image_queue_lenght);
		cacheLenght = context.getResources().getInteger(
				R.integer.main_valut_image_cache_lenght);
		mThreadPool = new ThreadPoolExecutor(CORE_THREAD_NUM, MAX_THREAD_NUM,
				TIMEOUT_TIME, TimeUnit.SECONDS,
				new ArrayBlockingQueue<Runnable>(QUEUE_LEN),
				new ThreadPoolExecutor.DiscardOldestPolicy(){
				public void rejectedExecution(Runnable r, ThreadPoolExecutor e) {
					 if (!e.isShutdown()) {
			                Runnable oldRun = e.getQueue().poll();
			                
			                e.execute(r);
			                
			                if (oldRun instanceof LoadTask) {
			                	LoadTask oldTask = (LoadTask) oldRun;
			                	 if (oldTask.getKeyObje() != null && oldTask.getKeyObje().equals(oldTask.getImageView().getTag())) {
				                		 Bitmap bt = imageCacheLinked.get(oldTask.getKeyObje());
				                		 if (bt == null) {
				                			 Message msg = new Message();
							                	msg.obj = oldTask;
							                	reLoadHandler.sendMessage(msg);
				                		 }
					                }
			                }
			            }
				}
		});

		mThreadPool4thumb = new ThreadPoolExecutor(CORE_THREAD_NUM,
				MAX_THREAD_NUM, TIMEOUT_TIME, TimeUnit.SECONDS,
				new ArrayBlockingQueue<Runnable>(QUEUE_LEN),
				new ThreadPoolExecutor.DiscardOldestPolicy());

		imageCacheLinked = new LinkedHashMap<Object, Bitmap>(20, 2, true) {

			private static final long serialVersionUID = -30595202040555038L;

			@Override
			protected boolean removeEldestEntry(Entry<Object, Bitmap> eldest) {
				return size() > AsyncImageLoader.this.cacheLenght;
			}

		};// new LinkedHashMap<Object, Bitmap>();
		mContext = context;
		this.mImageCallback = imageCallback;
	}

	/**
	 * 加载图片
	 * 
	 * @param imgView
	 * @param imgId
	 * @param type
	 *            图片来源：ImageLoadEnum指定的类型。null为默认从media store加载
	 * @return
	 */
	public Bitmap loadDrawable(final ImageView imgView, final Object keyObje,
			final ImageLoadEnum type) {

		imgView.setTag(keyObje);
		Bitmap bp = getFromCache(keyObje);
		if (bp != null) {
			return bp;
		}
		final Handler handler = new Handler() {
			public void handleMessage(Message message) {
				// 是否已滑出屏
				if (keyObje.equals(imgView.getTag()) && imageCacheLinked.get(keyObje) == null) {
					if (mImageCallback != null) {
						Bitmap bitmap = (Bitmap) message.obj;
						if (bitmap == null) {
							bitmap = badBitmap;
						}
						putToImageCache(keyObje, bitmap);
						mImageCallback.imageLoaded(imgView, bitmap, keyObje);
					}
				}
			}
		};
		
		LoadTask task = new LoadTask(type, keyObje, handler, imgView);
		
		mThreadPool.execute(task);
		return null;
	}
	
	private class LoadTask implements Runnable {
		private AsyncImageLoader.ImageLoadEnum type;
		private Object keyObje;
		private Handler handler;
		private ImageView imageView;
		
		public Object getKeyObje() {
			return keyObje;
		}

		public ImageView getImageView() {
			return imageView;
		}
		
		public LoadTask(AsyncImageLoader.ImageLoadEnum type, Object keyObje, Handler handler, ImageView view) {
			this.type = type;
			this.keyObje = keyObje;
			this.handler = handler;
			this.imageView = view;
		}
		
		@Override
		public void run() {
			
			Bitmap bitmap = null;

			if (ImageLoadEnum.LOAD_FROM_DB.equals(type)) {
				AblumnPicEntity entity = (AblumnPicEntity) keyObje;
				bitmap = loadDBImageByImgId(entity.getImgSecureName());
				if(bitmap != null){
				int rotate4ro = getRotate4surcue(entity.getDirection());
					if (rotate4ro > 0) {
						Matrix matrix = new Matrix();
						matrix.setRotate(rotate4ro);
						bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(),
								bitmap.getHeight(), matrix, true);
					}
				}
			} else {
				long imgId = (Long) keyObje;
				bitmap = loadImageByImgId(mContext, imgId);
			}
			Message message = handler.obtainMessage(0, bitmap);
			handler.sendMessage(message);
			
		}
	}

	/**
	 * 释放内存，这个效率不知道怎么样
	 */
	public void release() {
		clearImageCache();
		stopAllTasks() ;
	}

	public void stopAllTasks() {
		if (mThreadPool != null) {
			mThreadPool.shutdown();
			isLoadThreadShutdown = true;
		}
		if (mThreadPool4thumb != null) {
			mThreadPool4thumb.shutdownNow();
		}
		if (mImageCallback != null) {
			mImageCallback = null;
		}
	}
	private boolean isTumbThreadShutdown = false;
	private boolean isLoadThreadShutdown = false;

	/**
	 * 在不离开页面的情况下，停止任务。
	 */
	public void shutdonwTasks() {
		isTumbThreadShutdown = true;
	}

	public void restartTasks() {
		isTumbThreadShutdown = false;
	}
	/**
	 *  读MediaStrore
	 * @param context
	 * @param imgId
	 * @return
	 */
	public Bitmap loadImageByImgId(Context context, long imgId) {
		
		// add by joy 2013.01.14 页面跳转后仍然会加载，引发重启
		if (isLoadThreadShutdown) {
			return null;
		}
		
		Bitmap bp = null;
		
		try {

			bp = Thumbnails.getThumbnail(context.getContentResolver(), imgId,
					Thumbnails.MICRO_KIND, null);

			int rotate4ro = 0;
			
			String path = null;
			// add by joy 20121210 低端手机内存不足取不到缩率图问题 TODO 需要优化
			if (bp == null) {
				path = getImgPathById(imgId);
				
				if (path != null) {
					bp = BitmapUtil.getThumbFromPath(96, path);
				}
			}
			
			if (bp != null) {
				if (path == null) {
					path = getImgPathById(imgId);
				}
				if (!isLoadThreadShutdown) {
					rotate4ro = getRotate(path);
					
					if (rotate4ro > 0) {
						Matrix matrix = new Matrix();
						matrix.setRotate(rotate4ro);
						bp = Bitmap.createBitmap(bp, 0, 0, bp.getWidth(),
								bp.getHeight(), matrix, true);
					}
				}
			}

		} catch (OutOfMemoryError e) {
			Log.e(getClass().getName(), "OutOfMemoryError!!");
		} catch (Exception e) {
			// 导入过程拔掉SD卡捕捉异常
		}

		return bp;
	}

	public int getRotate(String path) throws IOException {
		ExifInterface exifInterface = new ExifInterface(path);
		int result = exifInterface.getAttributeInt(
				ExifInterface.TAG_ORIENTATION,
				ExifInterface.ORIENTATION_UNDEFINED);
		int rotate = 0;
		switch (result) {
		case ExifInterface.ORIENTATION_ROTATE_90:
			rotate = 90;
			break;
		case ExifInterface.ORIENTATION_ROTATE_180:
			rotate = 180;
			break;
		case ExifInterface.ORIENTATION_ROTATE_270:
			rotate = 270;
			break;
		default:
			break;
		}
		return rotate;
	}
	
	public int getRotate4surcue(int direction){
		int rotate = 0;
		switch (direction) {
		case ExifInterface.ORIENTATION_ROTATE_90:
			rotate = 90;
			break;
		case ExifInterface.ORIENTATION_ROTATE_180:
			rotate = 180;
			break;
		case ExifInterface.ORIENTATION_ROTATE_270:
			rotate = 270;
			break;
		default:
			break;
		}
		return rotate;
	}

	public Bitmap loadDBImageByImgId(final String imgName) {

		Bitmap bt = FileWorker.readThumb(imgName);
		if (bt == null) {
			String filePath = Environment.getExternalStorageDirectory()
					.getPath()
					+ File.separator
					+ DaoConstant.SECURE_BASE_PATH
					+ File.separator
					+ DaoConstant.SECURE_PIC_PATH
					+ File.separator + imgName;

			byte[] data = FileWorker.getFileData(filePath);
			if (data == null) {
				return null;
			}
			EncryptWorker.decryptData(data);

			int count = 0;
			int size = 192;
			while (bt == null && count++ < 2) { // 如果取不到图片，则再取一遍
				if (count > 1) {
					size = 96;
				}
				bt = BitmapUtil.getThumbFromData(size, data, imgName);
				try {
					if (bt == null && count < 2) {
						Thread.sleep(500);
					}
				} catch (InterruptedException e) {
				}
			}

//			final Bitmap wbt = bt;
//			mThreadPool4thumb.execute(new Runnable() {
//				public void run() {
//					if (!isTumbThreadShutdown) {
//						FileWorker.writeThumb(wbt, imgName);
//					}
//				}
//			});
		}

		return bt;

	}

	public interface ImageCallback {
		public void imageLoaded(ImageView imgView, Bitmap imageBitmap,
				Object keyObj);
	}

	public enum ImageLoadEnum {
		LOAD_FROM_MEDIA_STOR, LOAD_FROM_DB,
	}

	//
	private String[] projection = { Media._ID, Media.DISPLAY_NAME, Media.DATA };
	private String where = Media._ID + " = ?";

	private String getImgPathById(long id) {
		String str = null;

		Cursor cursor = null;
		try {
			cursor = mContext.getContentResolver().query(
					Media.EXTERNAL_CONTENT_URI, projection, where,
					new String[] { String.valueOf(id) }, null);
			int i_absPath = cursor.getColumnIndexOrThrow(Media.DATA);

			while (cursor.moveToNext()) {
				str = cursor.getString(i_absPath);
				break;
			}
			cursor.close();
		} catch (Exception e) {
		} finally {
			if (cursor != null && !cursor.isClosed()) {
				cursor.close();
			}
		}
		return str;
	}

	/**
	 * 从缓存中获取bitmap
	 * 
	 * @return
	 */
	private Bitmap getFromCache(Object key) {
		synchronized (imageCacheLinked) {
//			if (imageCacheLinked.containsKey(key)) {
//				// 确保常用的图片常驻缓存
//				Bitmap bitmap = imageCacheLinked.get(key);
//				imageCacheLinked.remove(key);
//				imageCacheLinked.put(key, bitmap);
//				return bitmap;
//			}
//			return null;
			
			return imageCacheLinked.get(key);
		}
	}

	/**
	 * 将图片加入缓存
	 * 
	 * @param key
	 * @param bitmap
	 */
	private void putToImageCache(Object key, Bitmap bitmap) {
		synchronized (imageCacheLinked) {
//			if (imageCacheLinked !=null && imageCacheLinked.size() >= cacheLenght) {
				
//				if (imageCacheLinked.containsKey(key)) {// 确保常用的图片常驻缓存
//					imageCacheLinked.remove(key);
//				} else {// 移除第一张图片缓存
//					Set<Object> keySet = imageCacheLinked.keySet();
//					for (Object object : keySet) {
//						imageCacheLinked.remove(object);
//						break;
//					}
//					// Iterator<Object> iterator = keySet.iterator();
//					// Object firstKey = "";
//					// if (iterator.hasNext()) {
//					// firstKey = iterator.next();
//					// }
//					// if(!"".equals(firstKey)){
//					// imageCacheLinked.remove(firstKey);
//					// }
//				}
//			} else {
//				if (imageCacheLinked.containsKey(key)) {// 确保常用的图片常驻缓存
//					imageCacheLinked.remove(key);
//				}
			imageCacheLinked.put(key, bitmap);
			}
//		}
	}

	public void clearImageCache() {
		synchronized (imageCacheLinked) {
			Iterator<Entry<Object, Bitmap>> iterator = imageCacheLinked
					.entrySet().iterator();
			while (iterator.hasNext()) {
				Entry<Object, Bitmap> entry = iterator.next();
				Bitmap bm = entry.getValue();
				if (bm != null && !bm.isRecycled()) {
					bm.recycle();
				}
			}
			imageCacheLinked.clear();
		}
	}

}
