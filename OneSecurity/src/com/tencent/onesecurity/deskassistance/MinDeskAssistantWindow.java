package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.media.AsyncPlayer;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.ToastUtil;


/**
 * 手机加速桌面悬浮窗（小窗）
 * 
 * @author junmingluo
 * 
 */
public class MinDeskAssistantWindow extends OnSuspendedViewTouch {
	private Context mContext;

	private OnRocketMoveListener mListener;
	/**
	 * 背景布局
	 */
	private View mMainLayout;

	/**
	 * 内存使用率文字
	 */
	private TextView mRamText;

	/**
	 * 是否已被加入到桌面上
	 */
	private boolean mHasAddToWindow;

	/**
	 * 记录浮窗位置
	 */
	private ConfigDao mConfigDao;
	
	private int LOW_DENSITY_MINI_DESK_WIDTH = 40;
	private int LOW_DENSITY_MINI_DESK_HEIGHT = 18;
	private int LOW_DENSITY_MINI_DESK_PADDING = 15;
	
	private int MIDDLE_DENSITY_MINI_DESK_WIDTH = 56;
	private int MIDDLE_DENSITY_MINI_DESK_HEIGHT = 26;
	private int MIDDLE_DENSITY_MINI_DESK_PADDING = 23;
	
	private Vibrate mVibreate;
	private ImageView rocketImg;
	private AnimationDrawable rocketAnimation;
	private WindowManager.LayoutParams mLayoutParams;
	private FrameLayout mLean;
	private View myView = this;
	private Handler mhandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			if (hasAddToWindow()){
				try{
					mWindowManager.updateViewLayout(myView, getWindowLayoutParams(msg.arg1, msg.arg2));
				}catch(IllegalArgumentException e){
					e.printStackTrace();
					ToastUtil.ShowSimpleTextLongToast(e.getMessage(),R.layout.custom_toast);
				}
			}
		}
	};

	public MinDeskAssistantWindow(Context context) {
		super(context);
		mContext = context;
		mConfigDao = DaoCreator.createConfigDao();

		LayoutInflater inflater = LayoutInflater.from(mContext);
		mMainLayout = inflater.inflate(R.layout.layout_systemoptimize_suspend_view, null);
		mRamText = (TextView) (mMainLayout.findViewById(R.id.ram_text));

		addView(mMainLayout);

		// 火箭啊火箭
		mLean = (FrameLayout) inflater.inflate(R.layout.layout_roket, null);
		addView(mLean);
		
		mLean.setVisibility(View.GONE);
		rocketImg = (ImageView)(mLean.findViewById(R.id.fast));
		rocketAnimation = (AnimationDrawable)(rocketImg.getBackground());
	}
	
	// modify by LionLiu 2012-11-21 for Bug 9552901
	/**
     * 设置桌面组件可见状态
     * @Description 为了修改Setting中把桌面助手打开后，桌面助手闪一下消失的情况
     * @version 1.0
     * @author LionLiu
     */
    public void setLayoutVisible(boolean visible) {
        if (null != mMainLayout) {
            mMainLayout.setVisibility(visible ? VISIBLE : GONE);
        }
    }
	
	public void initView(boolean visible) {
		intiParams();
		mMainLayout.setVisibility(visible ? VISIBLE : GONE);
		mLean.setVisibility(View.GONE);
	}
	
	private void intiParams() {
		if (mLayoutParams == null) {
			mLayoutParams = new WindowManager.LayoutParams();
			mLayoutParams.gravity = Gravity.LEFT | Gravity.TOP;
			mLayoutParams.format = PixelFormat.RGBA_8888;
			mLayoutParams.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
			mLayoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			mLayoutParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.alpha = (float) 1.0;
		}
		
	}
	
	@Override
	protected int getAnimationYOffset(){
		if (mMoving)
			return 80;
		else
			return 0;
	}
	
	@Override
	public WindowManager.LayoutParams getWindowLayoutParams(int x, int y) {
		intiParams();
		if (x != -1) {
			mLayoutParams.x = x;
			mLayoutParams.y = y;
		} else {
			mLayoutParams.x = mConfigDao.getDeskAssisPositionX();
			mLayoutParams.y = mConfigDao.getDeskAssisPositionY();
		}

		if (!mMoving && !mDoingAnim) { 
			boolean isRocketStyle = isRocketStyle();
			// 如果是在动画中，则不需要初始化以下参数
			if (mLayoutParams.x <= 0) {
				mViewSideWithScreen = SIDE_LEFT;
				mSideMoveTo = SIDE_LEFT;
				if (!isRocketStyle) {
//					if(isSmallScreen()) {
//						mMainLayout.setBackgroundResource(R.drawable.desktop_bg_1_1);
//						Log.i("xx", "small");
//					}
//					else
					if(DeviceUtil.isLowDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(LOW_DENSITY_MINI_DESK_WIDTH, LOW_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(0, 0, LOW_DENSITY_MINI_DESK_PADDING, 0);
					}else if(DeviceUtil.isMiddleDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(MIDDLE_DENSITY_MINI_DESK_WIDTH, MIDDLE_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(0, 0, MIDDLE_DENSITY_MINI_DESK_PADDING, 0);
					}else{
						mMainLayout.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT));
						mMainLayout.setPadding(0, 0, 37, 0);
					}
						mMainLayout.setBackgroundResource(R.drawable.bg_desktop_floating_1);
					
				} 
				updateRocketStat(SIDE_LEFT);
			} else {
				mViewSideWithScreen = SIDE_RIGHT;
				mSideMoveTo = SIDE_RIGHT;
				if (!isRocketStyle) {
//					if(isSmallScreen())
//						mMainLayout.setBackgroundResource(R.drawable.desktop_bg_2_1);
//					else
					if(DeviceUtil.isLowDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(LOW_DENSITY_MINI_DESK_WIDTH, LOW_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(LOW_DENSITY_MINI_DESK_PADDING, 0, 0, 0);
					}else if(DeviceUtil.isMiddleDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(MIDDLE_DENSITY_MINI_DESK_WIDTH, MIDDLE_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(MIDDLE_DENSITY_MINI_DESK_PADDING, 0, 0, 0);
					}else{
						mMainLayout.setPadding(37, 0, 0, 0);
						mMainLayout.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT));
					}
					mMainLayout.setBackgroundResource(R.drawable.bg_desktop_floating_2);
					
				} 
				updateRocketStat(SIDE_RIGHT);
			}
		}
		if (mMoving){
			updateRocketMovingStyle();
			mLayoutParams.alpha = (float) 1.0;
		}else if(mRocketRunning){
			mLayoutParams.alpha = (float) 1.0;
		} else {
			mLayoutParams.alpha = (float) 1.0;
		}
		return mLayoutParams;
	}

	@Override
	public void saveLocation(int left, int top) {
		mConfigDao.setDeskAssisPositionX(left);
		mConfigDao.setDeskAssisPositionY(top);
		updateRocketStat();
		if (mListener != null)
			mListener.onAnimationDone();
	}

	private boolean mReachRamWarning = false;

	/**
	 * 设置内存使用率文字
	 * 
	 * @param text
	 */
	public void setRamUsageText(int ramUsage) {
		boolean reachRamWarning = ramUsage >DaoCreator.createConfigDao().getDeskAssistanceRamUseageWarningPercentage();
		if (reachRamWarning != mReachRamWarning) {
			mReachRamWarning = reachRamWarning;
			updateRocketStat();
		}

		if (mRamText.isEnabled() == false)
			return;
		mRamText.setText(ramUsage + "%");
		if (reachRamWarning) {
			mRamText.setTextColor(mContext.getResources().getColor(R.color.color_danger));
		} else {
			mRamText.setTextColor(mContext.getResources().getColor(R.color.white_1_fafafa));
		}
	}

	/**
	 * 标记本view是否已被加入到桌面上
	 * 
	 * @param hasAdd
	 */
	public synchronized void setHasAddToWindow(boolean hasAdd) {
		mHasAddToWindow = hasAdd;
	}

	/**
	 * 标记本view是否已被加入到桌面上
	 * 
	 * @return
	 */
	public synchronized boolean hasAddToWindow() {
		return mHasAddToWindow;
	}
	
	private void updateRocketMovingStyle() {
//		if (!isRocketStyle())
//			return;
//		boolean reachRamWarningStage = isReachRamWarningStage();
//		if (reachRamWarningStage) {
			mRamText.setVisibility(INVISIBLE);
			if(DeviceUtil.isLowDensity()){
				mMainLayout.setLayoutParams( new LayoutParams(45, 83));	//等比缩小
			}else if(DeviceUtil.isMiddleDensity()){
				mMainLayout.setLayoutParams( new LayoutParams(50, 92)); //等比缩小
			}else{
				mMainLayout.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT));
			}
			mMainLayout.setBackgroundResource(R.drawable.img_desktop_rocket_launch_1);
			mMainLayout.setPadding(0, 0, 0, 0);
