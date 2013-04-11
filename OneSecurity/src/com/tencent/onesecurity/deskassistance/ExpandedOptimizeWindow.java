package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.os.Handler;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.deskassistance.MiniProgressBarView.onAnimationFinishListener;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager.CloseAppResult;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.OptimizeManager;

//import com.tencent.tmsecure.utils.SDKUtil;

/**
 * 
 * @Description:悬浮窗口展开后的桌面窗口
 * 
 */
public class ExpandedOptimizeWindow extends LinearLayout implements
		android.view.View.OnClickListener, android.view.View.OnTouchListener {

	private Context mContext;
	private View mMainView;
	private TextView mRamText;
	private TextView mRunnAppText;
	private TextView mOptimizeResultText;
	private ButtonView mStartOptimizeBtn;
	private MiniProgressBarView mMiniProgressBarView;
	private final int MSG_OPTIMIZE_FINISH = 0x04;
	private ImageButton mLogoButton;
	private LinearLayout mOptimiseBar;

	private onOptimizeFinishListener mOnOptimizeFinishListener;

	public static interface onOptimizeFinishListener {
		public abstract void onOptimizeFinish(boolean isCloseRightnow);
	}

	public ExpandedOptimizeWindow(Context context,
			onOptimizeFinishListener listener) {
		super(context);
		mContext = context;
		manager = ManagerCreator.getManager(OptimizeManager.class);
		mOnOptimizeFinishListener = listener;
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		mMainView = LayoutInflater.from(context).inflate(
				R.layout.layout_desk_assistance_optimize, null);
		mRamText = (TextView) (mMainView
				.findViewById(R.id.deskAssistanceRamUsage));
		mRamText.getPaint().setFakeBoldText(true);
		mRunnAppText = (TextView) (mMainView
				.findViewById(R.id.deskAssistanceRunningAppNum));
		mRunnAppText.getPaint().setFakeBoldText(true);
		mOptimizeResultText = (TextView) (mMainView
				.findViewById(R.id.optimizeResult));
		mStartOptimizeBtn = (ButtonView) mMainView
				.findViewById(R.id.btn_desktop_start_optimize);
		mMiniProgressBarView = (MiniProgressBarView) mMainView
				.findViewById(R.id.optimizeMiniProgressBar);
		mStartOptimizeBtn.setOnClickListener(this);
		mOptimiseBar = (LinearLayout) mMainView
				.findViewById(R.id.layout_optimize_item);
		mMainView.setOnTouchListener(this);
		mOptimiseBar.setOnTouchListener(this);

		addView(mMainView, params);
		updateRunningAppText();
		resetUi();

		setFocusable(true);
		setFocusableInTouchMode(true);
		mStartOptimizeBtn.requestFocus();
		mLogoButton = (ImageButton) findViewById(R.id.btn_desktop_logo);
		mLogoButton.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				GoogleAnalyticsTracker.getInstance().ClickButton("桌面助手", "通过桌面助手进入OS", "进入", 1l);
				
				ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_desktop_asistant_into_OS);
				mContext.startActivity(MainApplication.getStartApplicationIntent());
			}
		});

	}

	public void updateOptimizeWindowRamUsage(int ramUsage) {
		mRamText.setText(ramUsage + "%");
		if (mOptimizeFinish == true && mIsOptimizeStarted == false)
			mMiniProgressBarView.setProgressWithAnim(ramUsage);
		
		boolean reachRamWarning = ramUsage > DaoCreator.createConfigDao()
				.getDeskAssistanceRamUseageWarningPercentage();
		if (reachRamWarning)
			mRamText.setTextColor(0xffff3722);
		else
			mRamText.setTextColor(0xfffafafa);
		updateRunningAppText();
	}

	private int mLastRunnAppNum = 0;

	private void updateRunningAppText() {
		// ConfigDao config = DaoCreator.createConfigDao();
		int appNum = SystemBoosterManager.getInstance().countOfRunningApps(true);
		// if(config.isNeedUpdateData() == false){
		// appNum = config.getCacheRunningAppNum();
		// }
		// else if (ProcessLoader.mRunningProcessList != null){
		// appNum = ProcessLoader.mRunningProcessList.size();
		// }
		// if (appNum <= 0 && ProcessLoader.mRunningProcessList != null){
		// appNum = ProcessLoader.mRunningProcessList.size();
		// }
		//
		// if (appNum <= 0 && ProcessLoader.mRunningProcessList == null)
		// appNum = config.getTempCacheRunningAppNum();
		if (appNum > 0) {
			mRunnAppText.setTextSize(18);
			mRunnAppText.setText(String.valueOf(appNum));
			// mRunnAppText.setText(appNum + mContext.getString(R.string.unit));
			if (mLastRunnAppNum != appNum)
				// config.setTempCacheRunningAppNum(appNum);
				mLastRunnAppNum = appNum;
		} else {
			//mRunnAppText.setTextSize(PhoneInfoUtil.dip2px(mContext, 9));
			mRunnAppText.setText("0");
		}
	}

	@Override
	public void onClick(View v) {
		// String toastMsg = null;
		if (v == mStartOptimizeBtn) {
			startOptimize();
		}

		// if (toastMsg != null && toastMsg.length() > 0)
		// ToastUtil.ShowLongToast(mContext, toastMsg);
	}

	private OptimizeManager manager;
