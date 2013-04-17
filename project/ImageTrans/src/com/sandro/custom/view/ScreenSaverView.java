package com.sandro.custom.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;

/**
 * 屏保view
 * @author sandrocheng
 *
 */
public class ScreenSaverView extends FrameLayout{
	
	/**
	 * 记录上一次触点的x坐标
	 */
//	private float mLastMotionX; 
	
//	private ImageView iv;
	
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
//		if(iv == null){
//			iv = (ImageView)this.findViewById(R.id.iv_content);			
//		}
	}

	private void init(Context context){
	}

}
