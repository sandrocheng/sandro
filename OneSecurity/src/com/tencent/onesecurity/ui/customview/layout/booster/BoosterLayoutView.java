package com.tencent.onesecurity.ui.customview.layout.booster;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager.IBoosterListener;
import com.tencent.onesecurity.model.AppInfoModel;
import com.tencent.onesecurity.ui.activity.MainActivity.SubViewListener;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.activity.optimize.ManageAppActivity;
import com.tencent.onesecurity.ui.customview.layout.booster.BoosterAnimationLayout.BoosterAnimationLayoutObserver;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * 加速页面抽象布局
 * 
 * @author Matt
 * 
 */
public class BoosterLayoutView extends FrameLayout implements SubViewListener,
		BoosterAnimationLayoutObserver {

	private BoosterAnimationLayout mBoosterAnimation;
	private CartonEngine mCartonEngine;
	private BoosterListener mBoosterListener;
	private BoosterHeaderLayout mBoosterHeaderLayout;
	private BoosterBottomLayout mBoosterBottomLayout;
	private boolean mIsFirstStart = false;
	private boolean mBoosterRunning = false;
	private boolean mBoosterRestart = false;
	private Context mContext;
	private long mTotalRamSizeOfApp;
	private int mCountOfClosed;

	private static final int MSG_GET_PROGRESS_COUNT = 2;
	private static final int MSG_MANAGE_PROGRESS = 1;
	// private static final int MSG_UPDATE_BATTERY = 3;
	private static final int MSG_BOOSTER_END = 4;

	private Handler mHandler;
	
	public static boolean  mIsNeedAnimation=false;

	public void initHandler() {
		mHandler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				switch (msg.what) {
				case 0:
					break;
				case MSG_MANAGE_PROGRESS:
					mBoosterAnimation.drawBoosterButtonActionPresent();
					break;
				case MSG_GET_PROGRESS_COUNT:
					int countOfAllProcess = msg.arg1;
					mBoosterAnimation
							.initBoosterButtonCountOfAllProgress(countOfAllProcess);// 初始化本次需要处理的总进程数
					break;
				case MSG_BOOSTER_END:
					String ramSizeInfo = Formatter.formatFileSize(mContext, mTotalRamSizeOfApp);
//					mBoosterHeaderLayout.showBoostStatus(mCountOfClosed, ramSizeInfo);
					
					boostEnd();
					
					String tips = "返回正常数据显示（关闭了" + mCountOfClosed + "个程序，节省了" + ramSizeInfo + "内存）";
					GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", tips, "", 1l);
					break;
				}

				super.handleMessage(msg);
			}
		};
	}

	public BoosterLayoutView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		mContext = context;
	}

	public BoosterLayoutView(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	public BoosterLayoutView(Context context) {
		super(context);
		mContext = context;
	}

	public void prepare(CartonEngine cartonEngine) {
		mIsFirstStart = true;
		mCartonEngine = cartonEngine;
		mBoosterAnimation = (BoosterAnimationLayout) findViewById(R.id.booster_animation_layout);
		mBoosterAnimation.prepare(mCartonEngine, mIsFirstStart);
		mBoosterAnimation.setBoosterObserver(this);
		mBoosterListener = new BoosterListener();
		mBoosterBottomLayout = (BoosterBottomLayout) findViewById(R.id.booster_footer);
		mBoosterBottomLayout.prepare();
		mBoosterBottomLayout.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (mBoosterRunning == true) {
					SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_CANCEL;
					mBoosterAnimation.stopBoosterAnimation();
				}
				mBoosterBottomLayout.setEnabled(false);
				GoogleAnalyticsTracker.getInstance().ClickButton("加速", "管理正在运行程序", "运行程序管理", 1);
				Intent intent = new Intent(getContext(), ManageAppActivity.class);
				getContext().startActivity(intent);
			}
		});
		mBoosterHeaderLayout = (BoosterHeaderLayout) findViewById(R.id.booster_head);
		mBoosterHeaderLayout.prepare(mCartonEngine);
	}

	@Override
	public void onDestroy() {
		synchronized (BoosterLayoutView.class) {
			if (mBoosterRunning == true) {
				SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_CANCEL;
			}
		}
		idle();
		mBoosterRunning = false;
	}

	@Override
	public boolean onAnimationLayoutObserver(int cmd) {
		boolean ret = true;
		switch (cmd) {
		case BoosterAnimationLayout.BOOSTER_CMD_STARTBOOSTER:
			if (SystemBoosterManager.getInstance().isNeedBoost()) {
				// mBoosterHeaderLayout.stopBoosterHeaderAnimation();
				// mBoosterBottomLayout.stopBoosterBottomAnimation();
				mBoosterBottomLayout.setEnabled(false);
				mBoosterBottomLayout.setVisibility(View.INVISIBLE);
				Animation fadeOutAnimation = AnimationUtils.loadAnimation(mContext, android.R.anim.fade_out);
				fadeOutAnimation.setDuration(300);
				mBoosterBottomLayout.startAnimation(fadeOutAnimation);
				
				GoogleAnalyticsTracker.getInstance().ClickButton("加速", "点击加速", "加速", 1);
				ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_PROCESSMAIN_ONE_KEY_Boost);
				boost();
			} else {
				ToastUtil.ShowSimpleTextShortToast(mContext.getString(R.string.booster_no_need_boost),R.layout.custom_toast);
				GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", "返回无需加速显示（您的系统已到达最佳）", "", 1l);
				ret = false;
			}

			break;
		case BoosterAnimationLayout.BOOSTER_CMD_ANIMATION_ONE_DONE:
			// mBoosterHeaderLayout.startBoosterHeaderAnimation();
			// mBoosterBottomLayout.startBoosterBottomAnimation();
			break;
		case BoosterAnimationLayout.BOOSTER_CMD_ANIMATION_THREE_DONE:
//			String ramSizeInfo = Formatter.formatFileSize(mContext, mTotalRamSizeOfApp);
			mBoosterHeaderLayout.showBoostStatus(mCountOfClosed, mTotalRamSizeOfApp);
			
			updateInfo();
			break;
		case BoosterAnimationLayout.BOOSTER_CMD_SHOW_RESULT_DONE:
			//mBoosterHeaderLayout.hideBoostResult(); // delete by jackwang 2013.03.14
			//del-s by matt for 分数显示30秒
//			mBoosterBottomLayout.setEnabled(true);
//			if (mBoosterBottomLayout.getVisibility() != View.VISIBLE) {
//				mBoosterBottomLayout.setVisibility(View.VISIBLE);
//				Animation fadeInAnimation = AnimationUtils.loadAnimation(mContext, android.R.anim.fade_in);
//				fadeInAnimation.setDuration(500);
//				mBoosterBottomLayout.startAnimation(fadeInAnimation);
//			}
			//del-e by matt for 分数显示30秒
			break;
		//add-s by matt for 分数显示30秒
		case BoosterAnimationLayout.BOOSTER_CMD_SHOW_RESULT:
			mBoosterBottomLayout.setEnabled(true);
			if (mBoosterBottomLayout.getVisibility() != View.VISIBLE) {
				mBoosterBottomLayout.setVisibility(View.VISIBLE);
				Animation fadeInAnimation = AnimationUtils.loadAnimation(mContext, android.R.anim.fade_in);
				fadeInAnimation.setDuration(500);
				mBoosterBottomLayout.startAnimation(fadeInAnimation);
			}
			break;
		//add-s by matt for 分数显示30秒	
		default:
			break;
		}
		return ret;
	}

	private void boost() {
		Log.d("BoosterLayoutView", "boost");

		mBoosterHeaderLayout.hideBoostResult();
		// 初始化优化引擎
		mBoosterHeaderLayout.showBoosting();
		initSystemBoosterManager();
		synchronized (BoosterLayoutView.class) {

			if (SystemBoosterManager.getInstance().booster_do_status != SystemBoosterManager.DO_NOTHING) {
				mBoosterRunning = true;
			} else {
				// 设置引擎的优化状态
				SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_BOOSTER;
			}
			if (mBoosterRunning == false) {
				mBoosterRunning = true;
				// startMonitorBattery();
				// 在新线程中开始优化处理
				new Thread(new Runnable() {
					@Override
					public void run() {
						SystemBoosterManager.getInstance().doBooster();
					}
				}).start();

			} else {
				mBoosterRestart = true;
			}
		}
	}

	private void boostEnd() {
		mBoosterAnimation.boosterComplite(0, getCurrentMemoryDisplay());
	}

	private void initSystemBoosterManager() {
		SystemBoosterManager.getInstance().registIBoosterListener(mBoosterListener);
	}

	private void updateInfo() {
		mBoosterHeaderLayout.updateInfo();
	}

	private void idle() {
		mBoosterRestart = false;
		mBoosterHeaderLayout.hideBoostResult();
		// mBoosterHeaderLayout.changeToIdle();
		// mBoosterBottomLayout.changeToIdle();
		mBoosterAnimation.changeToIdle();

		synchronized (BoosterLayoutView.class) {
			if (mBoosterRunning == true) {
				SystemBoosterManager.getInstance().booster_do_status = SystemBoosterManager.DO_CANCEL;
				mBoosterRunning = false;
				GoogleAnalyticsTracker.getInstance().ClickButton("加速", "取消加速", "加速", 1);
			}
		}
	}

	private int getCurrentMemoryDisplay() {
		int ret = 0;
		int rate = 100 - SystemBoosterManager.getInstance()
				.getMemoryUsageRate();
		for (int i = 0; i < BoosterAnimationUtil.RESULT.length; i++) {
			if (rate >= BoosterAnimationUtil.RESULT[i][0]
					&& rate < BoosterAnimationUtil.RESULT[i][1]) {
				ret = BoosterAnimationUtil.RESULT[i][2];
				break;
			}
		}
		return ret;
	}

	@Override
	public void onShow(int from) {
		mBoosterBottomLayout.setEnabled(true);
		if (mBoosterBottomLayout.getVisibility() != View.VISIBLE) {
			mBoosterBottomLayout.setVisibility(View.VISIBLE);
		}
		
		GoogleAnalyticsTracker.getInstance().trackView("加速主页面");
		ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_INTO_PHONE_UP);
		
		if (SystemBoosterManager.getInstance().booster_do_status == SystemBoosterManager.DO_BOOSTER) {
			return;
		}
		
		updateInfo();
		
