package com.tencent.onesecurity.ui.activity.optimize;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.optimize.AutoBootManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager.IBoosterListener;
import com.tencent.onesecurity.model.AppInfoModel;
import com.tencent.onesecurity.model.AutoBootAppModel;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.AutoBootAdapter;
import com.tencent.onesecurity.ui.adapter.ManageAppAdapter;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.ui.customview.layout.booster.BoosterLayoutView;
import com.tencent.onesecurity.ui.customview.layout.booster.CleanRelativeLayout;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * 
 * @author jack 管理应用Activity
 * 
 */
public class ManageAppActivity extends BaseActivity implements OnClickListener {
	private static final int MESSAGE_GET_RUNNING_PROGRESS = 100;
	private static final int MESSAGE_GET_RUNNING_END = 101;
	private static final int MESSAGE_CLOSE_END = 102;
	private static final int MESSAGE_GET_AUTO_START_APPS = 200;
	private static final int MESSAGE_SET_AUTO_START_APPS = 201;
	private static final int MESSAGE_NOT_GOT_ROOT = 202;
	private static final int MESSAGE_GET_AUTO_START_APPS_AGAIN_WHEN_ERROR = 203;
	
	private BoosterListener boosterListener;
	private ProgressDialog spinner = null;
	private Timer timer;
	private int WAIT_TIME = 20000;
	
	private TextView tv_Tab_Running;
	private TextView tv_Tab_Auto_Start;
	private TextView tv_Tab_Clean;
	private int int_Now_Tab_Index = 0;
	private TextView tv_No_Records;
	
	private RelativeLayout rl_Running_Apps;
	private TextView tv_Memery_Used;
	private TextView tv_Running_App_Count;
	private CustomIconButton btn_Close;
	private ListView lv_Running_Apps;
	private ManageAppAdapterImpl mRunningAdapter;
	private ArrayList<AppInfoModel> mRunningModels = new ArrayList<AppInfoModel>();
	private int int_Running_App_Count = 0;
	private Thread mGetRunningThread;
	private Thread mCloseRunningThread;
	
	private ListView lv_Auto_Start;
	private AutoBootAdapterImpl mAutoStartAdapter;
	private ArrayList<AutoBootAppModel> mAutoStartModels = new ArrayList<AutoBootAppModel>();
	private Thread mGetAutoStartThread;
	private Thread mSetAutoStartThread;
	
	private CleanRelativeLayout rl_clean;
//	private CustomIconButton btn_Clean;
	
	private boolean isAutoStartAppsLoaded = false;
	
	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case MESSAGE_GET_RUNNING_PROGRESS:
				AppInfoModel model = (AppInfoModel) msg.obj;
				if (model != null) {
					mRunningModels.add(model);
					int_Running_App_Count++;
				}
				break;
			case MESSAGE_GET_RUNNING_END:
				// 设置引擎的优化状态
				SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_NOTHING;
				
				tv_Running_App_Count.setText(" " + int_Running_App_Count);
				Collections.sort(mRunningModels);
				mRunningAdapter.notifyDataSetChanged();
				mRunningAdapter.updateCheckBtn();
				
				if (mRunningModels.size() > 0) {
					tv_No_Records.setText("");
				} else {
					tv_No_Records.setText(getString(R.string.vvcl_empty_white_list_tips));
				}
				
				hideSpinner();
				break;
			case MESSAGE_CLOSE_END:
				// 设置引擎的优化状态
				SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_NOTHING;
				
				int countOfClosed = msg.arg1;
				long totalRamSizeOfApp = 0;
				if (msg.obj != null) {
					totalRamSizeOfApp = (Long) msg.obj;
				}
				
				tv_Memery_Used.setText(" " + SystemBoosterManager.getInstance().getMemoryUsageRate() + "%");
				removeFromApps();
				
				mRunningAdapter.notifyDataSetChanged();
				mRunningAdapter.updateCheckBtn();
				
				tv_Running_App_Count.setText(" " + int_Running_App_Count);
				
