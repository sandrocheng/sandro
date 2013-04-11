package com.tencent.onesecurity.ui.customview.layout.booster;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

class DrawClass {
	public Paint mPaints;
	private RectF mRect;
	private int mStartAngle;
	private int mSeepAngle;

	public void init(float x, float y, float w, float h, int startAngle, int sweepAngle) {
		mStartAngle = startAngle;
		mSeepAngle = sweepAngle;

		mPaints = new Paint();
		mPaints.setAntiAlias(true);
		mPaints.setStyle(Paint.Style.FILL);

		mRect = new RectF(x, y, w, h);
	}

	public void setColor(int color) {
		mPaints.setColor(color);
	}

	public void draw(Canvas canvas) {
		canvas.drawArc(mRect, mStartAngle, mSeepAngle, true, mPaints);
	}
}