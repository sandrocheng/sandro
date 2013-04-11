package com.tencent.onesecurity.ui.customview.layout;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class MainTitleBar extends FrameLayout {
	private OnTitleBatTouchListener mTouchListener = null;

	public interface OnTitleBatTouchListener {
		public boolean OnTitleBarTouchEvent(MotionEvent ev);

		public boolean OnTitleBarInterceptTouchEvent(MotionEvent ev);
	}

	public MainTitleBar(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public MainTitleBar(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public MainTitleBar(Context context) {
		super(context);
	}

	public void setTitleLayoutOnTouchListener(OnTitleBatTouchListener l) {
		mTouchListener = l;
	}

	@Override
	public boolean onTouchEvent(MotionEvent ev) {
		boolean ret = false;
		if (mTouchListener != null) {
			ret = mTouchListener.OnTitleBarTouchEvent(ev);
		}
		return ret;
	}

	@Override
	public boolean onInterceptTouchEvent(MotionEvent ev) {
		boolean ret = false;
		if (mTouchListener != null) {
			ret = mTouchListener.OnTitleBarInterceptTouchEvent(ev);
		}
		return ret;
	}

}
