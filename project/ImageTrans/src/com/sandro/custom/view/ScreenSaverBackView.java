package com.sandro.custom.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

import com.sandro.mamanger.TouchListener;

public class ScreenSaverBackView extends LinearLayout{

	private TouchListener listener;
	
	public ScreenSaverBackView(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public ScreenSaverBackView(Context context) {
		super(context);
	}
	
	public void registTouchListener(TouchListener listener){
		this.listener = listener; 
	}
	
	public void unRegistTouchListener(){
		this.listener = null;
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event){
		if(this.listener!=null){
			listener.onBackViewTouch(event);
		}		
		return super.onTouchEvent(event);
	}
}
