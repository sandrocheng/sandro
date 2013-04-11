package com.tencent.onesecurity.safebox.ui;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Images.Media;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.RelativeLayout;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.manager.SecurePicManager;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager.ImportPicListener;
import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.service.ImportFileService;
import com.tencent.onesecurity.safebox.ui.adapter.SecurePicGridAdapter;
import com.tencent.onesecurity.safebox.ui.lib.BaseGridAdaptar.DataHolder;
import com.tencent.onesecurity.safebox.ui.viewImage.ImageViewActivity;
import com.tencent.onesecurity.safebox.util.ImportUtil;
import com.tencent.onesecurity.safebox.util.MemoryStatus;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomProgressDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * @ClassName: SecurePicGridActivity 私密图片列表
 * @Description:首页显示图片
 * @author: lee
 * @date: 2012-10-30 下午04:20:09
 */
public class SecurePicGridActivity extends BaseSafeBoxActivity implements OnClickListener, OnItemClickListener {
	
//	private final String TAG = "SecurePicGridActivity" ;
	// 删除提示框
	private Dialog mDlgDelConfirm;
	// 恢复提示框
	private Dialog mDlgResConfirm;
	// VIP 过期
	private Dialog mDlgVIPOut;
	
	// 加载数据菊花
	private ProgressDialog mDlgLoadPics;
	// 导出进度条
	private CustomProgressDialog mDlgProgressExport;
	// 导入进度条 
	private CustomProgressDialog mDlgProgressImprot;
	
	private Dialog mDlgSelectImprot;
	
	private GridView mGvSecurePic;
	// 无图片引导背景
	private ImageView mIvUserGuid;
	// 添加button
	private CustomIconButton btnAddPhotos;
	// 删除button
	private CustomIconButton btnDelete;
	// 恢复button
	private CustomIconButton btnRecypt;
	// 删除恢复Layout
	private RelativeLayout layBtnDelAndRec;
	// 继承自 BaseGridAdaptar
	private SecurePicGridAdapter mAdapter;
	// 缓存数据onStop 清除数据
	private List<AblumnPicEntity> mGridViewData;
	// 导入图片传递，用来判断显示导入或者导出进度条以及是否在onStart中加载数据loadImageFromDB()
	private int mIntentExtra = -1 ; 

	private final static int MSG_LOAD_SUCCESS = 100; 			// 加载数据成功
	private final static int MSG_RECOVER_PICS_PROCESS = 101; 	// 回复数据过程
	private final static int MSG_RECOVER_PICS_END = 102; 		// 恢复数据结束
	private final static int MSG_DELETE_PICS_PROCESS = 103; 	// 删除过程
	private final static int MSG_DELETE_PICS_END = 104; 		// 删除结束
	//private final static int MSG_EXPORT_CANCEL = 109;			// 导出过程点cancel
	private final static int MSG_IMPORT_DONE = 110;					// 导入结束
	//private final static int MSG_IMPORT_CANCEL = 111;			// 导入取消
	private final static int MSG_IMPORT_PROGRESS = 112;			// 导入过程
	private final static int MSG_SHOW_NOSD_DIALOG = 113;		// 无SD卡提示
	private final static int MSG_START_EXPORT = 114;	
	
	private final static int OPER_EXPORTING =  1 ;		// 导出中
	private final static int OPER_IMPORT_START =  2 ;	// 导入开始
	private final static int OPER_IMPORTING =  3 ;		// 导入中
	private final static int OPER_DONE=  4 ;	// 结束
	private final static int OPER_LOAD_START=  5 ;
	private int operateStatue = OPER_DONE ; // 操作状态
	
	/** 当前不可编辑 */
	private final static int EDIT_DISABLE = 0;
	/** 当前可编辑 */
	private final static int EDIT_ENABLE = 1;
	/** 编辑状态 */
	private int editStatue = EDIT_DISABLE;
	// 查看大图旋转后不重新取数据问题
	private boolean mIsDBChange = false ;
	// PhotoGridActivity 进入传递参数
	public static final String EXTRA_KEY_START_PORGRESS = "INTENT_START_PORGRESS";
	public static final int EXTRA_VALUE_START_PORGRESS = 190;
	
	public boolean isLoadEndWithNoChange = false;
	
	private Handler mHandler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case MSG_START_EXPORT:
				startService(ImportFileService.FLAG_EXPORT_IMAGE);
				mAdapter.shutdonwTasks(); // joy add 12.25
				break ;
			case MSG_SHOW_NOSD_DIALOG: // 无SD卡提示
				showDialogNoSDCard();
				dismissLoadDialog();
				dismissExportDlg();
				disImportProDlg();
				break;
			case MSG_LOAD_SUCCESS: // 从数据库获取数据
				String takeFileDir = ConfigDao.getInstance().getTakeFilePath();
				if(!"".equals(takeFileDir)){
					File getName = new File(takeFileDir);
					if(getName.exists()){
						startImport(takeFileDir);
					}
				}
				dismissLoadDialog();
				dismissExportDlg();
				disImportProDlg();
				mAdapter.setData(mGridViewData);
				mAdapter.restartTasks();
				//mAdapter.notifyDataSetChanged(); 在setEditState(false)方法中防止多次刷新
				setEditState(false);
				updateGuidView();
				break;
			case MSG_DELETE_PICS_PROCESS: // 批量删除进度条
				if (msg != null) {
					int count = msg.arg1;
					mDlgProgressExport.setProgress(count);
				}
				break;
			case MSG_RECOVER_PICS_PROCESS:// 批量恢复，删除进度条
				if (msg != null) {
					int count = msg.arg1;
					mDlgProgressExport.setProgress(count);
				}
				break;
			case MSG_DELETE_PICS_END: // 删除结束
				int delSucCount = 0;
				int delFailedCount = 0;
				boolean isDelCancel = false;
				if (msg != null) {
					delSucCount = msg.arg1;
					delFailedCount = msg.arg2;
					isDelCancel = (Boolean) msg.obj;
				}
				String deStr;
				if (delSucCount > 1) {
					deStr = getString(R.string.safebox_photos_delete_toast_tips);
				} else {
					deStr = getString(R.string.safebox_photo_delete_toast_tips);
				}

