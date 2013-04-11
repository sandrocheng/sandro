package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ImageView.ScaleType;

import com.tencent.onesecurity.R;



/**
 *  小型进度条，中间那条彩色的东东
 * @author junmingluo
 *
 */
public class MiniProgressBar extends LinearLayout{
	/**
	 *  当前进度
	 */
	private int mCurrentProgress;
	
	/**
	 *  切割圆角用的
	 */
//	private Path mPath = new Path();
	private ImageView mView;
	private LayoutParams mLayoutParams;
	public MiniProgressBar(Context context) {
		super(context);
		initView(context);
	}
	
	public MiniProgressBar(Context context, AttributeSet attrs) {
		super(context, attrs);
		initView(context);
	}

	private void initView(Context context) {
		mView = new ImageView(context);
		mView.setImageResource(R.drawable.desktop_progress);
		mLayoutParams = new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		mView.setScaleType(ScaleType.FIT_XY);
		addView(mView, mLayoutParams);
	}
	
	/**
	 *  设置进度
	 * @param progress
	 */
	public void setProgress(int progress) {
		mCurrentProgress = progress;
		this.invalidate();
	}
	
	@Override
	protected void dispatchDraw(Canvas canvas) {
		cutCanvas(canvas);
		super.dispatchDraw(canvas);
	}

	private void cutCanvas(Canvas canvas) {
//		canvas.setDrawFilter(new PaintFlagsDrawFilter(0, Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG));
//		int height = getHeight();
//		int r = height / 2;
		int width = ( mCurrentProgress * getWidth() )/ 100;
		mLayoutParams.width = width;
		mView.setLayoutParams(mLayoutParams);
//		mPath.reset();
//		mPath.moveTo(0, 0);
//		mPath.lineTo(width - r, 0);
//		RectF rect = new RectF(width - height, 0, width, height);
//		mPath.arcTo(rect, -90, 180);
//		mPath.lineTo(0, height);
//		mPath.close();
//
//		canvas.clipPath(mPath);
//		canvas.save();
	}
}