//		boolean isAnimOpen = ConfigDao.getInstance().isHomepageAnimOpen();
//		boolean isAnimShown = ConfigDao.getInstance().isBoosterAnimShown();
		
		if(BoosterLayoutView.mIsNeedAnimation||from==SubViewListener.FROM_PAGER){
//			if ((!isAnimShown) || (mIsFirstStart && isAnimOpen)) { // delete by jackwang 20130325
//				mBoosterAnimation.showAnimation(BoosterAnimation.ANIMATION_ID_ONE,
//						0, 0);
//				ConfigDao.getInstance().setBoosterAnimShown(true);
//			} else {
				idle();
				mBoosterAnimation.showAnimation(BoosterAnimation.ANIMATION_ID_FOUR,
						getCurrentMemoryDisplay(),
						(int) (SystemBoosterManager.getInstance().getFreeMemory() / 1024));
				// mBoosterHeaderLayout.startBoosterHeaderAnimation();
				// mBoosterBottomLayout.startBoosterBottomAnimation();
//			}
			
			//add-s by matt for 分数显示30秒	
			mBoosterHeaderLayout.updateLowBatteryTips();
//			mBoosterHeaderLayout.hideBoostResult(); // delete by jackwang 2013.03.14
			//add-e by matt for 分数显示30秒	
		}else{
			//add-s by matt for 分数显示30秒	
			mBoosterAnimation.updateInfo(getCurrentMemoryDisplay());
		}
		
		mIsFirstStart = false;
		//del-s by matt for 分数显示30秒	