				showProgressDialog(deStr, delSucCount, delFailedCount, mDlgProgressExport, new OnClickListener() {
					@Override
					public void onClick(View v) {
						dismissExportDlg();
						showLoadDlg();
						loadImageFromDB();
						mDlgProgressExport.setCancelButton(getString(R.string.common_cancel), mExportProgressListener);
					}
				}, isDelCancel);
				SecurePicManager.getInstance().unRegistSecurePicListener();
				if (delFailedCount == 0 && isDelCancel == false) {
					ToastUtil.ShowSimpleTextShortToast(String.format(deStr, delSucCount),R.layout.custom_toast);
				}
				break;
			case MSG_RECOVER_PICS_END: // 批量导出结束
				int exSucCount = 0;
				int exFailedCount = 0;
				boolean isExportCancel = false;
				if (msg != null) {
					exSucCount = msg.arg1;
					exFailedCount = msg.arg2;
					isExportCancel = (Boolean) msg.obj;
				}
				String exStr;
				if (exSucCount > 1) {
					exStr = getString(R.string.safebox_photos_export_toast_tips);
				} else {
					exStr = getString(R.string.safebox_photo_export_toast_tips);
				}
				showProgressDialog(exStr, exSucCount, exFailedCount, mDlgProgressExport, new OnClickListener() {
					@Override
					public void onClick(View v) {
						dismissExportDlg();
						showLoadDlg();
						loadImageFromDB();
						mDlgProgressExport.setCancelButton(getString(R.string.common_cancel), mExportProgressListener);
					}
				}, isExportCancel);
				// add by joy 20121205
				SecurePicManager.getInstance().unRegistSecurePicListener();
				if (exFailedCount == 0 && isExportCancel == false) {
					ToastUtil.ShowSimpleTextShortToast(String.format(exStr, exSucCount),R.layout.custom_toast);
				}
				break;
			case MSG_IMPORT_DONE:
				// add by joy 20121205
				SecureQueueManager.getInstance().unregistImportPicListener();
				operateStatue = OPER_DONE; // 导入结束
				setEditState(false);
				int imSucCount = 0;
				int failedCount = 0;
				boolean isImportCancel = false;
				if (msg != null) {
					imSucCount = msg.arg1;
					failedCount = msg.arg2;
					isImportCancel = (Boolean) msg.obj;
				}
				String imStr;
				if (imSucCount > 1) {
					imStr = getString(R.string.safebox_photos_import_toast_tips);
				} else {
					imStr = getString(R.string.safebox_photo_import_toast_tips);
				}
				showProgressDialog(imStr, imSucCount, failedCount, mDlgProgressImprot, new OnClickListener() {
					@Override
					public void onClick(View v) {
						disImportProDlg();
						showLoadDlg();
						loadImageFromDB();
						mDlgProgressImprot.setCancelButton(getString(R.string.common_cancel), mImportProgressListener);
					}
				}, isImportCancel);
				// 3G数据上报
				if (failedCount == 0 && isImportCancel == false) {
					ToastUtil.ShowSimpleTextShortToast(String.format(imStr, imSucCount),R.layout.custom_toast);
				}
				break;
			case MSG_IMPORT_PROGRESS:
				if (msg != null) {
					int count = msg.arg1;
					mDlgProgressImprot.setProgress(count);
				}
				break;
			}
		}
	};

	/**
	 * 显示部分失败，导入导出中取消滚动条
	 * 
	 * @param primeTips
	 * @param success
	 * @param failed
	 * @param dialog
	 * @param clickListener
	 */
	private void showProgressDialog(String primeTips, int success, int failed, CustomProgressDialog dialog,
			OnClickListener clickListener, boolean isCancel) {
		String tip = primeTips;
		tip = String.format(tip, success);
		if (isCancel) { // 点取消不管有无失败 进度条不消失
			if (failed > 0) { // 有失败，加 xx failed
				tip += String.format(getString(R.string.safebox_photo_operate_failed), failed);
			}
			dialog.stop();
			dialog.setMessage(tip);
			dialog.setCancelButton(getString(R.string.common_ok), clickListener);

		} else {
			if (failed > 0) {// 有失败进度条不消失 ，加 xx failed
				tip += String.format(getString(R.string.safebox_photo_operate_failed), failed);
				dialog.stop();
				dialog.setMessage(tip);
				dialog.setCancelButton(getString(R.string.common_ok), clickListener);
			} else {
				loadImageFromDB();
			}
		}
	}
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_safebox_secure_photos);
		createEditTitleBar();
		//mDlgLoadPics =  new CustomLoadingDialog(this);
		initDialog() ;
		mDlgLoadPics =new CustomLoadingDialog(this);
		mDlgLoadPics.setMessage(getString(R.string.image_view_laoding));
