package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.widget.LinearLayout;


/**
 * 桌面浮窗通用移动、动画实现
 * 
 * @author junmingluo
 * 
 */
public abstract class OnSuspendedViewTouch extends LinearLayout implements OnTouchListener {



	/**
	 * 系统浮窗管理者
	 */
	protected WindowManager mWindowManager;

	/**
	 * 浮窗左上方坐标
	 */
	protected int mLeft;
	protected int mTop;

	/**
	 * 用户点击的点相对屏幕的坐标
	 */
	private float mScreenX;
	private float mScreenY;

	/**
	 * 用户点击的点相对浮窗本身的坐标
	 */
	private float mTouchX;
	private float mTouchY;

	/**
	 * 屏幕宽度
	 */
	private int mScreenWidth;

	/**
	 * 本控件的宽度
	 */
	protected int mSelfWidth;

	/**
	 * 动画进行中
	 */
	protected boolean mDoingAnim;

	/**
	 * 动画
	 */
	protected Animation mAnim = null;

	/**
	 * 是否长按后的移动
	 */
	protected boolean isLongclicked = false;
	/**
	 * 动画每次移动的距离
	 */
	private int mAnimDistance;

	/**
	 * 判断是否是Move还是Down的临界条件
	 */
	private int mTouchSlop;

	/**
	 * 停止动画
	 */
	private boolean mAnimStop;

	/**
	 * 控件的位置
	 */
	protected int mViewSideWithScreen;

	/**
	 * 控件运动的方向
	 */
	protected int mSideMoveTo;

	/**
	 * 组件在屏幕外的宽度
	 */
	protected int mLenghtOutOfScreen;

	protected static final int SIDE_LEFT = 0x01;
	protected static final int SIDE_RIGHT = 0x02;

	/**
	 * 动画实现
	 */
	private final int MSG_ANIMATION_NEXT_FRAME = 0x01;
	private final int MSG_ANIMATION_FINISH = 0x02;

	/**
	 * 是否正在执行拖动
	 */
	protected boolean mMoving = false;
	
	/**
	 * 火箭是否已经灰起来了！？这个字段等我回来把它消灭，它在这里太恶心了
	 */
	protected boolean isRocketUp = false;


