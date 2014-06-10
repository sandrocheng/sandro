package com.tokener.picturebox;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content 自定义ViewGroup，用来播放动画
 */
public class PicturePlayerViewGroup extends RelativeLayout {

	private ImageView image1;
	private ImageView image2;

	/** 动画翻转的中心点坐标 */
	private float mCenterX;
	private float mCenterY;

	/** 回调接口，动画播放完时执行animationEnd()方法 */
	private EndCallBack endListener;
	private Bitmap bitmap1;
	private Bitmap bitmap2;

	private Rotation3DAnimation animation1, animation2, animation3, animation4;

	private AnimationEnvironment aEnvironment;

	public PicturePlayerViewGroup(Context context, AttributeSet attrs) {
		super(context, attrs);
		initAnimation(context); // 初始化动画
		initView(context, attrs); // 初始化View
	}

	private void initView(Context context, AttributeSet attrs) {
		image1 = new ImageView(context);
		image2 = new ImageView(context);
		RelativeLayout.LayoutParams imageLayoutParams = new RelativeLayout.LayoutParams(
				context, attrs);
		imageLayoutParams.width = LayoutParams.MATCH_PARENT;
		imageLayoutParams.height = LayoutParams.WRAP_CONTENT;
		imageLayoutParams.addRule(RelativeLayout.CENTER_IN_PARENT);
		this.addView(image1, imageLayoutParams);
		this.addView(image2, imageLayoutParams);
		image2.setVisibility(GONE);
	}

	private void setImage1Content(Bitmap bitmap1) {
		image2.setVisibility(GONE);
		image1.setImageBitmap(bitmap1);
	}

	private void setImage2Content(Bitmap bitmap1, Bitmap bitmap2) {
		image1.setImageBitmap(bitmap1);
		image2.setImageBitmap(bitmap2);
		image2.setVisibility(GONE);
	}

	/**
	 * bitmap1,bitmap2 :要播放动画的图片; playType :播放动画的类型; endlistener :播放完毕的回调接口
	 */
	public void startPlay(Bitmap bitmap1, Bitmap bitmap2, int playType,
			EndCallBack endListener) {

		this.endListener = endListener;
		this.bitmap1 = bitmap1;
		this.bitmap2 = bitmap2;

		switch (playType) {
		case AnimationDatas.TYPE_ROTATION_SELF:
			RotationSelf();
			break;
		case AnimationDatas.ANIMATION_DURATION_TWOPIC:
			RotationTwoPic();
			break;
		default:
			break;
		}
	}

	private void RotationSelf() {
		setImage1Content(bitmap1);
		image1.startAnimation(animation1);
	}

	private void RotationTwoPic() {
		setImage2Content(bitmap1, bitmap2);
		image1.startAnimation(animation3);
		image2.startAnimation(animation4);
	}

	private void initAnimation(Context context) {
		DisplayMetrics dm = new DisplayMetrics();
		dm = context.getResources().getDisplayMetrics();
		mCenterX = dm.widthPixels >> 1;
		mCenterY = dm.heightPixels >> 1;

		aEnvironment = new AnimationEnvironment();
		aEnvironment.setaStrategy(new CCWNinetyDegreeFromZero());
		animation1 = aEnvironment.getAnimation(mCenterX, mCenterY);
		aEnvironment.setaStrategy(new CCWNinetyDegreeFromNinety());
		animation2 = aEnvironment.getAnimation(mCenterX, mCenterY);
		aEnvironment.setaStrategy(new CWReverseFromZero());
		animation3 = aEnvironment.getAnimation(mCenterX, mCenterY);
		aEnvironment.setaStrategy(new CWNinetyDegreeFromNinety());
		animation4 = aEnvironment.getAnimation(mCenterX, mCenterY);

		animation1.setAnimationListener(RotateSelfListener);
		animation2.setAnimationListener(RotateSelfListener2);
		animation3.setAnimationListener(turnToLeftListener);
	}

	private AnimationListener RotateSelfListener = new AnimationListener() {

		@Override
		public void onAnimationStart(Animation animation) {
			image2.setVisibility(GONE);
		}

		@Override
		public void onAnimationRepeat(Animation animation) {

		}

		@Override
		public void onAnimationEnd(Animation animation) {
			Bitmap curBitmap = AnimationDatas.symmetryPic(bitmap2);
			setImage1Content(curBitmap);
			image1.startAnimation(animation2);
		}
	};
	private AnimationListener RotateSelfListener2 = new AnimationListener() {

		@Override
		public void onAnimationStart(Animation animation) {

		}

		@Override
		public void onAnimationRepeat(Animation animation) {

		}

		@Override
		public void onAnimationEnd(Animation animation) {
			endListener.AnimationEnd();
		}
	};

	private AnimationListener turnToLeftListener = new AnimationListener() {

		@Override
		public void onAnimationStart(Animation animation) {
			image2.setVisibility(VISIBLE);
		}

		@Override
		public void onAnimationRepeat(Animation animation) {

		}

		@Override
		public void onAnimationEnd(Animation animation) {
			endListener.AnimationEnd();
		}
	};

}