//		} else {
//			mMainLayout.setBackgroundResource(R.drawable.desktop_rocket_m_1);
//			mMainLayout.setPadding(0, 0, 0, 0);
//		}
	}

	private void updateRocketStat(int side) {
		if (!isRocketStyle()) {
			mRamText.setVisibility(VISIBLE);
			mRamText.setEnabled(true);
			changeViewSide(mSideMoveTo);
			return;
		}

		mRamText.setText("");
		mRamText.setVisibility(INVISIBLE);
//		mRamText.setVisibility(GONE);
		mRamText.setEnabled(false);

		if (mMoving) {
			updateRocketMovingStyle();
			return;
		}

//		boolean reachRamWarningStage = isReachRamWarningStage();
//		if (reachRamWarningStage) {
//			switch (side) {
//			case SIDE_LEFT: {
//				mMainLayout.setBackgroundResource(R.drawable.desktop_rocket_l_2);
//				mMainLayout.setPadding(0, 0, 0, 0);
//				break;
//			}
//			case SIDE_RIGHT: {
//				mMainLayout.setBackgroundResource(R.drawable.desktop_rocket_r_2);
//				mMainLayout.setPadding(0, 0, 0, 0);
//				break;
//			}
//			}
//		} else {
//			switch (side) {
//			case SIDE_LEFT: {
//				mMainLayout.setBackgroundResource(R.drawable.desktop_rocket_l_1);
//				mMainLayout.setPadding(0, 0, 0, 0);
//				break;
//			}
//			case SIDE_RIGHT: {
//				mMainLayout.setBackgroundResource(R.drawable.desktop_rocket_r_1);
//				mMainLayout.setPadding(0, 0, 0, 0);
//				break;
//			}
//			}
//		}
	}

	private void updateRocketStat() {
		updateRocketStat(mViewSideWithScreen);
	}