//		mBoosterHeaderLayout.updateLowBatteryTips();
//		mBoosterHeaderLayout.hideBoostResult();
		//del-e by matt for 分数显示30秒	
		BoosterLayoutView.mIsNeedAnimation = false;
	}

	@Override
	public void onHidden(int from) {
		if (from == SubViewListener.FROM_PAGER) {
			idle();	
		} else {
			
		}
	}

	@Override
	public void onOutOfPage() {

	}

	private class BoosterListener implements IBoosterListener {

		@Override
		public void notifyGetRunningProcessCount(int countOfAllProcess) {
			Message msg = new Message();
			msg.what = MSG_GET_PROGRESS_COUNT;
			msg.arg1 = countOfAllProcess;
			mHandler.sendMessage(msg);
		}

		@Override
		public void notifyGetRunningProcess(AppInfoModel appInfoModel) {
		}

		@Override
		public void notifyGetRunningEnd() {
		}

		@Override
		public void notifyManageProcess() {
			mHandler.sendEmptyMessage(MSG_MANAGE_PROGRESS);
		}

		@Override
		public void notifyCloseEnd(int countOfClosed, long totalRamSizeOfApp) {
			mTotalRamSizeOfApp = totalRamSizeOfApp;
			mCountOfClosed = countOfClosed;
		}

		@Override
		public void notifyCloseRunningAppEnd(int countOfClosed, long totalRamSizeOfApps) {
		}

		@Override
		public void notifyBoosterEnd() {
			synchronized (BoosterLayoutView.class) {
				mBoosterRunning = false;
				if (mBoosterRestart) {
					boost();
					mBoosterRestart = false;
				} else {
					mHandler.sendEmptyMessage(MSG_BOOSTER_END);
				}
			}
		}
	}

	public void updateBatteryStauts() {
		if (mBoosterHeaderLayout != null) {
//			mBoosterHeaderLayout.updateBatteryStauts(extraLevel, isCharging);
			mBoosterHeaderLayout.updateLowBatteryTips();
		}
	}
}
