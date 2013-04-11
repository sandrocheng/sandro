package com.tencent.onesecurity.safebox.ui;

import java.util.LinkedList;
import java.util.List;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.GridView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.manager.AblumManager;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.model.ImageForQueueEntity;
import com.tencent.onesecurity.safebox.ui.adapter.PhotoGridAdapter;
import com.tencent.onesecurity.safebox.util.MemoryStatus;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.ToastUtil;
/**
 * @ClassName: PhotoGridActivity
 * @Description:私密空间图片列表
 * @author: Joy
 * @date: 2012-10-30 上午18:09:03
 * 
 */
public class PhotoGridActivity extends BaseSafeBoxActivity implements PhotoGridAdapter.GridAdapterSimpleCallback{
	
	// 从相册页面传过来的相册路径
	public static final String INTENT_PHOTO_PATH = "PHOTO_PATH";
	// 从相册页面传过来的相册名
	public static final String INTENT_PHOTO_PATH_NAME = "INTENT_PHOTO_PATH_NAME";

	
	// Handler-加载中
	private static final int LOADING_DATA = 1;
	// Handler-加载完毕
	private static final int END_LOAD = 2;
	// Handler-导入完毕，跳转页面
	private static final int IMPORT_DONE = 3;
	
	private List<AblumnPicEntity> dataList;
	
	// 全选状态-true：全选；false：全不选
	//private boolean curSelState = false;
	
	// 导入按钮
	private CustomIconButton impBtn = null;
	
	// 加载中的Dialog
	private ProgressDialog mProgressDlg = null;

	private GridView gridView = null;
	
	private PhotoGridAdapter mAdapter = null;

	private AblumManager photoManager = null;
	
	private String curPath = null;
	private String curTitle = null;
	
	private Dialog mDlgNotice = null ;
	
	private int nowSecurityPhotoCount = 0;
	private Dialog mDlgVIPOut;
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_safebox_photos);
		
		//取下私密总数
		try {
			nowSecurityPhotoCount = MultiMediaDao.getInstance().getCountByType(DaoConstant.MEDIA_TYPE_PIC);
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
		}
		initVipDlg();
		curPath = getIntent().getStringExtra(INTENT_PHOTO_PATH);
		curTitle = getIntent().getStringExtra(INTENT_PHOTO_PATH_NAME);
		
		// 创建title按钮
		createSelectTitleBar(curTitle);
		
		photoManager = new AblumManager();
		gridView = (GridView) findViewById(R.id.ablum_gridview);
		mAdapter = new PhotoGridAdapter(this, this);
		mAdapter.setConvertViewCheckboxable(true);
		mAdapter.setConvertViewClickable(true);
		gridView.setAdapter(mAdapter);
		// 加载菊花
		//mProgressDlg =new CustomLoadingDialog(this);
		mProgressDlg =new CustomLoadingDialog(this);
		mProgressDlg.setMessage(getString(R.string.image_view_laoding));
