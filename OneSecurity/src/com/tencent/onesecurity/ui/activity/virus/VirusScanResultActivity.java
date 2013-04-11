/**
 * @ClassName: VirusFastScanResultActivity
 * @Description:病毒快速扫描结果 Activity
 * @author: hunt
 * @date: 2012-10-31
 */
package com.tencent.onesecurity.ui.activity.virus;

import java.util.ArrayList;
import java.util.List;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.virus.VirusLibraryManager;
import com.tencent.onesecurity.manager.virus.VirusScanManager;
import com.tencent.onesecurity.manager.virus.VirusWhiteListManager;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.adapter.VirusScanResultAdapterAbstract;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.ProgressBarDialog;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.winmess.WinmessAppReportManager;
import com.tencent.onesecurity.util.FileUtil;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.qscanner.QScanConstants;
import com.tencent.tmsecure.module.software.SoftwareManager;

/**
 * @ClassName: VirusFastScanResultActivity
 * @Description:病毒快速扫描结果 Activity
 * @author: hunt
 * @date: 2012-10-31
 */
public class VirusScanResultActivity extends BaseActivity {
	public static final String KEY_ITEMS = "KEY_ITEMS";
	public static final String KEY_TIME = "KEY_TIME";

	// 有病毒被清除,但不是全部病毒被清除 画面显示
	private LinearLayout layScanCleaningHead = null;
	// 全部病毒被清除 画面显示
	private LinearLayout layScanCleanedHead = null;
	// 没有病毒或者病毒全部被清理的文字
	private TextView textNoVirusTitle = null;
	private TextView textNoVirusTitle2 = null;
	// 病毒个数描述 TextView
	private TextView textScanVirusesNotice = null;
	// 已删除病毒和风险的tip
	private TextView textClearVirusTip = null;
	// // 被处理病毒个数描述布局 LinearLayout
	// private LinearLayout layScanClearedNotice = null;
	// // 处理病毒个数 TextView
	// private TextView textScanClearedCountNotice = null;
	// 病毒检出列表 ListView
	private ListView listScanResult = null;
	// 病毒数据源
	private List<ScanResultModel> virusList = null;
	// 风险数据源
	private List<ScanResultModel> riskList = null;
	
	// 白名单数据源
	private List<ScanResultModel> whiteList = null;
	
	
	// 已清除病毒数据源
	private List<ScanResultModel> cleanedVirusList = null;
	// 正常数据源
	private List<ScanResultModel> secureList = null;

	// 病毒列表适配器
	private VirusScanResultAdapterAbstract virusScanResultAdapter = null;
	// 软件管理相关管理器 Manager
	private SoftwareManager softwareManager = null;
	// 删除病毒软件的广播接收器
	private UninstallReceiver uninstallReceiver = null;
	// 病毒扫描结果 Handler
	private VirusScanResultHandler virusScanResultHandler = null;
	// 扫描个数（virus & ok）
	private TextView item_num_virus, item_num_ok;
	// 时间（virus & ok）
	private TextView time_virus, time_ok;
	// 发现病毒icon
	private ImageView iconFindVirus;
	// 无病毒icon
	private ImageView iconNoVirus;
	
	// 本次检查是否有病毒
	public static int scanedVirusNum = 0; // 扫描后的病毒个数，这个值不随clear的改变而改变

	// APK文件删除确认Dialog
	private Dialog apkDeleteConfirmDialog = null;
	// 加入白名单确认
	private Dialog apkTurstConfirmDialog = null;

	private ScanResultModel deleteScanResultModel = null;
	/** 白名单保存*/
	private ScanResultModel trustScanResultModel = null;
	String funcKey = "";
	/** 病毒过期提示 */
	private LinearLayout mVirusUpdateLayout;
	/** 病毒库更新转动箭头*/
	private ImageView mIvUpdate ;
	
	/** 病毒库过期升级动画 */
	private Animation mUpdateAnimation;
	
	private Handler mUpdateHandler ;
	
	private VirusLibraryManager mUpdateManager ;
	/** 病毒库升级进度Dialog */
	private ProgressBarDialog mProgressUpdate;
	