	public OnSuspendedViewTouch(Context context) {
		super(context);
		mWindowManager = (WindowManager) context.getSystemService("window");
		mScreenWidth = mWindowManager.getDefaultDisplay().getWidth();
		mSelfWidth = getWidth();

		final ViewConfiguration configuration = ViewConfiguration.get(getContext());
		mTouchSlop = configuration.getScaledTouchSlop();

		setClickable(true);
		setEnabled(true);
		setFocusable(true);
		setFocusableInTouchMode(true);
		if (isWholeViewOnTouchable()) {
			setOnTouchListener(this);
		}
	}
	private Handler mAnimHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MSG_ANIMATION_NEXT_FRAME:
				doAnimation();
				break;
			case MSG_ANIMATION_FINISH:
				mMoving = false;
				mDoingAnim = false;
				saveLocation(mLeft, mTop);
				break;
			}

		};
	};

	/**
	 * 保存浮窗新坐标
	 * 
	 * @param left
	 * @param top
	 */
	public abstract void saveLocation(int left, int top);

	/**
	 * 获取WindowManager所需的LayoutParams
	 * 
	 * @param x
	 * @param y
	 */
	public abstract WindowManager.LayoutParams getWindowLayoutParams(int x, int y);

	/**
	 * 改变控件的方向
	 * 
	 * @param side
	 *            方向 SIDE_LEFT; SIDE_RIGHT;
	 */
	public abstract void changeViewSide(int side);

	/**
	 * 是否允许竖向的移动
	 * 
	 * @return
	 */
	public boolean isAllowVerticalMove() {
		return true;
	}

	/**
	 * 是否整个view都是可点击的
	 * 
	 * @return
	 */
	public boolean isWholeViewOnTouchable() {
		return true;
	}

	/**
	 * 向屏幕边滑动
	 * 
	 * @param side
	 */
	protected void moveToScreen(int side) {
		mSideMoveTo = side;
		setAnimDistance();
		mViewSideWithScreen = mSideMoveTo;
		mDoingAnim = true;
		mAnimStop = false;
		mAnimHandler.sendEmptyMessage(MSG_ANIMATION_NEXT_FRAME);
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		// 动画进行中，则直接返回

		if (mDoingAnim || isRocketUp) {
			return true;
		}

		int eventAction = event.getAction();

		mScreenX = event.getRawX();
		mScreenY = event.getRawY();

		Rect frame = new Rect();
		getWindowVisibleDisplayFrame(frame);
		int statusBarHeight = frame.top;
		mScreenY -= statusBarHeight;// 减去通知栏的高度

		switch (eventAction) {
		case MotionEvent.ACTION_DOWN:
			ActionDown();
			isLongclicked = false;
			mTouchX = event.getX();
			mTouchY = event.getY();
			updateLocation(v);
			mMoving = false;
			isRocketUp = false;
			break;
		case MotionEvent.ACTION_MOVE:
			final int xOffset = (int) Math.abs(event.getX() - mTouchX);
			final int yOffset = (int) Math.abs(event.getY() - mTouchY);

			if (xOffset > mTouchSlop || yOffset > mTouchSlop || mMoving) {
				mMoving = true;
				updateLocation(v);
				ActionMove();
				if (mViewSideWithScreen == SIDE_LEFT) {
					if (mLeft >= mScreenWidth / 3 && mSideMoveTo == SIDE_LEFT) {
						// 起点在左边，移动超过1/3，改变方向
						mSideMoveTo = SIDE_RIGHT;
						changeViewSide(mSideMoveTo);
					} else if (mLeft < mScreenWidth / 3 && mSideMoveTo == SIDE_RIGHT) {
						// 移动超过1/3后，又移动回来，改变方向
						mSideMoveTo = SIDE_LEFT;
						changeViewSide(mSideMoveTo);
					}
				} else {
					if (mLeft <= mScreenWidth * 2 / 3 && mSideMoveTo == SIDE_RIGHT) {
						// 起点在右边，移动超过1/3，改变方向
						mSideMoveTo = SIDE_LEFT;
						changeViewSide(mSideMoveTo);
					} else if (mLeft >= mScreenWidth * 2 / 3 && mSideMoveTo == SIDE_LEFT) {
						// 移动超过1/3后，又移动回来，改变方向
						mSideMoveTo = SIDE_RIGHT;
						changeViewSide(mSideMoveTo);
					}
				}
			}
			break;
		case MotionEvent.ACTION_UP:
			isRocketUp = ActionUp();
			if (isRocketUp) {
				mMoving = false;
				return true;
			}else{
				setAnimDistance();
				mViewSideWithScreen = mSideMoveTo;
				mDoingAnim = true;
				mAnimStop = false;
				mAnimHandler.sendEmptyMessage(MSG_ANIMATION_NEXT_FRAME);
			}
			break;
		default:
			break;
		}
		return mMoving;
	}
	
	public void resetRocket(){
		if(mMoving && !mDoingAnim){
			setAnimDistance();
			mViewSideWithScreen = mSideMoveTo;
			mDoingAnim = true;
			mAnimStop = false;
			mAnimHandler.sendEmptyMessage(MSG_ANIMATION_NEXT_FRAME);
		}
	}
	
	
	public void setRocketDone(){
		isRocketUp = false;
	}

	/**
	 * 设置动画的移动距离
	 */
	private void setAnimDistance() {
		if (mSideMoveTo == SIDE_LEFT) {
			// 向左侧滑动
			mAnimDistance = -20;
		} else {
			// 向右侧滑动
			mAnimDistance = 20;
		}
	}

	/**
	 * 更新浮窗位置
	 */
	private void updateLocation(View view) {
		mLeft = (int) (mScreenX - mTouchX);
		if (isAllowVerticalMove()) {
			mTop = (int) (mScreenY - mTouchY);
		}
		int y = mTop;
		y -= getAnimationYOffset();
		try {
			mWindowManager.updateViewLayout(this, getWindowLayoutParams(mLeft, y));
		} catch (IllegalArgumentException e) {
			// 连续点击情况下可能出现浮窗已被移除，确还收到了ontouch事件
			// do nothing
		}
	}
	
	protected int getAnimationYOffset(){
		return 0;
	}

	/**
	 * 动画实现
	 */
	private void doAnimation() {
		if (mAnimStop) {
			return;
		}
		mLeft += mAnimDistance;
		boolean isContinue = true;
		mScreenWidth = mWindowManager.getDefaultDisplay().getWidth();//横屏
		
		if (mLeft + mSelfWidth >= mScreenWidth) {
			mLeft = mScreenWidth - mSelfWidth;
			isContinue = false;
		} else if (mLeft <= 0 - mLenghtOutOfScreen) {
			mLeft = 0 - mLenghtOutOfScreen;
			isContinue = false;
		}
		try {
			mWindowManager.updateViewLayout(this, getWindowLayoutParams(mLeft, mTop));
		} catch (IllegalArgumentException e) {
			// 连续点击情况下可能出现浮窗已被移除，确还收到了ontouch事件
			// do nothing
		}

		if (isContinue) {
			// 继续下一幁动画
			mAnimHandler.removeMessages(MSG_ANIMATION_NEXT_FRAME);
			mAnimHandler.sendEmptyMessage(MSG_ANIMATION_NEXT_FRAME);
		} else {
			mAnimHandler.sendEmptyMessage(MSG_ANIMATION_FINISH);
		}
	}

	/**
	 * 停止动画，用于在动画过程中remove掉当前view 所以remove前要先调用该接口以停止动画
	 */
	public void stopAnimation() {
		mDoingAnim = false;
		mAnimStop = true;
		if (mLeft < mScreenWidth / 2) {
			mLeft = 0;
		} else {
			mLeft = mScreenWidth - mSelfWidth;
		}

		// 这句是为了设置坐标
		// getWindowLayoutParams(mLeft, mTop);
	}

	protected boolean ActionUp() {
		return false;
	}

	protected void ActionMove(){
	}
	
	protected void ActionDown() {
	}
}