//	private boolean isReachRamWarningStage() {
//		return mReachRamWarning;
//	}

	private boolean isRocketStyle() {
//		if (mConfigDao.getDeskAssistanceMinWindowStyle() == ConfigDao.EDeskAssistanceMinWindowStyle.ERocket)
//			return true;
//		else
			return false;
	}

	@Override
	public void changeViewSide(int side) {
//		switch (mConfigDao.getDeskAssistanceMinWindowStyle()) {
//		case EShowRamUseage: {
			if (mMoving == false){
				if (side == SIDE_LEFT) {
//					if(isSmallScreen())
//						mMainLayout.setBackgroundResource(R.drawable.desktop_bg_1);
//					else
					if(DeviceUtil.isLowDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(LOW_DENSITY_MINI_DESK_WIDTH, LOW_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(0, 0, LOW_DENSITY_MINI_DESK_PADDING, 0);
					}else if(DeviceUtil.isMiddleDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(MIDDLE_DENSITY_MINI_DESK_WIDTH, MIDDLE_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(0, 0, MIDDLE_DENSITY_MINI_DESK_PADDING, 0);
					}
					else{
						mMainLayout.setPadding(0, 0, 37, 0);
						mMainLayout.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT));
					}
						mMainLayout.setBackgroundResource(R.drawable.bg_desktop_floating_1);
					
				} else {
//					if(isSmallScreen())
//						mMainLayout.setBackgroundResource(R.drawable.desktop_bg_2);
//					else
					if(DeviceUtil.isLowDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(LOW_DENSITY_MINI_DESK_WIDTH, LOW_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(LOW_DENSITY_MINI_DESK_PADDING, 0, 0, 0);
					}else if(DeviceUtil.isMiddleDensity()){
						mMainLayout.setLayoutParams(new LayoutParams(MIDDLE_DENSITY_MINI_DESK_WIDTH, MIDDLE_DENSITY_MINI_DESK_HEIGHT));
						mMainLayout.setPadding(MIDDLE_DENSITY_MINI_DESK_PADDING, 0, 0, 0);
					}else{
						mMainLayout.setLayoutParams(new LayoutParams(LayoutParams.WRAP_CONTENT,LayoutParams.WRAP_CONTENT));
						mMainLayout.setPadding(37, 0, 0, 0);	
					}
						mMainLayout.setBackgroundResource(R.drawable.bg_desktop_floating_2);
					
				}
			}
//			break;
//		}
//		case ERocket: {
//			updateRocketStat(side);
//			break;
//		}
//		}
	}

	public void setRocketMoveListener(OnRocketMoveListener listener) {
		this.mListener = listener;
	}
	
	public Vibrate getVibrate(){
		if (mVibreate == null)
			mVibreate = new Vibrate(mContext);
		return mVibreate; 
	}

	public class Vibrate {
		Vibrator vibrator;
		long[] pattern = { 0, 30, 0, 10 };

		public Vibrate(Context context) {
			vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
		}

		// -1不重复，非-1为从pattern的指定下标开始重复
		public void playVibrate(int type) {
//			vibrator.vibrate(pattern, type);
			vibrator.vibrate(50);
		}

		public void Stop() {
			vibrator.cancel();
		}
	}

	/**
	 * 火箭动画操作
	 * 
	 * @param isMove
	 *            是否启动
	 */
	public void rocketAlive(boolean isMove) {
		// 动画是否正在运行
		if (isMove) {
			// 开始或者继续动画播放
			if (mVibreate == null) {
				mVibreate = new Vibrate(mContext);
			}
			mVibreate.playVibrate(-1);
			rocketAnimation.start();
		} else {
			if (mListener != null) {
				mListener.onAnimationDone();
			}
		}
	}

	public void rocketVisible(boolean isVisible) {
		if (isVisible) {
			if (!mLean.isShown()) {
				mMainLayout.setVisibility(View.GONE);
				mLean.setVisibility(View.VISIBLE);
			}
		} else {
			if (mLean.isShown()) {
				mMainLayout.setVisibility(View.VISIBLE);
				mLean.setVisibility(View.GONE);
			}
		}
	}
	
	private boolean mRocketRunning = false;
	public synchronized boolean isRocketRunning(){
		return mRocketRunning;
	}
	private synchronized void setRocketRunning(boolean rocketRunning){
		mRocketRunning = rocketRunning;
	}

	private int rocketDelay = 0;
	
	public int getRocketDelay() {
		return rocketDelay;
	}

	public void setRocketDelay(int mRocketDelay) {
		this.rocketDelay = mRocketDelay;
	}

	public void setUp() {
		setRocketRunning(true);
		// 启动前来个震动吧 ！
		if (mVibreate == null) {
			mVibreate = new Vibrate(mContext);
		}
		mVibreate.playVibrate(-1);
		rocketAlive(true);

		// 开始上升的动画线程
		Rect frame = new Rect();
		getWindowVisibleDisplayFrame(frame);
		int frameButtom = (int) (frame.bottom * 0.8);
		final int left = (int) (frame.right * 0.5 - getWidth() * 0.5);
		final int start = frameButtom;
//		final int middle = (int) (frame.bottom * 0.5);
		final int end = -getHeight() * 2;

		new Thread(new Runnable() {

			@Override
			public void run() {
				int nowY = start;

				AsyncPlayer asyncPlayer = new AsyncPlayer(null);
				//开个射的叫声爽一下
				if(mConfigDao.isRocketSoundOpen()){
					Uri uri = Uri.parse(
							"android.resource://com.tencent.onesecurity/" + R.raw.rocket);
					asyncPlayer.play(mContext, uri, false, AudioManager.STREAM_RING);
				}
				
				int speed = 1;
				//加速上升冲顶
				while (nowY >= end) {
					Message msg = mhandler.obtainMessage();
					msg.arg1 = left;
					msg.arg2 = nowY;
					if (hasAddToWindow() == false)
						break;
					msg.sendToTarget();

					speed += 3;
					nowY -= speed;
					try {
						Thread.sleep(30);
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
				}
				asyncPlayer.stop();
				setRocketRunning(false);
				rocketDelay = 1000;
				//靠~ 跟你说，火箭动完了。
				if (hasAddToWindow())
					rocketAlive(false);
			}
		}).start();
	}

	@Override
	protected boolean ActionUp() {
		super.ActionUp();
		if (mListener != null) {
			return mListener.onPutDown();
		}
		return false;
	}

	@Override
	protected void ActionMove() {
		super.ActionMove();
		if (mListener != null) {
			mListener.onMove();
		}
	}

	@Override
	protected void ActionDown() {
		super.ActionDown();
//		if (mListener != null) {
//			mListener.onStandUp();
//		}
	}

	public void ondestroy() {
		if (rocketAnimation.isRunning()) {
			rocketAnimation.stop();
		}
	}

	public WindowManager.LayoutParams getMyParams(boolean isRecover) {
		if (isRecover) {
			mLayoutParams.x = -1;
			mLayoutParams.y = -1;
		}

		return mLayoutParams;
	}

	private Rect deskRect;

	public boolean isChangeToRocket(Rect whirlPoolRect) {
		if (deskRect == null) {
			deskRect = new Rect();
		}
		getDrawingRect(deskRect);
		deskRect.left += mLayoutParams.x;
		deskRect.right += mLayoutParams.x;
		deskRect.top += mLayoutParams.y;
		deskRect.bottom += mLayoutParams.y;
		boolean isin = whirlPoolRect.intersect(deskRect);
		rocketVisible(isin);
		return isin;
	}
	

}
