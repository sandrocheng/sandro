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

package com.tencent.onesecurity.ui.helper;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.util.AppIconUtil;
import com.tencent.tmsecure.module.qscanner.QScanConstants;

public class VirusImageLoader {

	/** drawable 缓存 */
	private LinkedHashMap<Object, Drawable> imageCacheLinked = null;
	/** 缓存大小 */
	private int cacheLenght = 60;

	private Context mContext = null;
	/** 线程池维护线程的最少数量 */
	private static final int CORE_THREAD_NUM = 0;
	/** 线程池维护线程的最大数量 */
	private static final int MAX_THREAD_NUM = 3;
	/** 线程池维护线程所允许的空闲时间 */
	private static final int TIMEOUT_TIME = 1;
	/** 任务队列长度，存放定义的任务处理线程 */
	private static int QUEUE_LEN = 25;

	private ThreadPoolExecutor mThreadPool;

	private ImageCallback mImageCallback = null;

	public VirusImageLoader(Context context, ImageCallback imageCallback) {
		// tony 动态获取 队列长度 和缓存长度（根据屏幕大小）
		QUEUE_LEN = context.getResources().getInteger(R.integer.main_virus_load_image_queue_lenght);

		cacheLenght = context.getResources().getInteger(R.integer.main_virus_icon_cache_lenght);
		mThreadPool = new ThreadPoolExecutor(CORE_THREAD_NUM, MAX_THREAD_NUM, TIMEOUT_TIME, TimeUnit.SECONDS,
				new ArrayBlockingQueue<Runnable>(QUEUE_LEN), new ThreadPoolExecutor.DiscardOldestPolicy());
		// 如果accessOrder被设置为true，则每次访问元素时，都将该元素移至headr的前面，即链表的尾部
		imageCacheLinked = new LinkedHashMap<Object, Drawable>(0, 0.75f, true) {
			private static final long serialVersionUID = -30595202040555038L;

			/*
			 * 在将新条目插入到映射后，put 和 putAll 将调用此方法 此方法可以提供在每次添加新条目时移除最旧条目的实现程序
			 * (non-Javadoc)
			 * 
			 * @see
			 * java.util.LinkedHashMap#removeEldestEntry(java.util.Map.Entry)
			 */
			@Override
			protected boolean removeEldestEntry(Entry<Object, Drawable> eldest) {
				return size() > VirusImageLoader.this.cacheLenght;
			}

		};
		mContext = context;
		this.mImageCallback = imageCallback;
	}

	/**
	 * 异步加载图片，在内存中缓存
	 * 
	 * @param imgView
	 * @param appPathOrPkgName
	 *            包名或应用名
	 * @param type
	 * @see ImageLoadEnum
	 * @return
	 */
	public Drawable loadDrawable(final ImageView imgView, final String appPathOrPkgName, final ImageLoadEnum type,
			final ScanResultModel scanResult) {
		final int virusType = scanResult.type;
		final int dealType = scanResult.trustFlg;

		if (appPathOrPkgName == null)
			return null;
		imgView.setTag(appPathOrPkgName);
		Drawable bp = getFromCache(appPathOrPkgName);
		if (bp != null) {
			if (dealType == UIConstants.VIRUS_JUST_ADDED_WHITE_LIST || scanResult.isCleared) {
				synchronized (imageCacheLinked) {
					imageCacheLinked.remove(appPathOrPkgName);
				}
			} else {
				return bp;
			}
		}
		final Handler handler = new Handler() {
			public void handleMessage(Message message) {
				// 是否已滑出屏
				if (appPathOrPkgName.equals(imgView.getTag())) {
					if (mImageCallback != null) {
						Drawable drawable = (Drawable) message.obj;
						putToImageCache(appPathOrPkgName, drawable);
						mImageCallback.imageLoaded(imgView, drawable);
						// 刚加入白名单的，变为已经加入
						if (scanResult.trustFlg == UIConstants.VIRUS_JUST_ADDED_WHITE_LIST) {
							scanResult.trustFlg = UIConstants.VIRUS_ALREADY_ADDED_WHITE_LIST;
						}
					}
				}
			}
		};
		// 线程池加载图片
		mThreadPool.execute(new Runnable() {

			@Override
			public void run() {
				Drawable drawable = null;

				// 病毒，显示默认图标。需要在线程池中获取，避免在UI线程设置图标后，二次利用ImageView后，出现同步问题
				if (virusType != QScanConstants.TYPE_OK && virusType != QScanConstants.TYPE_UNKNOWN) {
					// 加入白名单的，或者清除的，icon置灰
					if (dealType == UIConstants.VIRUS_JUST_ADDED_WHITE_LIST
							|| dealType == UIConstants.VIRUS_ALREADY_ADDED_WHITE_LIST || scanResult.isCleared) {
						drawable = mContext.getResources().getDrawable(
								R.drawable.btn_common_list_item_detail_red_disable);

					} else {
						drawable = mContext.getResources().getDrawable(R.drawable.sel_btn_common_item_detail_red);

					}

				} else {
					if (ImageLoadEnum.LOAD_FROM_PACKAGE.equals(type)) {
						// 取应用图标
						drawable = AppIconUtil.getApkIcon(appPathOrPkgName);
					} else {
						// 取未安装apk图标
						drawable = AppIconUtil.getAppIcon(appPathOrPkgName);
					}
				}
				Message message = handler.obtainMessage(0, drawable);
				handler.sendMessage(message);
			}
		});

		return null;
	}

	/**
	 * 释放资源
	 */
	public void release() {
		clearImageCache();
		if (mThreadPool != null) {
			mThreadPool.shutdown();
		}
		if (mImageCallback != null) {
			mImageCallback = null;
		}
	}

	public interface ImageCallback {
		public void imageLoaded(ImageView imgView, Drawable imageBitmap);
	}

	public enum ImageLoadEnum {
		/**
		 * 从本地获取应用图标
		 */
		LOAD_FROM_APP,
		/**
		 * 从未安装的apk中取
		 */
		LOAD_FROM_PACKAGE,
	}

	/**
	 * 从缓存中获取drawable
	 * 
	 * @param key
	 * @return
	 */
	private Drawable getFromCache(Object key) {
		synchronized (imageCacheLinked) {
			return imageCacheLinked.get(key);
		}
	}

	/**
	 * 加入缓存
	 * 
	 * @param key
	 * @param draw
	 */
	private void putToImageCache(Object key, Drawable draw) {
		synchronized (imageCacheLinked) {
			imageCacheLinked.put(key, draw);
		}
	}

	/**
	 * 释放drawable
	 */
	private void clearImageCache() {
		synchronized (imageCacheLinked) {
			Iterator<Entry<Object, Drawable>> iterator = imageCacheLinked.entrySet().iterator();
			while (iterator.hasNext()) {
				Entry<Object, Drawable> entry = iterator.next();
				Drawable bm = entry.getValue();
				if (bm != null) {
					bm.setCallback(null);
				}
			}
			imageCacheLinked.clear();
		}
	}

}