				if (mRunningModels.size() > 0) {
					tv_No_Records.setText("");
				} else {
					tv_No_Records.setText(getString(R.string.vvcl_empty_white_list_tips));
				}
				hideSpinner();
				
				String ramSizeInfo = Formatter.formatShortFileSize(ManageAppActivity.this, totalRamSizeOfApp);
				ToastUtil.ShowSimpleTextLongToast(getString(R.string.booster_closed_tip, countOfClosed, ramSizeInfo), true, R.layout.custom_toast);
				break;
			case MESSAGE_GET_AUTO_START_APPS:
				isAutoStartAppsLoaded = true;
				
				if (mAutoStartModels.size() > 0) {
					tv_No_Records.setText("");
					
					ConfigDao mConfigDao = DaoCreator.createConfigDao();
					boolean isRoot = mConfigDao.getRootPermission();
					
					mAutoStartAdapter.setModels(mAutoStartModels);
					mAutoStartAdapter.isRoot = isRoot;
					mAutoStartAdapter.notifyDataSetChanged();
					hideSpinner();
					
					if (isRoot == false) {
						handler.sendEmptyMessageDelayed(MESSAGE_NOT_GOT_ROOT, 1000);
					}
				} else {
					hideSpinner();
					tv_No_Records.setText(getString(R.string.vvcl_empty_white_list_tips));
				}
				break;
			case MESSAGE_SET_AUTO_START_APPS:
				//AutoBootAppModel modelSelected = (AutoBootAppModel)msg.obj;
				AutoBootAppModel modelSelected = mAutoStartModels.get(msg.arg1);
				if (modelSelected != null) {
					boolean isEnabled = modelSelected.isAutoBootEnabled();
					
					//sortAutoBootApp(modelSelected.getPkgName());
					modelSelected.setAutoBootEnabled(!isEnabled);
					mAutoStartAdapter.notifyDataSetChanged();
					
					hideSpinner();
					
					if (isEnabled) {
						ToastUtil.ShowSimpleTextShortToast(getString(R.string.booster_forbid_auto_start, modelSelected.getAppName()), true, R.layout.custom_toast);
					} else {
						ToastUtil.ShowSimpleTextShortToast(getString(R.string.booster_allow_auto_start, modelSelected.getAppName()), true, R.layout.custom_toast);
					}
					
					GoogleAnalyticsTracker.getInstance().ClickButton("Menu", "启动项管理变更启动状态", "开机启动项", 1l);	
				}
				break;
			case MESSAGE_NOT_GOT_ROOT:
				ConfigDao mConfigDao = DaoCreator.createConfigDao();
				boolean isRoot = mConfigDao.getRootPermission();
	        	