	// 是否正在进行病毒库更新,去除检查阶段
	private  boolean isUpdating = false;
	
	
	/**
	 * 构造
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		View virusScanResultview = LayoutInflater.from(this).inflate(
				R.layout.layout_virus_sacn_result, null);

		updateSubTitleBar(this, virusScanResultview,
				getString(R.string.vvcl_report), -1, new onBackClickListener(),
				-1, null, false);

		super.setContentView(virusScanResultview);

		// 注册软件卸载用到的广播接收器
		uninstallReceiver = new UninstallReceiver();
		IntentFilter intentFilter = new IntentFilter(
				"android.intent.action.PACKAGE_REMOVED");
		intentFilter.addDataScheme("package");
		registerReceiver(uninstallReceiver, intentFilter);

		funcKey = getIntent().getStringExtra("FUNC");
		ArrayList<ScanResultModel> scanResultModelList = VirusScanManager
				.getInstance().getResult(funcKey);

		scanedVirusNum = 0;

		// 初始化 数据成员
		this.initDataItem(scanResultModelList);
		// 初始化 所使用的工具类
		this.initActivityTools();
		// 初始化 全面扫毒画面项目
		this.initViewItem(virusScanResultview);
		// 初始化 病毒列表适配器
		this.initVirusAdapter();
		// 设置画面检出病毒个数
		this.setViewForVirusCount();

		// 初始化 退出全面扫毒等待 Dialog
		this.initApkDeleteConfirmDialog(this);
		
		this.initTrustAppConfirmDialog(this) ;
		
		initProgessDialog(this) ;
	}

	/**
	 * 恢复
	 */
	@Override
	protected void onResume() {
		super.onResume();
	}

	/**
	 * 暂停
	 */
	@Override
	protected void onPause() {
		super.onPause();

	}

	// /**
	// * 按键压下事件
	// */
	// @Override
	// public boolean onKeyDown(int keyCode, KeyEvent event) {
	//
	// // 跳转至主画面
	// this.jumpToMainView();
	// finish();
	//
	// return super.onKeyDown(keyCode, event);
	// }

	@Override
	public void onBackPressed() {
		exit();
	}
	
	/**
	 * 退出杀毒结果页面的逻辑
	 */
	private void exit() {

		if (virusList.size() + riskList.size() > 0) {		// 有病毒，退出前提示
			showConfirmDialog();
		} else {											// 无病毒直接退出
			
			// 跳转至主画面
			this.jumpToMainView();
			finish();
		}
	}

