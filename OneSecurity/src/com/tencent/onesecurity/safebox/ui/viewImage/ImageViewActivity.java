package com.tencent.onesecurity.safebox.ui.viewImage;

import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.Map;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.ExifInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDBHelper;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.manager.SecurePicManager;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.model.MultiMediaEntity;
import com.tencent.onesecurity.safebox.ui.BaseSafeBoxActivity;
import com.tencent.onesecurity.safebox.ui.SecurePicGridActivity;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.android.support.v4.view.PagerAdapter;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager.OnPageChangeListener;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager.OnPageTouchListener;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

/**
 * @ClassName: ImageViewActivity
 * @Description:图片显示用Activity。
 * @author: Matt
 * @date: 2012-11-07 15：55
 * 
 */
public class ImageViewActivity extends BaseSafeBoxActivity {
	private ViewPager mPager;
	public static final String CURRENT_ITEM_ID = "current_item_index";
	private MyPagerAdapter mAdapter;

	GestureDetector mGestureDetector;
	private int mCurrentIndex = 0;
	private long mCurrentID;
	private LinearLayout mFooter;
	private RelativeLayout mTitle;
	private TextView mTitleText;
	private Button mTitleButton;
	private boolean mIsHeaderAndFooterShown = false;
	private LoadingHandler mLoadingHandler;
//	private LoadingThread mLoadingThread;
	private DeleteThread mDeleteThread;
	private RecoveryThread mRecoveryThread;
	private Dialog mDlgConfirm_delete = null;
	private boolean mDlgClicked_delete = false;
	private Dialog mDlgConfirm_restore = null;
	private boolean mDlgClicked_restore = false;
	private ProgressDialog mLoadingDialog;
	static private final String[] mColumns = new String[] {
			DaoConstant.COL_MM_ID, DaoConstant.COL_MM_SECURE_FILENAME,
			DaoConstant.COL_MM_ORIGIN_FILENAME, DaoConstant.COL_MM_DIRECTION };
	static private final int COL_MM_ID = 0;
	static private final int COL_MM_SECURE_FILENAME = 1;
	//static private final int COL_MM_SECURE_ROTATE = 3;
	
	//rabbiy add for rotate
	private Map<Long, Integer> map4rotate = new HashMap<Long, Integer>();
	//是否支持旋转
	public boolean isEndLoad = false;
	public boolean isPageChaged = false;
	public boolean isChange = false;

	// static private final int COL_MM_ORIGIN_FILENAME = 2;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.layout_safebox_photo_view);
		GoogleAnalyticsTracker.getInstance().trackView("查看照片");

		mPager = (ViewPager) findViewById(R.id.vPager);
		