				if (isRoot == false) {
					ToastUtil.ShowSimpleTextShortToast(getString(R.string.booster_not_root), true, R.layout.custom_toast);
				} else {
					mAutoStartAdapter.setModels(mAutoStartModels);
					mAutoStartAdapter.isRoot = true;
					mAutoStartAdapter.notifyDataSetChanged();
				}
				break;
			case MESSAGE_GET_AUTO_START_APPS_AGAIN_WHEN_ERROR:
				loadAutoStartApps();
				break;
			default:
				break;
			}
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_manage_app);
		
		// 设置标题栏
		updateSubTitleBar(this, findViewById(R.id.manage_app_title_bar), getString(R.string.booster_app_manager), -1, null, -1, null, true);
		
		// 显示等待画面
		showSpinner(getString(R.string.common_loading_tip));
		
		tv_Tab_Running = (TextView) this.findViewById(R.id.manage_app_tv_tab_running);
		tv_Tab_Auto_Start = (TextView) this.findViewById(R.id.manage_app_tv_tab_auto_start);
		tv_Tab_Clean = (TextView) this.findViewById(R.id.manage_app_tv_tab_clean);
		tv_Tab_Running.setOnClickListener(this);
		tv_Tab_Auto_Start.setOnClickListener(this);
		tv_Tab_Clean.setOnClickListener(this);
		tv_No_Records = (TextView) findViewById(R.id.tv_no_records);
		
		// 正在运行的进程相关控件 START
		rl_Running_Apps = (RelativeLayout) this.findViewById(R.id.rl_running_apps);
		tv_Memery_Used = (TextView) this.findViewById(R.id.manage_app_tv_memeryUsed);
		tv_Running_App_Count = (TextView) this.findViewById(R.id.manage_app_tv_appCount);
		btn_Close = (CustomIconButton) findViewById(R.id.manage_app_btn_close);
		btn_Close.setOnClickListener(this);
		mRunningAdapter = new ManageAppAdapterImpl(ManageAppActivity.this, mRunningModels);
		lv_Running_Apps = (ListView) this.findViewById(R.id.lv_rinning_apps);
		lv_Running_Apps.setDivider(null);
		lv_Running_Apps.setAdapter(mRunningAdapter);
		// 正在运行的进程相关控件 END
		
		// 开机自启动相关控件 START
		mAutoStartAdapter = new AutoBootAdapterImpl(ManageAppActivity.this, mAutoStartModels);
		lv_Auto_Start = (ListView) findViewById(R.id.lv_auto_start_apps);
		lv_Auto_Start.setDivider(null);
		lv_Auto_Start.setAdapter(mAutoStartAdapter);
		lv_Auto_Start.setVisibility(View.GONE);
		// 开机自启动相关控件 END
		
		// 系统清理相关控件 START
		rl_clean = (CleanRelativeLayout) findViewById(R.id.rl_clean);