	private void showConfirmDialog() {	
		Dialog mDialog = CustomDialog.createCustomDialogCommonBlack(this,
				this.getString(R.string.vvcl_there_are_YYY_ignore),
				this.getString(R.string.common_cancel), this.getString(R.string.common_exit),
				new DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						switch (which) {
							case CustomDialog.LEFT_BUTTON_CLICK:
								// Cancel
								dialog.dismiss();
								break;
							case CustomDialog.RIGHT_BUTTON_CLICK:
								// OK
								// 跳转至主画面
								dialog.dismiss() ;
								VirusScanResultActivity.this.jumpToMainView();
								finish();
								break;
						}
					}
				});
		mDialog.show();
	}
	/**
	 * 跳转至主画面
	 */
	private void jumpToMainView() {
		// 跳转主画面
		Intent intent = new Intent();
		intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
		intent.setClass(this, MainActivity.class);
		this.startActivity(intent);
	}

	/**
	 * 析构
	 */
	@Override
	protected void onDestroy() {

		// 去掉对卸载软件广播的监听
		unregisterReceiver(uninstallReceiver);
		if(apkTurstConfirmDialog != null && apkTurstConfirmDialog.isShowing()){
			apkTurstConfirmDialog.dismiss() ;
		}
		if(apkDeleteConfirmDialog != null && apkDeleteConfirmDialog.isShowing()){
			apkDeleteConfirmDialog.dismiss() ;
		}

//		// 释放Manager用到资源
		VirusScanManager.getInstance().removeResult(funcKey);
		virusScanResultAdapter.release() ;
		
		super.onDestroy();
	}

	/**
	 * 初始化 数据成员
	 */
	private void initDataItem(List<ScanResultModel> scanResultModelList) {
		// 病毒数据源
		this.virusList = new ArrayList<ScanResultModel>();
		// 风险数据源
		this.riskList = new ArrayList<ScanResultModel>();
		
		// 白名单
		this.whiteList = new ArrayList<ScanResultModel>();
		
		
		// 已清除病毒数据源
		this.cleanedVirusList = new ArrayList<ScanResultModel>();
		// 安全的数据源
		this.secureList = new ArrayList<ScanResultModel>();
		if(scanResultModelList != null){
			// 病毒\风险分类
			for (ScanResultModel model : scanResultModelList) {
				
				// 病毒的场合, 追加至病毒数据源
				if (QScanConstants.TYPE_VIRUS == model.type) {
					this.virusList.add(model);
					
					scanedVirusNum++;
				} else if (QScanConstants.TYPE_AD_BLOCK == model.type
						|| QScanConstants.TYPE_NOT_OFFICIAL == model.type
						|| QScanConstants.TYPE_RISK == model.type||model.type == ScanResultModel.TYPE_NOT_OFFICIAL) {
					// 广告拦截，非光放，风险情况视为风险,追加至风险数据源
					this.riskList.add(model);
					
					scanedVirusNum++;
				} else {
					// 安全的应用列表
					this.secureList.add(model);
				}
			}
		}
	}

	/**
	 * 初始化 所使用的工具类
	 */
	private void initActivityTools() {
		// 病毒扫描结果 Handler
		this.virusScanResultHandler = new VirusScanResultHandler();
		// 软件管理相关管理器 Manager
		this.softwareManager = ManagerCreator.getManager(SoftwareManager.class);
		
		mUpdateHandler = new VirusLibUpdateHandler() ;
	}

	/**
	 * 初始化 全面扫毒画面项目
	 */
	private void initViewItem(View virusScanResultview) {
		// 有病毒的layout展示
		this.layScanCleaningHead = (LinearLayout) virusScanResultview
				.findViewById(R.id.lay_scan_cleaning_head);

		// 无病毒的layout展示
		this.layScanCleanedHead = (LinearLayout) virusScanResultview
				.findViewById(R.id.lay_scan_cleaned_head);
		this.textNoVirusTitle = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_no_virus);
		this.textNoVirusTitle2 = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_no_virus2);
		this.textNoVirusTitle2.setVisibility(View.GONE);
		// 已删除病毒和风险的tip
		this.textClearVirusTip = (TextView) virusScanResultview
				.findViewById(R.id.text_clear_virus_tip);
		this.textClearVirusTip.setVisibility(View.GONE);
		if (scanedVirusNum > 0) {
			// 有病毒被清除,但不是全部病毒被清除 画面显示
			this.layScanCleaningHead.setVisibility(View.VISIBLE);
			this.layScanCleanedHead.setVisibility(View.GONE);
		} else {
			// 无病毒的结果页面
			this.layScanCleaningHead.setVisibility(View.GONE);
			this.layScanCleanedHead.setVisibility(View.VISIBLE);
			this.textNoVirusTitle.setText(R.string.vvcl_no_threats_found);
			this.textNoVirusTitle2.setText(R.string.phone_status_safe);
			this.textClearVirusTip.setText("");
		}

		// 病毒个数描述 TextView
		this.textScanVirusesNotice = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_viruses_notice);
		// 病毒检出列表 ListView
		this.listScanResult = (ListView) virusScanResultview
				.findViewById(R.id.list_scan_result);
		// // 被处理病毒个数描述布局 LinearLayout
		// this.layScanClearedNotice = (LinearLayout) virusScanResultview
		// .findViewById(R.id.lay_scan_cleared_notice);
		// // 处理病毒个数 TextView
		// this.textScanClearedCountNotice = (TextView) virusScanResultview
		// .findViewById(R.id.text_scan_cleared_count_notice);

		// 扫描个数和时间
		this.item_num_virus = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_items_num_virus);
		this.item_num_ok = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_items_num_ok);
		this.time_virus = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_time_virus);
		this.time_ok = (TextView) virusScanResultview
				.findViewById(R.id.text_scan_time_ok);
		
		// 有无病毒的Icon
		this.iconFindVirus = (ImageView) findViewById(R.id.icon_find_virus);
		this.iconNoVirus = (ImageView) findViewById(R.id.icon_no_virus);
		
		this.iconFindVirus.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				exit();
			}
		});
		this.iconNoVirus.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				exit();
			}
		});
		
		// 病毒库升级提示
		mVirusUpdateLayout = (LinearLayout) findViewById(R.id.ll_virus_lib_expired) ;
		mIvUpdate = (ImageView) findViewById(R.id.iv_result_update) ;
		
		boolean isLatest = DaoCreator.createConfigDao().getVirusLibLatestState() ;
		mVirusUpdateLayout.setVisibility(isLatest?View.GONE:View.VISIBLE) ;
		mVirusUpdateLayout.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				updateVirusLibByUserLev() ;
				GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "结果页点击病毒库过期", "", 1l);

			}
		});
		mUpdateAnimation = new RotateAnimation(0, 360,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		mUpdateAnimation.setRepeatCount(Animation.INFINITE);
		mUpdateAnimation.setDuration(1000); 
		mUpdateAnimation.setInterpolator(new LinearInterpolator());	
	}

	/**
	 * 判断是否VIP，非VIP跳转，VIP直接升级
	 */
	private void updateVirusLibByUserLev() {

		UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
		int level = userInfoDao.getUserLevelInfo();
		switch (level) {
		case UserInfoMode.STANDARD_USER: 				// 非vip用户
		case UserInfoMode.TRIAL_OUT_OF_DATE_USER: 		// 试用过期用户
		case UserInfoMode.MEMBER_OUT_OF_DATE_USER: { // 会员过期用户
			Intent intentVipZone = new Intent(this, VipUpgradeActivity.class);
			intentVipZone.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
			startActivity(intentVipZone);
			GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "通过升级病毒库进入VIP", "进入VIP", 1l);
			break;
		}
		case UserInfoMode.TRIAL_USER: 					// 试用用户
		case UserInfoMode.MEMBER_PREOPEN_USER: 			// 预安装用户
		case UserInfoMode.MEMBER_USER: 					// 会员用户
			// 更新病毒库
			if(isUpdating){
				showProgressDialog(false) ;
			}else{
				updateVirusLib();
			}
			break;
		}

	}

	/**
	 * 
	 * 更新病毒库
	 */
	private void updateVirusLib() {

		// 病毒库版本管理 Manager
		if (mUpdateManager == null) {
			mUpdateManager = new VirusLibraryManager(true);
		}
		if (mUpdateManager.isCheckManagerIdled()) {

			mIvUpdate.startAnimation(mUpdateAnimation);
			// mVirusUpdateLayout.setClickable(false) ;
			mUpdateManager.setUIHandler(mUpdateHandler);
			mUpdateManager.checkVirusVersion();

		} else {
			ToastUtil.showShortToast(R.string.vvcl_updating_is_goingon);
		}

	}
	/**
	 * 关闭更新病毒库动画
	 */
	private void stopUpdateAnimation() {
		isUpdating = false;
		mIvUpdate.clearAnimation();
	//	mVirusUpdateLayout.setClickable(true);
		boolean isLatest = DaoCreator.createConfigDao().getVirusLibLatestState();
		mVirusUpdateLayout.setVisibility(isLatest ? View.GONE : View.VISIBLE);
		sendBroadcast(new Intent(VirusLibraryManager.MSG_REFRESH_NEWS)) ;
		mUpdateManager.setUIHandler(null);
	}
	/**
	 * 初始化 病毒列表适配器
	 */
	public void initVirusAdapter() {

		// 初始化病毒扫描结果适配器
		this.virusScanResultAdapter = new VirusFastScanResultAdapter();

		// 组装 Adapter 数据源
		List<ScanResultModel> listDataSource = this.virusScanResultAdapter
				.getListDataSource();
		listDataSource.clear();
		listDataSource.addAll(this.cleanedVirusList);
		listDataSource.addAll(this.virusList);
		listDataSource.addAll(this.riskList);
		listDataSource.addAll(this.whiteList);
		listDataSource.addAll(this.secureList);

		this.virusScanResultAdapter.initVirusScanResultAdapterAbstract(
				listDataSource, this.cleanedVirusList.size(),
				this.virusList.size(), this.riskList.size());

		this.listScanResult.setAdapter(virusScanResultAdapter);
	}

	/**
	 * 设置画面检出病毒个数
	 */
	private void setViewForVirusCount() {

		// 病毒个数
		String virusCountFormat = super
				.getString(R.string.vvcl_X_threat_s_detected);
		String strVirusCount = String.format(virusCountFormat, virusList.size()
				+ riskList.size());

		this.textScanVirusesNotice.setText(strVirusCount);

		// 扫描个数和时间
		Intent intent = this.getIntent();
		int itemNum = intent.getIntExtra(VirusScanResultActivity.KEY_ITEMS, 0);
		String time = intent.getStringExtra(VirusScanResultActivity.KEY_TIME);

		this.item_num_virus.setText(itemNum + "");
		this.item_num_ok.setText(itemNum + "");
		this.time_virus.setText(time);
		this.time_ok.setText(time);
	}
	
	/**
	 * 显示进度条
	 * 
	 * @param isAutoincrement
	 *            是否发送handler自增长
	 */
	private void showProgressDialog(boolean isAutoincrement) {
		if (!mProgressUpdate.isShowing()) {
			mProgressUpdate.show();
			if (isAutoincrement) {
				// 打开假进度
				mProgressUpdate.startIncrement() ;	
			}
		}
	}
	/**
	 * 关闭进度
	 */
	private void cancelUpdateDialog(){
		if(mProgressUpdate != null && mProgressUpdate.isShowing()
				&& !isFinishing()){
			// 关闭假进度
			mProgressUpdate.stopIncrement() ;
			mProgressUpdate.cancel() ;
		}
	}
	/**
	 * 构造进度条
	 * 
	 */
	private void initProgessDialog(Context c) {
		mProgressUpdate = new ProgressBarDialog(c);
		mProgressUpdate.initOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 隐藏progess gar
				// 正在显示的dialog，点隐藏，进度不清零
				mProgressUpdate.dismiss();
				GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "升级病毒库最小化", "", 1l);
			}
		});
	}
	/**
	 * 初始化 APK文件删除确认Dialog
	 */
	private void initApkDeleteConfirmDialog(Context context) {
		// 初始化 APK文件删除确认Dialog
		this.apkDeleteConfirmDialog = CustomDialog
				.createCustomDialogCommonBlack(context, "", this.getResources()
						.getString(R.string.vvcl_ignore), this.getResources()
						.getString(R.string.vvcl_delete),
						new onDialogBtnClickListener());
	}
	/**
	 * 初始化 加入白名单确认Dialog
	 */
	private void initTrustAppConfirmDialog(Context context) {
		apkTurstConfirmDialog = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.vvcl_trust_config_dlg_tips), getString(R.string.common_cancel),
				getString(R.string.vvcl_trust), apkTurstConfirmDialogListener);
		apkTurstConfirmDialog.setCanceledOnTouchOutside(true);
	}
	/*
	 * 加入白名单动作处理 
	 */
	private DialogInterface.OnClickListener apkTurstConfirmDialogListener = new DialogInterface.OnClickListener() {

		@Override
		public void onClick(DialogInterface dialog, int which) {
			if (dialog.equals(apkTurstConfirmDialog)) {
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// Cancel
					apkTurstConfirmDialog.dismiss() ;
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK: // 
					// OK
					apkTurstConfirmDialog.dismiss();
					if (trustScanResultModel != null) {
						// 判断DB中是否已经有相同包名和签名的应用
						if (!VirusWhiteListManager.getInstance().exists(trustScanResultModel.signature,
								trustScanResultModel.packageName)) {
							VirusWhiteListManager.getInstance().insert(trustScanResultModel);
							// 风险、病毒白名单上报
							WinmessAppReportManager.getInstance().saveVirusData(trustScanResultModel.softName,
									trustScanResultModel.packageName, AppReportEntity.APP_VIRUS_TRUST, trustScanResultModel.virusName,
									trustScanResultModel.type);
						}
						// 更新列表状态
						refreshDataSourceWithTrustModel(trustScanResultModel) ;
						ToastUtil.showLongToast(R.string.vvcl_trust_config_dlg_ok_toast);
						trustScanResultModel = null;
					}
					break;
				}
			}
		}
		
	} ;


	/**
	 * 依据 pkgName 从数据源取得 Model
	 */
	private ScanResultModel getModelFromDataSource(String pkgName) {// refreshAdapterDataSource

		ScanResultModel scanResultModel = null;

		// 通过 packageName 在病毒数据源中匹配
		for (ScanResultModel model : this.virusList) {
			if (pkgName.equals(model.packageName)) {
				scanResultModel = model;
				break;
			}
		}

		// 通过 packageName 在风险数据源中匹配
		if (null == scanResultModel) {
			for (ScanResultModel model : this.riskList) {
				if (pkgName.equals(model.packageName)) {
					scanResultModel = model;
					break;
				}
			}
		}

		return scanResultModel;

	}
	/**
	 * 刷新信任列表 
	 * @param trustViru
	 */
	private void refreshDataSourceWithTrustModel(ScanResultModel trustViru){
		// 病毒数据源\风险数据源 中删除信任病毒
		if (this.virusList.remove(trustViru)
				|| this.riskList.remove(trustViru)) {

			trustViru.trustFlg = UIConstants.VIRUS_JUST_ADDED_WHITE_LIST;

			this.whiteList.add(trustViru);
		}
		
		this.virusScanResultAdapter.notifyDataSetChanged();
		
		if (0 == virusList.size() + riskList.size()) {
			// 病毒全部被清除
			setScanResultAllClearedNotice();
		} else {
			// 病毒部分被清除
			setScanResultPartClearedNotice();
		}
		
	}
	/**
	 * 病毒列表适配器 数据源刷新(刷新被清除病毒)
	 */
	public void refreshDataSourceWithcleanedModel(ScanResultModel cleanedViru) {

		// 病毒数据源\风险数据源 中删除已杀病毒
		if (this.virusList.remove(cleanedViru)
				|| this.riskList.remove(cleanedViru)) {

			// 杀毒按钮已经被点击
			cleanedViru.isCleared = true;

			// 已清除病毒数据源 中追加已杀病毒
			this.cleanedVirusList.add(cleanedViru);
		}
		
		// jess0219:数据被修改，更新UI，去掉重新设置数据源的逻辑
		this.virusScanResultAdapter.notifyDataSetChanged();

		if (0 == virusList.size() + riskList.size()) {
			// 病毒全部被清除
			setScanResultAllClearedNotice();
		} else {
			// 病毒部分被清除
			setScanResultPartClearedNotice();
		}
	}

	/**
	 * 病毒全部被清除 画面处理
	 */
	private void setScanResultAllClearedNotice() {
		// TODO
		// layVirusSubScanning 渐入
		// Animation animationFadeOut = AnimationUtils.loadAnimation(
		// MainApplication.getContext(), R.anim.fade_out);
		// this.layScanCleaningHead.startAnimation(animationFadeOut);
		this.layScanCleaningHead.setVisibility(View.GONE);

		// layVirusSubScanndHasVirus 渐出
		this.layScanCleanedHead.setVisibility(View.VISIBLE);
		// Animation animationFadeIn = AnimationUtils.loadAnimation(
		// MainApplication.getContext(), R.anim.fade_in);
		// this.layScanCleanedHead.startAnimation(animationFadeIn);

		// 更新Notification里 手机的安全状态
		StatusBarManager.getInstance().updateMobileStatus(true);
	}

	/**
	 * 病毒部分被清除 画面处理
	 */
	private void setScanResultPartClearedNotice() {

		// // 有clear病毒的操作发生
		// if (1 == cleanedVirusList.size()) {
		// // 被处理病毒个数描述布局 LinearLayout
		// this.layScanClearedNotice.setVisibility(View.VISIBLE);
		// }

		// // 处理病毒个数 TextView
		// this.textScanClearedCountNotice.setText(String.valueOf(cleanedVirusList
		// .size()));

		// 病毒个数描述 TextView
		String virusCountFormat = MainApplication.getContext().getResources()
				.getString(R.string.vvcl_X_threat_s_detected);
		String strVirusCount = String.format(virusCountFormat,
				this.virusList.size() + this.riskList.size());
		this.textScanVirusesNotice.setText(strVirusCount);
	}

	/**
	 * @ClassName: VirusFastScanResultHandler
	 * @Description:病毒快速扫描结果 Handler
	 * @author: hunt
	 * @date: 2012-10-31
	 */
	public class VirusScanResultHandler extends Handler {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {

			// 卸载程序监听
			case VirusScanManager.HANDLER_USER_UNINSTALLED_APK: {

				// 删掉数据
				String pkgName = (String) msg.obj;

				// 病毒列表适配器(packageName 匹配) 数据源刷新
				if (null != pkgName && pkgName.length() > 0) {

					// 依据 pkgName 从数据源取得 Model
					ScanResultModel scanResultModel = getModelFromDataSource(pkgName);

					if (null != scanResultModel) {
						// 病毒列表适配器 数据源刷新(刷新被清除病毒)
						refreshDataSourceWithcleanedModel(scanResultModel);
					}
				}

				break;
			}
			default:
				break;
			}
		}
	}

	/**
	 * @ClassName: VirusQuickScanResultAdapter
	 * @Description:病毒列表适配器 Adapter
	 * @author: hunt
	 * @date: 2012-10-31
	 */
	public class VirusFastScanResultAdapter extends
			VirusScanResultAdapterAbstract {

		/**
		 * 构造
		 */
		public VirusFastScanResultAdapter() {
			super();
		}

		/**
		 * 卸载应用 VirusScanResultAdapter 抽象方法
		 */
		protected void uninstallApp(String pkgName) {
			softwareManager.uninstallApp(pkgName, VirusScanResultActivity.this,
					0);
		}

		/**
		 * 删除文件 VirusScanResultAdapter 抽象方法
		 */
		protected void deleteFile(ScanResultModel scanResult) {

			if (apkDeleteConfirmDialog == null
					|| apkDeleteConfirmDialog.isShowing()) {
				return;
			}

			deleteScanResultModel = scanResult;
			
			String titleStr = MainApplication.getContext().getResources()
					.getString(R.string.vvcl_X_is_a_threat_delete_now);
			titleStr = String.format(titleStr,
					scanResult.softName);
			
			CustomDialog.setDialogTitle(apkDeleteConfirmDialog, titleStr);
			
			apkDeleteConfirmDialog.show();
		}
		/*
		 * (non-Javadoc)
		 * @see com.tencent.onesecurity.ui.adapter.VirusScanResultAdapterAbstract#trustApp(com.tencent.onesecurity.model.ScanResultModel)
		 */
		@Override
		protected void trustApp(ScanResultModel scanResult) {

			trustScanResultModel = scanResult;
			if (apkTurstConfirmDialog != null && !apkTurstConfirmDialog.isShowing()) {
				apkTurstConfirmDialog.show();

			}
		}
	}

	/**
	 * @ClassName: UninstallReceiver
	 * @Description:监听APK卸载广播
	 * @author: hunt
	 * @date: 2012-11-22
	 */
	private class UninstallReceiver extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			if (intent.getAction().equals(
					"android.intent.action.PACKAGE_REMOVED")) {
				String pkgName = intent.getData().getSchemeSpecificPart();
				if (pkgName == null || "".equals(pkgName)) {
					return;
				}
				// 发消息通知用户卸载了应用
				Message msg = VirusScanResultActivity.this.virusScanResultHandler
						.obtainMessage();
				msg.what = VirusScanManager.HANDLER_USER_UNINSTALLED_APK;
				msg.obj = pkgName;
				VirusScanResultActivity.this.virusScanResultHandler
						.sendMessage(msg);
			}
		}
	}

	/**
	 * @ClassName: onBackClickListener
	 * @Description: Title Bar 返回按钮加入监听
	 * @author: hunt
	 * @date: 2012-11-16
	 */
	private class onBackClickListener implements OnClickListener {

		@Override
		public void onClick(View v) {
			// 跳转至主画面
			exit();
		}
	}

	/**
	 * @ClassName: onDialogBtnClickListener
	 * @Description: Dialog 按钮监听
	 * @author: hunt
	 * @date: 2012-11-27
	 */
	private class onDialogBtnClickListener implements
			DialogInterface.OnClickListener {

		@Override
		public void onClick(DialogInterface dialog, int buttonType) {

			if (dialog.equals(apkDeleteConfirmDialog)) {
				switch (buttonType) {
				case CustomDialog.LEFT_BUTTON_CLICK:

					dialog.dismiss();

					break;

				case CustomDialog.RIGHT_BUTTON_CLICK:

					dialog.dismiss();

					// 删除文件
					if (null != deleteScanResultModel
							&& FileUtil.delete(deleteScanResultModel.path)) {
						// 病毒列表适配器 数据源刷新(刷新被清除病毒)
						refreshDataSourceWithcleanedModel(deleteScanResultModel);

						deleteScanResultModel = null;
					} else {
						ToastUtil
								.showLongToast(R.string.vvcl_failed_to_deltet_file);
					}

					break;
				default:
					break;
				}
			}
		}
	}
	private class VirusLibUpdateHandler extends Handler {

		boolean errorCase = false;

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {

			// 开始检查病毒库版本
			case VirusLibraryManager.HANDLER_CHECK_START:
				errorCase = false;
				break;

			// 取消检查病毒库版本
			case VirusLibraryManager.HANDLER_CHECK_CANCEL:
				// 无操作
				break;

			// 检查病毒库版本结束
			case VirusLibraryManager.HANDLER_CHECK_FINISH:
				
				if (errorCase) {
					stopUpdateAnimation();
					return;
				}

				// 病毒库无更新,通知UI病毒库已经为最新
				if (VirusLibraryManager.CONST_VIRUS_LIB_CHECK_FINISH_LAST == msg.arg1) {

					// 更新病毒库状态为最新
					DaoCreator.createConfigDao().setVirusLibLatestState(
							VirusLibraryManager.CONST_FLG_VIRUS_LIB_LATEST);

					// 显示病毒库更新成功 Toast
					ToastUtil
							.showLongToast(R.string.vvcl_your_virus_database_is_the_latest);

					stopUpdateAnimation();
				}else if(VirusLibraryManager.CONST_VIRUS_LIB_CHECK_FINISH_EXPIRED == msg.arg1){
					isUpdating = true ;
					// 需要更新，此时弹出滚动条,设置进度
					if (!isFinishing()) {
						showProgressDialog(true);
					}
				}

				break;

			// 检查病毒库版本返回错误
			case VirusLibraryManager.HANDLER_CHECK_ERROR:

				errorCase = true;

				// 显示网络错误 Toast
				ToastUtil.showLongToast(R.string.vvcl_network_connection_failed_YYY_later);
				cancelUpdateDialog() ;
				stopUpdateAnimation();
				break;

			// 更新病毒库开始
			case VirusLibraryManager.HANDLER_UPDATE_START: {
				errorCase = false;
				break;
			}

			// 更新病毒库取消
			case VirusLibraryManager.HANDLER_UPDATE_CANCEL: {
				cancelUpdateDialog() ;
				stopUpdateAnimation();
				// 无操作
				break;
			}
			// 更新病毒库结束
			case VirusLibraryManager.HANDLER_UPDATE_FINISH: {
				// 病毒更新结束， 重置7天一次弹出时间
				DaoCreator.createConfigDao().setVirusLibDialogShowTimelong(0L) ;
				
				mProgressUpdate.setUpdateProgress(100) ;
				
				if (errorCase) {
					cancelUpdateDialog() ;
					stopUpdateAnimation();
					return;
				}

				// 更新病毒库状态为最新
				DaoCreator.createConfigDao().setVirusLibLatestState(
						VirusLibraryManager.CONST_FLG_VIRUS_LIB_LATEST);
			
				// 显示病毒库更新成功 Toast
				ToastUtil
						.showLongToast(R.string.vvcl_your_virus_database_is_the_latest_now);
				cancelUpdateDialog() ;
				stopUpdateAnimation();
				break;
			}
			// 更新病毒库错误返回
			case VirusLibraryManager.HANDLER_UPDATE_ERROR: {

				errorCase = true;

				// 显示网络错误 Toast
				ToastUtil
						.showLongToast(R.string.vvcl_network_connection_failed_YYY_later);
				cancelUpdateDialog() ;
				stopUpdateAnimation();
				break;
			}

			default:
				break;
			}
		}
	}
}
