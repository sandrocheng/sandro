/**
 * @ClassName: VirusFullScanActivity
 * @Description:病毒全面扫描过程 Activity
 * @author: hunt
 * @date: 2012-11-5
 */
package com.tencent.onesecurity.ui.activity.virus;

import java.util.ArrayList;
import java.util.List;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.CompoundButton.OnCheckedChangeListener;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.virus.VirusScanEngine;
import com.tencent.onesecurity.manager.virus.VirusScanManager;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.VirusFullScanningAdapterAbstract;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.layout.SettingItemLayout;
import com.tencent.onesecurity.ui.customview.layout.VirusRollingNewsLayout;
import com.tencent.onesecurity.ui.customview.widget.FullScanView;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.ui.model.ScanningTimer;
import com.tencent.onesecurity.ui.model.VirusFullScanningListRefreshTimed;
import com.tencent.onesecurity.ui.model.VirusTimedListener;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.tmsecure.module.qscanner.QScanConstants;

/**
 * @ClassName: VirusFullScanActivity
 * @Description:病毒全面扫描过程 Activity
 * @author: hunt
 * @date: 2012-11-5
 */
public class VirusFullScanningActivity extends BaseActivity implements
		VirusTimedListener {

	private final static int PROGRESS_INIT_SCAN_MAX_LIMIT = 25;

//	private final static int PROGRESS_SCANNING_MAX_LIMIT = 80;

	// 扫毒初始化阶段标识
	private boolean initScanLevelFlg = false;

	private boolean waitFlg = false;

	// 已经扫描应用个数
	private int scannedAppsCount = 0;
	// 发现病毒个数
	private int foundVirusCount = 0;
	// 应用检出列表 数据源
	private ArrayList<ScanResultModel> appArrayList = null;
	// 全面扫毒中Head布局 LinearLayout
	private LinearLayout layFullScanningHead = null;
	// 已经扫描APP个数 TextView
	private TextView textScanndCount = null;
	// 已经扫描病毒时间 TextView
	private TextView textScanndTime = null;
	// 已经扫出病毒个数 TextView
	private TextView textVirusCount = null;
	// 扫毒进度 ProgressBar
	private ProgressBar progressBarFullScanning = null;
	// 扫毒进度控制 Button
	private Button btnFullScanningControl = null;
	// 共扫出病毒个数 TextView
	private TextView textResultScanndCount = null;
	// 扫描总耗时 TextView
	private TextView textResultScanndTime = null;
	// 已经扫描程序列表 ListView
	private ListView listViewScanning = null;
	/**
	 * list外层layout
	 */
	private LinearLayout listLinnerLayout = null ;
	
	// 无毒Head布局 LinearLayout
	private LinearLayout layFullScanResultNoVirusHead;
	
	// 自定义扫毒
	private RelativeLayout layProcessBar;
	private ScrollView layCustomizedZone;
	//private Button btnStartScan;
	private CheckBox cbLocal;
	private CheckBox cbSDCard;
	private CheckBox cbCloud;
	/**
	 * 动画上的start按钮
	 */
	private TextView tvStartScan ;
	/**
	 * 云查杀Layout
	 */
	private SettingItemLayout mCloudLayout ;
	
	/**
	 * 扫描动画0101
	 */
	private FullScanView mFullScanView ;
	/**
	 * 非VIP点击云查杀 dialog 
	 * 所有dialog 点击事件由mDialogClickListener统一处理 
	 */
	//private Dialog mCloudScanDialog ;
	
	/**
	 * 滚动广告
	 */
	private VirusRollingNewsLayout mAdvertLayout ;
	
	// 扫描动画相关
	private FullScanView scanningCartonView = null;

	// 退出全面扫毒等待 Dialog
	private ProgressDialog exitFullScanwaitingDialog = null;

	// 病毒全面扫描 Handler
	private VirusFullScanHandler virusFullScanHandler = null;
	// 病毒扫描 Manager
	private VirusScanEngine virusScanManager = null;
	// 应用列表适配器 Adapter
	private VirusFullScanningAdapter virusFullScanningAdapter = null;

	// 扫描计时model
	private ScanningTimer scanningTimer = null;
	// 全面扫毒过程APP/APK列表刷新计时model
	private VirusFullScanningListRefreshTimed virusFullScanningListRefreshTimed = null;

	private Handler cloudProgressHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			if(msg.what == 9090) {
				int progress = VirusFullScanningActivity.this.progressBarFullScanning.getProgress();
				if (progress <= 50 || progress >= 94) return;
				progress += 3;
				VirusFullScanningActivity.this.progressBarFullScanning.setProgress(progress);

				Message message = new Message();
				message.what = 9090;
				this.sendMessageDelayed(message, 3 * 1000);
			}
		}
	};
	
	/**
	 * 构造
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		// Activity 构造, 邦定布局
		super.onCreate(savedInstanceState);
		View virusFullScanningView = LayoutInflater.from(this).inflate(
				R.layout.layout_virus_full_scanning, null);

		// 返回按钮加入监听
		updateSubTitleBar(this, virusFullScanningView,
				getString(R.string.vvcl_customized_scan), -1,
				new onBackClickListener(), -1, null, false);
		super.setContentView(virusFullScanningView);

		IntentFilter intentFilter = new IntentFilter(
				"android.intent.action.PACKAGE_REMOVED");
		intentFilter.addDataScheme("package");

		// 初始化 病毒全面扫描过程 所使用的工具类
		this.initActivityTools(virusFullScanningView);
		// 初始化 全面扫毒画面项目
		this.initViewItem(virusFullScanningView);
		// 初始化 画面计时处理
		this.initViewTimers();
		// 初始化 退出全面扫毒等待 Dialog
		this.initExitFullScanwaitingDialog();
		// 初始化非VIP点击云查杀Dialog
		//this.initCloudScanDialog();
		// 初始化页面数据
		this.initDataItem();
	}

	/**
	 * 恢复
	 */
	@Override
	protected void onResume() {
		super.onResume();
		GoogleAnalyticsTracker.getInstance().trackView("自定义查杀");
	}

	/**
	 * 暂停
	 */
	@Override
	protected void onPause() {
		super.onPause();
	}

	/**
	 * 按键压下事件
	 */
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {

		if (waitFlg) {
			return false;
		}

		// 全面扫毒中返回处理
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
			if (virusScanManager != null && virusScanManager.isUsing()) {
				// 显示 退出全面扫毒 Dialog
				if (this.isFinishing() == false) {
					// 退出全面扫毒
					cancelVirusScan();
				}
				return false;
			}
		}
		return super.onKeyDown(keyCode, event);
	}

	/**
	 * 析构
	 */
	@Override
	protected void onDestroy() {

		// 应用检出列表 数据源 释放
		this.appArrayList.clear();
		
		dismissExitFullScanDialog() ; // leaked windows
		// 退出时，不记录选择
		DaoCreator.createConfigDao().setCustomScanType(-1);
		// 释放engine
		VirusScanManager.getInstance().releaseEngine("CUSTOMIZED");
		super.onDestroy();
	}

	/**
	 * 初始化 数据成员
	 */
	private void initDataItem() {
		// 初始化数据源
		if (this.appArrayList != null) {
			this.appArrayList.clear();
		} else {
			this.appArrayList = new ArrayList<ScanResultModel>();
		}

		// 应用列表适配器 Adapter
		if (this.virusFullScanningAdapter == null) {
			this.virusFullScanningAdapter = new VirusFullScanningAdapter();
		}
		virusFullScanningAdapter.initVirusFullScanningAdapterAbstract(this.appArrayList);
		this.listViewScanning.setAdapter(virusFullScanningAdapter);
		// 灰度6 列表不可点击
		listViewScanning.setEnabled(false) ;
		// 初始化已经扫描病毒个数 TextView
		this.textScanndCount.setText("0");
		
		// 初始化进度条
		this.progressBarFullScanning.setProgress(0);
		
		// 进度条初始时不显示
		//layProcessBar.setVisibility(View.GONE);
		
		mFullScanView.setVisibility(View.GONE) ;

		// 无毒Header初始时不显示
		layFullScanResultNoVirusHead.setVisibility(View.GONE);
		
		// ListView 不显示
		listLinnerLayout.setVisibility(View.GONE) ;
		
		// 灰度6 点击cancel后设置之前选择项,从杀毒主页进入，不记录，onDestroy时清空
		setLatestChecked() ;
		
		
//		cbLocal.setChecked(true);
//		cbSDCard.setChecked(true);
//		cbCloud.setChecked(true);
		
		// 进入杀毒状态，一些Item需要隐藏
		//btnStartScan.setVisibility(View.VISIBLE);
		tvStartScan.setVisibility(View.VISIBLE) ;
		layCustomizedZone.setVisibility(View.VISIBLE);
		layProcessBar.setVisibility(View.GONE);
		
		this.btnFullScanningControl.setEnabled(true) ;
		
		// 已经扫描应用个数
		scannedAppsCount = 0;
		// 发现病毒个数
		foundVirusCount = 0;

		// 已经扫描APP个数 TextView
		this.textScanndCount.setText(String.valueOf(this.scannedAppsCount));
		// 已经扫出病毒个数 TextView
		this.textVirusCount.setText(String.valueOf(this.foundVirusCount));
		// 初始化杀毒消耗时间
		this.textScanndTime.setText("00:00");
		// 扫毒初始化阶段标识
		initScanLevelFlg = false;
//		// 退出扫毒标识
//		isUserCanceled = false;
		waitFlg = false;
	}
	
	/**
	 * 根据选择结果设置用户选择项
	 * 
	 * @param type
	 * @param isCloud
	 */
	private void setCustomScanType(int type, boolean isCloud) {
		int customType = -1;
		switch (type) {
		case VirusScanEngine.TYPE_PKG_SCAN:
			if (isCloud) {
				customType = UIConstants.C_NA_CLOUD;
			} else {
				customType = UIConstants.C_NATIVE;
			}
			break;
		case VirusScanEngine.TYPE_SDCARD_SCAN:
			if (isCloud) {
				customType = UIConstants.C_SD_CLOUD;
			} else {
				customType = UIConstants.C_SD;
			}
			break;
		case VirusScanEngine.TYPE_FULL_SCAN:
			if (isCloud) {
				customType = UIConstants.C_FULL;
			} else {
				customType = UIConstants.C_NA_SD;
			}
			break;
		}
		DaoCreator.createConfigDao().setCustomScanType(customType);
	}

	/**
	 * 设置最近一次选择过的条目
	 */
	private void setLatestChecked() {
		int scanType = DaoCreator.createConfigDao().getCustomScanType();
		switch (scanType) {
		case UIConstants.C_NATIVE:
			cbLocal.setChecked(true);
			cbSDCard.setChecked(false);
			cbCloud.setChecked(false);
			break;
		case UIConstants.C_SD:
			cbLocal.setChecked(false);
			cbSDCard.setChecked(true);
			cbCloud.setChecked(false);
			break;
		case UIConstants.C_NA_SD:
			cbLocal.setChecked(true);
			cbSDCard.setChecked(true);
			cbCloud.setChecked(false);
			break;
		case UIConstants.C_NA_CLOUD:
			cbLocal.setChecked(true);
			cbSDCard.setChecked(false);
			cbCloud.setChecked(true);
			break;
		case UIConstants.C_SD_CLOUD:
			cbLocal.setChecked(false);
			cbSDCard.setChecked(true);
			cbCloud.setChecked(true);
			break;
		case UIConstants.C_FULL:
		default:
			cbLocal.setChecked(true);
			cbSDCard.setChecked(true);
			cbCloud.setChecked(true);
			break;
		}
	}
	/**
	 * 初始化 病毒全面扫描过程 所使用的工具类
	 */
	private void initActivityTools(View fullScanningView) {

		// 父类动画引擎
		super.initCarton();
		// Handler
		this.virusFullScanHandler = new VirusFullScanHandler();
	}

	/**
	 * 初始化 全面扫毒画面项目
	 */
	private void initViewItem(View virusFullScanningView) {

		// 全面扫毒中Head布局 LinearLayout
		this.layFullScanningHead = (LinearLayout) virusFullScanningView
				.findViewById(R.id.lay_full_scanning_head);
		// 扫描动画相关 ImageView
		// this.imageCartonScanningLaserIv = (ImageView) virusFullScanningView
		// .findViewById(R.id.image_carton_scanning_laser_iv);
		// this.imageCartonFullScanNormalBg = (ImageView) virusFullScanningView
		// .findViewById(R.id.image_carton_full_scan_normal_bg);

		// 已经扫描病毒个数 TextView
		this.textScanndCount = (TextView) virusFullScanningView
				.findViewById(R.id.text_full_scanning_scannd_count);
		
		// 已经扫描病毒时间 TextView
		this.textScanndTime = (TextView) virusFullScanningView
				.findViewById(R.id.text_full_scanning_scannd_time);
		// 已经扫出病毒个数 TextView
		this.textVirusCount = (TextView) virusFullScanningView
				.findViewById(R.id.text_full_scanning_virus_count);

		// 扫毒进度 ProgressBar
		this.progressBarFullScanning = (ProgressBar) virusFullScanningView
				.findViewById(R.id.progress_bar_full_scanning);

		// 扫毒进度控制 Button
		this.btnFullScanningControl = (Button) virusFullScanningView
				.findViewById(R.id.btn_full_scanning_control);
		this.btnFullScanningControl.setText(super
				.getString(R.string.common_cancel));
		this.btnFullScanningControl.setEnabled(true) ;
		this.btnFullScanningControl.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
						"点击【Cancel】", "", 1l);
				btnFullScanningControl.setEnabled(false) ;
				
				// 退出全面扫毒
				cancelVirusScan();
			}
		});

		// 共扫出病毒个数 TextView
		this.textResultScanndCount = (TextView) virusFullScanningView
				.findViewById(R.id.text_full_scan_result_scannd_count);
		// 扫描总耗时 TextView
		this.textResultScanndTime = (TextView) virusFullScanningView
				.findViewById(R.id.text_full_scan_result_scannd_time);

		// 已经扫描程序列表 ListView
		this.listViewScanning = (ListView) virusFullScanningView
				.findViewById(R.id.list_scanning);
		// 选择时不显示，扫描时显示
		listLinnerLayout = (LinearLayout) findViewById(R.id.ll_scanning_list) ;
		// 自动滚动
		this.listViewScanning.setStackFromBottom(true);
		this.listViewScanning
				.setTranscriptMode(ListView.TRANSCRIPT_MODE_ALWAYS_SCROLL);
		// TODO
		// listViewScanning.setOnScrollListener(new OnListViewScrollListener());

		// 无毒Head布局 LinearLayout
		this.layFullScanResultNoVirusHead = (LinearLayout) virusFullScanningView
				.findViewById(R.id.lay_full_scan_result_no_virus_head);
		

		// 20130303
		mAdvertLayout = (VirusRollingNewsLayout) findViewById(R.id.antivirus_advert_layout) ;
		mAdvertLayout.initHandler();
		// 初始时，进度条区域不显示
		layProcessBar = (RelativeLayout) findViewById(R.id.lay_process_bar);
		
		// 初始化自定义扫毒控件
		layCustomizedZone = (ScrollView)findViewById(R.id.lay_customize_zone);
		//btnStartScan = (Button) findViewById(R.id.btn_start_scan);
		tvStartScan = (TextView)findViewById(R.id.tv_start_scan) ;
		tvStartScan.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {

				GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
						"点击【Start】", "", 1l);
				
				// 进入杀毒状态，一些Item需要隐藏
				tvStartScan.setVisibility(View.GONE);
				layCustomizedZone.setVisibility(View.GONE);
				layProcessBar.setVisibility(View.VISIBLE);
				mFullScanView.setVisibility(View.VISIBLE) ;
				// ListView 显示
				listLinnerLayout.setVisibility(View.VISIBLE) ;
				
				// 设置画面计时model为 开始
				VirusFullScanningActivity.this.startViewTimers();
		
				// 启动扫毒线程
				VirusFullScanningActivity.this.startCustomizedScan();
			}
		});		
		
		cbLocal = (CheckBox) findViewById(R.id.cb_local);
		cbLocal.setOnCheckedChangeListener(mChangeListener) ;
		
		cbSDCard = (CheckBox) findViewById(R.id.cb_sdcard);
		cbSDCard.setOnCheckedChangeListener(mChangeListener) ;
		
		cbCloud = (CheckBox) findViewById(R.id.cb_cloud);
		cbCloud.setOnCheckedChangeListener(mChangeListener) ;
		
		mFullScanView = (FullScanView) findViewById(R.id.ellipse_view) ;
		
		mCloudLayout = (SettingItemLayout) findViewById(R.id.sl_cloud) ;
		
		//mCloudLayout.setEnabled(isVipMemberUser() ? true : false);
		
		// 非VIP用户，点击Cloud，弹出提示，跳转至升级VIP页