//		btn_Clean = (CustomIconButton) findViewById(R.id.manage_app_btn_clean);
//		btn_Clean.setOnClickListener(this);
		rl_clean.setVisibility(View.GONE);
		rl_clean.onCreate();
		// 系统清理相关控件 END
		
		// 加载正在运行的进程数据
		loadRunningApps();
		
		// 显示内存信息
		tv_Memery_Used.setText(" " + SystemBoosterManager.getInstance().getMemoryUsageRate() + "%");
		int_Running_App_Count = 0;
		tv_Running_App_Count.setText(" " + int_Running_App_Count);
	}
	
	protected void onStart() {
		super.onStart();
	};
	
	@Override
	protected void onResume() {
		super.onResume();
		
		SystemBoosterManager.getInstance().registIBoosterListener(boosterListener);
		
		// 执行关闭操作过程中按home到桌面，再回到画面后为了让关闭按钮的状态恢复到可用
		mRunningAdapter.updateCheckBtn();
		
		GoogleAnalyticsTracker.getInstance().trackView("进入管理正在运行的程序");
	}
	
	@Override
	protected void onStop() {
		super.onStop();
	}
	
	@Override
	protected void onPause() {
		super.onPause();
		
		hideSpinner();
		BoosterLayoutView.mIsNeedAnimation = true;
	}
	
	@Override
	protected void onSaveInstanceState(Bundle outState) {
		super.onSaveInstanceState(outState);
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		
		stopThread();
		
		mRunningModels.clear();
		mRunningModels = null;
		int_Running_App_Count = 0;
		timer = null;
		spinner = null;
		
		AutoBootManager.getInstance().destroy();
		mAutoStartModels.clear();
		mAutoStartModels = null;
		
		rl_clean.onDestory();
	}
	
	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.manage_app_tv_tab_running:
			if (int_Now_Tab_Index == 0) return;
			
			tv_Tab_Running.setBackgroundResource(R.drawable.bg_booster_tab_press);
			tv_Tab_Running.setTextColor(getResources().getColor(R.color.blue_9_20558e));
			tv_Tab_Auto_Start.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Auto_Start.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			tv_Tab_Clean.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Clean.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			
			int_Now_Tab_Index = 0;
			
			rl_Running_Apps.setVisibility(View.VISIBLE);
			lv_Auto_Start.setVisibility(View.GONE);
			rl_clean.setVisibility(View.GONE);
			rl_clean.onHide();
			
			if (mRunningModels.size() > 0) {
				tv_No_Records.setText("");
			} else {
				tv_No_Records.setText(getString(R.string.vvcl_empty_white_list_tips));
			}
			break;
		case R.id.manage_app_tv_tab_auto_start:
			if (int_Now_Tab_Index == 1) return;
			
			tv_Tab_Running.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Running.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			tv_Tab_Auto_Start.setBackgroundResource(R.drawable.bg_booster_tab_press);
			tv_Tab_Auto_Start.setTextColor(getResources().getColor(R.color.blue_9_20558e));
			tv_Tab_Clean.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Clean.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			
			int_Now_Tab_Index = 1;
			
			rl_Running_Apps.setVisibility(View.GONE);
			lv_Auto_Start.setVisibility(View.VISIBLE);
			rl_clean.setVisibility(View.GONE);
			rl_clean.onHide();
			if (mAutoStartModels.size() > 0) {
				tv_No_Records.setText("");
			} else {
				if (isAutoStartAppsLoaded) {
					tv_No_Records.setText(getString(R.string.vvcl_empty_white_list_tips));
				} else {
					loadAutoStartApps();
				}
			}
			
			GoogleAnalyticsTracker.getInstance().ClickButton("加速", "切换至启动项管理", "开机启动项管理", 1);
			break;
		case R.id.manage_app_tv_tab_clean:
			if (int_Now_Tab_Index == 2) return;
			
			tv_Tab_Running.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Running.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			tv_Tab_Auto_Start.setBackgroundResource(R.drawable.bg_booster_tab_nor);
			tv_Tab_Auto_Start.setTextColor(getResources().getColor(R.color.white_1_fafafa));
			tv_Tab_Clean.setBackgroundResource(R.drawable.bg_booster_tab_press);
			tv_Tab_Clean.setTextColor(getResources().getColor(R.color.blue_9_20558e));
			
			int_Now_Tab_Index = 2;
			
			rl_Running_Apps.setVisibility(View.GONE);
			lv_Auto_Start.setVisibility(View.GONE);
			rl_clean.setVisibility(View.VISIBLE);
			rl_clean.onShow();
			
			GoogleAnalyticsTracker.getInstance().ClickButton("加速", "切换至系统清理", "系统清理", 1);
			break;
		case R.id.manage_app_btn_close:
			startTimer();
			showSpinner(getString(R.string.common_wait_tip));
			
			// 为了google上报的需求这里用中文
			GoogleAnalyticsTracker.getInstance().ClickButton("加速", "关闭选择程序", "运行程序管理", 1);
			btn_Close.setEnabled(false);
			
			SystemBoosterManager.getInstance().registIBoosterListener(boosterListener);
			mCloseRunningThread = new Thread(new Runnable() {
				@Override
				public void run() {
					closeApps();
				}
			}, "closeApps");
			mCloseRunningThread.start();
			break;
