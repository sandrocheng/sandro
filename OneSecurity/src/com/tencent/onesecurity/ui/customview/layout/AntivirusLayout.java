/**
 * @ClassName: AntivirusLayout
 * @Description:快速扫毒抽象布局及处理[病毒模块入口]
 * @author: hunt
 * @date: 2012-11-22
 */
package com.tencent.onesecurity.ui.customview.layout;

import java.text.SimpleDateFormat;
import java.util.Date;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.virus.VirusLibraryManager;
import com.tencent.onesecurity.manager.virus.VirusScanEngine;
import com.tencent.onesecurity.manager.virus.VirusScanManager;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.activity.virus.VirusFullScanningActivity;
import com.tencent.onesecurity.ui.activity.virus.VirusScanResultActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.ProgressBarDialog;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.ui.customview.widget.VirusCartonView;
import com.tencent.onesecurity.ui.customview.widget.VirusMaskView;
import com.tencent.onesecurity.ui.customview.widget.VirusMaskView.MaskViewListener;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.onesecurity.ui.model.ScanningTimer;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.tmsecure.module.qscanner.QScanConstants;

/**
 * @ClassName: AntivirusLayout
 * @Description:快速扫毒抽象布局及处理[病毒模块入口]
 * @author: hunt
 * @date: 2012-11-22
 */