//		if (!isVipMemberUser()) {
//			mCloudLayout.setOnClickListener(new OnClickListener() {
//
//				@Override
//				public void onClick(View v) {
//					
//				}
//			});
//		}
		
		// this.btnScanDone.setOnClickListener(new OnClickListener() {
		// @Override
		// public void onClick(View v) {
		// // 返回
		// VirusFullScanningActivity.this.finish();
		// }
		// });
	}

	/**
	 * 是否是vip用户
	 * 
	 * @return
	 */
//	private boolean isVipMemberUser() {
//
//		UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
//		int level = userInfoDao.getUserLevelInfo();
//		boolean isVipUser = false;
//		switch (level) {
//		case UserInfoMode.STANDARD_USER: // 非vip用户
//		case UserInfoMode.TRIAL_OUT_OF_DATE_USER: // 试用过期用户
//		case UserInfoMode.MEMBER_OUT_OF_DATE_USER: // 会员过期用户
//
//			isVipUser = false;
//			break;
//		case UserInfoMode.TRIAL_USER: // 试用用户
//		case UserInfoMode.MEMBER_PREOPEN_USER: // 预安装用户
//		case UserInfoMode.MEMBER_USER: // 会员用户
//			isVipUser = true;
//			break;
//		}
//		return isVipUser;
//
//	}
	private OnCheckedChangeListener mChangeListener = new OnCheckedChangeListener() {

		@Override
		public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
			switch (buttonView.getId()) {
			case R.id.cb_local:
				break;
			case R.id.cb_sdcard:
				break;
			case R.id.cb_cloud:
				break;
			default:
				break;
			}
			setCustomizedItemState();
		}
	};
