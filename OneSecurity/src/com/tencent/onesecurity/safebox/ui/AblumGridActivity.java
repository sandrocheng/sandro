package com.tencent.onesecurity.safebox.ui;

import java.util.List;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.GridView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.manager.AblumManager;
import com.tencent.onesecurity.safebox.manager.SecurePicManager;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager;
import com.tencent.onesecurity.safebox.model.AblumnEntity;
import com.tencent.onesecurity.safebox.ui.adapter.AblumAdapter;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.util.ToastUtil;
/**
 * @ClassName: AblumGridActivity
 * @Description:私密空间相册列表界面
 * @author: rabbiy
 * @date: 2012-10-30 上午18:09:03
 * 
 */
public class AblumGridActivity extends BaseSafeBoxActivity {

	private GridView gridView = null;

	private AblumAdapter mAdapter = null;

	private AblumManager mAblumManager = null;

	private final static int LOADING_IMAGE_FINISHED = 1;

	private final static int END_LOAD = 2;

	private ProgressDialog mProgressDlg = null;
	
	private  List<AblumnEntity> mEntitieList = null ;
	
	private Context mContext = null;
	
	// onStop 结束线程，否则线程多次创建
	private boolean mediaScanFlag = false ;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		View view = LayoutInflater.from(this).inflate(R.layout.layout_safebox_ablum, null);
		setContentView(view);
		gridView = (GridView) findViewById(R.id.ablum_gridview);
		mAdapter = new AblumAdapter(this);
		mAblumManager = new AblumManager();
		gridView.setAdapter(mAdapter);
		//mProgressDlg =new CustomLoadingDialog(this);
		mProgressDlg =new CustomLoadingDialog(this);
		mProgressDlg.setMessage(getString(R.string.image_view_laoding));
//		mProgressDlg.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		//rabbiy 修复菊花
		mProgressDlg.setCanceledOnTouchOutside(false);
		mProgressDlg.setOnCancelListener(new OnCancelListener() {
			
			@Override
			public void onCancel(DialogInterface dialog) {
				// TODO Auto-generated method stub
				dismissDlg();
				AblumGridActivity.this.finish();
			}
		});
		createClearTitleBar();
		mContext = this;
		

	}

	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case LOADING_IMAGE_FINISHED:
				new Thread(new LoadDataThread()).start();// 开线程加载数据
				break;
			case END_LOAD:
				mAdapter.setData(mEntitieList);
				mAdapter.notifyDataSetChanged();// 更新视图
				dismissDlg() ;// 关闭菊花
				// 无相册给出提示
				if (mEntitieList != null && mEntitieList.isEmpty()) {
					ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_photo_toast_no_ablum),R.layout.custom_toast);
				}
			}
		}
	};

	@Override
	protected void onResume() {
		mProgressDlg.show();// 打开菊花
		new Thread(new ScannerServiceState()).start();
		
		super.onResume();
	}
	
	@Override
	protected void onStart() {
		super.onStart();
		mediaScanFlag = false ;

	}
	@Override
	protected void onStop() {
		mediaScanFlag = true ;
		super.onStop();
	}

	/**
	 * 关菊花
	 */
	private void dismissDlg() {
		if (mProgressDlg != null && mProgressDlg.isShowing()) {
			mProgressDlg.dismiss();
		}
	}
	@Override
	protected void onDestroy() {
		// TODO Auto-generated method stub
		// 释放资源
		mAdapter.free();
		// 顺便关progress
		dismissDlg();
		if (mEntitieList != null && !mEntitieList.isEmpty()) {
			mEntitieList.clear();
		}
		if (mProgressDlg != null && mProgressDlg.isShowing()) {
			mProgressDlg.dismiss();
		}
		super.onDestroy();
	}
	
	private void createClearTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), getString(R.string.safebox_photo_album_title), null, null, null, null, true);
	}
	
	/**
	 * @ClassName: LoadDataThread
	 * @Description:启动异步线程加载数据
	 * @author: Matrix
	 * @date: 2012-11-1 下午3:41:49
	 * 
	 */
	private class LoadDataThread implements Runnable {

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Runnable#run()
		 */
		@Override
		public void run() {
			mEntitieList = mAblumManager.getAblumList();
			// 非UI线程setData 会出现异常
			mHandler.sendEmptyMessage(END_LOAD);
			
		}

	}

	private class ScannerServiceState implements Runnable {
		private int count = 0;

		/*
		 * (non-Javadoc)
		 * 
		 * @see java.lang.Runnable#run()
		 */
		@Override
		public void run() {
			while (!mediaScanFlag) {
				if (isScannerStart(mContext) == false && SecureQueueManager.getInstance().isDeleteQueueEmpty()
						&& SecurePicManager.isMediaScanStart == false) {
					mHandler.sendEmptyMessage(LOADING_IMAGE_FINISHED);
					break;
				}
				try {
					Thread.sleep(500);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				if (++count >= 20 && SecurePicManager.isMediaScanStart) { // 20 次 10S之内保证服务已经启动
					SecurePicManager.isMediaScanStart = false;
				}
			}
			count = 0;
		}

	}
	
	public static boolean isScannerStart(Context context) {
		ActivityManager manager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
		List<RunningServiceInfo> runningServicesInfos = manager.getRunningServices(Integer.MAX_VALUE);
		boolean isScanner = false;
		for (RunningServiceInfo serinfo : runningServicesInfos) {
			if (serinfo.service.getShortClassName().endsWith(".MediaScannerService")) {
				isScanner = true;
				break;
			}

		}
		return isScanner;

	}
}
