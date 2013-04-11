package com.tencent.onesecurity.deskassistance;

import com.tencent.onesecurity.R;

import android.content.Context;
import android.graphics.PixelFormat;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;



public class DeskAssistantTipWindow extends OnSuspendedViewTouch {
	public DeskAssistantTipWindow(Context context){
		super(context);
		mContext = context;
		
		//mConfigDao = DaoCreator.createConfigDao();
		
		LayoutInflater inflater = LayoutInflater.from(mContext);
		mMainLayout = inflater.inflate(R.layout.layout_desk_assistant_tip_window, null);
		addView(mMainLayout);
	}	
	private Context mContext;
	private View mMainLayout;
	private WindowManager.LayoutParams mLayoutParams;
	//private ConfigDao mConfigDao;
	
	public void initView() {
		intiParams();
		mMainLayout.setVisibility(View.VISIBLE);
	}

	private void intiParams() {
		if (mLayoutParams == null) {
			mLayoutParams = new WindowManager.LayoutParams();
			mLayoutParams.gravity = Gravity.LEFT | Gravity.TOP;
			mLayoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			mLayoutParams.format = PixelFormat.RGBA_8888;
			mLayoutParams.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
			mLayoutParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
//			mLayoutParams.alpha = (float) 0.8;
		}
	}
	
	@Override
	public WindowManager.LayoutParams getWindowLayoutParams(int x, int y) {
		mLayoutParams.x = x;
		mLayoutParams.x -= 174;
		mLayoutParams.y = y;
		mLayoutParams.y -= 120;
		return mLayoutParams;
	}
	
	@Override
	public void saveLocation(int left, int top) {
	}
	
	@Override
	public void changeViewSide(int side){
	}
};