//	private long mFreeRamBeforeOptimize;
	private boolean mOptimizeFinish = true;
	private boolean mOptimizeStart = false;
	private int mUsedMemoryRate = 0;
	private boolean mIsOptimizeStarted = false;

	/**
	 * 开始加速
	 */
	private void startOptimize() {
		// 按钮置灰
		mOptimizeFinish = false;
		mOptimizeStart = false;
//		mFreeRamBeforeOptimize = manager.getMemoryHelper().getFreeMemery();
		mStartOptimizeBtn.setButtonEnabled(false);
		if (mHandler == null)
			mHandler = new Window_Handler();
		// if(DaoCreator.createConfigDao().isNeedUpdateData()) {
		GoogleAnalyticsTracker.getInstance().ClickButton("桌面助手", "通过桌面助手加速", "加速", 1l);
		ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_RUNNING_ONEKEY_DO);
		optimizeRam = 0;
		if (SystemBoosterManager.getInstance().isNeedBoost()) {
			// if(true){
			mOptimizeStart = true;
			mOptimizeComplete = false;
			mAnimationComplete = false;
			mAnimationShown = false;
			// 需要刷新的时候才需要去真正的杀进程
			new Thread(new Runnable() {
				@Override
				public void run() {
					// 从后台加载器中获取正在运行的程序列表
					// int count = 0;
					// while(ProcessLoader.mRunningProcessList == null && count
					// < 1500) {
					// try {
					// Thread.sleep(20);
					// count++;
					// } catch (InterruptedException e) {
					// e.printStackTrace();
					// }
					// }
					// List<AppEntity> appList =
					// ProcessLoader.mRunningProcessList;
					//
					// if(appList != null){
					// // RunningProcessingManager manager =
					// RunningProcessingManager.getInstance();
					// // manager.closeApps(appList, true,
					// mFreeRamBeforeOptimize);
					// //
					// manager.updateDeskAssistanceRamUseageWarningPercentage();
					// manager.closeApps(appList,null);
					// RunningProcessingManager manager =
					// RunningProcessingManager.getInstance();
					// manager.updateDeskAssistanceRamUseageWarningPercentage();
					// }

					// manager.clearCache();
					long freeMemory = manager.getMemoryHelper().getFreeMemery();
					long totalMemory = manager.getMemoryHelper().getTotalMemery();
					
					boolean containSysApp = true;
					try {
						containSysApp = CoreConfigDao.getInstance().getBooleanValue(CoreConfigDao.ROCKET_IS_CLEAR_SYSTEM_PROCESS);
					} catch (Exception e) {
						
					}
					SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_BOOSTER;
					CloseAppResult res = SystemBoosterManager.getInstance().closeRunningApps(containSysApp, false, true);
					SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_NOTHING;
					if (res != null) {
						optimizeRam = res.totalRamSize;
					} else {
						optimizeRam = 0;
					}
					SystemBoosterManager.getInstance().updateDeskAssistanceRamUseageWarningPercentage();
					SystemBoosterManager.getInstance().setLastBoostedTime();
					
					String ramSizeInfo = Formatter.formatFileSize(mContext, res.totalRamSize);
					String tips = "返回正常数据显示（关闭了" + res.count + "个程序，节省了" + ramSizeInfo + "内存）";
					GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", tips, "", 1l);
					
					int freeMemoryRate = (int) ((freeMemory + optimizeRam / 1024) * 100 / totalMemory);
					mUsedMemoryRate = 100 - freeMemoryRate;
					synchronized (mMiniProgressBarView) {
						mOptimizeComplete = true;
						if (mAnimationShown == false && mAnimationComplete == true) {
							mAnimationShown = true;
							mMiniProgressBarView.setProgressWithAnim(
									mUsedMemoryRate,
									new onAnimationFinishListener() {
										@Override
										public void onAnimationFinish() {
											onOptimizeFinish();
										}
									});
						}
					}
				}
			}).start();// 线程独立跑
			
			mMiniProgressBarView.setProgressWithAnim(10,
					new onAnimationFinishListener() {
						@Override
						public void onAnimationFinish() {
							synchronized (mMiniProgressBarView) {
								mAnimationComplete = true;
								if (mAnimationShown == false && mOptimizeComplete == true) {
									mAnimationShown = true;
									mMiniProgressBarView.setProgressWithAnim(
											mUsedMemoryRate,
											new onAnimationFinishListener() {
												@Override
												public void onAnimationFinish() {
													onOptimizeFinish();
												}
											});
								}
							}
						}
					});
		} else {
			mOptimizeStart = false;
			mOptimizeFinish = true;
			if (mOnOptimizeFinishListener != null) {
				mOnOptimizeFinishListener.onOptimizeFinish(true);
			}
			ToastUtil.ShowSimpleTextLongToast2(R.string.booster_no_need_boost,R.layout.custom_toast);
			GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", "返回无需加速显示（您的系统已到达最佳）", "", 1l);
		}
	}

	private boolean mOptimizeComplete = false;
	private boolean mAnimationComplete = false;
	private boolean mAnimationShown = false;

	private void onOptimizeFinish() {
		mHandler.sendEmptyMessageDelayed(MSG_OPTIMIZE_FINISH, 10);
	}

	public void resetUi() {
//		mFreeRamBeforeOptimize = 0;
		mStartOptimizeBtn.setButtonEnabled(true);
		mStartOptimizeBtn.setVisibility(View.VISIBLE);
		mOptimizeResultText.setVisibility(View.GONE);
		setSwitchState();
		setRamUsageProgress();
		// ProcessLoader.startLoadData(true, false);
	}

	/**
	 * 设置进度条
	 */
	public void setRamUsageProgress() {
		if (mOptimizeFinish == true) {
			int ramUsage = getRamUsageRate();
			mMiniProgressBarView.setProgressWithAnim(ramUsage);
		}
	}

	public void setIsDesplaying(boolean isDesplay) {
		mIsOptimizeStarted = false;
	}

	/**
	 * 获取当前内存使用率 单位“%”
	 */
	private int getRamUsageRate() {
		long freeMemory = 0;
		// if(DaoCreator.createConfigDao().isNeedUpdateData()) {
		// if(DeskassistanceManager.getInstance().isNeedUpdateData()){
		// //if(true){
		// freeMemory = manager.getMemoryHelper().getFreeMemery();
		// } else {
		// freeMemory = DaoCreator.createConfigDao().getCacheFreeMemory();

		freeMemory = manager.getMemoryHelper().getFreeMemery();

		long totalMemory = manager.getMemoryHelper().getTotalMemery();
		int freeMemoryRate = (int) ((freeMemory) * 100 / totalMemory);

		return 100 - freeMemoryRate;
	}

	private long optimizeRam = 0;

	private class Window_Handler extends Handler {
		@Override
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case MSG_OPTIMIZE_FINISH: {
				mIsOptimizeStarted = true;
				mOptimizeStart = true;
				mOptimizeFinish = true;
				// long currentFreeRam =
				// 0;//DaoCreator.createConfigDao().getCacheFreeMemory();
				// long optimizeRam = (currentFreeRam - mFreeRamBeforeOptimize)
				// * 1024;
				mStartOptimizeBtn.setVisibility(View.GONE);
				mOptimizeResultText.setVisibility(View.VISIBLE);
				if (mOptimizeStart == true && optimizeRam > 0
						&& mStartOptimizeBtn != null
						&& mOptimizeResultText != null) {
					mOptimizeResultText.setText(String.format(
							mContext.getString(R.string.ram_release),
							transform(optimizeRam, true)));
				} else {
					mOptimizeResultText
							.setText(mContext
									.getString(R.string.one_key_faster_tips_clear_great));
				}
				updateRunningAppText();
				if (mOnOptimizeFinishListener != null)
					mOnOptimizeFinishListener.onOptimizeFinish(false);
				break;
			}
			default: {
				break;
			}
			}
		};
	}

	private Window_Handler mHandler = null;

	/**
	 * 设置各个开关的状态
	 */
	private void setSwitchState() {
		setIsTrafficSuspendedOpen();
		setIsNetWorkOpen();
		setIsWifiOpen();
		setIsRingOpen();
	}

	/**
	 * 设置流量浮窗开关
	 */
	private void setIsTrafficSuspendedOpen() {
		// NetworkDao mDevNetWorkDBDao = DaoCreator.createNetWorkGPRSDao();
		// mBtnTrafficSuspended.setIsOpen(mDevNetWorkDBDao.getShowTrafficWindowTipsStatus());
	}

	/**
	 * 设置network开关
	 */
	private void setIsNetWorkOpen() {
		// NetSettingManager manager =
		// ManagerCreator.getManager(NetSettingManager.class);
		// mBtnNetWork.setIsOpen(manager.getMobileDataState());
	}

	/**
	 * 设置wifi开关
	 */
	private void setIsWifiOpen() {
		// WifiManager wifi_service = (WifiManager)
		// mContext.getSystemService(Context.WIFI_SERVICE);
		// mBtnWifi.setIsOpen(wifi_service.isWifiEnabled());
	}

	private void setIsRingOpen() {
//		AudioManager audioManager = (AudioManager) mContext
//				.getSystemService(Context.AUDIO_SERVICE);
//		final int currentMode = audioManager.getRingerMode();
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {

		// 这里是为了屏蔽--触摸其他地方会引起一键加速按钮有反应的BUG
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN: {
			mStartOptimizeBtn.setEnabled(false);
		}
		case MotionEvent.ACTION_UP:
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL: {
			mStartOptimizeBtn.setEnabled(true);
		}
		}
		return true;
	}

	public static final long ONE_KB = 1024l;
	public static final long ONE_MB = ONE_KB * 1024l;
	public static final long ONE_GB = ONE_MB * 1024l;
	public static final long ONE_TB = ONE_GB * 1024l;

	/**
	 * 格式转换
	 * 
	 * @param bytes
	 *            字节数
	 * @param isShortType
	 *            简单模式，如“KB”，则变成“K”，如此类推
	 * @return 适合显示的字符串
	 */
	public String transform(long bytes, boolean isShortType) {
		// long unit = ONE_KB;
		long unit = 999;
		int i = 0;
		boolean isNegative = false;
		if (bytes < 0) {
			isNegative = true;
			bytes = (-1) * bytes;
		}

		while ((bytes / unit) > 0) {
			i++;
			unit *= 1000;
		}

		String result_text = null;
		switch (i) {
		case 0:
			result_text = bytes + "B";
			break;
		case 1:
			result_text = (bytes * 10 / ONE_KB) / 10.0f + "K";
			break;
		case 2:
			result_text = (bytes * 10 / ONE_MB) / 10.0f + "M";
			break;
		case 3:
			result_text = (bytes * 10 / ONE_GB) / 10.0f + "G";
			break;
		case 4:
			result_text = (bytes * 10 / ONE_TB) / 10.0f + "T";
		}

		if (isNegative) {
			result_text = "-" + result_text;
		}
		if (!isShortType && !result_text.contains("B")) {
			result_text += "B";
		}
		return result_text;
	}
}
