package com.sandro.custom.view;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;

import com.sandro.ImageTrans.MainApp;
import com.sandro.ImageTrans.R;
import com.sandro.ImageTrans.ScreenSaverReceiver;

/**
 * 屏保view
 * @author sandrocheng
 *
 */
public class ScreenSaverView extends FrameLayout{
	
	/**
	 * 记录上一次触点的x坐标
	 */
	private float mLastMotionX; 
	
	private ImageView iv;
	
	public ScreenSaverView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}
	
	public ScreenSaverView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}

	public ScreenSaverView(Context context) {
		super(context);
		init(context);
	}
	
	
	
	@Override
	protected void onLayout(boolean changed, int left, int top, int right,
			int bottom) {
		super.onLayout(changed, left, top, right, bottom);
		if(iv == null){
			iv = (ImageView)this.findViewById(R.id.iv_content);			
		}
	}

	private void init(Context context){
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		final int action = event.getAction();
		final float x = event.getX();
		switch (action) {
		case MotionEvent.ACTION_DOWN:
			mLastMotionX = x;
			break;
		case MotionEvent.ACTION_MOVE:
			int deltaX = (int) (mLastMotionX - x);
			mLastMotionX = x;
			if(iv!=null){
				iv.scrollBy(deltaX, 0);
			}
			break;
		case MotionEvent.ACTION_UP:
			Intent intent = new Intent();
			intent.setAction(ScreenSaverReceiver.ACTION_SCREEN_SAVER_CLOSE);// 发出自定义广播
			MainApp.getContext().sendBroadcast(intent);
			break;
		}

		return false;
	}

}
