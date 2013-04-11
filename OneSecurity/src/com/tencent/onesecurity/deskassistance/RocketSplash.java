package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;

import com.tencent.onesecurity.R;

/**
 * 桌面小火箭的引导闪屏
 * 
 * @author gordonbi
 * 
 */
public class RocketSplash extends LinearLayout {

	private Context mContext;

	private RocketSplashListener mListener;

	/**
	 * 背景布局
	 */
	private View mMainLayout;

	public RocketSplash(Context context) {
		super(context);
		mContext = context;
		LayoutInflater inflater = LayoutInflater.from(mContext);
		mMainLayout = inflater.inflate(R.layout.layout_rocket_splash, null);

		this.setOnTouchListener(new OnTouchListener() {

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				if (mListener != null) {
					mListener.onClose();
				}
				return false;
			}
		});

		addView(mMainLayout);
	}

	public void registListener(RocketSplashListener listener) {
		mListener = listener;
	}

	public void unregistListener() {
		mListener = null;
	}

	public interface RocketSplashListener {
		void onClose();
	}

}