//		case R.id.manage_app_btn_clean:
//			
//			break;
		default:
			break;
		}
	}
	
	private class ManageAppAdapterImpl extends ManageAppAdapter {
		public ManageAppAdapterImpl(Context context, ArrayList<AppInfoModel> apps) {
			super(context, apps);
		}

		@Override
		public void updateCheckBtn() {
			if (mRunningModels != null) {
				int checkCount = 0;
				for (AppInfoModel app : mRunningModels) {
					if (app != null && app.isSelected()) {
						checkCount++;
					}
				}
				
				if (checkCount == 0) {
					btn_Close.setButtonText(MainApplication.getContext().getString(R.string.booster_close_button_title, checkCount));
					btn_Close.setEnabled(false);
				} else {
					btn_Close.setEnabled(true);
					btn_Close.setButtonText(MainApplication.getContext().getString(R.string.booster_close_button_title, checkCount));
				}
			} else {
				btn_Close.setButtonText(MainApplication.getContext().getString(R.string.booster_close_button_title));
				btn_Close.setEnabled(false);
			}
		}
	}
	
	private class AutoBootAdapterImpl extends AutoBootAdapter {
		public AutoBootAdapterImpl(Context context, ArrayList<AutoBootAppModel> apps) {
			super(context, apps);
		}

		@Override
		public void refresh(final int position) {
			final AutoBootAppModel modelSelected = mAutoStartModels.get(position);
			if(modelSelected!=null){
				ConfigDao mConfigDao = DaoCreator.createConfigDao();
				if (mConfigDao.getRootPermission()) {
					this.isRoot = true;
					
					startTimer();
					showSpinner(getString(R.string.common_wait_tip));
					
					mSetAutoStartThread = new Thread(new Runnable() {
						@Override
						public void run() {
							boolean isEnabled = modelSelected.isAutoBootEnabled();
							try {
								//mAutoBootManager.setAutoBootEnable(modelSelected.getPkgName(), !isEnabled);
								AutoBootManager.getInstance().setAutoBootEnableBySDK(modelSelected.getPkgName(), !isEnabled);
								
								Message msg = new Message();
								msg.what = MESSAGE_SET_AUTO_START_APPS;
								//msg.obj = modelSelected;
								msg.arg1 = position;
								handler.sendMessage(msg);
							} catch (Exception e) {
								timer.cancel();
								timer = null;
								hideSpinner();
								handler.sendEmptyMessage(MESSAGE_GET_AUTO_START_APPS_AGAIN_WHEN_ERROR);
							}
						}
					}, "SetAutoStartApps");
					mSetAutoStartThread.start();
				} else {
					this.isRoot=false;
					ToastUtil.ShowSimpleTextShortToast(getString(R.string.booster_not_root), false, R.layout.custom_toast);
				}
			}
		}
	}
	
	private class BoosterListener implements IBoosterListener {

		@Override
		public void notifyGetRunningProcessCount(int countOfAllProcess) {
		}

		@Override
		public void notifyManageProcess() {
		}

		@Override
		public void notifyGetRunningProcess(AppInfoModel appInfoModel) {
			if (appInfoModel != null) {
				Message msg = new Message();
				msg.what = MESSAGE_GET_RUNNING_PROGRESS;
				msg.obj = appInfoModel;
				handler.sendMessage(msg);
			}
		}

		@Override
		public void notifyGetRunningEnd() {
			Message msg = new Message();
			msg.what = MESSAGE_GET_RUNNING_END;
			handler.sendMessage(msg);
		}

		@Override
		public void notifyCloseEnd(int countOfClosed, long totalRamSizeOfApps) {
		}

		@Override
		public void notifyCloseRunningAppEnd(int countOfClosed, long totalRamSizeOfApps) {
			Message msg = new Message();
			msg.what = MESSAGE_CLOSE_END;
			msg.arg1 = countOfClosed;
			msg.obj = totalRamSizeOfApps;
			handler.sendMessage(msg);
		}

		@Override
		public void notifyBoosterEnd() {
		}
	}
	
	/**
	 * 超时计时
	 */
	private void startTimer() {
		if (timer == null) {
			timer = new Timer();
		}
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				hideSpinner();
			}
		}, WAIT_TIME);
	}
	
	/**
	 * 显示等待画面
	 * @param tips 提示信息
	 */
	private void showSpinner(String tips) {
		if (spinner == null) {
			spinner = new CustomLoadingDialog(ManageAppActivity.this);
		}
		spinner.setMessage(tips);
		spinner.show();
	}
	
	/**
	 * 消除等待画面
	 */
	private void hideSpinner() {
		if (spinner != null) {
			spinner.dismiss();
		}
	}
	
	/**
	 * 加载正在运行的进程数据
	 */
	private void loadRunningApps() {
		// 开始计时
		startTimer();
		
		// 设置引擎的优化状态
		boosterListener = new BoosterListener();
		SystemBoosterManager.getInstance().registIBoosterListener(boosterListener);
		SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_BOOSTER;
		
		mGetRunningThread = new Thread(new Runnable() {
			@Override
			public void run() {
				boolean isIncludeSysProcess = CoreConfigDao.getInstance().getBooleanValue(CoreConfigDao.ROCKET_IS_CLEAR_SYSTEM_PROCESS);
				SystemBoosterManager.getInstance().showRunningApps(isIncludeSysProcess);
			}
		}, "manageRunningApp");
		mGetRunningThread.start();
	}
	
	/**
	 * 加载开机自启动进程数据
	 */
	private void loadAutoStartApps() {
		// 开始计时
		startTimer();
		// 显示等待画面
		showSpinner(getString(R.string.common_loading_tip));
		
		mGetAutoStartThread = new Thread(new Runnable() {
			@Override
			public void run() {
				//mAutoStartModels = mAutoBootManager.getAutoBootApps();
				mAutoStartModels = AutoBootManager.getInstance().getAutoBootAppsBySDK();
				sortAutoBootApp(null);
				handler.sendEmptyMessageDelayed(MESSAGE_GET_AUTO_START_APPS, 100);
			}
		}, "GetAutoStartApps");
		mGetAutoStartThread.start();
	}

	private void closeApps() {
		int count = 0;
		ArrayList<AppInfoModel> closeApps = new ArrayList<AppInfoModel>();
		for (Iterator<AppInfoModel> iterator = mRunningModels.iterator(); iterator.hasNext();) {
			AppInfoModel model = (AppInfoModel) iterator.next();
			if (model != null && model.isSelected()) {
				closeApps.add(model);
				model.setNeedRemove(true);
			} else {
				count++;
			}
		}
		int_Running_App_Count = count;
		SystemBoosterManager.getInstance().closeRunningApps(closeApps);
	}

	private void removeFromApps() {
		for (Iterator<AppInfoModel> iterator = mRunningModels.iterator(); iterator.hasNext();) {
			AppInfoModel model = (AppInfoModel) iterator.next();
			if (model != null && model.isNeedRemove()) {
				iterator.remove();
			}
		}
	}
	
	/**
	 * 整理数据：去掉系统进程，把用户进程分为已允许和已禁止两部分
	 */
	private void sortAutoBootApp(String selectedPkgName) {
		ArrayList<AutoBootAppModel> tempModelsEnabled = new ArrayList<AutoBootAppModel>();
		ArrayList<AutoBootAppModel> tempModelsDisabled = new ArrayList<AutoBootAppModel>();
		
		for (AutoBootAppModel model : mAutoStartModels) {
			// 去掉系统进程
			if (model.isSystemApp()) continue;
			
			// 处理列表中被选择的应用
			if (selectedPkgName != null && model.getPkgName().equals(selectedPkgName)) {
				model.setAutoBootEnabled(!model.isAutoBootEnabled());
				// 已允许的开机自启动项被禁用， 已禁止的开机自启动项被允许， 被处理项放到该组的第一行。
				if (model.isAutoBootEnabled()) {
					tempModelsEnabled.add(0, model);
				} else {
					tempModelsDisabled.add(0, model);
				}
				continue;
			}
			
			if (model.isAutoBootEnabled()) {
				// 已允许开机自启动项
				tempModelsEnabled.add(model);
			} else {
				// 已禁止开机自启动项
				tempModelsDisabled.add(model);
			}
		}
		
		mAutoStartModels.clear();
		mAutoStartModels.addAll(tempModelsEnabled);
		mAutoStartModels.addAll(tempModelsDisabled);
		
		tempModelsEnabled.clear();
		tempModelsEnabled = null;
		tempModelsDisabled.clear();
		tempModelsDisabled = null;
	}
	
	private void stopThread(){
		if(mGetRunningThread!=null){
			mGetRunningThread.interrupt();
		}
		if(mCloseRunningThread!=null){
			mCloseRunningThread.interrupt();
		}
		if(mGetAutoStartThread != null){
			mGetAutoStartThread.interrupt();
		}
		if(mGetAutoStartThread != null){
			mGetAutoStartThread.interrupt();
		}
	}
}