//		mProgressDlg.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		// 导入按钮
		impBtn = (CustomIconButton)findViewById(R.id.photo_btn_import);
		impBtn.setEnabled(false);
		impBtn.setOnClickListener(importClickLisener);
		impBtn.setIconResource(getVipResourceId(BTN_TYPE_NOR));
		impBtn.setIconResourceDisabled(getVipResourceId(BTN_TYPE_DISABLE));
		impBtn.setIconResourcePress(getVipResourceId(BTN_TYPE_PRESS));
		mHandler.sendEmptyMessage(LOADING_DATA);
		
		// google数据上报
		GoogleAnalyticsTracker.getInstance().trackView("导入照片");
	}
	
	@Override
	protected void onStop() {
		super.onStop();
	}

	protected void onDestroy() {
		super.onDestroy();
		
		mAdapter.free();
		// 释放资源
		if (dataList != null) {
			dataList.clear();
			dataList = null;
		}
		if(mProgressDlg != null && mProgressDlg.isShowing()){
			mProgressDlg.dismiss() ;
		}
		if(mDlgNotice != null && mDlgNotice.isShowing()){
			mDlgNotice.dismiss() ;
		}
		if (mDlgVIPOut != null && mDlgVIPOut.isShowing()) {
			mDlgVIPOut.dismiss();
		}
	}
	
	private void initVipDlg(){
		mDlgVIPOut = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.safebox_photo_dlg_not_vip_member_tips_forPhoto),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_left),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_right), new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
						if (dialog.equals(mDlgVIPOut)) {
							switch (which) {
							case CustomDialog.LEFT_BUTTON_CLICK:
								// Cancel
								mDlgVIPOut.dismiss();
								break;
							case CustomDialog.RIGHT_BUTTON_CLICK:
								// OK
								mDlgVIPOut.dismiss();
								Intent vipIntent = new Intent(PhotoGridActivity.this, VipUpgradeActivity.class);
								startActivity(vipIntent);
								GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "通过私密进入VIP", "进入VIP", 1l);
								break;
							}	
					}
				}
		});
		mDlgVIPOut.setCanceledOnTouchOutside(true);
		mDlgVIPOut.dismiss();
	}
	
	/**
	 * 加载数据的handler
	 */
	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case LOADING_DATA:
				if (!mProgressDlg.isShowing()) {
					mProgressDlg.show();
				}
				// 开线程加载数据
				new MyThread().start();
				break;
			case END_LOAD:
				mAdapter.setData(dataList) ;
				mAdapter.setSelAll(false);
				mAdapter.notifyCheckAll(false);
				mAdapter.notifyDataSetChanged();// 更新视图
				refreshImportBtn();
				if (mProgressDlg.isShowing()) {
					mProgressDlg.dismiss();// 关闭菊花
				}
				break;
			case IMPORT_DONE:
				// 跳转到私密图片页面
				Intent nextIntent = new Intent(PhotoGridActivity.this, SecurePicGridActivity.class);
				nextIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
				startActivity(nextIntent);
				break;
			}
		}
	};
	class MyThread extends Thread {
		public void run() {
			dataList = photoManager.getPicsByAblumnFolder(curPath);
			// 非UI 线程设置adapter 会出现问题
			//mAdapter.setData(dataList);
			mHandler.sendEmptyMessage(END_LOAD);
		}
	}
	
	/**
	 * "导入"按钮监听
	 */
	private OnClickListener importClickLisener = new OnClickListener(){

		@Override
		public void onClick(View v) {
			
//			if(MemoryStatus.isAvaiableSpace()){ del by joy 2013.02.22
				// 有空间，判断是否首次点击Import 首次点击给提示
				if(DaoCreator.createConfigDao().getIsSafeBoxNotice()){
					setImportDataToSecure() ;
				}else{
					DaoCreator.createConfigDao().setIsSafeBoxNotice(true) ;
					mDlgNotice = CustomDialog.createCustomDialogCommonBlack(PhotoGridActivity.this,
							getString(R.string.safebox_photo_import_notice),
							null,
							getString(R.string.common_ok), new DialogInterface.OnClickListener(){

								@Override
								public void onClick(DialogInterface dialog, int which) {
									switch (which) {
									case CustomDialog.LEFT_BUTTON_CLICK:
										// Cancel
										mDlgNotice.dismiss() ;
										break;
									case CustomDialog.RIGHT_BUTTON_CLICK:
										// OK
										mDlgNotice.dismiss() ;
										setImportDataToSecure() ;
										break;
									}
								}
						
					});
					mDlgNotice.setCanceledOnTouchOutside(true);
					mDlgNotice.show() ;
				}

//			}else{
//				ToastUtil.ShowSimpleTextLongToast(getString(R.string.vault_photos_sdcard_isfull)) ;
//			}

			
			// google数据上报
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "导入选择图片", "私密图片", 1l);
		}
		
	};

	/**
	 * 设置导入数据，跳转到SecurePicGridActivity
	 */
	private void setImportDataToSecure() {
		LinkedList<ImageForQueueEntity> list = new LinkedList<ImageForQueueEntity>();

		for (AblumnPicEntity entity : mAdapter.getCheckedMap().values()) {
			ImageForQueueEntity qe = new ImageForQueueEntity();
			qe.setImageName(entity.getDisplayName());
			qe.setImagePath(entity.getImgAbsPath());
			qe.setImageType(entity.getImgType());
			qe.setId(entity.getImgId());
			qe.setSize(entity.getImgSize()); // 12.14 优化 
			qe.setCreateTime(System.currentTimeMillis()) ;

			list.add(qe);
		}

		SecureQueueManager.getInstance().setImageForQueueData(list);
		SecureQueueManager.getInstance().checkQueue();
		// Intent intent = new Intent(PhotoGridActivity.this,
		// ImportFileService.class);
		// intent.setFlags(ImportFileService.FLAG_IMPROT_IMAGE);
		// startService(intent);
		mAdapter.stopAllTasks() ;
		Intent nextIntent = new Intent(PhotoGridActivity.this, SecurePicGridActivity.class);
		nextIntent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
		nextIntent.putExtra(SecurePicGridActivity.EXTRA_KEY_START_PORGRESS,
				SecurePicGridActivity.EXTRA_VALUE_START_PORGRESS);
		startActivity(nextIntent);
	}
	
	
	/**
	 * 选择图片后，设置“导入”按钮的置灰状态
	 */
	@Override
	public void onConverViewClick(AblumnPicEntity entity, boolean isChecked) {
		int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();
		int userCount = mAdapter.getCheckedMap().size();
		if (userLevel == UserInfoMode.MEMBER_OUT_OF_DATE_USER || userLevel == UserInfoMode.TRIAL_OUT_OF_DATE_USER || userLevel == UserInfoMode.STANDARD_USER ) {
			if((userCount + nowSecurityPhotoCount) > 10){
				//弹框
				mDlgVIPOut.show();
				GoogleAnalyticsTracker.getInstance().trackView("私密图片VIP提示");
				mAdapter.getCheckedMap().remove(entity.getImgId());
				mAdapter.notifyDataSetChanged();
			}
		}
		
		// 逐个选择，如果全部选择，需要把title
		 if (userCount == dataList.size()) {
			 createClearTitleBar(curTitle) ;
		 } else {
			 createSelectTitleBar(curTitle) ;
		 }
		
		refreshImportBtn();
	}
	/**
	 * 全选，全不选
	 * 
	 * @param isSelect
	 */
	private void notifyChecked(boolean isSelect) {
		mAdapter.setSelAll(isSelect);
		mAdapter.notifyCheckAll(isSelect);
		mAdapter.notifyDataSetChanged();
		refreshImportBtn();
	}

	// /**
	// * 全选按钮事件
	// */
	// public void onTitleBarClick(Boolean isSelectAll) {
	// // title右侧按钮
	// if (isSelectAll == true) {// 全选
	// if(curSelState == false){
	// mAdapter.setSelAll(true);
	// mAdapter.notifyCheckAll(true);
	// mAdapter.notifyDataSetChanged();
	// curSelState = true;
	// }
	// } else { // 全不选
	// if(curSelState == true){
	// mAdapter.setSelAll(false);
	// mAdapter.notifyCheckAll(false);
	// mAdapter.notifyDataSetChanged();
	// curSelState = false;
	// }
	// }
	//			
	// refreshImportBtn();
	// }
	/**
	 * cancel ，select all
	 * @param title
	 */
	private void createSelectTitleBar(final String title) {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), title,
				getString(R.string.safebox_photo_selectall), new OnClickListener() {

					@Override
					public void onClick(View v) {
						// 点击后clear all
						// onTitleBarClick(true);
						int userCount = mAdapter.getCount();
						
						int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();
						if (userLevel == UserInfoMode.MEMBER_OUT_OF_DATE_USER || userLevel == UserInfoMode.TRIAL_OUT_OF_DATE_USER || userLevel == UserInfoMode.STANDARD_USER ) {
							if((userCount + nowSecurityPhotoCount) > 10){
								//探矿
								mDlgVIPOut.show();
								GoogleAnalyticsTracker.getInstance().trackView("私密图片VIP提示");
								return;
							}
						}
						notifyChecked(true);
						createClearTitleBar(title);

					}
				}, null, null, true);
	}
	/**
	 * 左clear all 右 cancel
	 */
	private void createClearTitleBar(final String title) {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), title,
				getString(R.string.safebox_photo_clearall), new OnClickListener() {

					@Override
					public void onClick(View v) {
						// onTitleBarClick(false);
						notifyChecked(false);
						createSelectTitleBar(title);
					}
				}, null, null, true);
	}
	private void refreshImportBtn() {
		if (mAdapter.getCheckedMap() != null && mAdapter.getCheckedMap().size()>0) {
			impBtn.setEnabled(true);
			String txt = getResources().getString(R.string.safebox_photo_import2);
			txt = String.format(txt, mAdapter.getCheckedMap().size());
			impBtn.setButtonText(txt);
		} else {
			impBtn.setEnabled(false);
			String txt = getResources().getString(R.string.safebox_photo_import1);
			impBtn.setButtonText(txt);
		}
	}

//	@Override
//	public void onTitleBarImgClick(int imgViewId) {
//		// TODO Auto-generated method stub
//		
//	}
	
}
