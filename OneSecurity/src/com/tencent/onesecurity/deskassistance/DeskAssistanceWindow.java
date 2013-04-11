package com.tencent.onesecurity.deskassistance;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.text.format.Formatter;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.ImageView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.deskassistance.ExpandedOptimizeWindow.onOptimizeFinishListener;
import com.tencent.onesecurity.deskassistance.RocketSplash.RocketSplashListener;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager.CloseAppResult;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.PhoneInfoUtil;
import com.tencent.onesecurity.util.ToastUtil;

/**
 * 桌面助手浮窗(大浮窗),小火箭
 * 
 * @author junmingluo
 * 
 */
public class DeskAssistanceWindow implements OnClickListener,
		onOptimizeFinishListener {

	/**
	 * 从左边进入
	 */
	public static int ZOOM_IN_SIDE_LEFT = 0x01;

	/**
	 * 从右边进入
	 */
	public static int ZOOM_IN_SIDE_RIGHT = 0x02;

	private Context mContext;

	/**
	 * for 在快捷助手加速后，只能显示可用内存比之前多 by jiubiaochen
	 */
	// private boolean mShouldShowMoreFreeMoneyOnly = false;

	/**
	 * 桌面窗口服务
	 */
	private WindowManager mWindowManager;

	/**
	 * 遮罩层
	 */
	private ImageView mAlphaCanvas;

	/**
	 * 内存使用率，桌面浮窗
	 */
	private MinDeskAssistantWindow mMinDeskAssistantWindow;

	private DeskAssistantTipWindow mDeskAssistantTipWindow;

	private DeskAssistanceExpandedWindow mDeskAssistanceExpandedWindow;

	private ConfigDao mConfigDao;

	/**
	 * 信息--获取内存使用情况
	 */
	private final int MSG_GET_RAM_USAGE = 0x03;

	/**
	 * 信息--加速完成
	 */
	private final int MSG_OPTIMIZE_FINISH = 0x04;

	private WindowManager.LayoutParams mLayoutParams;
	private SuspendWhirlPoolView mWhirlPoolView;

	/**
	 * 屏幕是否打开
	 */
	private boolean mScreenOn = true;

	private boolean mOptomoizeStarted = false;

	private boolean mScreenOrientationChange = false;

	private final int MSG_INIT_DESK_VIEW = 0;
	private final int MSG_KILL_DONE = 1;
	private final int MSG_REMOVE_FLOAT = 2;
	private final int MSG_ROCKET_FINISH_ADD_FLOAT = 3;

	private RocketSplash mRocketSplash;

	private boolean mHasRocketSplash;

	private boolean mFirstVertical = true;

	private Handler mhandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case MSG_INIT_DESK_VIEW:
				if (mMinDeskAssistantWindow == null
						|| mMinDeskAssistantWindow.hasAddToWindow() == false)
					break;
				mMinDeskAssistantWindow.initView(true);
				WindowManager.LayoutParams params = mMinDeskAssistantWindow
						.getWindowLayoutParams(-1, -1);
				mWindowManager
						.updateViewLayout(mMinDeskAssistantWindow, params);
				break;
			case MSG_KILL_DONE:
				int killCount = msg.arg1;
				long freeMemory = (Long) msg.obj;
				String ramSizeInfo = Formatter.formatShortFileSize(mContext, freeMemory);
				if (killCount > 0) {
					
					ToastUtil.ShowSimpleTextLongToast(
							String.format(
									mContext.getString(R.string.booster_closed_tip),
									killCount, ramSizeInfo), true,Gravity.TOP,0,DeviceUtil.getScreenHeight()/2/4,R.layout.desktop_toast);
					
					String tips = "返回正常数据显示（关闭了" + killCount + "个程序，节省了" + ramSizeInfo + "内存）";
					GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", tips, "", 1l);
				} else {
					ToastUtil.ShowSimpleTextLongToast(R.string.one_key_faster_tips_clear,Gravity.TOP,0,DeviceUtil.getScreenHeight()/2/4,R.layout.desktop_toast);
				}

				mOptomoizeStarted = false;
				// mShouldShowMoreFreeMoneyOnly = true;
				addMinDeskView(true);
				break;
			case MSG_REMOVE_FLOAT:
				removeMinDeskView();
				break;
			case MSG_ROCKET_FINISH_ADD_FLOAT:
				addMinDeskView(true);
				break;
			default:
				break;
			}
		}
	};

	public DeskAssistanceWindow(Context context) {
		mContext = context;
		mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
		mConfigDao = DaoCreator.createConfigDao();
		mContext.registerReceiver(mScreenOnReceiver, new IntentFilter(
				Intent.ACTION_SCREEN_ON));
		mContext.registerReceiver(mScreenOffReceiver, new IntentFilter(
				Intent.ACTION_SCREEN_OFF));
	}

	private BroadcastReceiver mScreenOnReceiver = new BroadcastReceiver() {

		@Override
		public void onReceive(Context context, Intent intent) {
			mScreenOn = true;
			mHandler.sendEmptyMessage(MSG_GET_RAM_USAGE);
		}
	};

	private BroadcastReceiver mScreenOffReceiver = new BroadcastReceiver() {

		@Override
		public void onReceive(Context context, Intent intent) {
			mScreenOn = false;
			mHandler.sendEmptyMessage(MSG_GET_RAM_USAGE);
		}
	};

	private OnRocketMoveListener mRocketMoveListener;

	private void initWhilePoolview() {
		if (mWhirlPoolView == null) {
			mRocketMoveListener = new OnRocketMoveListener() {
				@Override
				public void onStandUp() {
				}

				@Override
				public boolean onPutDown() {
					return false;
				}

				@Override
				public void onAnimationDone() {
					if (mWhirlPoolView != null) {
						mWindowManager.removeView(mWhirlPoolView);
						mWhirlPoolView = null;
					}
					whirlPoolRect = null;
					mMinDeskAssistantWindow.setRocketDone();

					/*--matt fix bug NO 9556054----20121202-------S-*/
					synchronized (DeskAssistanceWindow.this) {
						if (mCleanStarted != false) {
							mCleanStated++;
							if (mCleanStated == 2) {
								mCleanStarted = false;
								Message msg = mhandler
										.obtainMessage(MSG_KILL_DONE);
								msg.arg1 = mCleanedAppCount;
								msg.obj = mReleaseRamSize;
								msg.sendToTarget();
								mCleanStated = 0;
							}
						}
					}
					/*--matt fix bug NO 9556054----20121202-------E-*/
				}

				@Override
				public void onMove() {
				}
			};
			mWhirlPoolView = new SuspendWhirlPoolView(mContext,
					mRocketMoveListener);
			mWindowManager.addView(mWhirlPoolView, mWhirlPoolView.getParams());
		}
	}

	private Rect whirlPoolRect;// 大圆窗体
	private OnRocketMoveListener mRocketMoveListener2;
	private MinDeskAssistantWindow.Vibrate mVibreate;

	private void startVibreate() {
		mVibreate = mMinDeskAssistantWindow.getVibrate();
		mVibreate.playVibrate(1);
	}

	private void stopVibreate() {
		if (mVibreate != null)
			mVibreate.Stop();
	}

	private DebugInfoWindow mDebugInfoView = null;

	private void addDebugInfoView() {
		if (mDebugInfoView == null) {
			mDebugInfoView = new DebugInfoWindow(mContext);
			mDebugInfoView.intiParams();
		}
		if (mDebugInfoView.hasAddToWindow() == false) {
			WindowManager.LayoutParams params = mDebugInfoView
					.getWindowLayoutParams(0, 0);
			mWindowManager.addView(mDebugInfoView, params);
			mDebugInfoView.setHasAddToWindow(true);
		}
	}

	private void removeDebugInfoView() {
		if (mDebugInfoView != null) {
			if (mDebugInfoView.hasAddToWindow() != false) {
				mWindowManager.removeView(mDebugInfoView);
				mDebugInfoView.setHasAddToWindow(false);
				mDebugInfoView.close();
			}
			mDebugInfoView = null;
		}
	}

	/**
	 * 弹出桌面小火箭
	 * 
	 * @author gordonbi
	 */
	public void showRocketSplash() {
		if (!mHasRocketSplash) {
			if (mRocketSplash == null) {
				mRocketSplash = new RocketSplash(mContext);
			}
			mRocketSplash.registListener(new RocketSplashListener() {

				@Override
				public void onClose() {
					removeRocketSplash();
				}
			});
			WindowManager.LayoutParams params = new WindowManager.LayoutParams();
			params.gravity = Gravity.CENTER_HORIZONTAL;
			params.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			params.alpha = 0.85f;
			mWindowManager.addView(mRocketSplash, params);
			mHasRocketSplash = true;
		}

	}

	public void removeRocketSplash() {
		if (mHasRocketSplash) {
			mWindowManager.removeView(mRocketSplash);
			mHasRocketSplash = false;
		}

		Message msg = mhandler.obtainMessage(MSG_ROCKET_FINISH_ADD_FLOAT);
		msg.sendToTarget();
	}

	/**
	 * 打开桌面助手功能
	 */
	public void showSuspendedWindow() {
		GoogleAnalyticsTracker.getInstance().trackView("桌面浮窗");
		
		if (ApplicationConfig.DEBUGINFOWINDOW != false) {
			addDebugInfoView();
		}
		
		if (mMinDeskAssistantWindow == null) {
			mMinDeskAssistantWindow = new MinDeskAssistantWindow(mContext);
			mRocketMoveListener2 = new OnRocketMoveListener() {

				@Override
				public void onStandUp() {
					// 把圈圈初始化了。
					initWhilePoolview();
					mWhirlPoolView.poolAnimate(true, false);
					whirlPoolRect = new Rect();
				}

				@Override
				public void onMove() {
					if (mWhirlPoolView == null) {
						initWhilePoolview();
						mWhirlPoolView.poolAnimate(true, false);
						whirlPoolRect = new Rect();
					}
					mWhirlPoolView.getDrawingRect(whirlPoolRect);
					WindowManager.LayoutParams paramXY = mWhirlPoolView.getParamXY();
					whirlPoolRect.left += paramXY.x;
					whirlPoolRect.right += paramXY.x;
					whirlPoolRect.top += paramXY.y;
					whirlPoolRect.bottom += paramXY.y;
					boolean r = mMinDeskAssistantWindow.isChangeToRocket(whirlPoolRect);
					if (r) {
						showUseRocketTipMsg();
						mWhirlPoolView.poolAnimate(true, true);
						startVibreate();
					} else {
						closeUseRocketTipMsg();
						mWhirlPoolView.poolAnimate(true, false);
						stopVibreate();
					}
				}

				boolean isin = false;

				@Override
				public boolean onPutDown() {
					if (mWhirlPoolView == null)
						return false;
					mWhirlPoolView.getDrawingRect(whirlPoolRect);
					WindowManager.LayoutParams paramXY = mWhirlPoolView
							.getParamXY();
					whirlPoolRect.left += paramXY.x;
					whirlPoolRect.right += paramXY.x;
					whirlPoolRect.top += paramXY.y;
					whirlPoolRect.bottom += paramXY.y;

					if (mMinDeskAssistantWindow != null)
						isin = mMinDeskAssistantWindow.isChangeToRocket(whirlPoolRect);
					if (isin) {
						mMinDeskAssistantWindow.setUp();
						mWhirlPoolView.poolAnimate(false, true);

						closeUseRocketTipMsg();
						stopVibreate();
						startClean();
						mOptomoizeStarted = true;
					} else {
						onAnimationDone();
						mWhirlPoolView.onAnimationDone();
						whirlPoolRect = null;
					}
					return isin;
				}

				@Override
				public void onAnimationDone() {
					if (isin && mMinDeskAssistantWindow != null) {
						Message msg = mhandler.obtainMessage(MSG_INIT_DESK_VIEW);
						msg.sendToTarget();
					}
					mMinDeskAssistantWindow.setRocketDone();
					if (mOptomoizeStarted)
						removeMinDeskView();
				}

			};
			mMinDeskAssistantWindow.setRocketMoveListener(mRocketMoveListener2);
			mMinDeskAssistantWindow.setOnClickListener(this);
		}
		addMinDeskView(false);
		if (mHandler == null) {
			mHandler = new Window_Handler();
		}

		mDeskAssistanceExpandedWindow = new DeskAssistanceExpandedWindow(
				mContext, this);
		mAlphaCanvas = (ImageView) LayoutInflater.from(mContext).inflate(
				R.layout.layout_deskassistance_window, null);

		mHandler.sendEmptyMessage(MSG_GET_RAM_USAGE);
	}

	private int mCleanedAppCount = 0;
	private long mReleaseRamSize = 0;
	private int mCleanStated = 0;
	private boolean mCleanStarted = false;

	private void startClean() {
		GoogleAnalyticsTracker.getInstance().ClickButton("火箭加速", "火箭加速", "加速", 1l);// google点击事件响应
		ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_ASSISTANT_ROCKET_LAUNCH_SUCCESS);
		
		// add by tony
		ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_INTO_QQPIMSECURE);// 使用小火箭、点击浮窗、点击桌面图片进入UI
		GoogleAnalyticsTracker.getInstance().ClickButton("主动打开UI", "打开桌面助手、通过桌面图标进入OS、通过火箭加速", "指标", 1l);
		// end by tony
		
		mCleanStated = 0;
		mCleanStarted = true;
		// 开始一键加速
		if (SystemBoosterManager.getInstance().isNeedBoost()) {
			// 需要刷新的时候才需要去真正的杀进程
			new Thread(new Runnable() {
				@Override
				public void run() {
					SystemBoosterManager boosterManager = SystemBoosterManager.getInstance();
					boolean containSysApp = true;
					try {
						containSysApp = CoreConfigDao.getInstance().getBooleanValue(
										CoreConfigDao.ROCKET_IS_CLEAR_SYSTEM_PROCESS);
					} catch (Exception e) {

					}
					boosterManager.booster_do_status = SystemBoosterManager.DO_BOOSTER;
					CloseAppResult res = boosterManager.closeRunningApps(containSysApp, false, true);
					boosterManager.booster_do_status = SystemBoosterManager.DO_NOTHING;
					boosterManager.updateDeskAssistanceRamUseageWarningPercentage();
					if (res != null) {
						mCleanedAppCount = res.count;
						mReleaseRamSize = res.totalRamSize;
					} else {
						mCleanedAppCount = 0;
						mReleaseRamSize = 0;
					}
					boosterManager.setLastBoostedTime();

					/*--matt fix bug NO 9556054----20121202-------S-*/
					synchronized (DeskAssistanceWindow.this) {
						mCleanStated++;
						if (mCleanStated == 2) {
							mCleanStarted = false;
							Message msg = mhandler.obtainMessage(MSG_KILL_DONE);
							msg.arg1 = mCleanedAppCount;
							msg.obj = mReleaseRamSize;
							msg.sendToTarget();
							mCleanStated = 0;
						}
					}
					/*--matt fix bug NO 9556054----20121202-------E-*/
				}
			}).start();

		} else {
			mCleanedAppCount = -1;
			mReleaseRamSize = -1;

			/*--matt fix bug NO 9556054----20121202-------S-*/
			synchronized (DeskAssistanceWindow.this) {
				mCleanStated++;
				if (mCleanStated == 2) {
					mCleanStarted = false;
					Message msg = mhandler.obtainMessage(MSG_KILL_DONE);
					msg.arg1 = mCleanedAppCount;
					msg.obj = mReleaseRamSize;
					msg.sendToTarget();
					mCleanStated = 0;
				}
			}
			/*--matt fix bug NO 9556054----20121202-------E-*/

			GoogleAnalyticsTracker.getInstance().ClickButton("加速统计", "返回无需加速显示（您的系统已到达最佳）", "", 1l);
		}
	}

	private boolean isExpandedWindowShowing() {
		return mDeskAssistanceExpandedWindow != null
				&& mDeskAssistanceExpandedWindow.hasAddToWindow();
	}

	private void addMinDeskView(boolean visible, boolean isScreenVertical) {
		if ((mMinDeskAssistantWindow.hasAddToWindow() == false
				&& mOptomoizeStarted == false && isExpandedWindowShowing() == false)
				|| !isScreenVertical) {
			mMinDeskAssistantWindow.initView(visible);
			WindowManager.LayoutParams params = null;
			if (isScreenVertical) {
				params = mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1);
				mScreenOrientationChange = false;
			} else {
				// TODO
				mScreenOrientationChange = true;
				int x = mWindowManager.getDefaultDisplay().getHeight();
				int y = mWindowManager.getDefaultDisplay().getWidth();
				mMinDeskAssistantWindow.saveLocation(y, x);
				params = mMinDeskAssistantWindow.getWindowLayoutParams(y, x);
			}

			mWindowManager.addView(mMinDeskAssistantWindow, params);
			mMinDeskAssistantWindow.setHasAddToWindow(true);
			if (mRocketMoveListener != null)
				mRocketMoveListener.onAnimationDone();
			if (mRocketMoveListener2 != null)
				mRocketMoveListener2.onAnimationDone();
		}
	}

	/**
	 * 无屏幕切换动作
	 * 
	 * @param visible
	 */
	private void addMinDeskView(boolean visible) {
		addMinDeskView(visible, true);
	}

	private void showUseRocketTipMsg() {
		if (mDeskAssistantTipWindow != null && mDeskAssistantTipWindow.isShown())
			return;

		// if (mConfigDao.hadUseRocketSpeedUpBefore() == true)
		// return;

		if (mDeskAssistantTipWindow == null)
			mDeskAssistantTipWindow = new DeskAssistantTipWindow(mContext);
		if (mDeskAssistantTipWindow.isShown() == false) {
			mDeskAssistantTipWindow.initView();

			// Rect r = new Rect();
			// mWhirlPoolView.getGlobalVisibleRect(r);
			// int y = r.top;
			// int x = r.left + whirlPoolRect.width() / 2;

			int screenW = PhoneInfoUtil.getScreenWidth(mContext);

			int y = whirlPoolRect.top;
			int x = screenW / 2;
			mWindowManager.addView(mDeskAssistantTipWindow,
					mDeskAssistantTipWindow.getWindowLayoutParams(x, y));
		}
	}

	private void closeUseRocketTipMsg() {
		if (mDeskAssistantTipWindow != null && mDeskAssistantTipWindow.isShown()) {
			mWindowManager.removeView(mDeskAssistantTipWindow);
		}
	}

	/**
	 * 关闭桌面助手功能
	 */
	public void closeSuspendedWindow() {
		this.removeAssistanceView();
		this.removeMinDeskView();
		if (mHandler != null) {
			mHandler.removeMessages(MSG_GET_RAM_USAGE);
			mHandler = null;
		}
		unRegisterScreenOnOffReceiver();
	}

	private void unRegisterScreenOnOffReceiver() {
		if (mScreenOnReceiver != null && mScreenOffReceiver != null) {
			mContext.unregisterReceiver(mScreenOnReceiver);
			mContext.unregisterReceiver(mScreenOffReceiver);
			mScreenOnReceiver = null;
			mScreenOffReceiver = null;
		}
	}

	/**
	 * 显示大浮窗
	 * 
	 * @param side
	 * @param x
	 * @param y
	 */
	public void showAssistanceView(int side, int x, int y) {
		if (mDeskAssistanceExpandedWindow == null) {
			mDeskAssistanceExpandedWindow = new DeskAssistanceExpandedWindow(mContext, this);
			mAlphaCanvas = (ImageView) LayoutInflater.from(mContext).inflate(
					R.layout.layout_deskassistance_window, null);
		}
		
		try {
			mWindowManager.addView(mAlphaCanvas, getWindowLayoutParams(-1, -1));
			mDeskAssistanceExpandedWindow.showWindow(mWindowManager, side, x, y);
			mDeskAssistanceExpandedWindow.setHasAddToWindow(true);
		} catch (IllegalArgumentException e) {
			// 连续点击多次可能出现
			// do nothing
		} catch (IllegalStateException e) {
			// 连续点击多次可能出现
			// do nothing
		}

		if (mRocketMoveListener != null)
			mRocketMoveListener.onAnimationDone();
		if (mRocketMoveListener2 != null)
			mRocketMoveListener2.onAnimationDone();
	}

	public void checkAndShowDeskAssisSettingCloseTipMsg() {
		ConfigDao configDao = DaoCreator.createConfigDao();
		if (!configDao.isDeskAssisWindowOpen()) {
			ToastUtil.ShowSimpleTextLongToast(mContext
					.getString(R.string.DeskAssisCloseSettingTipMsg),R.layout.custom_toast);
		}
	}

	public void removeAssistanceView() {
		if (mDeskAssistanceExpandedWindow.hasAddToWindow()) {
			mDeskAssistanceExpandedWindow.setHasAddToWindow(false);
			mHandler.removeMessages(MSG_OPTIMIZE_FINISH);
			try {

				mWindowManager.removeView(mAlphaCanvas);
				mWindowManager.removeView(mDeskAssistanceExpandedWindow);
			} catch (IllegalArgumentException e) {
			} catch (IllegalStateException e) {
			}
			checkAndShowDeskAssisSettingCloseTipMsg();
		}
	}

	public WindowManager.LayoutParams getWindowLayoutParams(int x, int y) {
		if (mLayoutParams == null) {
			mLayoutParams = new WindowManager.LayoutParams();
			mLayoutParams.gravity = Gravity.LEFT | Gravity.TOP;
			mLayoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			mLayoutParams.format = PixelFormat.RGBA_8888;
			mLayoutParams.flags |= WindowManager.LayoutParams.FLAG_FULLSCREEN
					| WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
			mLayoutParams.width = WindowManager.LayoutParams.FILL_PARENT;
			mLayoutParams.height = WindowManager.LayoutParams.FILL_PARENT;
		}
		if (x != -1) {
			mLayoutParams.x = x;
			mLayoutParams.y = y;
		}
		return mLayoutParams;
	}

	@Override
	public void onClick(View v) {
		if (v == mMinDeskAssistantWindow) {
			if (!SystemBoosterManager.getInstance().isOnDeskNow()) {
				return;
			}
			changeToMaxDesk();
		}
	}

	/**
	 * 移除大窗口，显示小窗口
	 */
	public void removeAssistanceViewAndAddMinDeskView() {
		removeAssistanceView();
		// if (mConfigDao.isDeskAssisWindowOpen()) {
		addMinDeskView(true);
		// }
	}

	private void changeToMaxDesk() {
		int side = (mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1).x > PhoneInfoUtil
				.getScreenWidth(mContext) / 2) ? ZOOM_IN_SIDE_RIGHT : ZOOM_IN_SIDE_LEFT;
		WindowManager.LayoutParams params = mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1);
		showAssistanceView(side, params.x, params.y - mMinDeskAssistantWindow.getHeight() / 2);
		mMinDeskAssistantWindow.stopAnimation();
		try {
			removeMinDeskView();
		} catch (IllegalArgumentException e) {
			// 连续点击多次可能出现
			// do nothing
		} catch (IllegalStateException e) {
			// 连续点击多次可能出现
			// do nothing
		}
	}

	private Window_Handler mHandler = null;

	private class Window_Handler extends Handler {
		@Override
		public void handleMessage(android.os.Message msg) {
			switch (msg.what) {
			case MSG_GET_RAM_USAGE:
				if (!mScreenOn) {
					if (mDeskAssistanceExpandedWindow != null
							&& !mDeskAssistanceExpandedWindow.hasAddToWindow()) {
						mMinDeskAssistantWindow.resetRocket();
						mMinDeskAssistantWindow.rocketVisible(false);
						stopVibreate();
						if (mWhirlPoolView != null) {
							mWhirlPoolView.reset();
						}
						closeUseRocketTipMsg();
					}
					return;
				}
				
				if (mConfigDao.isDeskAssisWindowOpen()
						|| ApplicationConfig.DEBUGINFOWINDOW) {
					if (mHandler.hasMessages(MSG_GET_RAM_USAGE) == false) {
						// if(!mHasRocketSplash){//gordon 当小火箭闪屏弹出的时候不显示 小火箭
						mHandler.sendEmptyMessageDelayed(MSG_GET_RAM_USAGE, 1000);
						// }
					}
				}
				
				if (ApplicationConfig.DEBUGINFOWINDOW != false) {
					addDebugInfoView();
					mDebugInfoView.upDataDebugInfo();
				} else {
					removeDebugInfoView();
				}

				// if (!mConfigDao.isDeskAssisWindowOpen()) {
				if (!mConfigDao.isDeskAssisWindowOpen()) {
					// 桌面助手已被关闭
					removeMinDeskView();
					if (mDeskAssistanceExpandedWindow != null
							&& !mDeskAssistanceExpandedWindow.hasAddToWindow())
						removeAssistanceView();
					else
						// mHandler.sendEmptyMessageDelayed(MSG_GET_RAM_USAGE,
						// 1000);
						unRegisterScreenOnOffReceiver();
					return;
					// } else if (!mConfigDao.getIsHelperTipsDone()) {
				}
				// }else if(false){
				// // 管家没有开启服务
				// if (mMinDeskAssistantWindow.hasAddToWindow()) {
				// mMinDeskAssistantWindow.stopAnimation();
				// removeMinDeskView();
				// }
				// //mHandler.sendEmptyMessageDelayed(MSG_GET_RAM_USAGE, 1000);
				// return;
				// }

				if (!SystemBoosterManager.getInstance().isOnDeskNow()) {
					removeAssistanceView();
					removeMinDeskView();
				} else {
					int x = mWindowManager.getDefaultDisplay().getHeight();
					int y = mWindowManager.getDefaultDisplay().getWidth();
					if (mFirstVertical) {
						if (x < y) {
							if (!mScreenOrientationChange) {// 屏幕切换到了横屏
								removeMinDeskView();// 移除原先的窗体
								mFirstVertical = false;
								addMinDeskView(true, false);// 添加新窗体
							}
						} else {
							mScreenOrientationChange = false;
							if (!mMinDeskAssistantWindow.hasAddToWindow()) {
								if (!mHasRocketSplash) {// gordon 当小火箭闪屏弹出的时候不显示小火箭
									addMinDeskView(true);
								}
							}
						}
					}
					
					int ramUsage = SystemBoosterManager.getInstance()
							.getMemoryUsageRate();
					mMinDeskAssistantWindow.setRamUsageText(ramUsage);
					if (mDeskAssistanceExpandedWindow != null)
						mDeskAssistanceExpandedWindow.updateOptimizeWindowRamUsage(ramUsage);
				}
				
				break;
			case MSG_OPTIMIZE_FINISH: {
				removeAssistanceView();
				// if(!DaoCreator.createConfigDao().hasShowWhiteListSettingTips())
				if (true)
					// WhiteListSettingTipDialogView.showDialog();
					addMinDeskView(true);
			}
				break;
			}
		};
	};

	@Override
	public void onOptimizeFinish(boolean isCloseRightnow) {
		// mShouldShowMoreFreeMoneyOnly = true;
		if (mDeskAssistanceExpandedWindow != null
				&& mDeskAssistanceExpandedWindow.hasAddToWindow()) {
			// ProcessLoader.stopThread();
			if (isCloseRightnow) {
				mHandler.sendEmptyMessage(MSG_OPTIMIZE_FINISH);
			} else {
				mHandler.sendEmptyMessageDelayed(MSG_OPTIMIZE_FINISH, 2500);
			}
		}
	}

	/**
	 * 移除小火箭
	 */
	private void removeMinDeskView() {
		if (mMinDeskAssistantWindow.hasAddToWindow()
				&& mMinDeskAssistantWindow.isRocketRunning() == false) {
			mMinDeskAssistantWindow.setHasAddToWindow(false);

			try {
				mMinDeskAssistantWindow.stopAnimation();
				mWindowManager.removeView(mMinDeskAssistantWindow);
			} catch (IllegalArgumentException e) {
			} catch (IllegalStateException e) {
			}

			mMinDeskAssistantWindow.ondestroy();
			mMinDeskAssistantWindow.setLayoutVisible(false);
			try {
				Thread.sleep(mMinDeskAssistantWindow.getRocketDelay());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			mMinDeskAssistantWindow.setRocketDelay(0);
			if (mRocketMoveListener != null)
				mRocketMoveListener.onAnimationDone();
			if (mRocketMoveListener2 != null)
				mRocketMoveListener2.onAnimationDone();
		}
		closeUseRocketTipMsg();
		stopVibreate();
	}
}
