package com.tencent.livebackground.animation;

import java.util.LinkedList;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.os.SystemClock;

import com.tencent.livebackground.util.Recyclable;
import com.tencent.livebackground.util.SpringDynamics;

public class ParticleRenderer implements Renderer, Recyclable {

	private static final LinkedList<ParticleRenderer> mRecycleStack = new LinkedList<ParticleRenderer>();
	private RectF mCurrentRect;
	private final SpringDynamics mDynamicsLeft = new SpringDynamics();
	private final SpringDynamics mDynamicsTop = new SpringDynamics();
	private SpringDynamics mDynamicsZ;
	private SpringDynamics mAlphaDynamics;
	private Paint mPaint;

	private ParticleRenderer() {
		mPaint = new Paint();
		mCurrentRect = new RectF();
		mDynamicsZ = new SpringDynamics();
		mDynamicsZ.setSpring(50F, 1.0F);
		mAlphaDynamics = new SpringDynamics();
		mAlphaDynamics.setSpring(50F, 1.0F);
	}

	public void setScale(float scale) {
		mDynamicsZ.setState(scale, 0.0F, 0);
	}
	
	public void setAlpha(float alpha) {
		mAlphaDynamics.setState(alpha, 0.0F, 0);
	}
	
	private void drawView(Bitmap bitmap, Canvas canvas, RectF rectf,
			float zFactor) {
		if (bitmap != null && !bitmap.isRecycled()) {
			Paint paint = mPaint;
			canvas.save();
			canvas.translate(rectf.left, rectf.top);
			float zPosition = mDynamicsZ.getPosition();
			canvas.scale(zPosition, zPosition);
			paint.setAlpha((int)mAlphaDynamics.getPosition());
			canvas.drawBitmap(bitmap, 0, 0, paint);
			canvas.restore();
		}
	}

	public static ParticleRenderer obtain() {
		if (!mRecycleStack.isEmpty())
			return (ParticleRenderer) mRecycleStack.removeLast();
		else
			return new ParticleRenderer();
	}

	private float update(Rect rect, long timeMillis) {
		mDynamicsZ.update(timeMillis);
		mAlphaDynamics.update(timeMillis);
		float zPosition = mDynamicsZ.getPosition();
		if (zPosition < 0.0F)
			zPosition = -zPosition;
		mDynamicsLeft.update(timeMillis);
		mDynamicsTop.update(timeMillis);
		return zPosition;
	}

	public boolean draw(Bitmap bitmap, Canvas canvas, Rect rect, long timeMillis) {
		float f = update(rect, timeMillis);
		int offsetX = (int)mDynamicsLeft.getPosition();
		int offsetY = (int)mDynamicsTop.getPosition();
		if(Math.abs(offsetX) > 1000 || Math.abs(offsetY) > 1000) {
			offsetX = 1000;
			offsetY = 1000;
		}
		mCurrentRect.offsetTo(mDynamicsLeft.getPosition(),
				mDynamicsTop.getPosition());
		drawView(bitmap, canvas, mCurrentRect, f);
		return !mDynamicsLeft.isAtRest(1.0F, 1F)
				|| !mDynamicsTop.isAtRest(1.0F, 1F);
	}

	public void getCurrentRect(Rect rect) {
		if (rect != null) {
			rect.left = (int) mCurrentRect.left;
			rect.right = (int) mCurrentRect.right;
			rect.top = (int) mCurrentRect.top;
			rect.bottom = (int) mCurrentRect.bottom;
		}
	}

	public void offset(int dx, int dy, long timeMillis) {
		mCurrentRect.offset(dx, dy);
		mDynamicsLeft.setState(mDynamicsLeft.getPosition() + (float) dx,
				mDynamicsLeft.getVelocity(), timeMillis);
		mDynamicsTop.setState(mDynamicsTop.getPosition() + (float) dy,
				mDynamicsTop.getVelocity(), timeMillis);
	}

	public void recycle() {
		mRecycleStack.addLast(this);
	}

	public void sendCommand(String command, int x, int y, Bundle extras) {
		if (command.equals("stop")) {
			mDynamicsZ.setMaxPosition(0.0F);
			mDynamicsZ.setMinPosition(0.0F);
			mDynamicsZ.setSpring(600F, 0.85F);
			mDynamicsZ.setState(mDynamicsZ.getPosition(), 60F,
					SystemClock.uptimeMillis());
			mDynamicsLeft.setSpring(400F, 0.9F);
			mDynamicsTop.setSpring(400F, 0.9F);
		}
	}

	public void start(Rect rect, int targetX, int targetY, float toScale, float toAlpha, long timeMillis) {
		
		if(Math.abs(targetX) > 1000 || Math.abs(targetY) > 1000) {
			targetX = 1000;
			targetY = 1000;
		}
		mCurrentRect.set(rect);
		mDynamicsLeft.setState(rect.left, 0.0F, timeMillis);
		mDynamicsLeft.setMaxPosition(targetX);
		mDynamicsLeft.setMinPosition(targetX);
		mDynamicsTop.setState(rect.top, 0.0F, timeMillis);
		mDynamicsTop.setMaxPosition(targetY);
		mDynamicsTop.setMinPosition(targetY);
		mDynamicsLeft.setSpring(50F, 1.2F);
		mDynamicsTop.setSpring(50F, 1.2F);
		mDynamicsZ.setState(mDynamicsZ.getPosition(), 0.0F, timeMillis);
		mDynamicsZ.setMaxPosition(toScale);
		mDynamicsZ.setMinPosition(toScale);
		mDynamicsZ.setSpring(10F, 1.0F);
		
		mAlphaDynamics.setState(mAlphaDynamics.getPosition(), 0.0F, timeMillis);
		mAlphaDynamics.setMaxPosition(toAlpha);
		mAlphaDynamics.setMinPosition(toAlpha);
		mAlphaDynamics.setSpring(50F, 1.0F);
	}
}