//	private DialogInterface.OnClickListener mDialogClickListener = new DialogInterface.OnClickListener() {
//
//		@Override
//		public void onClick(DialogInterface dialog, int which) {
//			if (dialog.equals(mCloudScanDialog)) {
//				mCloudScanDialog.dismiss();
//				switch (which) {
//				case CustomDialog.LEFT_BUTTON_CLICK:
//					// Cancel
//					break;
//				case CustomDialog.RIGHT_BUTTON_CLICK: 
//					// OK
//					break;
//				}
//			} 
//		}
//		
//	};

	
	/**
	 * 初始化 画面计时处理
	 */
	private void initViewTimers() {
		// // 全面扫毒动画计时model
		this.scanningCartonView = (FullScanView) this
				.findViewById(R.id.ellipse_view);
		// 扫描计时model
		this.scanningTimer = new ScanningTimer(this, textScanndTime,
				textResultScanndTime);
		// 全面扫毒过程APP/APK列表刷新计时model
		this.virusFullScanningListRefreshTimed = new VirusFullScanningListRefreshTimed(
				this);
	}
	/**
	 * 初始化非VIP点击云查杀确认Dialog
	 */
//	private void initCloudScanDialog(){
//		mCloudScanDialog = CustomDialog.createCustomDialogCommonBlack(this,
//				getString(R.string.vvcl_dialog_cloud_upgrade_vip), getString(R.string.common_cancel),
//				getString(R.string.vvcl_upgrade), mDialogClickListener);
//		mCloudScanDialog.setCanceledOnTouchOutside(true);
//	}
	/**
	 * 初始化 退出全面扫毒等待 Dialog
	 */
	private void initExitFullScanwaitingDialog() {
		if (null == this.exitFullScanwaitingDialog) {
			// 初始化 退出全面扫毒等待 Dialog
			this.exitFullScanwaitingDialog = new CustomLoadingDialog(this);
			exitFullScanwaitingDialog.setMessage(super
					.getString(R.string.vvcl_please_wait));
		}
	}

	/**
	 * 显示 退出全面扫毒等待 Dialog
	 */
	public void showExitFullScanDialog() {
		/*--Jess fix bug ----20130109-------S-防止crash*/
		if (this.isFinishing()) return;
		/*--Jess fix bug ----20130109-------E-*/
		
		if (this.exitFullScanwaitingDialog != null
				&& !this.exitFullScanwaitingDialog.isShowing()) {
			this.exitFullScanwaitingDialog.show();
			
			// 设定cancel dialog多久关闭
			if (VirusScanManager.getInstance().getDiscarEngineSize() > 2) {
				virusFullScanHandler.sendEmptyMessageDelayed(778899, 10000);	
			} else {
				virusFullScanHandler.sendEmptyMessageDelayed(778899, 2000);
			}
			
		}
	}

	/**
	 * 关闭 退出全面扫毒等待 Dialog
	 */
	public void dismissExitFullScanDialog() {
		if (this.exitFullScanwaitingDialog != null
				&& this.exitFullScanwaitingDialog.isShowing()) {
			this.exitFullScanwaitingDialog.dismiss();
		}
	}

	/**
	 * 设置画面计时model为 开始
	 */
	private void startViewTimers() {

		// 全面扫毒动画计时model 开始
		super.cartonEngine.addListener(this.scanningCartonView);
		// 扫描计时model 开始
		this.scanningTimer.start();
		super.cartonEngine.addListener(this.scanningTimer);
		// 全面扫毒过程APP/APK列表刷新计时model 开始
		this.virusFullScanningListRefreshTimed.start();
		super.cartonEngine.addListener(this.virusFullScanningListRefreshTimed);
		
		if(DaoCreator.createConfigDao().isRollingNewsOpen() && !mAdvertLayout.isLowDensity()){
			mAdvertLayout.setVisibility(View.VISIBLE) ;
			mAdvertLayout.startFlipping();
		}
		
	}

	/**
	 * 停止所有动画，计时器
	 */
	private void stopViewAnimation() {
		super.cartonEngine.requestRemove(this.scanningCartonView);
		super.cartonEngine.requestRemove(this.scanningTimer);
		super.cartonEngine.requestRemove(this.virusFullScanningListRefreshTimed);
//		virusFullScanningListRefreshTimed.release();
		if(DaoCreator.createConfigDao().isRollingNewsOpen() && !mAdvertLayout.isLowDensity()){
			mAdvertLayout.stopFlipping() ;
			mAdvertLayout.setVisibility(View.GONE) ;
		}
		
	}

	/**
	 * 开始自定义扫描
	 */
	private void startCustomizedScan() {

		// 病毒扫描 Manager
		this.virusScanManager = VirusScanManager.getInstance().getVirusEngine("CUSTOMIZED");
		
		// 扫毒初始化阶段标识(开始)
		this.initScanLevelFlg = true;
		
		// 根据画面项目，得到查询条件
		int searchCondition = getSearchCondition();
		
		boolean isPkgScan, isSDCardScan;
		boolean isCloud = isCloudScan(searchCondition);
		isPkgScan = isPhoneScan(searchCondition);
		isSDCardScan = isSDCardScan(searchCondition);
		
		int type = VirusScanEngine.TYPE_PKG_SCAN;
		if (isPkgScan) type = VirusScanEngine.TYPE_PKG_SCAN;
		if (isSDCardScan) type = VirusScanEngine.TYPE_SDCARD_SCAN;
		if (isPkgScan && isSDCardScan) type = VirusScanEngine.TYPE_FULL_SCAN;
		// 灰度6 记录杀毒类型
		setCustomScanType(type,isCloud) ;
		
		// Manager全面扫毒
		this.virusScanManager.startVirusScan(type, this.virusFullScanHandler, isCloud);
	}
	
	private boolean isCloudScan(int searchCondition) {
		boolean isCloudScan = false;
		if ((searchCondition & 1) != 0) {	// 
			isCloudScan = true;
		}
		return isCloudScan;
	}
	private boolean isSDCardScan(int searchCondition) {
		boolean isSDCardScan = false;
		if ((searchCondition & 2) != 0) {	// 
			isSDCardScan = true;
		}
		return isSDCardScan;
	}
	private boolean isPhoneScan(int searchCondition) {
		boolean isPhoneScan = false;
		if ((searchCondition & 4) != 0) {	// 
			isPhoneScan = true;
		}
		return isPhoneScan;
	}
	private int getSearchCondition() {
		int condition = 0;
		String reportContent = "";
		if (this.cbCloud.isChecked()) {		// 云查杀 二进制：001
			condition = condition | 1;
			reportContent += "cloud\\";
		}
		if (this.cbSDCard.isChecked()) {	// SDCard 二进制：010
			condition = condition | 2;
			reportContent += "sd card\\";
		}
		if (this.cbLocal.isChecked()) {		// 手机 二进制：100
			condition = condition | 4;
			reportContent += "local";
		}
		
		GoogleAnalyticsTracker.getInstance().ClickButton("自定义查杀范围统计",
				"（选择的项目" + reportContent + "）", "", 1l);
		
		return condition;
	}

	/**
	 * 扫描结束有病毒 跳转至 杀毒画面
	 */
	private void jumpToVirusScanResult() {

//		List<ScanResultModel> virusList = VirusScanManager.getInstance().getResult("CUSTOMIZED");
//		if (virusList == null || virusList.size() == 0) {
//			return;
//		}

//		ArrayList<ScanResultModel> tempList = new ArrayList<ScanResultModel>();
//		tempList.addAll(virusList);

		// 跳转到杀毒画面
		Intent intent = new Intent();
		// 序列化传递
		// intent.putExtra(UIConstants.VIRUS_FULL_SCAN_RESULT_KEY, tempList);
		intent.setClass(VirusFullScanningActivity.this,
				VirusScanResultActivity.class);
		intent.putExtra(VirusScanResultActivity.KEY_ITEMS, scannedAppsCount);
		intent.putExtra(VirusScanResultActivity.KEY_TIME, textScanndTime
				.getText().toString());
		intent.putExtra("FUNC", "CUSTOMIZED");
		VirusFullScanningActivity.this.startActivity(intent);

	}

	/**
	 * 扫描结束无毒时,切换Head布局
	 */
	private void swichHeadLayWhenSannedOver() {
		// TODO
		// // 使用AnimationUtils装载动画配置文件
		// Animation animationFadeOut = AnimationUtils.loadAnimation(
		// MainApplication.getContext(), R.anim.fade_out);
		// // 启动动画
		// this.layFullScanningHead.startAnimation(animationFadeOut);
		// 全面扫毒中Head布局层 隐藏
		this.layFullScanningHead.setVisibility(View.GONE);

		// 无毒Head布局层 显示
		this.layFullScanResultNoVirusHead.setVisibility(View.VISIBLE);
		// // 使用AnimationUtils装载动画配置文件
		// Animation animationFadeIn = AnimationUtils.loadAnimation(
		// MainApplication.getContext(), R.anim.fade_in);
		// // 启动动画
		// this.layFullScanResultNoVirusHead.startAnimation(animationFadeIn);
	}

	/**
	 * 初始化定时操作回调接口
	 */
	public void initTimed(int operationType, Object obj) {

	}

	/**
	 * 定时操作回调接口
	 */
	public void timedOperation(int operationType, Object obj) {

		switch (operationType) {
		case VirusTimedListener.TIMED_VIRUS_FULL_SCANNING_LIST_REFRESH:

			if (obj instanceof List<?>) {

				@SuppressWarnings("unchecked")
				List<ScanResultModel> scanResultModelList = (List<ScanResultModel>) obj;

				if (null != scanResultModelList
						&& scanResultModelList.size() > 0) {

					// 刷新已被扫描APP列表
					this.refreshAppList(scanResultModelList);
					
					// scanner进度向uiProgress转换。
					int scanProgress = scanResultModelList.get(scanResultModelList.size() - 1).progress;
					int uiProgress = (int) (scanProgress * 0.55);
					uiProgress = PROGRESS_INIT_SCAN_MAX_LIMIT + uiProgress;
					
					// 更新扫毒进度
					this.updateScanningProgress(uiProgress);
					// 刷新全面扫毒中Head布局(APP个数 & 病毒个数)
					this.refreshLayFullScanningHead(scanResultModelList);
				}
			}

			break;

		case VirusTimedListener.TIMED_ONE_SECOND_REFRESH: {

			// 扫毒初始化阶段,设置预进度条进度(20%)
			if (this.initScanLevelFlg) {
				int progress = progressBarFullScanning.getProgress();

				if (0 == progress) {
					ScanResultModel appModel = new ScanResultModel();
					appModel.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_INITIALIZATION;
					// 刷新已被扫描APP列表
					this.refreshAppList(appModel);
				}

				if (progress < PROGRESS_INIT_SCAN_MAX_LIMIT) {

					// progress = (int) ((PROGRESS_INIT_SCAN_MAX_LIMIT -
					// progress) * 0.1);

					progressBarFullScanning.incrementProgressBy(1);
				}
			}
		}

			break;

		default:
			break;
		}
	}

	/**
	 * 刷新已被扫描APP列表
	 */
	private void refreshAppList(List<ScanResultModel> scanResultModelList) {
		if (null != scanResultModelList && scanResultModelList.size() > 0) {
			this.appArrayList.addAll(scanResultModelList);
			this.virusFullScanningAdapter.notifyDataSetChanged();
		}
	}

	/**
	 * 刷新已被扫描APP列表
	 */
	private void refreshAppList(ScanResultModel scanResultModel) {
		if (null != scanResultModel) {
			this.appArrayList.add(scanResultModel);
			this.virusFullScanningAdapter.notifyDataSetChanged();
		}
	}

	/**
	 * 更新病毒扫描进度
	 */
	private void updateScanningProgress(int progress) {

//		if (isAutoCloudScanOn() && progress > 1) {
////			progress = progress
////					* PROGRESS_SCANNING_MAX_LIMIT
////					/ (PROGRESS_INIT_SCAN_MAX_LIMIT + PROGRESS_SCANNING_MAX_LIMIT)
////					+ PROGRESS_INIT_SCAN_MAX_LIMIT;
//		}

		if (this.progressBarFullScanning.getProgress() < progress) {
			this.progressBarFullScanning.setProgress(progress);
		}
	}

	/**
	 * 刷新全面扫毒中Head布局(APP个数 & 病毒个数)
	 */
	private void refreshLayFullScanningHead(
			List<ScanResultModel> scanResultModelList) {

		if (null != scanResultModelList && scanResultModelList.size() > 0) {
			// 是否是通知云查杀的model
			boolean isCloudMode = false ;
			
			for (ScanResultModel appModel : scanResultModelList) {
				switch (appModel.type) {
				case QScanConstants.TYPE_AD_BLOCK:
				case QScanConstants.TYPE_NOT_OFFICIAL:
				case QScanConstants.TYPE_RISK:
					// lee 20130116 灰度2.0二次修订,风险不作处理，云查杀结束后处理
					break ;
				case QScanConstants.TYPE_VIRUS:
					this.foundVirusCount = this.foundVirusCount + 1;
					break;
				case QScanConstants.TYPE_OK:
				case QScanConstants.TYPE_UNKNOWN:
					break;
				default:
					break;
				}
				// 集合中是否存在云查杀标识Model
				if(appModel.softScanAddress == ScanResultModel.SOFT_SCAN_ADDRESS_CLOUD&&
						isCloudMode == false){
					isCloudMode = true ;
				}
			}
			// 扫描个数需要减去云查杀表示Model
			if(isCloudMode){
				scannedAppsCount -= 1 ;
			}
			this.scannedAppsCount = this.scannedAppsCount
					+ scanResultModelList.size();
			// 已经扫描APP个数 TextView
			this.textScanndCount.setText(String.valueOf(this.scannedAppsCount));
			// 已经扫出病毒个数 TextView
			this.textVirusCount.setText(String.valueOf(this.foundVirusCount));
			// 共扫出病毒个数 TextView
			this.textResultScanndCount.setText(String
					.valueOf(this.scannedAppsCount));
		}
	}

	/**
	 * 取消全面扫毒
	 */
	private void cancelVirusScan() {

		// 等1s中
		if (waitFlg) {
			return;
		}

//		isUserCanceled = true;

		// 自定义杀毒取消后不关闭自己
//		VirusFullScanningActivity.this.finish();
		
//		// 回复自定义杀毒前的状态
//		dismissExitFullScanDialog();
		
		// 结束快速扫毒
		if (virusScanManager.stopScan()) {
			
			// 显示 退出全面扫毒等待 Dialog
			this.showExitFullScanDialog();
			
			// 停止动画
			stopViewAnimation();
			
			// 扫毒取消状态
			DaoCreator.createConfigDao().setVirusScanCancelState(true);
		}
		GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
				"取消自定义查杀", "", 1l);
		// 病毒查杀-全盘扫描-取消
		ActionStatsManager.getInstance().saveActionData(
				EModelID._EMID_Secure_VirusTabView_Cancel_FullScan);
	}
	
	/**
	 * @ClassName: VirusFullScanHandler
	 * @Description:病毒全面扫描 Handler
	 * @author: hunt
	 * @date: 2012-11-5
	 */
	public class VirusFullScanHandler extends Handler {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {

			// 开始扫描
			case VirusScanManager.HANDLER_SCAN_START: {

				// 扫毒初始化阶段标识(结束)
				initScanLevelFlg = false;

				// 设置预进度条进度(20%)
				progressBarFullScanning
						.setProgress(PROGRESS_INIT_SCAN_MAX_LIMIT);

				// 无回调操作
				break;
			}

			// 包扫描中
			case VirusScanManager.HANDLER_PACKAGE_SCANNING: {

				ScanResultModel appModel = (ScanResultModel) msg.obj;
				if (appModel != null) {

					// 待刷新列表加入成员
					virusFullScanningListRefreshTimed
							.addbufferListItem(appModel);
				}
				break;
			}

			// 云查杀中
			case VirusScanManager.HANDLER_CLOUD_SCANNING: {
				// 通知云查杀在进行中
				ScanResultModel appModel = new ScanResultModel();
				appModel.softScanAddress = ScanResultModel.SOFT_SCAN_ADDRESS_CLOUD;

				// 待刷新列表加入成员
				virusFullScanningListRefreshTimed.addbufferListItem(appModel);

				Message message = new Message();
				message.what = 9090;
				cloudProgressHandler.sendMessageDelayed(message, 3 * 1000);
				// // 刷新已被扫描APP列表
				// refreshAppList(appModel);
				break;
			}

			// 云查杀错误
			case VirusScanManager.HANDLER_CLOUD_ERROR: {
				// 通知云查杀错误
				break;
			}

			// 询问是否进行云查杀
			case VirusScanManager.HANDLER_ASK_USER_CLOUD_SCAN: {
				/**
				 * if (false == VirusFullScanActivity.this.isFinishing()) { //
				 * 询问是否进行云查杀; this.askCloudScan(); }
				 */
				break;
			}

			// SD card 扫描中
			case VirusScanManager.HANDLER_SDCARD_SCANNING: {

				ScanResultModel appModel = (ScanResultModel) msg.obj;
				if (appModel != null) {

					// 待刷新列表加入成员
					virusFullScanningListRefreshTimed
							.addbufferListItem(appModel);
				}
				break;
			}

			// 暂停扫描
			case VirusScanManager.HANDLER_SCAN_PAUSED: {
				// 无回调操作
				break;
			}

			// 继续扫描
			case VirusScanManager.HANDLER_SCAN_CONTINUE: {
				// 无回调操作
				break;
			}

			// 取消扫描
			case VirusScanManager.HANDLER_SCAN_CANCEL: {
				// 取消扫描立即退出
				// VirusFullScanningActivity.this.finish();
				break;
			}

			// 结束扫描
			case VirusScanManager.HANDLER_SCAN_FINISH: {
				
				if (msg.arg1 == UIConstants.CONST_SCAN_RESULT_SAFE) {
					GoogleAnalyticsTracker.getInstance().trackView("全盘查杀无病毒结果页");
				} else {
					GoogleAnalyticsTracker.getInstance().trackView("全盘查杀有病毒结果页");
					ActionStatsManager.getInstance().saveActionData(
							EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now);
				}

				// 更新扫毒进度
				updateScanningProgress(98);
				
				// 设置最后一次扫描病毒时间
				long currentTime = System.currentTimeMillis();
				DaoCreator.createConfigDao().setTSLastScanTime(currentTime);
				
				// 等待1.5S 移除刷新画面监听，等待画面计数器刷新完成
				new Handler() {
					@Override
					public void handleMessage(Message msg) {
						if (msg.what == 1231) {
							// 设置画面计时model为 停止
							stopViewAnimation();
						}
						super.handleMessage(msg);
					};
				}.sendEmptyMessageDelayed(1231 , 1500L);
				
				
				// 扫毒结束，直接跳转到report页面
				waitFlg = true;
				Message jumpToResultMsg = new Message();
				jumpToResultMsg.what = VirusScanManager.HANDLER_JUMP_TO_SCAN_RESULT;
				virusFullScanHandler.sendMessageDelayed(jumpToResultMsg,
						1500l);
				
				
				
//				if (null != virusList && virusList.size() > 0) {
//					waitFlg = true;
//					// 延迟1s后跳转到结果画面
//					Message jumpToResultMsg = new Message();
//					jumpToResultMsg.what = VirusScanManager.HANDLER_JUMP_TO_SCAN_RESULT;
//					virusFullScanHandler.sendMessageDelayed(jumpToResultMsg,
//							1500l);
//
//				} else {
//					// 扫描结束无毒, 切换Head布局
//					swichHeadLayWhenSannedOver();
//					// CD Google Report
//					GoogleAnalyticsTracker.getInstance()
//							.trackView("全盘查杀无病毒结果页");
//				}

				break;
			}

			// 扫描中
			case VirusScanManager.HANDLER_SCANNER_RUNNING: {
				// 无回调操作
				break;
			}

			// 准备扫描
			case VirusScanManager.HANDLER_SCANNER_PREPARING: {
				// 无回调操作
				break;
			}

			// 跳转到扫毒结果画面
			case VirusScanManager.HANDLER_JUMP_TO_SCAN_RESULT: {
				// 扫描结束有病毒 跳转至 杀毒画面
				jumpToVirusScanResult();
				// CD Google Report 移到杀毒结果页面上报
				//GoogleAnalyticsTracker.getInstance().trackView("全盘查杀有病毒结果页");
				//ActionStatsManager.getInstance().saveActionData(
				//		EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now);
				break;
			}

			case 778899: {
				dismissExitFullScanDialog();
				
				// 初始化页面数据
				VirusFullScanningActivity.this.initDataItem();
				break;
			}
			default:
				break;
			}
		}
	}

	/**
	 * @ClassName: VirusFullScanningAdapter
	 * @Description:应用列表适配器 Adapter
	 * @author: hunt
	 * @date: 2012-11-5
	 */
	public class VirusFullScanningAdapter extends
			VirusFullScanningAdapterAbstract {

		/**
		 * 构造
		 */
		public VirusFullScanningAdapter() {
			super();
		}

		/**
		 * Manager是否正在扫毒
		 */
		protected boolean isVirusScanManagerScanning() {
			return virusScanManager.isRunning();
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

			if (virusScanManager != null && virusScanManager.isUsing()) {
				if (VirusFullScanningActivity.this.isFinishing() == false) {
					// 退出全面扫毒
					cancelVirusScan();
				}
			} else {
				finish();
			}
		}
	}
	
	/**
	 * 监听杀毒
	 * 
	 */
	private void setCustomizedItemState() {
		if (this.cbLocal.isChecked() == false && this.cbSDCard.isChecked() == false) {
			// 云查杀置灰
			this.cbCloud.setChecked(false);
			this.mCloudLayout.setEnabled(false);
			// start 按钮不可点
			this.tvStartScan.setEnabled(false);

		} else {
			// 云查杀可点击
			this.mCloudLayout.setEnabled(true);
			// start 按钮可点击
			this.tvStartScan.setEnabled(true);

		}
	}
}