public class AntivirusLayout extends FrameLayout implements SubViewListener,
		MaskViewListener {

	private final long FADE_IN_TIME = 200;
	private final long FADE_OUT_TIME = 200;

	// 切换杀毒状态时，view移出所用时间
	public final static int LAYOUT_MOVE_TIME = 300;
	// 是否正在进行病毒库更新
	private  boolean isUpdating = false;

	// 快速扫毒用 Handler
	private VirusFastScanHandler virusFastScanHandler = null;
	// 病毒库更新用 Handler
	private VirusLibUpdateHandler virusLibUpdateHandler = null;
	// 病毒扫描 Manager
	private VirusScanEngine virusScanManager = null;
	// 病毒库版本管理 Manager
	private VirusLibraryManager virusLibraryManager = null;
	// 动画定时引擎
	private CartonEngine cartonEngine = null;
	// 扫描计时model
	private ScanningTimer scanningTimer = null;

	// 上下文
	private Context context = null;

	// 快速扫毒动画 组件
	private VirusCartonView virusCartonView = null;

	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130129 -------S-*/
	// 迁移到VIP画面确认对话框
	//private Dialog moveVipConfirmDialog = null;
	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130129 -------E-*/


	/* 下面4个LinearLayout用于杀毒界面显示文字与Button */
	// 没有查毒情况下页面上端显示的文字提示
	private LinearLayout main_antivirus_top_normal_text_Layout = null;
	// 正在查毒情况下页面上端显示的文字提示
	private LinearLayout main_antivirus_top_scanning_text_Layout = null;
	// 没有查毒情况下页面下端显示两个Button
	private LinearLayout main_antivirus_bottom_two_button_layout = null;
	// 正在查毒情况下页面下端显示的文字
	private LinearLayout main_antivirus_bottom_text_layout = null;
	// 快速扫毒按钮
	private VirusMaskView scanBtn = null;
	// 全面扫毒按钮
	private CustomIconButton btnVirusFullScan = null;
	// 病毒库升级按钮
	private VirusUpdateLayout btnVirusLibUpdate = null;
	// 扫毒提示 TextView
	private TextView textScanPointInfo = null;
	// 最近一次扫毒时间标题 TextView
	private TextView textLastScanDateTitle = null;
	// 最近一次扫毒时间 TextView
	private TextView textLastScanDate = null;
	// 已经扫描APP个数 TextView
	private TextView textScanndCount = null;
	// 已经扫描病毒时间 TextView
	private TextView textScanndTime = null;
	// 已经扫出病毒个数 TextView
	private TextView textVirusCount = null;
	// 最后扫描的APP提示
	private TextView textLastScanndTitle = null;
	// 最后扫描的APP的名字
	private TextView textLastScanndAppName = null;

	// 已经扫描应用个数
	private int scannedAppsCount = 0;
	
	/**
	 * 杀毒半分比
	 */
	private String appPrecent = "";
	
	// 发现病毒/风险个数
	private int foundVirusCount = 0;

	private ImageView virusSafeImg;

	private Animation safeAnimation;

	/** 2012.12.13 add by tony 杀毒按钮触控范围变小使用的布局文件 */
	private LinearLayout touckScan;
	
	private boolean isPageOnHidden = false ;
	//textScanPointInfo
	private final String TAG_NO_THREAT_TIPS = "no_threat_tips" ;
	private final String TAG_SCAN_CANCEL = "scan_cancel" ;
	private final String TAG_FIRST_SCAN = "first_scan" ;
	
	/**
	 * 滚动广告
	 */
	private VirusRollingNewsLayout mAdvertLayout ;
	
	private ProgressBarDialog mProgressUpdate ;
	private Dialog mDlgUpdateFinish ; // 病毒库更新dialog
	
	/**
	 * 是否更新病毒库Dialog
	 */
	private Dialog mDlgVirusLib ;
	
	
	/**
	 * 构造
	 */
	public AntivirusLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.context = context;
	}

	/**
	 * 构造
	 */
	public AntivirusLayout(Context context) {
		super(context);
		this.context = context;
	}

	/**
	 * 初始化 快速扫毒抽象布局及处理
	 */
	public void initAntivirusLayout(CartonEngine cartonEngine) {
		// 动画定时引擎
		this.cartonEngine = cartonEngine;
		// 快速扫毒用 Handler
		this.virusFastScanHandler = new VirusFastScanHandler();
		// 病毒库更新用 Handler
		this.virusLibUpdateHandler = new VirusLibUpdateHandler();
//		// 病毒扫描 Manager
//		this.virusScanManager = VirusScanManager.getInstance();
		// 病毒库版本管理 Manager
		this.virusLibraryManager = new VirusLibraryManager(true);
		this.virusLibraryManager.setUIHandler(this.virusLibUpdateHandler);

		/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------S-*/
		// 初始化 迁移到VIP画面确认对话框
		//this.initmoveVipConfirmDialog(context);
		/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------E-*/
		// 初始化 快速扫毒画面项目
		this.initViewItem();
		// 初始化 画面计时处理
		this.initViewTimers();
		// 刷新最近一次扫毒时间,设置于UI
		this.refreshLastScanTime();
		// 设置画面为 普通(未扫毒)状态
		this.setViewModeToNormal();
		// 设置画面计时model为 停止
		this.stopViewTimers(true);

		
		this.initVirusLibDialog(context) ;
		
		this.inidUpdateFinishDialog(context) ;
		
		// 初始化Safe动画
		initSafeAnimation();
		if (!DaoCreator.createConfigDao().getFirstAutoScanFlg()) {
			DaoCreator.createConfigDao().setFirstAutoScanFlg(true);
			final int MSG_AUTO_SCAN = 3434;
			new Handler() {
				@Override
				public void handleMessage(Message msg) {
					if (MSG_AUTO_SCAN == msg.what) {
						if(!isPageOnHidden){
							startFastScan();
						}
					}
					super.handleMessage(msg);
				}
			}.sendEmptyMessageDelayed(MSG_AUTO_SCAN, 1000L);
			ToastUtil.showLongToast(R.string.vvcl_virus_auto_checking);
		}
		
		context.registerReceiver(refreshNewIconRecever, new IntentFilter(VirusLibraryManager.MSG_REFRESH_NEWS));
		
        //add by tony// 首页-病毒查杀
		GoogleAnalyticsTracker.getInstance().trackView("杀毒主页面");
		ActionStatsManager.getInstance().saveActionData(
				EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN);
		
	}

	/**
	 * 初始化Safe动画
	 * 
	 * @Description
	 * @version 1.0
	 * @author LionLiu
	 */
	private void initSafeAnimation() {
		virusSafeImg = (ImageView) findViewById(R.id.img_virus_safe);
		safeAnimation = AnimationUtils.loadAnimation(context,
				R.anim.anim_virus_safe);
		safeAnimation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				
				//  需要提示
				//isNeededShowNoThreatTips = true ;
				
				
				// 扫描结果没有病毒,显示 :No threats detected.切屏后消失
				textScanPointInfo.setVisibility(View.VISIBLE);
				textScanPointInfo.setText(AntivirusLayout.this.getResources()
						.getString(R.string.vvcl_no_threats_found));
				textScanPointInfo.setTag(TAG_NO_THREAT_TIPS) ;
				
				touckScan.setEnabled(true);
				virusSafeImg.setVisibility(View.GONE);
				// 刷新最近一次扫毒时间,设置于UI
				refreshLastScanTime();
				// 设置画面为 普通(未扫毒)状态
				setViewModeToNormal();
			}
		});
	}
	
	/**
	 * 初始化更新病毒库结束选择是否杀毒Dialog
	 * 
	 * @param context
	 */
	private void inidUpdateFinishDialog(Context context) {
		mDlgUpdateFinish = CustomDialog.createCustomDialogCommonBlack(context, context
				.getString(R.string.vvcl_dialog_reportdetail), context.getString(R.string.vvcl_dialog_reporleftString),
				context.getString(R.string.vvcl_dialog_reporrightString), mDialogClickListener);
	}
	/**
	 * 初始化更新病毒库Dialog
	 * @param context
	 */
	private void initVirusLibDialog(Context context){
		mDlgVirusLib = CustomDialog.createCustomDialogCommonBlack(context,
				context.getString(R.string.vvcl_update_lib_dlg_tips),
				context.getString(R.string.safebox_photo_dlg_vip_out_of_date_left),
				context.getString(R.string.safebox_photo_dlg_vip_out_of_date_right), mDialogClickListener);
		mDlgVirusLib.setCanceledOnTouchOutside(true);
	}
	/**
	 * 相应dialog 的点击事件
	 */
	private DialogInterface.OnClickListener mDialogClickListener = new DialogInterface.OnClickListener() {

		@Override
		public void onClick(DialogInterface dialog, int which) {
			if (dialog.equals(mDlgVirusLib)) {
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// Cancel
					mDlgVirusLib.dismiss();
					// 病毒查杀准备
					startFastScan();
					GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "查杀引擎升级提示点Later", "", 1l);
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK: // 
					// OK
					mDlgVirusLib.dismiss();
					// 进度条更新病毒库
					updateVirusLibByUserLev();
					GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "查杀引擎升级提示点升级", "", 1l);
					break;
				}
			} else if (dialog.equals(mDlgUpdateFinish)) {
				mDlgUpdateFinish.dismiss();
				switch (which) {
				case CustomDialog.LEFT_BUTTON_CLICK:
					// close
					break;
				case CustomDialog.RIGHT_BUTTON_CLICK:
					// scan now
					startFastScan();
					GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
							"完成升级点Scan now", "", 1l);
					break;
				default:
					break;
				}
			}
		}
	};
	private void updateVirusLibByUserLev(){
		
		UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
		int level = userInfoDao.getUserLevelInfo();
		switch (level) {// FIXME LEE DONOT COMMITE
		case UserInfoMode.STANDARD_USER: // 非vip用户
		case UserInfoMode.TRIAL_OUT_OF_DATE_USER: // 试用过期用户
		case UserInfoMode.MEMBER_OUT_OF_DATE_USER: { // 会员过期用户
			// 跳转到VIP模块
			Intent intentVipZone = new Intent(context,
					VipUpgradeActivity.class);
			intentVipZone.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
			context.startActivity(intentVipZone);
			GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "通过升级病毒库进入VIP", "进入VIP", 1l);
			break;
		}
		case UserInfoMode.TRIAL_USER: // 试用用户
		case UserInfoMode.MEMBER_PREOPEN_USER: // 预安装用户
		case UserInfoMode.MEMBER_USER: { // 会员用户
			// 更新病毒库
			if (isUpdating) {
				showProgressDialog(false);
			} else {
				updateVirusLib();
			}
			break;
		}
		}
	
	}
	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------S-*/
	/**
	 * 显示 迁移到VIP画面确认对话框
	 */
