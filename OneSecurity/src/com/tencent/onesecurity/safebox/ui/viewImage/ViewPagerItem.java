package com.tencent.onesecurity.safebox.ui.viewImage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;

import com.tencent.onesecurity.R;
/**
 * @ClassName: ViewPagerItem
 * @Description:单个图片显示用View,包括图片的显示以及图片读取中的视图
 * @author: Matt
 * @date: 2012-11-07 15：55
 * 
 */
public class ViewPagerItem extends RelativeLayout{
	private ImageViewTouch mImageView;
	private ProgressBar mLoadingProgressBar;
	private RotateBitmap m4Rotate;
	
	public RotateBitmap getM4Rotate() {
		return m4Rotate;
	}


	public void setM4Rotate(RotateBitmap m4Rotate) {
		this.m4Rotate = m4Rotate;
	}


	public ViewPagerItem(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
	}

	
	public void init(){
		if(mImageView == null || mLoadingProgressBar == null){
			mImageView = (ImageViewTouch)findViewById(R.id.imageViewTouch);
			mLoadingProgressBar = (ProgressBar)findViewById(R.id.loadingProgressBar);
		}
	}
	public void setImageRotateBitmapResetBase(RotateBitmap rotateBitmap,
			boolean b) {
		init();
		// TODO Auto-generated method stub
		mImageView.setImageRotateBitmapResetBase(rotateBitmap, b);
		if(rotateBitmap.getBitmap() != null){
			m4Rotate = rotateBitmap;
			mImageView.setVisibility(View.VISIBLE);
			mLoadingProgressBar.setVisibility(View.GONE);
		}else{
			mImageView.setVisibility(View.GONE);
			mLoadingProgressBar.setVisibility(View.VISIBLE);			
		}
		
	}
	public boolean onTouch(MotionEvent event) {
		// TODO Auto-generated method stub
		init();
		return mImageView.onTouch(event);
	}
	
	public void setProgressBarVisibility(boolean isVisibility){
		if(isVisibility){
			mLoadingProgressBar.setVisibility(View.VISIBLE);
		}else{
			mLoadingProgressBar.setVisibility(View.GONE);
		}
	}








}
