package com.tencent.livebackground.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Xfermode;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;

import com.tencent.livebackground.animation.ProgressAnimation;
import com.tencent.livebackground.util.RectPool;

public class ProgressView extends ImageView {
	private Paint mPaint;
	private Paint mTextPaint;
	private Rect mBigOval;
	public float mCurProgress;
	public float mMarginRatio;
	private int m_width;
	private int m_height;
	private int mForegroundColor;
	private int mBackgroundColor;
	private ProgressAnimation mCurrentAnimation = null;
	private int mBoundMargin;
	Transformation mTransformation = new Transformation();

	public ProgressView(Context context) {
		super(context);
		this.initView();
	}

	public ProgressView(Context context, AttributeSet attrs) {
		super(context, attrs);
		// TypedArray a = context.obtainStyledAttributes(attrs,
		// R.styleable.RingView);
		// mCurDegrees = a.getFloat(R.styleable.RingView_ringDegrees, 0.0f);
		// mForeRingColor = a.getColor(R.styleable.RingView_foreRingColor,
		// Color.WHITE);
		// mBackRingColor = a.getColor(R.styleable.RingView_backRingColor,
		// Color.GRAY);
		// mRingRadiusRatio = a.getFloat(R.styleable.RingView_ringRadiusRatio,
		// 0.8f);
		// mRingWidthRatio = a
		// .getFloat(R.styleable.RingView_ringWidthRatio, 0.13f);
		mCurProgress = 0.3f;
		mForegroundColor = 0xff71cefa;
		mBackgroundColor = 0xff26559b;
		mMarginRatio = 0.0f;

		mTextPaint = new Paint();
		mTextPaint.setColor(Color.rgb(27, 66, 125));
		mTextPaint.setTextSize(24);
		mTextPaint.setAntiAlias(true);
		mTextPaint.setTextAlign(Align.CENTER);

		// a.recycle();
		this.initView();
	}

	public void initView() {
		mPaint = new Paint();
		mPaint.setAntiAlias(true);

		mBigOval = new Rect(20, 20, 180, 180);
	}

	@Override
	public void setEnabled(boolean enabled) {
		// TODO Auto-generated method stub
		super.setEnabled(enabled);
		if (enabled) {
			mTextPaint.setColor(Color.rgb(27, 66, 125));
		} else {
			mTextPaint.setColor(Color.GRAY);
		}
	}

	public void setAnimation(Animation animation) {
		mCurrentAnimation = (ProgressAnimation) animation;
		if (animation != null) {
			animation.reset();
		}
	}

	@Override
	public void startAnimation(Animation animation) {
		animation.setStartTime(Animation.START_ON_FIRST_FRAME);
		setAnimation(animation);
		invalidate();
	}

	private void drawProgress(Canvas canvas, Rect oval, Paint paint) {
		Rect rect = RectPool.obtainRect();
		rect.set(oval);
		canvas.save();
		paint.setColor(mBackgroundColor);
		canvas.drawRect(rect, paint);
		int drawForeRingColor;
		drawForeRingColor = mForegroundColor;
		
		Xfermode xFermode = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
		paint.setXfermode(xFermode);
		paint.setColor(drawForeRingColor);
		rect.right = (int) (this.mCurProgress * oval.width());
		canvas.drawRect(rect, paint);
		paint.setXfermode(null);
		canvas.restore();
		RectPool.recycleRect(rect);
	}

	@Override
	protected void onDraw(Canvas canvas) {
		long curTime = SystemClock.uptimeMillis();

		if (mCurrentAnimation == null) {
			drawProgress(canvas, mBigOval, mPaint);
		}

		else {

			if (!mCurrentAnimation.isInitialized()) { // initialize animation
				mCurrentAnimation
						.initialize(m_width, m_width, m_width, m_width);
			}
			boolean more = mCurrentAnimation.getTransformation(curTime,
					mTransformation);

			if (more) {
				float f[] = { 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F,
						0.0F };
				mTransformation.getMatrix().getValues(f);

				mCurProgress = f[0];
				drawProgress(canvas, mBigOval, mPaint);
				this.invalidate();
			} else {
				mCurrentAnimation = null;
				drawProgress(canvas, mBigOval, mPaint);
			}
		}
		super.onDraw(canvas);
	}

	public void setProgress(float progress) {
		mCurProgress = progress;
		this.invalidate();
	}

	public float getCurProgress() {
		return mCurProgress;
	}

	@Override
	protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
		super.onMeasure(widthMeasureSpec, heightMeasureSpec);
		m_width = MeasureSpec.getSize(widthMeasureSpec);
		m_height = MeasureSpec.getSize(heightMeasureSpec);
		mBoundMargin = (int)(m_width*mMarginRatio);
		mBigOval.set(mBoundMargin, mBoundMargin, m_width - mBoundMargin, m_height-mBoundMargin);
		this.invalidate();
	}
}
