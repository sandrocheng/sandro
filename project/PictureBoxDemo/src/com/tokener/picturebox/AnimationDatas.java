package com.tokener.picturebox;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.CycleInterpolator;
import android.view.animation.DecelerateInterpolator;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content animation帮助类
 */
public class AnimationDatas {

	/**
	 * 动画的播放时间
	 */
	public final static int ANIMATION_DURATION_TWOPIC = 700;
	public final static int ANIMATION_DURATION_ONEPIC = 350;

	/**
	 * 动画的加速器
	 */
	public final static AccelerateInterpolator accelerateInterpolator = new AccelerateInterpolator();
	public final static DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
	public final static CycleInterpolator cycleInterpolator = new CycleInterpolator(
			0.5f);
	public final static AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
	
	
	public final static int TYPE_ROTATION_SELF = 1;
	public final static int TYPE_ROTATION_TWOPIC = 2;

	/**
	 * 把图片转成背面显示
	 */
	public static Bitmap symmetryPic(Bitmap bmp) {
		Matrix matrix = new Matrix();
		float[] values = { -1f, 0.0f, 0.0f, 0.0f, 1f, 0.0f, 0.0f, 0.0f, 1.0f };
		matrix.setValues(values);
		return Bitmap.createBitmap(bmp, 0, 0, bmp.getWidth(), bmp.getHeight(),
				matrix, true);
	}
}