		mCurrentID = getIntent().getLongExtra(CURRENT_ITEM_ID, -1);
		mLoadingHandler = new LoadingHandler();
//		mLoadingThread = new LoadingThread();
		mDeleteThread = new DeleteThread();
		mRecoveryThread = new RecoveryThread();
		mAdapter = null;
		mPager.setAdapter(mAdapter);
		mPager.setOnPageTouchListener(new MyOnPageTouchListener());
		mPager.setOnPageChangeListener(new MyOnPageChangeListener());
		// JOY OO
		mPager.setOffscreenPageLimit(3);
		mGestureDetector = new GestureDetector(this, new MyGestureListener());
		mLoadingDialog = new CustomLoadingDialog(this);
		mLoadingDialog.setMessage(getString(R.string.image_view_laoding));
		initHeaderAndFooter();
	}

	/*
	 * 初始化HeaderBar和FooterBar
	 */
	private void initHeaderAndFooter() {
		mFooter = (LinearLayout) findViewById(R.id.vFooter);
		mTitle = (RelativeLayout) findViewById(R.id.vTitle);
		//rabbiy add for rotate
		mTitleText = (TextView) findViewById(R.id.vTitleText);
		//旋转按钮
		mTitleButton = (Button) findViewById(R.id.vTitleButton);
		mTitleButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				if(isEndLoad&&!isPageChaged){
					mAdapter.changeImageRotate();
					
				}
			}
		});
		CustomIconButton delete = (CustomIconButton) findViewById(R.id.vFooter_delete);
		delete.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (mDlgConfirm_delete == null) {
					mDlgConfirm_delete = CustomDialog
							.createCustomDialogCommonBlack(
									ImageViewActivity.this,
									getString(R.string.safebox_photo_dlg_delete_tips_one),
									getString(R.string.common_cancel),
									getString(R.string.common_delete),
									new DialogInterface.OnClickListener() {

										@Override
										public void onClick(
												DialogInterface dialog,
												int which) {
											switch (which) {
											case CustomDialog.LEFT_BUTTON_CLICK:
												// Cancel
												if (mDlgClicked_delete == false) {
													mDlgConfirm_delete
															.dismiss();
												}
												mDlgClicked_delete = true;
												break;
											case CustomDialog.RIGHT_BUTTON_CLICK:
												// OK
												if (mDlgClicked_delete == false) {
													mDlgConfirm_delete
															.dismiss();
													mLoadingDialog
															.setMessage(getString(R.string.image_view_delete));
													mLoadingDialog.show();
													mDeleteThread.run();
													
												}
												mDlgClicked_delete = true;
												break;
											}
										}
									});
				}
				mDlgClicked_delete = false;
				if (mDlgConfirm_delete.isShowing() == false) {
					mDlgConfirm_delete.show();
				}
			}

		});
		CustomIconButton recovery = (CustomIconButton) findViewById(R.id.vFooter_recovery);
		recovery.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (mDlgConfirm_restore == null) {
					mDlgConfirm_restore = CustomDialog
							.createCustomDialogCommonBlack(
									ImageViewActivity.this,
									getString(R.string.safebox_photo_dlg_decrypt_tips_one),
									getString(R.string.common_cancel),
									getString(R.string.common_restore),
									new DialogInterface.OnClickListener() {

										@Override
										public void onClick(
												DialogInterface dialog,
												int which) {
											switch (which) {
											case CustomDialog.LEFT_BUTTON_CLICK:
												// Cancel
												if (mDlgClicked_restore == false) {
													mDlgConfirm_restore
															.dismiss();
												}
												mDlgClicked_restore = true;
												break;
											case CustomDialog.RIGHT_BUTTON_CLICK:
												// OK
												if (mDlgClicked_restore == false) {
													mDlgConfirm_restore
															.dismiss();
													mLoadingDialog
															.setMessage(getString(R.string.image_view_restore));
													mLoadingDialog.show();
													mRecoveryThread.run();
													
												}
												mDlgClicked_restore = true;
												break;
											}
										}
									});
				}
				mDlgClicked_restore = false;
				if (mDlgConfirm_restore.isShowing() == false) { // joy add
																// 20121204
					mDlgConfirm_restore.show();
				}
			}

		});
	}

	// 数据读取异步线程
	class LoadingThread extends Thread {

		@Override
		public void run() {
			MultiMediaDBHelper dbHelper = null;
			Cursor cursor = null;
			
			int count = 0;
			boolean isfind = false;
			
			try {
				dbHelper = MultiMediaDBHelper.getInstance();
//			} catch (SdCardNotExistException e) {
//				return;
//			}
//			try {
				// cursor = dbHelper.query("SELECT * FROM " +
				// SecureDBHelper.TB_MULTIMEDIA + " WHERE type=" +
				// SecurePicManager.MULTI_MEDIA_TYPE +
				// " ORDER BY create_time DESC");
					cursor = dbHelper.query(MultiMediaDBHelper.TB_MULTIMEDIA,
							mColumns, "type=?", new String[] { String
									.valueOf(DaoConstant.MEDIA_TYPE_PIC) }, null,
							null, DaoConstant.COL_MM_CREATE_TIME + " desc");
	//			} catch (SdCardNotExistException e) {
	//				dbHelper.close();
	//				return;
	//			}
				count = cursor.getCount();
				if (count == 0) {
					finish();
					return;
				}
				
				if (cursor.moveToFirst()) {
					int index = 0;
					while (!cursor.isAfterLast()) {
						long imgId = cursor.getInt(COL_MM_ID);
						map4rotate.put(imgId, cursor.getInt(3));
						if (imgId == mCurrentID) {
							isfind = true;
							mCurrentIndex = index;
							mCurrentIndex++;
	//						break;
						}
						cursor.moveToNext();
						index++;
					}
				} 
			}catch (SdCardNotExistException e)  {
				
			} finally {
				if (dbHelper != null) {
					dbHelper.close();
				}
			}
			
			if (!isfind && count > 0) {
				mCurrentIndex--;
				mCurrentIndex = mCurrentIndex < (count - 1) ? mCurrentIndex
						: (count - 1);
				mCurrentIndex++;
			}
			// mCurrentID = mAdapter.getItemId(mCurrentIndex);
			Message m = mLoadingHandler.obtainMessage(0);
			m.obj = cursor;
			m.sendToTarget();
			mLoadingDialog.dismiss();
		}

	}

	// 图片删除异步线程
	class DeleteThread extends Thread {

		@Override
		public void run() {
			if (mAdapter != null) {
				MyPagerAdapter.ViewInfo vinfo = mAdapter
						.findView(mCurrentIndex);
				SecurePicManager.getInstance().removePicByID((int) vinfo.mId,
						mAdapter.getFilePath(vinfo.mIndex));
				isChange = true;
				GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
						"查看图片单个删除", "私密图片", 1L);
			}
			mLoadingDialog.dismiss();
			getData();
		}

	}

	// 图片恢复异步线程
	class RecoveryThread extends Thread {

		@Override
		public void run() {
			if (mAdapter != null) {
				if (mAdapter != null) {
					MyPagerAdapter.ViewInfo vinfo = mAdapter
							.findView(mCurrentIndex);
					AblumnPicEntity entity = null;
					try {
						entity = MultiMediaDao.getInstance()
								.getAblumnPicEntity(0, vinfo.mId);
					} catch (SdCardNotExistException e) {
						mLoadingDialog.dismiss();
						return;
					}

					/*--matt fix bug NO 9572342----20121130-------S-*/
					if (entity == null) {
						return;
					}
					/*--matt fix bug NO 9572342----20121130-------E-*/

					SecurePicManager.getInstance().recoverySecurePic(entity);
					// google数据上报
					isChange = true;
					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱",
							"查看图片单个恢复", "私密图片", 1L);
					mLoadingDialog.dismiss();
					getData();
				}
			}
		}

	}

	/*
	 * 数据异步读取
	 */
	private void getData() {
//		if (mLoadingThread.isAlive() == true) {
//			return;
//		}
		mCurrentView = null;
		mLoadingDialog.setMessage("Loading");
		mLoadingDialog.show();
		
		// modify by joy 2013.3.26
//		mLoadingThread.start();
		new LoadingThread().start();
	}

	// 当前拥有Focuse的View
	private ViewPagerItem mCurrentView = null;

	@Override
	protected void onDestroy() {
		super.onDestroy();
		// add by joy 2013.01.14 start
		if (mLoadingDialog!=null && mLoadingDialog.isShowing()) {
			mLoadingDialog.dismiss();
		}
		// add by joy 2013.01.14 end
		System.gc(); // add by joy 2013/3/25
	}

	/**
	 * ViewPager适配器
	 */
	private class MyPagerAdapter extends PagerAdapter {
		private final int MESSAGE_DECODE = 0;
		private final int MESSAGE_SCALE_DECODE = 1;
		private final int MESSAGE_SCALE_FAILD = 2;
		private final int MESSAGE_DECODE_FAILD = 3;
		private final int PAGER_HEADER = 1;
		private final int PAGER_FOOT = 1;
		private MyImageManager mImageManager;
		private Map<Integer, ViewInfo> mViewsMap;
		private LayoutInflater mInflater;
		private Cursor mImageCursor;
		private MyHandler mHandler;

		// View信息管理结构体
		public class ViewInfo {
			public ViewInfo(View v, int index, long id) {
				mV = v;
				mIndex = index;
//				isShown = false;
				isPictureShown = false;
				mId = id;
			}

			public View mV;
			public long mId;
			public int mIndex;
//			public boolean isShown;
			public boolean isPictureShown;
		}

		/*
		 * 资源释放函数
		 */
		public void destroy() {
			synchronized (mViewsMap) {
				for (ViewInfo info : mViewsMap.values()) {
					ViewPagerItem v = (ViewPagerItem) info.mV;
					v.setImageRotateBitmapResetBase(new RotateBitmap(null, 0),
							true);
				}
			}
			mImageManager.destroyManager();
			mImageCursor.close();
			mHandler.removeMessages(0);
		}

		/*
		 * 视图迁移通知
		 */
		public void onPageChanged(int index) {
			
			synchronized (mViewsMap) {
				if (isHeaderOrFooter(index)) {
					return;
				}
				
				mImageManager.setCurIndex(index);
				
				
				ViewInfo oldInfo = mViewsMap.get(mCurrentIndex);
				
				ViewInfo info = mViewsMap.get(index);
				
				if (index == mCurrentIndex && info.isPictureShown) {
					return ;
				}
				
				info.isPictureShown = false;
				mImageManager.scaleDecodeFile( getFilePath(info.mIndex), info.mIndex, null);
				
				if (oldInfo != null && mCurrentIndex != index) {
					mImageManager.clearOldBigBitmap((ViewPagerItem)oldInfo.mV, mCurrentIndex, getRotate(mCurrentIndex));
				}
				
				mImageManager.decodeFile(getFilePath(index), index);
			}

		}

		/*
		 * 获取文件路径
		 */
		public String getFilePath(int index) {
			if (isHeaderOrFooter(index)) {
				return null;
			}
			index = changeIndex(index);
			mImageCursor.moveToPosition(index);
			return SecurePicManager.securePath
					+ mImageCursor.getString(COL_MM_SECURE_FILENAME);
		}
		
		//rabbiy add for rotate
		/**
		 * @param index 传进来的页面id
		 * @return 需要旋转的角度
		 */
		public int getRotate(int index) {
			if (isHeaderOrFooter(index)) {
				return 0;
			}
			index = changeIndex(index);
			mImageCursor.moveToPosition(index);
			long rotateId = mImageCursor.getLong(COL_MM_ID);
			int orientation = map4rotate.get(rotateId);
			int ret = 0;
			
			if (orientation == ExifInterface.ORIENTATION_ROTATE_90) {
				ret = 90;
			} else if (orientation == ExifInterface.ORIENTATION_ROTATE_180) {
				ret = 180;
			} else if (orientation == ExifInterface.ORIENTATION_ROTATE_270) {
				ret = 270;
			}
			return ret;
		}

		/*
		 * 获取文件id
		 */
		long getItemId(int index) {
			if (isHeaderOrFooter(index)) {
				return -1;
			}
			long id = -1;
			try {
				index = changeIndex(index);
				mImageCursor.moveToPosition(index);
				id = mImageCursor.getLong(COL_MM_ID);
			} catch (Exception e) {

			}
			return id;
		}

		/*
		 * 构造函数
		 */
		public MyPagerAdapter(Cursor array) {
			this.mViewsMap = new HashMap<Integer, ViewInfo>();
			mInflater = getLayoutInflater();
			mImageCursor = array;
			mImageManager = new MyImageManager(ImageViewActivity.this);
			mHandler = new MyHandler();
		}

		private boolean isHeaderOrFooter(int index) {
			if (index == 0 || index == getCount() - 1) {
				return true;
			} else {
				return false;
			}
		}

		private int changeIndex(int index) {
			return index - 1;
		}

		/*
		 * 获取ViewInfo
		 */
		public ViewInfo findView(int index) {
			return mViewsMap.get(index);
		}

		/*
		 * 创建一个新的View
		 */
		protected View newView(int index) {
			ViewPagerItem v = (ViewPagerItem) mInflater.inflate(
					R.layout.layout_safebox_photo_viewpager_item, null);
			v.init();
			ViewInfo info;
			synchronized (mViewsMap) {
				info = new ViewInfo(v, index, getItemId(index));
				mViewsMap.put(index, info);
			}
			if (isHeaderOrFooter(index)) {
				v.setProgressBarVisibility(false);
				return v;
			}
			mImageManager.scaleDecodeFile(getFilePath(index), index, null);
			
			if (mCurrentView == null && index == mCurrentIndex) {
				mCurrentView = v;
				mImageManager.decodeFile(getFilePath(index), index);
			}

			return v;
		}

		/*
		 * 移除一个View
		 */
		protected View removeView(int index) {
			View v = null;
			synchronized (mViewsMap) {
				
				ViewInfo info = mViewsMap.remove(index);
				if (info != null) {
					v = info.mV;
					((ViewPagerItem)v).setImageRotateBitmapResetBase(new RotateBitmap(null, 0), true);
				}
			}
			return v;
		}

		@Override
		public void destroyItem(ViewGroup container, int position, Object object) {
			Log.v("View Page destroyItem", String.valueOf(position));
			((ViewPager) container).removeView(removeView(position));
			removeCatch(position);
		}

		protected void removeCatch(int position) {
			if (isHeaderOrFooter(position)) {
				return;
			}
			// JOY OO
//			position = changeIndex(position);
			mImageManager.removeCatch(position);
		}

		@Override
		public int getCount() {
			return mImageCursor.getCount() + PAGER_HEADER + PAGER_FOOT;
		}

		@Override
		public Object instantiateItem(View container, int position) {
			Log.v("View Page instantiateItem", String.valueOf(position));
			View v = newView(position);
			((ViewPager) container).addView(v, 0);
			return v;
		}

		@Override
		public boolean isViewFromObject(View view, Object object) {
			return view == (object);
		}
		
		//rabbiy fix9646731
		public void changeConfiguration(){
			ViewInfo info = mViewsMap.get(mCurrentIndex);
			if (info != null) {
				try{
					ViewPagerItem v = (ViewPagerItem) info.mV;
					Bitmap bitMap4rotate = v.getM4Rotate().getBitmap();
					if(bitMap4rotate != null){
						int rotateNow = mAdapter.getRotate(mCurrentIndex);
					v.setImageRotateBitmapResetBase(
							new RotateBitmap(bitMap4rotate, rotateNow), true);
					}
				}catch (Exception e) {
					return;
				}
					
			}
			
		}
		
		//rabbiy add for rotate
		/**
		 * 用于旋转
		 */
		public void changeImageRotate(){
			long getID = -1;
			
			getID = getItemId(mCurrentIndex);
			
			ViewInfo info = mViewsMap.get(mCurrentIndex);
			if (info != null) {
				ViewPagerItem v = (ViewPagerItem) info.mV;
				Bitmap bitMap4rotate = v.getM4Rotate().getBitmap();
				
				if(bitMap4rotate != null){
					int rotateNow = mAdapter.getRotate(mCurrentIndex);
					v.setImageRotateBitmapResetBase( new RotateBitmap(bitMap4rotate, rotateNow + 90), true);
				}
			}
			
			int saveRotate = 0;
			if(getID != -1){
				int rotateNow = map4rotate.get(getID);
				if (rotateNow == ExifInterface.ORIENTATION_ROTATE_90) {
					saveRotate = ExifInterface.ORIENTATION_ROTATE_180;
				} else if (rotateNow == ExifInterface.ORIENTATION_ROTATE_180) {
					saveRotate = ExifInterface.ORIENTATION_ROTATE_270;
				} else if (rotateNow == ExifInterface.ORIENTATION_ROTATE_270) {
					saveRotate = ExifInterface.ORIENTATION_UNDEFINED;
				}else{
					saveRotate = ExifInterface.ORIENTATION_ROTATE_90;
				}

				map4rotate.put(getID, saveRotate);
				try {
					MultiMediaEntity picEntiy4rotate =  MultiMediaDao.getInstance().getEntity(DaoConstant.MEDIA_TYPE_PIC, getID);
					if(picEntiy4rotate != null){
						picEntiy4rotate.setDirection(saveRotate);
						MultiMediaDao.getInstance().update(picEntiy4rotate);
						isChange = true ;
					}
				} catch (SdCardNotExistException e) {
					e.printStackTrace();
				}
			}
		}
	
		/*
		 * 图片更新用Handler
		 */
		private class MyHandler extends Handler {

			@Override
			public void handleMessage(Message msg) {
				int id = msg.arg1;

				@SuppressWarnings("unchecked")
				SoftReference<Bitmap> bt = (SoftReference<Bitmap>) msg.obj;
				switch (msg.what) {
				case MESSAGE_DECODE:
					synchronized (mViewsMap) {
						
						ViewInfo info = mViewsMap.get(id);
						
						if (info != null) {
							if (info.mIndex == mCurrentIndex && bt.get() != null) {
								ViewPagerItem v = (ViewPagerItem) info.mV;
								v.setImageRotateBitmapResetBase( new RotateBitmap(bt.get(), getRotate(id)), true);
								
								isEndLoad = true;
								info.isPictureShown = true;
							} else {
								if (bt != null && bt.get() != null && bt.get().isRecycled() == false) {
									bt.get().recycle();
								}
							}
						}
						
					}

					break;
				case MESSAGE_SCALE_DECODE:
					synchronized (mViewsMap) {
						ViewInfo info = mViewsMap.get(id);

						if (info != null) {
							if (info.isPictureShown == false && bt.get() != null) {
								ViewPagerItem v = (ViewPagerItem) info.mV;
								v.setImageRotateBitmapResetBase( new RotateBitmap(bt.get(), getRotate(id)), true);
							}
						}
						
					}
					break;
				case MESSAGE_SCALE_FAILD:
					synchronized (mViewsMap) {
						
						ViewInfo info = mViewsMap.get(id);
						if (info != null && info.isPictureShown == false) {
							ViewPagerItem v = (ViewPagerItem) info.mV;
							Bitmap btFaild = BitmapFactory.decodeResource(getResources(), R.drawable.img_vault_photos_broken_photo_big);
							v.setImageRotateBitmapResetBase(
									new RotateBitmap(btFaild, 0), true);
							isEndLoad = false;
						}
					}
					break;
				case MESSAGE_DECODE_FAILD:
					synchronized (mViewsMap) {
						ViewInfo info = mViewsMap.get(id);
						if (info != null && info.isPictureShown == true) {
							ViewPagerItem v = (ViewPagerItem) info.mV;
							Bitmap btFaild = BitmapFactory.decodeResource(getResources(), R.drawable.img_vault_photos_broken_photo_big);
							v.setImageRotateBitmapResetBase(
									new RotateBitmap(btFaild, 0), true);
							isEndLoad = false;
						}
						
					}
					break;
				default:
					break;
				}

			}

		}

		/*
		 * 图片解码用Manager
		 */
		private class MyImageManager extends ImageManager {

			public MyImageManager(Context comtact) {
				super(comtact);
			}

			protected void decodeComplate(SoftReference<Bitmap> bt, int id) {
				Message m = mHandler.obtainMessage(0);
				m.what = MESSAGE_DECODE;
				m.obj = bt;
				m.arg1 = id;
				m.sendToTarget();
			}

			protected void scaleDecodeComplate(SoftReference<Bitmap> bt, int id) {
				Message m = mHandler.obtainMessage(0);
				m.what = MESSAGE_SCALE_DECODE;
				m.obj = bt;
				m.arg1 = id;
				m.sendToTarget();
			}
			
			protected void scaleDecodeFaild(int imgId) {
				Message m = mHandler.obtainMessage(0);
				m.what = MESSAGE_SCALE_FAILD;
				m.obj = null;
				m.arg1 = imgId;
				m.sendToTarget();
			}
			
			protected void decodeFaild(int imgId) {
				Message m = mHandler.obtainMessage(0);
				m.what = MESSAGE_SCALE_FAILD;
				m.obj = null;
				m.arg1 = imgId;
				m.sendToTarget();
			}
		}
	}

	/*
	 * ViewPager OntouchEvent回调. 返回值:true-该事件被处理,ViewPager不会再处理该事件
	 * false-该时间未被处理,ViewPager会处理该事件
	 */
	private class MyOnPageTouchListener implements OnPageTouchListener {

		@Override
		public boolean onPageTouchEvent(MotionEvent event) {
			boolean ret = false;
			if (mCurrentView != null) {
				ret = mCurrentView.onTouch(event);
			}
			mGestureDetector.onTouchEvent(event);
			return ret;
		}

	}

	/*
	 * ViewPager视图切替Listener
	 */
	private class MyOnPageChangeListener implements OnPageChangeListener {
		private final int PAGER_HEADER = 1;
		private final int PAGER_FOOT = 1;

		@Override
		public void onPageSelected(int position) {
		}

		@Override
		public void onPageScrolled(int position, float offset, int offsetPixels) {
			isPageChaged = true;
			if (position <= 0) {
				mPager.setCurrentItem(1);
			} else if (position >= mAdapter.getCount() - PAGER_HEADER
					- PAGER_FOOT) {
				mPager.setCurrentItem(mAdapter.getCount() - PAGER_HEADER
						- PAGER_FOOT);
			}
		}

		@Override
		public void onPageScrollStateChanged(int status) {
			// 修改空闲状态，onPageChanged 在图片缩小时不一定调用，导致图片不能翻转
			if(status == ViewPager.SCROLL_STATE_IDLE){
				isPageChaged = false;
			}
		}

		@Override
		public void onPageChanged(int position) {
			// mCurrentView.zoomTo(1);
			Log.i("MY", "Change ind:" + position);
			try {
				MyPagerAdapter.ViewInfo v = mAdapter.findView(position);
				if (v != null) {
					mCurrentView = (ViewPagerItem) v.mV;
					mAdapter.onPageChanged(position);
					mCurrentIndex = position;
					mCurrentID = mAdapter.getItemId(position);
				}
				int nowNumber = mCurrentIndex;
				mTitleText.setText("Album ( " + nowNumber + "/"
						+ (mAdapter.getCount() - PAGER_FOOT - PAGER_HEADER)
						+ " )");
			} catch (Exception e) {
			}
		}

	}

	/*
	 * 手势识别Class
	 */
	private class MyGestureListener extends
			GestureDetector.SimpleOnGestureListener {

		@Override
		public boolean onScroll(MotionEvent e1, MotionEvent e2,
				float distanceX, float distanceY) {

			return false;
		}

		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			return true;
		}

		@Override
		public boolean onSingleTapConfirmed(MotionEvent e) {
			changeHeaderAndFooterStatues();
			return true;
		}

		@Override
		public boolean onDoubleTap(MotionEvent e) {

			return true;
		}
	}

	/*
	 * 控制HeaderBar和FooterBar的显示和隐藏
	 */
	private void changeHeaderAndFooterStatues() {
		if (mIsHeaderAndFooterShown == false) {
			// mHeader.setVisibility(View.VISIBLE);
			mFooter.setVisibility(View.VISIBLE);
			mTitle.setVisibility(View.VISIBLE);
			mIsHeaderAndFooterShown = true;
		} else {
			// mHeader.setVisibility(View.GONE);
			mFooter.setVisibility(View.GONE);
			mTitle.setVisibility(View.GONE);
			mIsHeaderAndFooterShown = false;
		}
	}
	@Override
	protected void onPause() {
		super.onPause();
	}
	@Override
	public void onBackPressed() {
		Intent intent = new Intent(ImageViewActivity.this,SecurePicGridActivity.class) ;
		intent.putExtra(SecurePicGridActivity.EXTRA_KEY_ISDBCHANGE, isChange) ;
		setResult(SecurePicGridActivity.RES_DBCHANGE_CODE,intent) ;
		super.onBackPressed();
	}
	@Override
	protected void onRestoreInstanceState(Bundle savedInstanceState) {
		mCurrentIndex = savedInstanceState.getInt("photo_index");
		mPager.setCurrentItem(mCurrentIndex);
		mIsHeaderAndFooterShown = savedInstanceState
				.getBoolean("IsHeaderAndFooterShown");
		changeHeaderAndFooterStatues();
		super.onRestoreInstanceState(savedInstanceState);
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		outState.putInt("photo_index", mCurrentIndex);
		outState.putBoolean("IsHeaderAndFooterShown", mIsHeaderAndFooterShown);
		super.onSaveInstanceState(outState);
	}

	@Override
	protected void onStart() {
		super.onStart();
		getData();
	}

	@Override
	protected void onStop() {
		super.onStop();
		mAdapter.destroy();
		mPager.setAdapter(null);
		mAdapter = null;
		mLoadingHandler.removeMessages(0);
	}

	// 数据异步读取用Handler
	private class LoadingHandler extends Handler {

		@Override
		public void handleMessage(Message msg) {
			Cursor c = (Cursor) msg.obj;
			if (c == null) 
				return ;
			
			try {
				if (ImageViewActivity.this.isFinishing()) {
					c = (Cursor) msg.obj;
					if (c!= null)
						c.close();
					return;
				}
			} catch (Exception e) {
				if (c != null && c.isClosed() == false) {
					c.close();
				}
				return;
			}
			mPager.setAdapter(null);
			if (mAdapter != null) {
				mAdapter.destroy();
			}
			if (c.getCount() > 0) {
				mAdapter = new MyPagerAdapter(c);
				mPager.setAdapter(mAdapter);
				mPager.setCurrentItem(mCurrentIndex, false);
			} else {
				finish();
			}
			int nowNumber = mCurrentIndex;
			mTitleText.setText("Album ( " + nowNumber + "/" + c.getCount()
					+ " )");
		}

	}

	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		super.onConfigurationChanged(newConfig);
		int mCurrentOrientation = getResources().getConfiguration().orientation;
		if ( mCurrentOrientation == Configuration.ORIENTATION_PORTRAIT ) { 
			try{
			mAdapter.changeConfiguration();
			} catch (Exception e) {
				return;
			}
		} else if ( mCurrentOrientation == Configuration.ORIENTATION_LANDSCAPE ) {
			try{
			mAdapter.changeConfiguration();
			} catch (Exception e) {
				return;
			}
		}
	}
}
