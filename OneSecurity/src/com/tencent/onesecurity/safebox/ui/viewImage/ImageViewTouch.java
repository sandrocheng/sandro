package com.tencent.onesecurity.safebox.ui.viewImage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

/**
 * @ClassName: ImageViewTouch
 * @Description:负责单张Image的显示,包括放大,缩小,位移
 * @author: Matt
 * @date: 2012-11-07 15：55
 * 
 */
public class ImageViewTouch extends ImageViewTouchBase {
	GestureDetector mGestureDetector;
	protected float cx;
	protected float cy;
	protected boolean mIsEventUsed = false;
	private ScaleGestureDetector mScaleGestureDetector = null;

	public ImageViewTouch(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TODO Auto-generated constructor stub
		mGestureDetector = new GestureDetector(context, new MyGestureListener());
		mScaleGestureDetector = new ScaleGestureDetector(context,
				new ScaleGestureListener());
		// mGestureDetector = new GestureDetector(context, new
		// MyGestureListener(), null, true);

	}

	public boolean onTouch(MotionEvent event) {
		mGestureDetector.onTouchEvent(event);
		mScaleGestureDetector.onTouchEvent(event);
		if (event.getAction() == MotionEvent.ACTION_POINTER_1_UP
				|| event.getAction() == MotionEvent.ACTION_POINTER_2_UP) {
			mIsScaleStart = false;
		}
		if (event.getAction() == MotionEvent.ACTION_DOWN) {
			mIsEventUsed = true;
		}
		return mIsEventUsed;
	}

	protected boolean postTranslateCenter(float dx, float dy) {
		super.postTranslate(dx, dy);
		return center(true, true);
	}

	protected float mDistance = 0;

	private float mScale = 0;
	private float moveCenterX = 0;
	private float moveCenterY = 0;

	private boolean mIsScaleStart = false;

	public class ScaleGestureListener implements
			ScaleGestureDetector.OnScaleGestureListener {

		@Override
		public boolean onScale(ScaleGestureDetector detector) {
			// TODO Auto-generated method stub

			float distance = detector.getCurrentSpan();
			if (distance - mDistance < 1F && mDistance - distance < 1F)
				return true;
			float scale = getScale();

			cx = getWidth() / 2F;
			cy = getHeight() / 2F;
			// rabbiy修改增加最小值判断
			float fNowZoom = getScale(mDistance, distance);
			if (fNowZoom <= mMiniZoom) {
				return true;
			}
			if (fNowZoom >= mMaxZoom) {
				return true;
			}

			zoomToPoint(getScale(mDistance, distance),
					moveCenterX(mDistance, distance, scale),
					moveCenterY(mDistance, distance, scale));

			mIsEventUsed = true;
			return true;
		}

		@Override
		public boolean onScaleBegin(ScaleGestureDetector detector) {
			// TODO Auto-generated method stub
			moveCenterX = detector.getFocusX();
			moveCenterY = detector.getFocusY();
			mDistance = detector.getCurrentSpan();
			mScale = getScale();
			return true;
		}

		@Override
		public void onScaleEnd(ScaleGestureDetector detector) {
			// TODO Auto-generated method stub

		}

	}

	/*
	 * 图片二指操作处理函数
	 */
	protected boolean pictureZoom(MotionEvent e1, MotionEvent e2) {
		try {
			if (e2.getPointerCount() > 1) {
				if (mIsScaleStart == false) {
					mDistance = getDistance(e2);
					mScale = getScale();
					moveCenterX = zoomCenterX(e2);
					moveCenterY = zoomCenterY(e2);
					mIsScaleStart = true;
				} else {
					if (e1.getAction() == MotionEvent.ACTION_MOVE
							|| e2.getAction() == MotionEvent.ACTION_MOVE) {
						float distance = getDistance(e2);
						if (distance - mDistance < 1F
								&& mDistance - distance < 1F)
							return true;
						float scale = getScale();

						cx = getWidth() / 2F;
						cy = getHeight() / 2F;
						// rabbiy修改增加最小值判断
						float fNowZoom = getScale(mDistance, distance);
						if (fNowZoom <= mMiniZoom) {
							return true;
						}
						if (fNowZoom >= mMaxZoom) {
							return true;
						}

						zoomToPoint(getScale(mDistance, distance),
								moveCenterX(mDistance, distance, scale),
								moveCenterY(mDistance, distance, scale));
					}
				}
				mIsEventUsed = true;
				return true;
			}
		} catch (Exception ex) {

		} finally {

		}
		return false;
	}

	@Override
	public void notifyBitmap(boolean isBitmapNull) {
		// TODO Auto-generated method stub
		if (isBitmapNull == true) {

		}

	}

	/*
	 * 二指操作过程中，计算图片中心点x轴位移
	 */
	protected float moveCenterX(float before, float current, float oldScale) {

		if (getScale(before, current) >= mMaxZoom)
			return cx;
		float off = (cx - moveCenterX)
				* ((getScale(before, current) / oldScale - 1));
		return cx - off;
	}

	/*
	 * 二指操作过程中，计算图片中心点y轴位移
	 */
	protected float moveCenterY(float before, float current, float oldScale) {
		if (getScale(before, current) >= mMaxZoom)
			return cy;
		float off = (cy - moveCenterY)
				* ((getScale(before, current) / oldScale - 1));
		return cy - off;
	}

	/*
	 * 二指操作时,二指的中心点的x轴坐标
	 */
	protected float zoomCenterX(MotionEvent e2) {
		float e1x = e2.getX(0);
		float e2x = e2.getX(1);
		float x = Math.min(e1x, e2x);
		return Math.abs(e1x - e2x) / 2 + x;
	}

	/*
	 * 二指操作时,二指的中心点的y轴坐标
	 */
	protected float zoomCenterY(MotionEvent e2) {
		float e1y = e2.getY(0);
		float e2y = e2.getY(1);
		float x = Math.min(e1y, e2y);
		return Math.abs(e1y - e2y) / 2 + x;
	}

	/*
	 * 获取本次二指操作的图片放大倍数
	 */
	protected float getScale(float before, float current) {
		float offset = current - before;
		float sc = (before + offset) / before * mScale;
		return sc;
	}

	/*
	 * 二指间距离
	 */
	protected float getDistance(MotionEvent e2) {
		float e1x = e2.getX(0);
		float e1y = e2.getY(0);
		float e2x = e2.getX(1);
		float e2y = e2.getY(1);
		float m1 = Math.abs(e1x - e2x);
		float m2 = Math.abs(e1y - e2y);
		float distance = (float) Math.sqrt(m1 * m1 + m2 * m2);
		return distance;
	}

	/*
	 * 手势识别
	 */
	private class MyGestureListener extends
			GestureDetector.SimpleOnGestureListener {

		@Override
		public boolean onScroll(MotionEvent e1, MotionEvent e2,
				float distanceX, float distanceY) {

//			if (pictureZoom(e1, e2)) {
//				return true;
//			}

			if (getScale() > 1F) {
				mIsEventUsed = postTranslateCenter(-distanceX, -distanceY);
				return true;
			} else {
				mIsEventUsed = false;
			}

			return false;
		}

		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			return true;
		}

		@Override
		public boolean onSingleTapConfirmed(MotionEvent e) {
			return true;
		}

		@Override
		public boolean onDoubleTap(MotionEvent e) {
			// Switch between the original scale and 3x scale.
			if (getScale() >= mMaxZoom) {
				zoomTo(mMiniZoom);
			} else {
				zoomToPoint(mMaxZoom, e.getX(), e.getY());
			}
			return true;
		}
	}
}
