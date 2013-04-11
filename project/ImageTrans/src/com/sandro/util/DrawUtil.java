package com.sandro.util;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

public class DrawUtil {
	public Paint mPaints;
	private RectF mRect;	
	private int mStartAngle;
	private int mSeepAngle;
	public void init(int x, int y, int w, int h, int startAngle, int sweepAngle){
		mStartAngle = startAngle;
		mSeepAngle = sweepAngle;
		mPaints = new Paint();
        mPaints.setAntiAlias(true);
        mPaints.setStyle(Paint.Style.FILL);
        mRect = new RectF(0, 
        		0, 
        		(float)(300* DeviceUtil.getDeviceDensity()/1.5 ), 
        		(float)(300* DeviceUtil.getDeviceDensity()/1.5 ));
	}
	
	public void setColor(int color){
		mPaints.setColor(color);
	}
	
	public void draw(Canvas canvas){
        canvas.drawArc(mRect, mStartAngle, mSeepAngle, true, mPaints);	
	}
}
