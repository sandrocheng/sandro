package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Message;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.tencent.onesecurity.R;


public class SuspendWhirlPoolView extends LinearLayout {
	private Context mContext;

	// 界面上的view
	private FrameLayout mLean;
	private ImageView mSlashImg;
	private ImageView mSlashImg2;
	private ImageView mHighSmokeImg;
	private ImageView mLowSmokeImg;
	private AnimationDrawable animationDrawableS;
	private OnRocketMoveListener mListener;
	private final int KStartGif = 0x01;
	private Handler mHandler = new Handler() {

		public void handleMessage(Message msg) {
			switch (msg.what){
				case KStartGif:{
					if(!animationDrawableS.isRunning()) {
						animationDrawableS.setAlpha(255);
						animationDrawableS.start();
					}
					break;
				}
			}
		}
	};

	public SuspendWhirlPoolView(Context context, OnRocketMoveListener listener) {
		super(context);
		mListener = listener;
		mContext = context;
		LayoutInflater inflater = LayoutInflater.from(mContext);
		mLean = (FrameLayout) inflater.inflate(R.layout.layout_whirlpool, null);

		LinearLayout.LayoutParams param = new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
		addView(mLean, param);
		mSlashImg = (ImageView) mLean.findViewById(R.id.whirlpool);
		mSlashImg2 = (ImageView) mLean.findViewById(R.id.whirlpoolStat2);
		mLowSmokeImg = (ImageView) mLean.findViewById(R.id.smoke_down);
		mLowSmokeImg.setVisibility(View.GONE);
		mHighSmokeImg = (ImageView) mLean.findViewById(R.id.smoke_up);
		mHighSmokeImg.setVisibility(View.GONE);
		animationDrawableS = (AnimationDrawable) mSlashImg.getBackground();
	}
 
	public void onAnimationDone() {
		// 停止动画播放
		if (animationDrawableS.isRunning()) {
			animationDrawableS.stop();
		}
		if (mListener != null) {
			mListener.onAnimationDone();
		}
	}
	
	public void reset(){
		mSlashImg.setVisibility(View.INVISIBLE);
		mSlashImg2.setVisibility(View.INVISIBLE);		
	}

	/**
	 * 启动或者消失动画
	 * @param isMove
	 */
	public void poolAnimate(boolean isMove, boolean isIn) {
		// 动画是否正在运行
		if (isMove) {
			// 开始或者继续动画播放
			if(isIn) {
				if (animationDrawableS.isRunning()) {
					animationDrawableS.stop();
					//之所以设为透明，是因为设置为不可见会有bug
					animationDrawableS.setAlpha(0);
				}
				mSlashImg2.setVisibility(VISIBLE);
			} else {
				mSlashImg2.setVisibility(INVISIBLE);
				mSlashImg.setVisibility(VISIBLE);
				mHandler.sendEmptyMessage(KStartGif);
			}
		} else {
			// 淡化云彩和圈圈

			mSlashImg.setVisibility(View.INVISIBLE);
			mSlashImg2.setVisibility(View.INVISIBLE);
			startDelay();

		}
	}

	/**
	 * 延时，烟雾效果延迟，顺便屏蔽bug
	 */
	private void startDelay() {
		int mDuration = 100;

		Animation nullAnimation = new AlphaAnimation(1f, 1f);
		nullAnimation.setFillAfter(true);
		nullAnimation.setDuration(mDuration);
		nullAnimation.setAnimationListener(new AnimationListener() {

			@Override
			public void onAnimationStart(Animation animation) {
				
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				
				mLowSmokeImg.setVisibility(View.VISIBLE);
				mHighSmokeImg.setVisibility(View.VISIBLE);
				setUp();
				
			}
		});
		mLean.startAnimation(nullAnimation);
		
	}

	/**
	 * 开始正式的动画
	 */
	private void setUp() {
		//烟雾消退的动画
		int mDuration = 3000;

		
		Animation alphaAnimation = new AlphaAnimation(1f, 0f);
		alphaAnimation.setFillAfter(true);
		alphaAnimation.setDuration(mDuration);
		alphaAnimation.setAnimationListener(new AnimationListener() {

			@Override
			public void onAnimationStart(Animation animation) {
				if (animationDrawableS.isRunning()) {
					animationDrawableS.stop();
				}
				mSlashImg.setVisibility(View.INVISIBLE);
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				onAnimationDone();
			}
		});
		mLean.startAnimation(alphaAnimation);
		
				
		//烟雾拉伸的动画
		Animation scaleLongAnimation = new ScaleAnimation(1, 1, 0, 1, 
				Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 1);
		scaleLongAnimation.setDuration(500); 
		scaleLongAnimation.setAnimationListener(new AnimationListener() {

			@Override
			public void onAnimationEnd(Animation animation) {
				startScaleShortAnimation();
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
				
			}

			@Override
			public void onAnimationStart(Animation animation) {
				if (animationDrawableS.isRunning()) {
					animationDrawableS.stop();
				}
				mSlashImg.setVisibility(View.INVISIBLE);
			}
			
		});
		
		mHighSmokeImg.startAnimation(scaleLongAnimation);
	}
	
	/**
	 * 烟雾消退时高烟变低烟
	 */
	private void startScaleShortAnimation() {
		
		Animation scaleShortAnimation = new ScaleAnimation(1, 1, 1, 0.8f, 
				Animation.RELATIVE_TO_SELF, 0, Animation.RELATIVE_TO_SELF, 1);
		scaleShortAnimation.setDuration(2500); 
		scaleShortAnimation.setAnimationListener(new AnimationListener() {

			@Override
			public void onAnimationEnd(Animation animation) {
				
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
				
			}

			@Override
			public void onAnimationStart(Animation animation) {
				if (animationDrawableS.isRunning()) {
					animationDrawableS.stop();
				}
				mSlashImg.setVisibility(View.INVISIBLE);
			}
			
		});
		
		mHighSmokeImg.startAnimation(scaleShortAnimation);
	}
	
	public WindowManager.LayoutParams getParams() {
		Rect frame = new Rect();
		getWindowVisibleDisplayFrame(frame);
		SuspessionParams.wmWhirlPoolParams = new WindowManager.LayoutParams();
		SuspessionParams.wmWhirlPoolParams.copyFrom(SuspessionParams.wmBaseParams);
		SuspessionParams.wmWhirlPoolParams.gravity = Gravity.CENTER_HORIZONTAL;
		SuspessionParams.wmWhirlPoolParams.y = (int) (frame.bottom * 0.8);
		SuspessionParams.wmWhirlPoolParams.type = 2002;
		return SuspessionParams.wmWhirlPoolParams;
	}

	public WindowManager.LayoutParams getParamXY() {
		Rect frame = new Rect();
		getWindowVisibleDisplayFrame(frame);
		SuspessionParams.wmWhirlPoolParams.x = (int) (frame.right * 0.5 - mSlashImg.getWidth() * 0.5);
		return SuspessionParams.wmWhirlPoolParams;
	}
}