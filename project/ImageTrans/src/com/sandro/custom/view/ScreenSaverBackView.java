package com.sandro.custom.view;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.LinearLayout;

import com.sandro.ImageTrans.MainApp;
import com.sandro.ImageTrans.ScreenSaverReceiver;

public class ScreenSaverBackView extends LinearLayout{

	public ScreenSaverBackView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public ScreenSaverBackView(Context context) {
		super(context);
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event){
		final int action = event.getAction();
		final float x = event.getX();
		Log.i("ScreenSaverBackView", "onTouchEvent action : " + action + " ,x : " + x);
		switch (action) {
		case MotionEvent.ACTION_DOWN:
			
			break;
		case MotionEvent.ACTION_MOVE:
			
			break;
		case MotionEvent.ACTION_UP:
			Intent intent = new Intent();
			intent.setAction(ScreenSaverReceiver.ACTION_SCREEN_SAVER_CLOSE);// 发出自定义广播
			MainApp.getContext().sendBroadcast(intent);
			break;
		}		
		return super.onTouchEvent(event);
	}
}
