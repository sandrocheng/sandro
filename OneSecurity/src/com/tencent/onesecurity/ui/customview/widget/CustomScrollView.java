package com.tencent.onesecurity.ui.customview.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.ScrollView;

public class CustomScrollView extends ScrollView {

	public CustomScrollView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		// TODO Auto-generated constructor stub
	}

	public CustomScrollView(Context context) {
		super(context);
		// TODO Auto-generated constructor stub
	}

	public CustomScrollView(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean dispatchKeyEvent(KeyEvent event) {
		// TODO Auto-generated method stub
		boolean ret = false;
		try {
			ret = super.dispatchKeyEvent(event);
		} catch (Exception e) {
			// TODO: handle exception
			ret = true;
		}
		return ret;
	}

	@Override
	public boolean dispatchTouchEvent(MotionEvent ev) {
		// TODO Auto-generated method stub
		boolean ret = false;
		try {
			ret = super.dispatchTouchEvent(ev);
		} catch (Exception e) {
			// TODO: handle exception
			ret = true;
		}
		return ret;
	}

}
