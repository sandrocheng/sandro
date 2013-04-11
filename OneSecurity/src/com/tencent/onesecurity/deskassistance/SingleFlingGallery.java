package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Gallery;

public class SingleFlingGallery extends Gallery {
	
	public SingleFlingGallery(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public SingleFlingGallery(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public SingleFlingGallery(Context context) {
		super(context);
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		return super.onFling(e1, e2, 0, velocityY);
	}
	
	public void disableDragSlip(){
		setOnTouchListener(new OnTouchListener() {  
		    @Override  
		    public boolean onTouch(View v, MotionEvent event) {  
		        if(event.getAction() == MotionEvent.ACTION_MOVE){  
		            return true;  
		        }  
		        return false;  
		    }  
		});  
	}
}