//	private void showMoveVipConfirmDialog() {
//		if (moveVipConfirmDialog != null && moveVipConfirmDialog.isShowing()) {
//			return;
//		}
//		moveVipConfirmDialog.show();
//	}
	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------E-*/


	// /**
	// * 关闭 迁移到VIP画面确认对话框
	// */
	// private void dismissMoveVipConfirmDialog() {
	// if (moveVipConfirmDialog != null && moveVipConfirmDialog.isShowing()) {
	// moveVipConfirmDialog.dismiss();
	// }
	// }

	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------S-*/
	/**
	 * 初始化 迁移到VIP画面确认对话框
	 */
//	private void initmoveVipConfirmDialog(Context context) {
//
//		// 初始化 迁移到VIP画面确认对话框
//		this.moveVipConfirmDialog = CustomDialog.createCustomDialogCommonBlack(
//				context,
//				this.getResources().getString(
//						R.string.vvcl_this_feature_requires_YYY_vip), this
//						.getResources().getString(R.string.vvcl_later), this
//						.getResources().getString(R.string.vvcl_upgrade),
//				new onDialogBtnClickListener());
//	}
	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------E-*/


	/**
	 * 初始化 快速扫毒画面项目
	 */
	private void initViewItem() {
		/* 获取查病毒界面的4个层 */
		main_antivirus_top_normal_text_Layout = (LinearLayout) findViewById(R.id.main_antivirus_top_normal_text_linearlayout);
		main_antivirus_bottom_two_button_layout = (LinearLayout) findViewById(R.id.main_antivirus_bottom_two_button_layout);
		main_antivirus_top_scanning_text_Layout = (LinearLayout) findViewById(R.id.main_antivirus_top_scanning_text_linearlayout);
		main_antivirus_bottom_text_layout = (LinearLayout) findViewById(R.id.main_antivirus_bottom_scanning_text_layout);

		// 病毒播报
		mAdvertLayout = (VirusRollingNewsLayout) findViewById(R.id.antivirus_advert_layout) ;
		mAdvertLayout.initHandler();
		
		// 全面扫毒按钮
		this.btnVirusFullScan = (CustomIconButton) findViewById(R.id.main_antivirus_button_full_scan);
		// 病毒库升级按钮
		this.btnVirusLibUpdate = (VirusUpdateLayout) findViewById(R.id.main_antivirus_button_update);
		// 设置病毒库升级按钮样式
		this.refreshBtnVirusLibUpdateStyle();
		// 扫毒提示 TextView
		this.textScanPointInfo = (TextView) findViewById(R.id.text_scan_point_info);
		// 最近一次扫毒时间标题 TextView
		this.textLastScanDateTitle = (TextView) findViewById(R.id.text_last_scan_date_title);
		// 最近一次扫毒时间 TextView
		this.textLastScanDate = (TextView) findViewById(R.id.text_last_scan_date);
		// 已经扫描病毒个数 TextView
		this.textScanndCount = (TextView) findViewById(R.id.text_fast_scanning_scannd_count);
		// 已经扫描病毒时间 TextView
		this.textScanndTime = (TextView) findViewById(R.id.text_fast_scanning_scannd_time);
		// 已经扫出病毒个数 TextView
		this.textVirusCount = (TextView) findViewById(R.id.text_fast_scanning_virus_count);
		// 最后扫描的APP提示
		this.textLastScanndTitle = (TextView) findViewById(R.id.text_last_scannd_title);
		// 最后扫描的APP的名字
		this.textLastScanndAppName = (TextView) findViewById(R.id.text_last_scannd_app_name);
		// 快速扫毒动画组件
		this.virusCartonView = (VirusCartonView) this
				.findViewById(R.id.cartonView);
		// 初始化停掉0101动画效果 
		//cartonEngine.addListener(virusCartonView);

		// 快速扫毒 Button
		this.scanBtn = (VirusMaskView) this.findViewById(R.id.fast_scan_btn);
		this.scanBtn.prepare(this);
		this.scanBtn.turnToScan();
		cartonEngine.addListener(this.scanBtn);
		/** 2012.12.13 add by tony 杀毒按钮触控范围变小使用的布局文件 */
		touckScan = (LinearLayout) findViewById(R.id.ll_touck);
		touckScan.setEnabled(true);
		this.touckScan.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

				// 灰度第三版本 点击Scan 时，判断是否病毒库过期,弹出一次后 ，7天内不再弹出
				long lastTime = DaoCreator.createConfigDao().getVirusLibDialogShowTime();
				long lastScanTime = DaoCreator.createConfigDao().getTSLastScanTime() ;
				// 排除7天内，是否扫描
				if (!DaoCreator.createConfigDao().getVirusLibLatestState()
						&& (System.currentTimeMillis() - lastTime > 7 * 24 * 60 * 60000)
						&& virusLibraryManager.isCheckManagerIdled()
						&& lastScanTime != 0) {
					// 有更新,设置提示框弹出时间为当前时间
					DaoCreator.createConfigDao().setVirusLibDialogShowTimelong(System.currentTimeMillis());
					mDlgVirusLib.show();
				} else {
					// 开始快速扫描
					startFastScan();
				}
			}
		});

		// 全面扫毒 Button
		findViewById(R.id.main_antivirus_button_full_scan).setOnClickListener(
				new OnClickListener() {

					@Override
					public void onClick(View v) {
						// 跳转到全面扫毒画面
						Intent intentFullScan = new Intent(context,
								VirusFullScanningActivity.class);
						// 全面扫毒画面不存于堆栈
						context.startActivity(intentFullScan);
						GoogleAnalyticsTracker.getInstance().ClickButton("杀毒",
								"点击【Customized Scan】", "", 1l);
						// 病毒查杀-完成全盘扫描 modify by tony
						ActionStatsManager.getInstance().saveActionData(
								EModelID._EMID_Secure_VirusTabView_Finish_FullScan);
					}
				});

		// 更新病毒库 Button
		btnVirusLibUpdate.setNewIcon(!DaoCreator.createConfigDao()
				.getVirusLibLatestState());
		btnVirusLibUpdate.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				updateVirusLibByUserLev() ;
			}
		});
		
		initProgessDialog() ;
	}

	/**
	 * 构造进度条
	 * 
	 */
	private void initProgessDialog() {
		mProgressUpdate = new ProgressBarDialog(context);
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
		if(mProgressUpdate != null && mProgressUpdate.isShowing()){
			// 关闭假进度
			mProgressUpdate.stopIncrement() ;
			mProgressUpdate.cancel() ;
		}
	}
	/**
	 * 停止更新动画，回复未更新状态
	 */
	private void stopUpdateAnimation() {
		isUpdating = false;
		btnVirusLibUpdate.stopUpdating();
	}

	/**
	 * 根据用户类型，刷新病毒库升级按钮样式
	 */
	public void refreshBtnVirusLibUpdateStyle() {

		if (null == btnVirusLibUpdate) {
			return;
		}

		UserInfoDao userInfoDao = DaoCreator.createUserInfoDao();
		int level = userInfoDao.getUserLevelInfo();
		switch (level) {
		case UserInfoMode.STANDARD_USER: { // 非vip用户
			btnVirusLibUpdate.setVipStatus(VirusUpdateLayout.UN_VIP_STATUS);
			break;
		}
		case UserInfoMode.TRIAL_USER: // 试用用户
		case UserInfoMode.MEMBER_PREOPEN_USER: // 预安装用户
		case UserInfoMode.MEMBER_USER: { // 会员用户
			btnVirusLibUpdate.setVipStatus(VirusUpdateLayout.VIP_STATUS);
			break;
		}
		case UserInfoMode.TRIAL_OUT_OF_DATE_USER: // 试用过期用户
		case UserInfoMode.MEMBER_OUT_OF_DATE_USER: { // 会员过期用户
			btnVirusLibUpdate
					.setVipStatus(VirusUpdateLayout.VIP_EXPIRED_STATUS);
			break;
		}
		}
	}

	/**
	 * 初始化 画面计时处理
	 */
	private void initViewTimers() {
		// 快速杀毒动画计时model
		// this.scanCarton = new ScanCarton(0, scanningLaser,
		// scanningBG);
		// 扫描计时model
		this.scanningTimer = new ScanningTimer(null, textScanndTime, null);
	}

	/**
	 * 在TextView前端添加Icon，以解决，在TextView中通过drawableLeft属性添加Icon，
	 * 文字折行显示的时候不会与Icon对齐(只会与文字对齐)问题。
	 */
	private CharSequence addWarnIcon(String str) {
		if (null == str)
			return null;
		str = " " + str;
		String symString = "warnIcon!!!";
		String string = symString + str;
		CharSequence text = string.subSequence(0, string.length());
		SpannableStringBuilder builder = new SpannableStringBuilder(text);

		Drawable drawable = MainApplication.getContext().getResources()
				.getDrawable(R.drawable.icon_virus_warning);

		drawable.setBounds(0, 0, drawable.getIntrinsicWidth(),
				drawable.getIntrinsicHeight());
		builder.setSpan(new ImageSpan(drawable), 0, symString.length(),
				Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);

		return builder;
	}

	/**
	 * 刷新最近一次扫毒时间,设置于UI
	 */
	private void refreshLastScanTime() {
		

		long currentTime = System.currentTimeMillis();
		long lastScanTime = DaoCreator.createConfigDao().getTSLastScanTime();

		Date lastDate = new Date(lastScanTime);
		SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");

		// 最近一次扫毒时间标题 TextView
		this.textLastScanDateTitle.setText(this.getResources().getString(
				R.string.vvcl_last_scan));
		// 没有扫毒过
		if (lastScanTime == 0) {
			
			this.textScanPointInfo.setVisibility(View.VISIBLE) ;
			this.textScanPointInfo.setText(this.getResources().getString(
					R.string.vvcl_scan_remind_1));
			textScanPointInfo.setTag(TAG_FIRST_SCAN) ;
			// 最近一次扫毒时间标题 TextView
			this.textLastScanDateTitle.setText("");
			// 最近一次扫毒时间 TextView
			this.textLastScanDate.setText("");
			virusCartonView.setOverTenDayEffect();
		} else{
			// 扫描过，且离开页面返回，要提示病毒库过期
			// lee 20130116 灰度2.0二次修订 扫描过&&离开过界面&&定病毒库有更新 给出提示，复用 textScanPointInfo
//			if(false && isNeededShowDBExpiredTips && !DaoCreator.createConfigDao().getVirusLibLatestState()){
//				this.textScanPointInfo.setText(this.getResources().getString(R.string.vvcl_virus_db_expired_tips));
//				this.textScanPointInfo.setTextColor(0xffff6459) ;
//				this.textScanPointInfo.setVisibility(View.GONE);
//				this.textLastScanDateTitle.setText("");
//				this.textLastScanDate.setText("");
//			}else{
			if(textScanPointInfo.getTag()!= null && textScanPointInfo.getTag().equals(TAG_FIRST_SCAN)){
				textScanPointInfo.setVisibility(View.GONE);
			}// 调用后会调用是否取消，在设置VISIBLITY
				// 一分钟以内
				if ((currentTime - lastScanTime) < 1000 * 60l) {
					//this.textScanPointInfo.setText(this.getResources().getString(R.string.vvcl_scan_remind_2));
					//this.textScanPointInfo.setVisibility(View.GONE);
					this.textLastScanDate.setText(this.getResources().getString(R.string.common_just_now));
					virusCartonView.setOneDayEffect();
				} else
				// 一小时以内
				if ((currentTime - lastScanTime) < 1000 * 60 * 60l) {

					long minute = (currentTime - lastScanTime) / 1000 / 60;

//					this.textScanPointInfo.setText(this.getResources().getString(R.string.vvcl_scan_remind_2));
//					this.textScanPointInfo.setVisibility(View.GONE);
					this.textLastScanDate.setText(String.valueOf(minute) + " "
							+ this.getResources().getString(R.string.common_x_mins_ago));
					virusCartonView.setOneDayEffect();
				} else
				// 一天以内
				if ((currentTime - lastScanTime) < 1000 * 60 * 60 * 24l) {

					long hour = (currentTime - lastScanTime) / 1000 / 60 / 60;

//					this.textScanPointInfo.setText(this.getResources().getString(R.string.vvcl_scan_remind_2));
//					this.textScanPointInfo.setVisibility(View.GONE);
					this.textLastScanDate.setText(String.valueOf(hour) + " "
							+ this.getResources().getString(R.string.common_x_hours_ago));
					virusCartonView.setOneDayEffect();
				} else
				// 十天以内
				if ((currentTime - lastScanTime) < 1000 * 60 * 60 * 24 * 10l) {
//					this.textScanPointInfo.setText(this.getResources().getString(R.string.vvcl_scan_remind_2));
//					this.textScanPointInfo.setVisibility(View.GONE);
					// lee 20130116 灰度2.0二次修订,十天以上显示days ago
					// this.textLastScanDate.setText(formatter.format(lastDate));
					long days = (currentTime - lastScanTime) / 1000 / 3600 / 24;
					this.textLastScanDate.setText(String.valueOf(days) + " "
							+ this.getResources().getString(R.string.common_x_days_ago));
					virusCartonView.setTenDayEffect();
				} else
				// 三十天以内
				if ((currentTime - lastScanTime) < 1000 * 60 * 60 * 24 * 30l) {
//					this.textScanPointInfo.setText(addWarnIcon(this.getResources().getString(
//							R.string.vvcl_scan_remind_3)));
//					this.textScanPointInfo.setVisibility(View.GONE);
					this.textLastScanDate.setText(formatter.format(lastDate));
					virusCartonView.setOverTenDayEffect();
				} else { // 三十天以上
//					this.textScanPointInfo.setText(addWarnIcon(this.getResources().getString(
//							R.string.vvcl_scan_remind_4)));
//					this.textScanPointInfo.setVisibility(View.GONE);
					this.textLastScanDate.setText(formatter.format(lastDate));
					virusCartonView.setOverTenDayEffect();
				}
			//} end if
		}
		// 如果设置了动画效果，每次杀毒后都显示最大几率的出现错位数字
		if (ConfigDao.getInstance().isHomepageAnimOpen()) {
			virusCartonView.setOverTenDayEffect();
		}
	}

	/**
	 * 设置扫毒取消后提示文案
	 */
	private void setScanCancelText() {
		this.textScanPointInfo.setVisibility(View.VISIBLE);
		this.textScanPointInfo.setTextColor(0xfffafafa) ;
		this.textScanPointInfo
				.setText(R.string.vvcl_scan_canceled_unable_to_YYY_states);
		textScanPointInfo.setTag(TAG_SCAN_CANCEL) ;
	}

	/**
	 * 设置画面计时model为 停止
	 */
	private void stopViewTimers(boolean transScanBtn) {
		// 快速杀毒动画计时model 停止
		this.virusCartonView.changeStatus(false);
		// 扫描计时model 停止
		this.cartonEngine.requestRemove(this.scanningTimer);
		// 扫描完成，停掉0101动画效果
		this.cartonEngine.requestRemove(virusCartonView) ;
		
		touckScan.setEnabled(true);
		scanBtn.pause(false);
		if (transScanBtn) {
			scanBtn.turnToScan();
		} else {
			// 开始Safe动画
			scanBtn.trunToCancelHidding();
		}
	}

	/**
	 * 设置画面计时model为 开始
	 */
	private void startViewTimers() {

		// 快速杀毒动画计时model 开始
		this.virusCartonView.changeStatus(true);
		scanBtn.turnToCancel();
		// 扫描计时model 开始
		this.scanningTimer.start();
		this.cartonEngine.addListener(this.scanningTimer);
	}

	/**
	 * 设置画面为 普通(未扫毒)状态
	 */
	private void setViewModeToNormal() {

		main_antivirus_top_normal_text_Layout.setVisibility(View.VISIBLE);
		main_antivirus_bottom_two_button_layout.setVisibility(View.VISIBLE);

		// 渐出动画
		Animation fadeInAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_in);
		fadeInAnimation.setDuration(FADE_IN_TIME);
		main_antivirus_top_normal_text_Layout.startAnimation(fadeInAnimation);
		main_antivirus_bottom_two_button_layout.startAnimation(fadeInAnimation);

		Animation fadeOutAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_out);
		fadeOutAnimation.setDuration(FADE_OUT_TIME);
		main_antivirus_top_scanning_text_Layout
				.startAnimation(fadeOutAnimation);
		main_antivirus_bottom_text_layout.startAnimation(fadeOutAnimation);
		main_antivirus_top_scanning_text_Layout.setVisibility(View.GONE);
		main_antivirus_bottom_text_layout.setVisibility(View.GONE);

		if(DaoCreator.createConfigDao().isRollingNewsOpen() && !mAdvertLayout.isLowDensity()){
			mAdvertLayout.stopFlipping() ;
			mAdvertLayout.setVisibility(View.GONE) ;
		}
		
		this.btnVirusFullScan.setEnabled(true);
		this.btnVirusLibUpdate.setEnabled(true);
	}

	/**
	 * 设置画面为 扫毒进行中 状态
	 */
	private void setViewModeToScanning() {

		main_antivirus_top_scanning_text_Layout.setVisibility(View.VISIBLE);
		main_antivirus_bottom_text_layout.setVisibility(View.VISIBLE);

		// 渐出动画
		Animation fadeInAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_in);
		fadeInAnimation.setDuration(FADE_IN_TIME);
		main_antivirus_top_scanning_text_Layout.startAnimation(fadeInAnimation);
		main_antivirus_bottom_text_layout.startAnimation(fadeInAnimation);
		
		
		//  允许广告播放
		if(DaoCreator.createConfigDao().isRollingNewsOpen() && !mAdvertLayout.isLowDensity()){
			mAdvertLayout.setVisibility(View.VISIBLE) ;
			mAdvertLayout.startFlipping() ;
		}

		Animation fadeOutAnimation = AnimationUtils.loadAnimation(context,
				android.R.anim.fade_out);
		fadeOutAnimation.setDuration(FADE_OUT_TIME);
		main_antivirus_top_normal_text_Layout.startAnimation(fadeOutAnimation);
		main_antivirus_bottom_two_button_layout
				.startAnimation(fadeOutAnimation);

		main_antivirus_top_normal_text_Layout.setVisibility(View.GONE);
		main_antivirus_bottom_two_button_layout.setVisibility(View.GONE);

		this.btnVirusFullScan.setEnabled(false);
		this.btnVirusLibUpdate.setEnabled(false);
	}
	private void startFastScan() {

		Log.d("VirusScanEngine", "User clicked scan button.");
		virusScanManager = VirusScanManager.getInstance().getVirusEngine("FAST");
		
		// 点击画面添加 0101动画效果 
		cartonEngine.addListener(virusCartonView) ;
		
		runScanningHandlerThread();
		
		// 灰度代码移植
		touckScan.setEnabled(false);
		virusCartonView.changeStatus(true);
		virusCartonView.pause(false);
	}
	/**
	 * 启动扫毒线程
	 */
	private void runScanningHandlerThread() {

		// 已经扫描应用个数
		this.scannedAppsCount = 0;
		// 快速扫描百分比
		appPrecent = "0%";
		// 发现病毒/风险个数
		this.foundVirusCount = 0;

		// 最后扫描的APP提示
		this.textLastScanndTitle.setText(R.string.vvcl_local_scanning);
		// 已经扫描APP个数 TextView
		this.textScanndCount.setText(String.valueOf(this.scannedAppsCount));
		// 已经发现病毒/风险个数 TextView
		this.textVirusCount.setText(String.valueOf(this.foundVirusCount));
		// 最后扫描的APP的名字
		this.textLastScanndAppName.setText("");
		this.scanBtn.setProgress(appPrecent);
		
		// 设置画面为 扫毒进行中 状态
		this.setViewModeToScanning();
		// 设置画面计时model为 开始
		this.startViewTimers();

		// 开始快速扫毒
		this.virusScanManager.startVirusScan(VirusScanEngine.TYPE_PKG_SCAN, this.virusFastScanHandler, false);
		
//		// 设置病毒扫描引擎 UIHandler
//		this.virusScanManager.setUIHandler(this.virusFastScanHandler);
//		// 开始快速扫毒
//		this.virusScanManager.startQuickScan();

		// CD Google Report
		GoogleAnalyticsTracker.getInstance().trackView("快速查杀过程");
		GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "点击快速查杀",
				"快速查杀", 1l);
		// 病毒查杀-完成快速扫描
		ActionStatsManager.getInstance().saveActionData(
				EModelID._EMID_Secure_VirusTabView_Finish_QuickScan);
	}

	/**
	 * 结束快速扫毒
	 */
	private void stopScan() {

		// 扫毒取消状态
		DaoCreator.createConfigDao().setVirusScanCancelState(true);

		if (virusScanManager != null && virusScanManager.isRunning()) {
			// 结束扫毒
			virusScanManager.stopScan();

			// 最后扫描的APP的名字
			textLastScanndAppName.setText("");
			// 最后扫描的APP提示
			textLastScanndTitle.setText(R.string.vvcl_please_wait);

			GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "取消快速查杀",
					"快速查杀", 1l);
			// 病毒查杀-快速扫描-取消
			ActionStatsManager.getInstance().saveActionData(
					EModelID._EMID_Secure_VirusTabView_Cancel_QuickScan);
		}
	}

	/**
	 * 刷新快速扫毒过程信息
	 */
	private void refreshScanningInfo(ScanResultModel appModel) {
		if (null != appModel) {

			// 已经扫描应用个数
			this.scannedAppsCount = this.scannedAppsCount + 1;
			this.appPrecent = appModel.progress + "%";
			
			switch (appModel.type) {
			case QScanConstants.TYPE_AD_BLOCK:
			case QScanConstants.TYPE_NOT_OFFICIAL:
			case QScanConstants.TYPE_RISK:
			case QScanConstants.TYPE_VIRUS:
				// 发现病毒/风险个数
				this.foundVirusCount = this.foundVirusCount + 1;
				break;
			case QScanConstants.TYPE_OK:
			case QScanConstants.TYPE_UNKNOWN:
				break;
			default:
				break;
			}

			// 设置最后扫描的APP的名字
			// appName = appModel.softName;

			// 显示已经扫描APP个数 TextView
			this.textScanndCount.setText(String.valueOf(this.scannedAppsCount));
			this.scanBtn.setProgress(appPrecent);
			// 显示已经扫出病毒个数 TextView
			this.textVirusCount.setText(String.valueOf(this.foundVirusCount));
			// 显示最后扫描的APP的名字
			this.textLastScanndAppName.setText(appModel.softName);
		}
	}

	// /**
	// * 恢复
	// */
	// @Override
	// public void onResume() {
	// // 刷新最近一次扫毒时间,设置于UI
	// this.refreshLastScanTime();
	// // 扫毒取消后到此画面
	// if (DaoCreator.createConfigDao().getVirusScanCancelState()) {
	// // 设置扫毒取消后提示文案
	// this.setScanCancelText();
	// // 扫毒取消状态还原
	// DaoCreator.createConfigDao().setVirusScanCancelState(false);
	// }
	// }

	// /**
	// * 暂停
	// */
	// @Override
	// public void onPause() {
	// }

	/**
	 * 解构
	 */
	@Override
	public void onDestroy() {
		try {
			virusCartonView.clear();
		} catch (Exception e) {
		}
		try {
			scanBtn.clear();
		} catch (Exception e) {
		}
		VirusScanManager.getInstance().releaseEngine("FAST");
	}

	/**
	 * 页卡组中当前显示快速扫毒时处理(外部接口回调)
	 */
	@Override
	public void onShow(int from) {

		isPageOnHidden = false ;
		
		if (virusCartonView == null || scanBtn == null) {
			return;
		}
		// 首页-病毒查杀
		GoogleAnalyticsTracker.getInstance().trackView("杀毒主页面");
		ActionStatsManager.getInstance().saveActionData(
				EModelID._EMID_Secure_INTO_MIANVIEW_VIRUS_SCAN);

		virusCartonView.pause(false);
		scanBtn.pause(false);
		//this.cartonEngine.addListener(virusCartonView);
		this.cartonEngine.addListener(scanBtn);
		// 扫描过程中，添加0101动画效果
//		if(uiScanning){
//			this.cartonEngine.addListener(virusCartonView);
//		}

		// 根据用户类型，刷新病毒库升级按钮样式
		this.refreshBtnVirusLibUpdateStyle();

		// 刷新最近一次扫毒时间,设置于UI
		this.refreshLastScanTime();

		if (DaoCreator.createConfigDao().getVirusScanCancelState()) {
			// 设置扫毒取消后提示文案
			setScanCancelText();
			// 扫毒取消状态还原
			DaoCreator.createConfigDao().setVirusScanCancelState(false);
		}
		

	}

	@Override
	public void onHidden(int from) {
		if (from == SubViewListener.FROM_PAGER || from == SubViewListener.FROM_PAUSE) {
			virusCartonView.pause(true);
			scanBtn.pause(true);
			// this.cartonEngine.requestRemove(virusCartonView);
			this.cartonEngine.requestRemove(scanBtn);
			
			final String tag = (String) textScanPointInfo.getTag() ;
			if (tag != null && (tag.equals(TAG_NO_THREAT_TIPS) || tag.equals(TAG_SCAN_CANCEL))) {
				this.textScanPointInfo.setVisibility(View.GONE);
			}
			
			// 杀毒进行中，停止杀毒
			if (virusScanManager != null && virusScanManager.isRunning()) {
				// 结束快速扫毒
				stopScan();
				
				// 刷新最近一次扫毒时间,设置于UI
				refreshLastScanTime();

				// 设置扫毒取消后提示文案
				setScanCancelText();

				// 设置画面为 普通(未扫毒)状态
				setViewModeToNormal();
				// 设置画面计时model为 停止
				stopViewTimers(true);
			}
			
		}
		scanBtn.resetColorIndex();
		isPageOnHidden = true ;
	}

	/**
	 * 页卡组滑动事件
	 */
	@Override
	public void onOutOfPage() {
//		if (this.virusScanManager.isScanning()) {
//			// 结束快速扫毒
//			stopScan();
//		}
	}

	/**
	 * @ClassName: VirusFastScanHandler
	 * @Description:快速扫毒用 Handler
	 * @author: hunt
	 * @date: 2012-11-22
	 */
	public class VirusFastScanHandler extends Handler {

		@Override
		public void handleMessage(Message msg) {

			switch (msg.what) {

			// 开始扫描
			case VirusScanManager.HANDLER_SCAN_START: {
				// 无回调操作
				break;
			}

			// 包扫描中
			case VirusScanManager.HANDLER_PACKAGE_SCANNING: {

				ScanResultModel appModel = (ScanResultModel) msg.obj;
				if (appModel != null) {

					// 刷新快速扫毒过程信息
					refreshScanningInfo(appModel);
				}
				break;
			}

			// 云查杀中
			case VirusScanManager.HANDLER_CLOUD_SCANNING: {
				// 通知云查杀在进行中
				// 最后扫描的APP提示
				textLastScanndTitle.setText(R.string.vvcl_cloud_scanning);
				// 最后扫描的APP的名字
				textLastScanndAppName.setText("");

				break;
			}

			// 云查杀错误
			case VirusScanManager.HANDLER_CLOUD_ERROR: {
				// 通知云查杀错误
				break;
			}

			// 询问是否进行云查杀
			case VirusScanManager.HANDLER_ASK_USER_CLOUD_SCAN: {
				// 询问是否进行云查杀
				break;
			}

			// SD card 扫描中
			case VirusScanManager.HANDLER_SDCARD_SCANNING: {
				// 快速扫毒无SD操作
				//
				// ScanResultModel appModel = (ScanResultModel) msg.obj;
				// if (appModel != null) {
				//
				// // 刷新快速扫毒过程信息
				// refreshScanningInfo(appModel);
				// }
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

				break;
			}

			// 结束扫描
			case VirusScanManager.HANDLER_SCAN_FINISH: {

//				if (exitFlg) {
//
//					// 刷新最近一次扫毒时间,设置于UI
//					refreshLastScanTime();
//
//					// 设置扫毒取消后提示文案
//					setScanCancelText();
//
//					// 设置画面为 普通(未扫毒)状态
//					setViewModeToNormal();
//					// 设置画面计时model为 停止
//					stopViewTimers(true);
//
//					exitFlg = false;
//
//					return;
//				}

				// 设置最后一次扫描病毒时间
				long currentTime = System.currentTimeMillis();
				DaoCreator.createConfigDao().setTSLastScanTime(currentTime);

				if (msg.arg1 == UIConstants.CONST_SCAN_RESULT_SAFE) {

					// 1\刷新最近一次扫毒时间,设置于UI
					// 2\设置画面为 普通(未扫毒)状态
					// 以上1\2\safe动画停止时调用

					// 设置画面计时model为 停止,调用safe动画
					stopViewTimers(false);

					// CD Google Report
					GoogleAnalyticsTracker.getInstance()
							.trackView("快速查杀无病毒结果页");

				} else {
					
					// 刷新最近一次扫毒时间,设置于UI
					refreshLastScanTime();
					// 设置画面为 普通(未扫毒)状态
					setViewModeToNormal();

					// 设置画面计时model为 停止
					//stopViewTimers(true);
					
					// lee 杀毒结束，恢复Scan画面之后，跳转画面之前，会有一个空隙 
					// 修改为 等待两秒后更新Scan
					new Handler() {
						@Override
						public void handleMessage(Message msg) {
							if (msg.what == VirusScanManager.HANDLER_JUMP_TO_SCAN_RESULT) {
								stopViewTimers(true);
							}
							super.handleMessage(msg);
						};
					}.sendEmptyMessageDelayed(VirusScanManager.HANDLER_JUMP_TO_SCAN_RESULT , 1500L);
					
					
					// 跳转到杀毒画面
					Intent intent = new Intent();
					intent.setClass(context, VirusScanResultActivity.class);
					intent.putExtra(VirusScanResultActivity.KEY_ITEMS,
							scannedAppsCount);
					intent.putExtra(VirusScanResultActivity.KEY_TIME,
							textScanndTime.getText().toString());
					intent.putExtra("FUNC", "FAST");
					context.startActivity(intent);

					// CD Google Report
					GoogleAnalyticsTracker.getInstance()
							.trackView("快速查杀有病毒结果页");
					ActionStatsManager.getInstance().saveActionData(
							EModelID._EMID_Secure_Outside_VirusTabView_Dont_Kill_Now);
				}


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

			default:
				break;
			}
		}
	}

	/**
	 * 更新病毒库
	 */
	public void updateVirusLib() {

		if (isUpdating) {
			return;
		}
		if (virusLibraryManager.isCheckManagerIdled()) {
			// 病毒库更新动画启动
			btnVirusLibUpdate.startUpdating();

			// 检查病毒库的最新版本，结果通过handler给UI [在分线程处理]
			virusLibraryManager.checkVirusVersion();

			// CD Google Report
			GoogleAnalyticsTracker.getInstance().trackView("升级病毒库过程");
			GoogleAnalyticsTracker.getInstance().ClickButton("杀毒", "点击升级病毒库", "升级病毒库", 1l);
			// 病毒查杀-病毒更新
			ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_INTO_VIRUS_UPDATE);
		}else{
			ToastUtil.showShortToast(R.string.vvcl_updating_is_goingon);
		}
	}

	/**
	 * 更新病毒库状态为最新
	 */
	private void updateLatestVirusLibStateLatest() {

		btnVirusLibUpdate.setNewIcon(false);

		DaoCreator.createConfigDao().setVirusLibLatestState(
				VirusLibraryManager.CONST_FLG_VIRUS_LIB_LATEST);
	}

	/**
	 * @ClassName: VirusLibUpdateHandler
	 * @Description:病毒库更新用 Handler
	 * @author: hunt
	 * @date: 2012-11-22
	 */
	public class VirusLibUpdateHandler extends Handler {

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
					updateLatestVirusLibStateLatest();

					// 显示病毒库更新成功 Toast
					ToastUtil.showLongToast(R.string.vvcl_your_virus_database_is_the_latest);

					stopUpdateAnimation();
				}else if(VirusLibraryManager.CONST_VIRUS_LIB_CHECK_FINISH_EXPIRED == msg.arg1){
					isUpdating = true ;
					// 需要更新，此时弹出滚动条,设置进度
					if (!isPageOnHidden && (virusScanManager != null && !virusScanManager.isRunning())) {
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
				stopUpdateAnimation();
				cancelUpdateDialog() ;
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
				updateLatestVirusLibStateLatest();
				// 显示病毒库更新成功 Toast
//				ToastUtil
//						.ShowSimpleTextLongToast2(R.string.vvcl_your_virus_database_is_the_latest_now,R.layout.custom_toast);
				// lee 20130116 病毒库更新结束，刷新提示
				refreshLastScanTime() ;
				
				stopUpdateAnimation();
				
				virusLibUpdateHandler.sendEmptyMessageDelayed(VirusLibraryManager.HANDLER_UPDATE_PROGRESS_FINISH, 800);
				
				
				break;
			}
			// 更新病毒库错误返回
			case VirusLibraryManager.HANDLER_UPDATE_ERROR: {

				errorCase = true;

				// 显示网络错误 Toast
				ToastUtil.showLongToast(R.string.vvcl_network_connection_failed_YYY_later);
				cancelUpdateDialog() ;
				stopUpdateAnimation();
				break;
			}
			case VirusLibraryManager.HANDLER_UPDATE_PROGRESS_FINISH:
				cancelUpdateDialog() ;
				// 离开界面不再弹出提示框
				if(!isPageOnHidden && mDlgUpdateFinish != null
						&& (virusScanManager == null || !virusScanManager.isRunning())){
					mDlgUpdateFinish.show() ;
				}else{
					StatusBarManager.getInstance().showVirusDBUpdatedNotification();

				}
				break ;
			default:
				break;
			}
		}
	}

	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------S-*/
	/**
	 * @ClassName: onDialogBtnClickListener
	 * @Description: Dialog 按钮监听
	 * @author: hunt
	 * @date: 2012-11-27
	 */
