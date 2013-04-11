package com.sandro.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.widget.LinearLayout;

import com.sandro.ImageTrans.R;
import com.sandro.util.LogUtil;

public class MoveLinearLayout extends LinearLayout implements OnGestureListener {

	private GestureDetector mGestureDetector;

	private int mMaxDistance = 0;
	private int mScrollX;
	private boolean mIsScroll = false;
	private boolean mIsScrolling = false;

	public static final int SCROLL_POS_TIME = 300;
	public static final byte SCROLL_POS_DURATION = 30;

	public MoveLinearLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mGestureDetector = new GestureDetector(this);
		setLongClickable(true);
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		LogUtil.i("MoveLinearLayout", "[onMeasure] start");
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		int count = getChildCount();
		boolean sub2 = false, sub3 = false;
		View view;
		for (int i = 0; i < count; ++i) {
			view = getChildAt(i);

			if (view.getId() == R.id.sub_view_1 ) {
				LogUtil.i("MoveLinearLayout", "[onMeasure] sub_view_1  widthMeasureSpec : " + widthMeasureSpec);
			}
			if (view.getId() == R.id.sub_view_2 && !sub2) {
				LogUtil.i("MoveLinearLayout", "[onMeasure] sub_view_2  widthMeasureSpec : " + widthMeasureSpec);
				view.setLayoutParams(new LayoutParams(widthMeasureSpec, view
						.getLayoutParams().height));
				sub2 = true;
			}
			if (view.getId() == R.id.sub_view_3 && sub3 == false) {
				LogUtil.i("MoveLinearLayout", "[onMeasure] : sub_view_3 widthMeasureSpec : " + widthMeasureSpec);
				view.setLayoutParams(new LayoutParams(widthMeasureSpec, view
						.getLayoutParams().height));
				sub3 = true;
			}
			if (sub2 && sub3) {
				break;
			}
		}
	}

	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
		if (mMaxDistance == 0) {
			int distance = 0;
			int count = getChildCount();
			View view;
			for (int i = 0; i < count; ++i) {
				view = getChildAt(i);
				if (view.getId() == R.id.sub_view_2||view.getId() == R.id.sub_view_3) {
					distance += view.getWidth();
				}
			}

			mMaxDistance = distance;
			scrollTo(mMaxDistance, 0);
			mScrollX = mMaxDistance;
//			LogUtil.i("MoveLinearLayout", "[onLayout] mScrollX : " + mScrollX);
		}
	}

	@Override
	protected void onSizeChanged(int w, int h, int oldw, int oldh) {
		super.onSizeChanged(w, h, oldw, oldh);
	}

	/**
	 * 根据当前的位置判断是否展开或者收起 大于width\2 展开，否则收起
	 * 
	 * @param isUnflod
	 */
	public void unFold() {
		if (!mIsScrolling) {
			mIsScrolling = true;
		}
	}

	@Override
	public boolean dispatchTouchEvent(MotionEvent event) {
		boolean ret = false;

		if (mIsScroll && event.getAction() == MotionEvent.ACTION_UP) {
			if (mScrollX > 0 && mScrollX < mMaxDistance) {
				unFold();
				ret = true;
			}
			event.setAction(MotionEvent.ACTION_CANCEL);
			mIsScroll = false;
		} else if (mGestureDetector != null
				&& mGestureDetector.onTouchEvent(event)) {
			event.setAction(MotionEvent.ACTION_CANCEL);
			ret = true;
		}

		if (super.dispatchTouchEvent(event)) {
			ret = true;
		}

		if (ret) {
			invalidate();
		}
		return ret;
	}

	@Override
	public boolean onDown(MotionEvent e) {
		return false;
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {

	}

	@Override
	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		if (Math.abs(distanceY) > Math.abs(distanceX)) {
			return false;
		}
		mScrollX += distanceX;
		LogUtil.i("MoveLinearLayout", "[scrollDis] scrollTo  " + mScrollX);
		scrollDis();
		mIsScroll = true;
		return true;
	}

	private void scrollDis() {
//		if (mScrollX > mMaxDistance) {
//			mScrollX = mMaxDistance;
//			// if(mOnFoldFinishListener != null){
//			// mOnFoldFinishListener.onFoldFinish(false);
//			// }
//		} else if (mScrollX < 0) {
//			mScrollX = 0;
//			// if(mOnFoldFinishListener != null){
//			// mOnFoldFinishListener.onFoldFinish(true);
//			// }
//		}
		scrollTo(mScrollX, 0);
//		LogUtil.i("MoveLinearLayout", "[scrollDis] scrollTo  " + mScrollX);
	}

	@Override
	public void onShowPress(MotionEvent e) {

	}

	@Override
	public boolean onSingleTapUp(MotionEvent e) {
		return false;
	}

}
