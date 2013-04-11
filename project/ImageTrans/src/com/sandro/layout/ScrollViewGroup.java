package com.sandro.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Scroller;

public class ScrollViewGroup extends ViewGroup{

	/**
	 * 当前页面索引
	 */
	private int mCurScreen = 0;  
	
	/**
	 * 默认的页面位置
	 */
	private static final int DEFAULT_SCREEN_INDEX = 0; 
	
	private Scroller  mScroller;
	
	private VelocityTracker mVelocityTracker;
	
	/**
	 * 记录上一次触点的x坐标
	 */
	private float mLastMotionX; 
	
	private static final int SNAP_VELOCITY = 600; 
	
	public ScrollViewGroup(Context context) {
		super(context);
		init(context);
	}
	
	public ScrollViewGroup(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public ScrollViewGroup(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}
	
	private void init(Context context){
		mCurScreen = DEFAULT_SCREEN_INDEX;
		mScroller = new Scroller(context);
	}

	/**
	 * 对viewgroup内部的子view轮询onMeasure(如果不执行则不能绘画)
	 * 
	 */
	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		final int width = MeasureSpec.getSize(widthMeasureSpec);       
//	    final int widthMode = MeasureSpec.getMode(widthMeasureSpec);      
		final int count = getChildCount();       
        for (int i = 0; i < count; i++) {       
            getChildAt(i).measure(widthMeasureSpec, heightMeasureSpec);       
        }      
        scrollTo(mCurScreen * width, 0);//平移到对应的页面
	}
	
	/**
	 * 计算每个子view的layout布局，如果不计算不能绘画
	 */
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		if (changed) {
			int childLeft = 0;
			final int childCount = getChildCount();

			for (int i = 0; i < childCount; i++) {
				final View childView = getChildAt(i);
				if (childView.getVisibility() != View.GONE) {
					final int childWidth = childView.getMeasuredWidth();
					childView.layout(childLeft, 0, childLeft + childWidth,
							childView.getMeasuredHeight());
					childLeft += childWidth;
				}
			}
		}
	}
	
	/**
	 * 由父视图调用，用于通知子视图在必要时更新 mScrollX 和 mScrollY 的值。 该操作主要用于子视图使用 Scroller 进行动画滚动时。
	 * 当当前view的父view发生变化时重新回调该方法
	 */
	@Override
	public void computeScroll() {
		if (mScroller.computeScrollOffset()) {//矫正 scroll的位置和当前view的位置，抱着二者位置相同    
            scrollTo(mScroller.getCurrX(), mScroller.getCurrY());  
            postInvalidate();    
        }   
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		final int action = event.getAction();
		final float x = event.getX();
		switch (action) {
		case MotionEvent.ACTION_DOWN:
			mLastMotionX = x;

//			if (mVelocityTracker == null) {
//				mVelocityTracker = VelocityTracker.obtain();
//				mVelocityTracker.addMovement(event);
//			}
			
            if (!mScroller.isFinished()){//如果scroller的滑动动效还没有停止，则在按下事件的时候停止这个动效    
                mScroller.abortAnimation();    
            } 
			break;
		case MotionEvent.ACTION_MOVE:
			int deltaX = (int) (mLastMotionX - x);// 当前触点和上一次触点的x轴偏移量
			if (IsCanMove(deltaX)) {
//				if (mVelocityTracker != null) {
//					mVelocityTracker.addMovement(event);
//				}
				mLastMotionX = x;
				scrollBy(deltaX, 0);
			}
			break;
		case MotionEvent.ACTION_UP:
			int velocityX = 0;
            if (mVelocityTracker != null){
            	mVelocityTracker.addMovement(event); 
            	mVelocityTracker.computeCurrentVelocity(1000); //设置速度单位  1000表示每秒移动多少像素
            	velocityX = (int) mVelocityTracker.getXVelocity();
            }
            
            if (velocityX > SNAP_VELOCITY && mCurScreen > 0) {//当数度大于每秒钟600像素 左边还有页面时候，向左移动一屏        
                snapToScreen(mCurScreen - 1);       
            } else if (velocityX < -SNAP_VELOCITY       
                    && mCurScreen < getChildCount() - 1) {            
                snapToScreen(mCurScreen + 1);//向右移动一屏幕       
            } else {       
                snapToDestination(); //直接移动到触点的位置      
            } 
            
            if (mVelocityTracker != null) {       
                mVelocityTracker.recycle();       
                mVelocityTracker = null;       
            }
			break;
		}
		return true;
	}
	
	/**
	 * 判断移动偏移量是否超出 左右边界
	 * @param deltaX
	 * @return
	 */
	private boolean IsCanMove(int deltaX){
		if (getScrollX() <= 0 && deltaX < 0 ){
			return false;
		}
		if  (getScrollX() >=  (getChildCount() - 1) * getWidth() && deltaX > 0){
			return false;
		}
		return true;
	}
	
	/**
	 * 根据当前坐标位置计算最近的页面位置，并滑动过去
	 */
	private void snapToDestination() {
		final int screenWidth = getWidth();
		final int destScreen = (getScrollX() + screenWidth / 2) / screenWidth;
		snapToScreen(destScreen);
	}

	/**
	 * 滑动到制定屏幕
	 * @param whichScreen
	 */
	private void snapToScreen(int whichScreen) {
		whichScreen = Math.max(0, Math.min(whichScreen, getChildCount() - 1));//保证屏幕index在 第一页和最后一页之间
		if (getScrollX() != (whichScreen * getWidth())) {//当前坐标不是屏幕位置的整数倍的时候才滑动
			final int delta = whichScreen * getWidth() - getScrollX();
			//滑动的整体时间是x偏移量的2倍，即偏移量越大自动的滑动数度越慢
			mScroller.startScroll(getScrollX(), 0, delta, 0,
					Math.abs(delta) * 2);
			mCurScreen = whichScreen;
			invalidate();
		}
	} 	

}