//		mDlgLoadPics.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		
		mDlgProgressImprot = new CustomProgressDialog(this) ;
		mDlgProgressImprot.setCancelOnClickListener(mImportProgressListener);
		
		mDlgProgressExport = new CustomProgressDialog(this);
		mDlgProgressExport.setCancelOnClickListener(mExportProgressListener);

		mGridViewData = new ArrayList<AblumnPicEntity>();
		mGvSecurePic = (GridView) findViewById(R.id.gv_secure_pics);
		mIvUserGuid = (ImageView) findViewById(R.id.iv_secure_no_photo_bg);

		mAdapter = new SecurePicGridAdapter(this, adapterSimpleCallback);

		mGvSecurePic.setAdapter(mAdapter);
		mGvSecurePic.setOnItemClickListener(this);
		mGvSecurePic.setOnItemLongClickListener(mItemLongClickListener);
		
		btnAddPhotos = (CustomIconButton) findViewById(R.id.btn_add_photos);
		btnAddPhotos.setOnClickListener(this);
		layBtnDelAndRec = (RelativeLayout) findViewById(R.id.line_del_and_rec);
		btnDelete = (CustomIconButton) findViewById(R.id.btn_del_photos);
		btnDelete.setOnClickListener(this);
		btnRecypt = (CustomIconButton) findViewById(R.id.btn_recypt_photos);
		btnRecypt.setOnClickListener(this);

		Intent intent = getIntent() ;
		mIntentExtra = intent.getIntExtra(EXTRA_KEY_START_PORGRESS, -1) ;
	}
	private OnClickListener mExportProgressListener = new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			SecurePicManager.getInstance().setCancel(true);
			
		}
	};
	private OnClickListener mImportProgressListener = new OnClickListener() {
		
		@Override
		public void onClick(View v) {
			//  导入取消
			SecureQueueManager.getInstance().dismissSecureQueue();
			// google数据上报
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "导入过程中取消", "私密图片", 1l);
			
		}
	};

	@Override
	protected void onResume() {
		super.onResume();
		if (mIsDBChange && operateStatue != OPER_LOAD_START && isLoadEndWithNoChange == false
				|| ConfigDao.getInstance().getImportImgByShareFlag()) {
			mIsDBChange = false;
			ConfigDao.getInstance().setImportImgByShareFlag(false);
			showLoadDlg();
			loadImageFromDB();
		}
		// google数据上报
		GoogleAnalyticsTracker.getInstance().trackView("私密图片");

	}

	@Override
	protected void onStart() {
		super.onStart();
		// button 显示状态
//		int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();
//		if (userLevel == UserInfoMode.MEMBER_OUT_OF_DATE_USER || userLevel == UserInfoMode.TRIAL_OUT_OF_DATE_USER) {
//			// 过期
//			btnAddPhotos.setIconResource(R.drawable.btn_vault_photos_import_vip_expired_nor);
//			btnAddPhotos.setIconResourcePress(R.drawable.btn_vault_photos_import_vip_expired_press);
//		} else {
//			btnAddPhotos.setIconResource(R.drawable.btn_vault_photos_import_vip_nor);
//			btnAddPhotos.setIconResourcePress(R.drawable.btn_vault_photos_import_vip_press);
//		}
//		mDlgLoadPics.show();
//		showLoadDlg();
		
//		mDlgLoadPics.dismiss();
		
		btnAddPhotos.setIconResource(getVipResourceId(BTN_TYPE_NOR));
		btnAddPhotos.setIconResourceDisabled(getVipResourceId(BTN_TYPE_DISABLE));
		btnAddPhotos.setIconResourcePress(getVipResourceId(BTN_TYPE_PRESS));
		
		// 导入界面进入，状态为开始导入
		if (mIntentExtra == EXTRA_VALUE_START_PORGRESS) {
			mIntentExtra = -1;
			if (SecureQueueManager.getInstance().getSqueueCount() > 0) // add by joy 内存过高被销毁后再回来会有导入成功提示 2013.02.21
				operateStatue = OPER_IMPORT_START;
		}
		// 开始导入，显示进度条
		if (operateStatue == OPER_IMPORT_START) {
			operateStatue = OPER_IMPORTING;
			
			// 显示进度条,开服务导入
			SecureQueueManager.getInstance().registImportPicListener(mImportPicListener) ; // add by joy 20121205
			Intent intent = new Intent(this, ImportFileService.class);
			intent.setFlags(ImportFileService.FLAG_IMPROT_IMAGE);
			startService(intent);
			
			// 显示进度条, 此时服务已经开始了，需要优化啊
			int totalCount = SecureQueueManager.getInstance().getSqueueCount();
			if (!mDlgProgressImprot.isShowing()) {
				mDlgProgressImprot.setMax(totalCount);
				mDlgProgressImprot.setMessage(getString(R.string.safebox_photo_dlg_importing));
				mDlgProgressImprot.setProgress(0);
				mDlgProgressImprot.show();
			}
		} // 正在导入导出过程，不加载数据 
		else if (operateStatue != OPER_EXPORTING && operateStatue != OPER_IMPORTING) {
			if(editStatue == EDIT_DISABLE){
				operateStatue = OPER_LOAD_START ;
				if(isLoadEndWithNoChange == false){
					showLoadDlg();
					loadImageFromDB();
					isLoadEndWithNoChange = true;
				}
			}
		}
	}

	@Override
	protected void onPause() {
		super.onPause();
	}

	@Override
	protected void onStop() {
		//free();
		super.onStop();
	}
	public static final int REQ_DBCHANGE_CODE = 1 ;
	public static final int RES_DBCHANGE_CODE = 2 ;
	public static final String EXTRA_KEY_ISDBCHANGE = "extra_isdb_change"  ;
	@Override
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		super.onActivityResult(requestCode, resultCode, data);
		if(requestCode == REQ_DBCHANGE_CODE && resultCode == RES_DBCHANGE_CODE){
			mIsDBChange = data.getBooleanExtra(EXTRA_KEY_ISDBCHANGE,false) ;				
		}
		isLoadEndWithNoChange = false;
	}
	@Override
	protected void onDestroy() {
		free();
		mAdapter.free();

		if (mDlgVIPOut != null && mDlgVIPOut.isShowing()) {
			mDlgVIPOut.dismiss();
		}
		if (mDlgSelectImprot != null && mDlgSelectImprot.isShowing()) {
			mDlgSelectImprot.dismiss();
		}
		if (mDlgLoadPics != null && mDlgLoadPics.isShowing()) {
			mDlgLoadPics.dismiss();
		}
		if (mDlgProgressExport != null && mDlgProgressExport.isShowing()) {
			mDlgProgressExport.dismiss();
		}
		if (mDlgProgressImprot != null && mDlgProgressImprot.isShowing()) {
			mDlgProgressImprot.dismiss();
		}
		super.onDestroy();
	}

	@Override
	public void onBackPressed() {
		if (editStatue == EDIT_ENABLE) {
			setEditState(false);
			return;
		}
		super.onBackPressed();
	}
	@Override
	protected void onRestoreInstanceState(Bundle savedInstanceState) {
		operateStatue = savedInstanceState.getInt("OPERATE_STATUE") ;
		super.onRestoreInstanceState(savedInstanceState);
	}

	@Override
	protected void onSaveInstanceState(Bundle outState) {
		outState.putInt("OPERATE_STATUE", operateStatue) ;
		super.onSaveInstanceState(outState);
	}
	private ImportPicListener mImportPicListener = new ImportPicListener() {
		
		@Override
		public void onSuccessOperatePics(int count) {
			sendMessage(MSG_IMPORT_PROGRESS, count) ;
		}
		
		@Override
		public void onFinishedOperatePics(int sucCount,int failedCount,boolean isCancel) {
			sendMessage(MSG_IMPORT_DONE,sucCount,failedCount,isCancel) ;
		}
		
	};
	
	/**
	 * 左clear all 右 cancel
	 */
	private void createClearTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), "", getString(R.string.safebox_photo_clearall), new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 取消全选 创建clear
				createSelectTitleBar();
				notifyChecked(false);
				setBtnEnabled();
			}
		}, getString(R.string.common_cancel), new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 进入正常状态
				setEditState(false);
			}
		}, true);
	}

	/**
	 * 左 select all 右 cancel
	 */
	private void createSelectTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), "",getString(R.string.safebox_photo_selectall), new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 全选，创建clearTitleBar
				createClearTitleBar();
				notifyChecked(true);
				setBtnEnabled();
			}
		}, getString(R.string.common_cancel), new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 进入正常状态
				setEditState(false);
			}
		}, true);
	}

	/**
	 * 创建初始titleBar
	 */
	private void createEditTitleBar() {
		updateSubTitleBar(this, findViewById(R.id.secure_line_titlebar), getString(R.string.safebox_secure_pic_title),
				-1, null, R.drawable.sel_btn_vault_photo_edit, new OnClickListener() {

					@Override
					public void onClick(View v) {
						// 进入编辑状态,
						if (!isEmpty()) {
							createSelectTitleBar();
							setEditState(true);
							// google数据上报
							GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "批量编辑图片", "私密图片", 1L);
//							GoogleAnalyticsTracker.getInstance().trackView("批量编辑照片");
						}
					}
				}, true);
		setSubTitleBarBtnVisible(findViewById(R.id.secure_line_titlebar), !isEmpty(), !isEmpty());
	}

	private OnItemLongClickListener mItemLongClickListener = new OnItemLongClickListener() {

		@SuppressWarnings("unchecked")
		@Override
		public boolean onItemLongClick(AdapterView<?> parent, View view, int position, long id) {
			// 进入编辑模式
			setEditState(true);
			// 设置选中状态
			AblumnPicEntity ablumnPicEntity = mGridViewData.get(position);
			DataHolder dataHolder = (DataHolder) view.getTag();
			if (!mAdapter.getCheckedMap().containsKey(ablumnPicEntity.getImgId())) {
				mAdapter.setSelected(dataHolder.checkbox, true);
				mAdapter.getCheckedMap().put(ablumnPicEntity.getImgId(), ablumnPicEntity);
				mAdapter.updateSelStatue() ; // 设置选中状态为初始状态，否则点击checkBox不显示选中
				 if (mAdapter.getCheckedSize() == mGridViewData.size()) {
					 createClearTitleBar() ;
				 } else {
					 createSelectTitleBar() ;
				 }
				setBtnEnabled();
			}

			return true;
		}

	};
	private SecurePicManager.SecurePicsListener mPicsListener = new SecurePicManager.SecurePicsListener() {

		@Override
		public void onHandleRecoverPics(int count, String path) {
			// android.util.Log.d("lee", "export count ++ "+count) ;
			// Intent intent = new
			// Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE,Uri.fromFile(new
			// File(path))) ;
			// sendBroadcast(intent) ;
			sendMessage(MSG_RECOVER_PICS_PROCESS, count);
		}

		@Override
		public void onFinishedRecoveryPics(int succCount, int failedCount, boolean isCancel) {
			operateStatue = OPER_DONE;
			sendMessage(MSG_RECOVER_PICS_END, succCount, failedCount, isCancel);
		}

		@Override
		public void onFinishedDeletePics(int succCount, int failedCount, boolean isCancel) {
			operateStatue = OPER_DONE;
			sendMessage(MSG_DELETE_PICS_END, succCount, failedCount, isCancel);
		}

		@Override
		public void onHandleDeletePics(int count) {
			sendMessage(MSG_DELETE_PICS_PROCESS, count);
		}
	};
	SecurePicGridAdapter.GridAdapterSimpleCallback adapterSimpleCallback = new SecurePicGridAdapter.GridAdapterSimpleCallback() {
		@Override
		public void onConverViewClick() {

			 if (mAdapter.getCheckedSize() == mGridViewData.size()) {
				 createClearTitleBar() ;
			 } else {
				 createSelectTitleBar() ;
			 }
			setBtnEnabled();
		}
	};

	/**
	 * 关闭菊花
	 */
	private void dismissLoadDialog() {
		if (mDlgLoadPics != null && mDlgLoadPics.isShowing()) {
			mDlgLoadPics.dismiss();
		}
	}

	/**
	 * 开菊花
	 */
	private void showLoadDlg() {
		if (mDlgLoadPics != null && !mDlgLoadPics.isShowing()) {
			mDlgLoadPics.show();
		}
	}

	/**
	 * 显示导出进度条
	 * 
	 * @param tips
	 */
	private void showExportDlg(String tips) {
		if (!mDlgProgressExport.isShowing()) {
			mDlgProgressExport.setMax(mAdapter.getCheckedSize());
			mDlgProgressExport.setMessage(tips);
			mDlgProgressExport.setProgress(0);
			mDlgProgressExport.show();
		}
	}
	/**
	 * 关闭导入进度条
	 */
	private void disImportProDlg() {
		if (mDlgProgressImprot != null && mDlgProgressImprot.isShowing()) {
			mDlgProgressImprot.dismiss();
		}
	}
	/**
	 * 关闭进度Dialog
	 */
	private void dismissExportDlg() {
		if (mDlgProgressExport != null && mDlgProgressExport.isShowing()) {
			mDlgProgressExport.dismiss();
		}
	}

	/**
	 * 发送进度通知
	 * 
	 * @param what
	 * @param count
	 */
	private void sendMessage(int what, int count) {
		Message message = new Message();
		message.what = what;
		message.arg1 = count;
		if (hasUIHandler()) {
			this.mHandler.sendMessage(message);
		}
	}
	/**
	 * 发送导入成功handler
	 * @param what
	 * @param sucCount
	 * @param failedCount
	 */
	private void sendMessage(int what, int sucCount, int failedCount,boolean isCancel) {
		Message message = new Message();
		message.what = what;
		message.arg1 = sucCount;
		message.arg2 = failedCount;
		message.obj = isCancel ;
		if (hasUIHandler()) {
			this.mHandler.sendMessage(message);
		}
	}

	/**
	 * 发送空消息通知UI。
	 * 
	 * @param what
	 */
	private void sendEmptyMessage(int what) {
		if (hasUIHandler()) {
			this.mHandler.sendEmptyMessage(what);
		}
	}

	/**
	 * 判断Manager里是否有设置了UI交互用的Handler
	 * 
	 * @return
	 */
	private boolean hasUIHandler() {
		return this.mHandler != null;
	}

	/**
	 * 取DB中的图片
	 */
	private void loadImageFromDB() {
		Thread loadImageThread = new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					// add by joy 20121205  恢复损坏的图片
//					SecureQueueManager.getInstance().recoverBroken();
					
					mGridViewData = SecurePicManager.getInstance().getPicsFromDB();
					sendEmptyMessage(MSG_LOAD_SUCCESS);
				} catch (SdCardNotExistException e) {
					sendEmptyMessage(MSG_SHOW_NOSD_DIALOG);
				}
				operateStatue = OPER_DONE; 
			}
		});
		loadImageThread.start();
	}

	/**
	 * 释放数据
	 */
	private void free() {
		if (mGridViewData != null && !mGridViewData.isEmpty()) {
			mGridViewData.clear();
		}
		if (mDlgDelConfirm != null && mDlgDelConfirm.isShowing()) {
			mDlgDelConfirm.dismiss();
		}
		if (mDlgResConfirm != null && mDlgResConfirm.isShowing()) {
			mDlgResConfirm.dismiss();
		}
	}

	/**
	 * 设置编辑状态
	 * 	
	 * 	删除，恢复按钮 。
	 * 
	 * @param isEditState
	 */
	private void setEditState(boolean isEditState) {
		mAdapter.setConvertViewCheckboxable(isEditState);
		mAdapter.setConvertViewClickable(isEditState);
		if (isEditState) {
			editStatue = EDIT_ENABLE ;
			layBtnDelAndRec.setVisibility(View.VISIBLE);
			btnAddPhotos.setVisibility(View.GONE);
			setBtnEnabled();
		} else {
			editStatue = EDIT_DISABLE ;
			createEditTitleBar();
			// 退出编辑状态下清空选中状态
			mAdapter.setSelAll(false);
			mAdapter.notifyCheckAll(false);
			layBtnDelAndRec.setVisibility(View.GONE);
			btnAddPhotos.setVisibility(View.VISIBLE);
			/*--buck fix bug NO 9587399----20121207-------S-*/
//			if(mDlgDelConfirm!=null&&mDlgDelConfirm.isShowing()){
//				mDlgDelConfirm.dismiss();
//			}
//			if(mDlgResConfirm!=null&&mDlgResConfirm.isShowing()){
//				mDlgResConfirm.dismiss();
//			}
			/*--buck fix bug NO 9587399----20121207-------E-*/
		}
		mAdapter.notifyDataSetChanged();
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
	}

	/**
	 * 编辑状态下设置button是否可选
	 */
	private void setBtnEnabled() {
		btnDelete.setEnabled(!mAdapter.getCheckedMap().isEmpty());
		btnRecypt.setEnabled(!mAdapter.getCheckedMap().isEmpty());
	}

	/**
	 * 获取选中图片的ID 
	 * 
	 * 对应osmultimedia.db中的id
	 * 
	 * @return
	 */
	private long[] getSelectedPicsID() {
		Map<Long, AblumnPicEntity> map = mAdapter.getCheckedMap();
		long[] valueID = new long[map.size()];
		int i = 0;
		Iterator<Entry<Long, AblumnPicEntity>> iterator = map.entrySet().iterator();
		while (iterator.hasNext()) {
			Entry<Long, AblumnPicEntity> entry = iterator.next();
			long key = (long) entry.getKey();
			valueID[i++] = key;
		}
		return valueID;
	}

	/**
	 * 启动service 删除，导出
	 * 
	 * @param exportType
	 */
	private void startService(int exportType) {
		operateStatue = OPER_EXPORTING ; // 导出状态
		Intent intent = new Intent(SecurePicGridActivity.this, ImportFileService.class);
		long[] valueID = getSelectedPicsID();
		if (valueID != null) {
			intent.putExtra(ImportFileService.INTENT_EXTRA_NAME, valueID);
		}
		intent.setFlags(exportType);
		startService(intent);
	}
	
	/**
	 * 数据库是否有图片
	 * 
	 * @return
	 */
	private boolean isEmpty() {
		if (mGridViewData == null || mGridViewData.isEmpty()) {
			return true;
		}
		return false;
	}

	/**
	 * 更新引导画面
	 * 	
	 * 数据为空显示引导画面
	 */
	private void updateGuidView() {
		if (isEmpty()) {
			mIvUserGuid.setVisibility(View.VISIBLE); // 没有图片指引
			mGvSecurePic.setVisibility(View.GONE);
		} else {
			mIvUserGuid.setVisibility(View.GONE);
			mGvSecurePic.setVisibility(View.VISIBLE);
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * android.widget.AdapterView.OnItemClickListener#onItemClick(android.widget
	 * .AdapterView, android.view.View, int, long)
	 */
	@Override
	public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
		AblumnPicEntity entity = mGridViewData.get(position);
		Intent intent = new Intent();
		intent.setClass(SecurePicGridActivity.this, ImageViewActivity.class);
		intent.putExtra(ImageViewActivity.CURRENT_ITEM_ID, entity.getImgId());
		startActivityForResult(intent,REQ_DBCHANGE_CODE);
		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "查看图片", "私密图片", 1L);
	}
	/**
	 * 初始化dialog
	 */
	private void initDialog() {
		mDlgVIPOut = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.safebox_photo_dlg_not_vip_member_tips_forPhoto),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_left),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_right), mDialogClickListener);
		mDlgVIPOut.setCanceledOnTouchOutside(true);
		
		mDlgSelectImprot = CustomDialog.createItemCustomDialog(this, null , null , new DialogInterface.OnClickListener() {

			@Override
			public void onClick(DialogInterface dialog, int which) {
				if (which == CustomDialog.UP_BUTTON_CLICK) {
					dialog.dismiss();
					Intent intent = new Intent(SecurePicGridActivity.this, AblumGridActivity.class);
					startActivity(intent);
					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
					ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);
				} else if (which == CustomDialog.DOWN_BUTTON_CLICK) {
					dialog.dismiss();
					Intent intent = new Intent(SecurePicGridActivity.this, CameraTakeSecurePicActivity.class);
					SecureQueueManager.getInstance().setNewCamera(true);
					SecureQueueManager.getInstance().setKilledCamera(false);
					startActivityForResult(intent, 1001);
//					startActivity(intent);
					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
					ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);	
				} else {
					dialog.dismiss();
				}
			}
		});
		mDlgSelectImprot.setCanceledOnTouchOutside(true);
		
		mDlgDelConfirm = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.safebox_photo_dlg_delete_tips), getString(R.string.common_cancel),
				getString(R.string.common_delete), mDialogClickListener);
		mDlgDelConfirm.setCanceledOnTouchOutside(true);
		mDlgResConfirm = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.safebox_photo_dlg_decrypt_tips), getString(R.string.common_cancel),
				getString(R.string.common_restore), mDialogClickListener);
		mDlgResConfirm.setCanceledOnTouchOutside(true);
	}
	
	private DialogInterface.OnClickListener mDialogClickListener = new DialogInterface.OnClickListener() {

		@Override
		public void onClick(DialogInterface dialog, int which) {
			if (dialog.equals(mDlgVIPOut)) {
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// Cancel
					mDlgVIPOut.dismiss();
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK: // 
					// OK
					mDlgVIPOut.dismiss();
					Intent vipIntent = new Intent(SecurePicGridActivity.this, VipUpgradeActivity.class);
					startActivity(vipIntent);
					GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "通过私密进入VIP", "进入VIP", 1l);
					break;
				}
			} else if (dialog.equals(mDlgDelConfirm)) { //删除按钮
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// Cancel
					mDlgDelConfirm.dismiss();
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK:
					SecurePicManager.getInstance().registSecurePicListener(mPicsListener);
					mDlgDelConfirm.dismiss();
					showExportDlg(getString(R.string.safebox_photo_dlg_deleteing));
					startService(ImportFileService.FLAG_DELETE_IMAGE);
					mAdapter.shutdonwTasks(); // joy add 12.25
					break;
				}

			} else if (dialog.equals(mDlgResConfirm)) { // 导出按钮
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// Cancel
					mDlgResConfirm.dismiss();
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK:
					// OK
					if(MemoryStatus.isAvaiableSpace()){
						SecurePicManager.getInstance().registSecurePicListener(mPicsListener);
						mDlgResConfirm.dismiss();
						showExportDlg(getString(R.string.safebox_photo_dlg_restoring));
						// 20130128 导入后快速导出，删除媒体数据库线程未完成，此时导出，会丢掉部分图片
						// 判断 DeleteQueue 是否为空,不为空发送 MSG_START_EXPORT
						Thread t = new JudgeDelQueueThread() ;
						t.setName("JudgeDeleteQueueThread") ;
						t.start() ;
						// startService(ImportFileService.FLAG_EXPORT_IMAGE);
						// mAdapter.shutdonwTasks(); // joy add 12.25
					}else{
						ToastUtil.ShowSimpleTextLongToast(getString(R.string.vault_photos_sdcard_isfull),R.layout.custom_toast);
					}
					break;
				}
			}
		}
	};
	
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_add_photos:
			// 添加图片，如果VIP过期，给出提示
			checkVipLevel();
			
			break;
		case R.id.btn_del_photos: // 批量删除
			int delID; // photo 或者photos
			if (mAdapter.getCheckedSize() > 1) {
				delID = R.string.safebox_photo_dlg_delete_tips;
			} else {
				delID = R.string.safebox_photo_dlg_delete_tips_one;
			}
			if (mDlgDelConfirm != null && !mDlgDelConfirm.isShowing()) {
				CustomDialog.setDialogTitle(mDlgDelConfirm,getString(delID));
				mDlgDelConfirm.show();
			}
			// google数据上报
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "批量删除图片", "私密图片", 1L);
			break;
		case R.id.btn_recypt_photos: // 批量导出
			int decID; // photo 或者photos
			if (mAdapter.getCheckedSize() > 1) {
				decID = R.string.safebox_photo_dlg_decrypt_tips;
			} else {
				decID = R.string.safebox_photo_dlg_decrypt_tips_one;
			}
			if (mDlgResConfirm != null && !mDlgResConfirm.isShowing()) {
				CustomDialog.setDialogTitle(mDlgResConfirm,getString(decID));
				mDlgResConfirm.show();
			}
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "批量恢复图片", "私密图片", 1L);
			// 3G数据上报
			ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Exp_OK);
			break;
		default:
			break;
		}
	}
	
	private void checkVipLevel(){
		int potoCount = 0;
		
		int userLevel = DaoCreator.createUserInfoDao().getUserLevelInfo();
		if (userLevel == UserInfoMode.MEMBER_OUT_OF_DATE_USER || userLevel == UserInfoMode.TRIAL_OUT_OF_DATE_USER || userLevel == UserInfoMode.STANDARD_USER ) {
			try {
				potoCount = MultiMediaDao.getInstance().getCountByType(DaoConstant.MEDIA_TYPE_PIC);
			} catch (SdCardNotExistException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(potoCount >= 10){
				mDlgVIPOut.show();
				GoogleAnalyticsTracker.getInstance().trackView("私密升级VIP弹出框");
			}else{
				// add by joy 2013.02.22
				if (!MemoryStatus.isAvaiableSpace()) {
					ToastUtil.ShowSimpleTextLongToast(getString(R.string.vault_photos_sdcard_isfull),R.layout.custom_toast);
					return ;
				}
				mDlgSelectImprot.show();
			}
		} else {
			// add by joy 2013.02.22
			if (!MemoryStatus.isAvaiableSpace()) {
				ToastUtil.ShowSimpleTextLongToast(getString(R.string.vault_photos_sdcard_isfull),R.layout.custom_toast);
				return ;
			}
			mDlgSelectImprot.show();
		}
		
	}
	
//	private void newChooseDlg()
//	{
//		CustomDialog.createItemCustomDialog(this, null , null , new DialogInterface.OnClickListener() {
//
//			@Override
//			public void onClick(DialogInterface dialog, int which) {
//				if (which == CustomDialog.UP_BUTTON_CLICK) {
//					dialog.dismiss();
//					Intent intent = new Intent(SecurePicGridActivity.this, AblumGridActivity.class);
//					startActivity(intent);
//					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
//					ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);
//				} else if (which == CustomDialog.DOWN_BUTTON_CLICK) {
//					dialog.dismiss();
//					Intent intent = new Intent(SecurePicGridActivity.this, CameraTakeSecurePicActivity.class);
//					SecureQueueManager.getInstance().setKilledCamera(false);
//					startActivity(intent);
//					GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
//					ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);	
//				} else {
//					dialog.dismiss();
//				}
//			}
//		}).show();
//
////		new AlertDialog.Builder(this).setTitle("列表框").setItems(
////			     new String[] { "Camera", "Album" }, new DialogInterface.OnClickListener() {
////					@Override
////					public void onClick(DialogInterface dialog, int which) {
////						// TODO Auto-generated method stub
////						if(which == 0){
////							dialog.dismiss();
////							Intent intent = new Intent(SecurePicGridActivity.this, CameraTakeSecurePicActivity.class);
////							SecureQueueManager.getInstance().setKilledCamera(false);
////							startActivity(intent);
////							GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
////							ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);									
////						}else if (which == 1) {
////							dialog.dismiss();
////							Intent intent = new Intent(SecurePicGridActivity.this, AblumGridActivity.class);
//////							intent.putExtra(CameraTakeSecurePicActivity.WAS_SHORTCUT, false);
////							startActivity(intent);
////							GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "图片导入", "私密图片", 1L);
////							ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_MV_PIC_Imp_OK);
////						}else {
////							dialog.dismiss();
////						}
////					}
////				}).setNegativeButton(
////			     "确定", null).show();
//	 }
	
//	/**
//	 * 创建快捷方式
//	 */
//	public void createDeskShortCut() {
//
//		Intent shortcut = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
//
//		shortcut.putExtra("duplicate", false);
//
//
//		shortcut.putExtra(Intent.EXTRA_SHORTCUT_NAME, "one camera");
//
//
//		shortcut.putExtra(Intent.EXTRA_SHORTCUT_ICON_RESOURCE, Intent.ShortcutIconResource.fromContext(this,R.drawable.os_icon));
//
//		Intent intent = new Intent(this, CameraTakeSecurePicActivity.class);
//		
//		intent.setAction("android.intent.action.MAIN");
//
//		intent.addCategory("android.intent.category.LAUNCHER");
//
//		intent.putExtra(CameraTakeSecurePicActivity.WAS_SHORTCUT, true);
//		
//		shortcut.putExtra(Intent.EXTRA_SHORTCUT_INTENT, intent);
//
//		sendBroadcast(shortcut);
//	}
//	
	
	private void startImport(String takeFileDir){
		String[] selectMedia = { MediaStore.Images.Media._ID, Media.DATA, MediaStore.Images.Media.DATE_ADDED };

		//取比较路径
		String imgPath = "";
		//为了删除
		long imageId = -1;
		//取原图
		FileInputStream fileInputStream4User = null;
		//取图用来判断是否自动保存
		FileInputStream fileInputStream4Media = null;
		
		Cursor cursor = this.getContentResolver().query(Images.Media.EXTERNAL_CONTENT_URI, selectMedia, Media.DATE_ADDED + "<=" + (System.currentTimeMillis() / 1000), null, Media.DATE_MODIFIED + " desc");
		
		if (cursor.moveToFirst()) {
				/**
				 *  _data：文件的绝对路径  Media.DATA='_data'
				 */
			imgPath = cursor.getString(cursor.getColumnIndex(Media.DATA));
			imageId = cursor.getInt(cursor.getColumnIndex(Media._ID));
			}
		cursor.close();
		if(imgPath == null || imgPath.length() == 0){
			return;
		}
		
	
		// 系统未生成图片，不用删除，直接导入
		File sysFile = new File(imgPath) ;
		if (!sysFile.exists()) {
			if (ImportUtil.import1Photo(takeFileDir,"image/jpeg")) {
				ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips),
						1),R.layout.custom_toast);
			} else {
				ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips),
						0),R.layout.custom_toast);
			}
			ConfigDao.getInstance().setTakeFilePath("");
			return;
		}
		byte[] userData = new byte[1024];
		byte[] mediaData = new byte[1024];
		try {
			fileInputStream4User = new FileInputStream(takeFileDir);
			fileInputStream4Media = new FileInputStream(imgPath);
			
			fileInputStream4User.read(userData);
			fileInputStream4Media.read(mediaData);
		} catch (IOException e) {
			e.printStackTrace();
			//daiding
			return;
		}
		finally {
			if(fileInputStream4User != null){
				try {
					fileInputStream4User.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(fileInputStream4Media != null){
				try {
					fileInputStream4Media.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}					
		}
		
		if(Arrays.equals(userData, mediaData)){
			int finalDelete = ImportUtil.deleteImgFromMediaStore(imageId);
			if(finalDelete == -1){
				File file = new File(takeFileDir);
				file.delete();
				ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed),R.layout.custom_toast);
				ConfigDao.getInstance().setTakeFilePath("");
				return;
			}
		};
//		String importStr = getString(R.string.safebox_photos_import_toast_tips);

		if(ImportUtil.import1Photo(takeFileDir,"image/jpeg")){
			//成功
			ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips), 1),R.layout.custom_toast);
		}else{
			File file = new File(takeFileDir);
			file.delete();
			ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed),R.layout.custom_toast);
		}
		
		ConfigDao.getInstance().setTakeFilePath("");
	}
	
	private class JudgeDelQueueThread extends Thread{
			
			@Override
			public void run() {
				// 删除线程还在，阻塞
				while (!SecureQueueManager.getInstance().isDeleteQueueEmpty()) {
					try {
						Thread.sleep(500);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				sendEmptyMessage(MSG_START_EXPORT) ;
			}
		}
	
}