//	private class onDialogBtnClickListener implements
//			DialogInterface.OnClickListener {
//
//		@Override
//		public void onClick(DialogInterface dialog, int buttonType) {
//
//			if (dialog.equals(moveVipConfirmDialog)) {
//				switch (buttonType) {
//				case CustomDialog.LEFT_BUTTON_CLICK:
//
//					dialog.dismiss();
//
//					break;
//
//				case CustomDialog.RIGHT_BUTTON_CLICK:
//
//					dialog.dismiss();
//
//					// 跳转到VIP模块
//					Intent intentVipZone = new Intent(context,
//							VipZoneActivity.class);
//					intentVipZone.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
//					context.startActivity(intentVipZone);
//					GoogleAnalyticsTracker.getInstance().ClickButton("VIP", "通过升级病毒库进入VIP", "进入VIP", 1l);
//					break;
//				default:
//					break;
//				}
//			}
//
//			// switch (buttonType) {
//			// case DialogInterface.BUTTON_POSITIVE:
//			//
//			// dialog.dismiss();
//			//
//			// exitFlg = true;
//			// // 结束快速扫毒
//			// cancelScanningHandlerThread();
//			//
//			// break;
//			// case DialogInterface.BUTTON_NEGATIVE:
//			//
//			// dialog.dismiss();
//			//
//			// break;
//			// default:
//			// break;
//			// }
//
//		}
//	}
	/*--Allan 删除PopUp提示框，让页面直接跳转到VIP主页面  ----20130126 -------E-*/

	/**
	 * 开始Safe动画
	 * 
	 * @Description
	 * @version 1.0
	 * @author LionLiu
	 */
	@Override
	public void startSafeAnimation() {

		virusSafeImg.setVisibility(View.VISIBLE);
		virusSafeImg.startAnimation(safeAnimation);
	}
	
	public void unregistReceiver(){
		context.unregisterReceiver(refreshNewIconRecever) ;
	}
	private BroadcastReceiver refreshNewIconRecever = new BroadcastReceiver() {
		
		@Override
		public void onReceive(Context context, Intent intent) {
			if(intent.getAction().equals(VirusLibraryManager.MSG_REFRESH_NEWS)){
				if(btnVirusLibUpdate != null)
				btnVirusLibUpdate.setNewIcon(!DaoCreator.createConfigDao()
						.getVirusLibLatestState());
			}
			
		}
	};
	
}