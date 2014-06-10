package com.tokener.picturebox;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content 自定义animation
 */
public class Rotation3DAnimation extends Animation {
	/**
	 * 开始旋转的度数
	 */
	private float mFromDegrees;
	/**
	 * 要旋转到的度数
	 */
	private float mToDegrees;
	/**
	 * 以X轴上的坐标点为中心
	 */
	private float mCenterX;
	/**
	 * 以Y轴上的坐标点为中心
	 */
	private float mCenterY;
	/**
	 * Z轴上的点，记为深度
	 */
	private float mDepthZ;
	/**
	 * 是否要有平移效果
	 */
	private boolean mTranslateTag;
	/**
	 * 是否用相反的3D效果，暂未使用到
	 */
//	private boolean mReverse;
	/**
	 * camera
	 */
	private Camera mCamera;

	public Rotation3DAnimation(float fromDegrees, float toDegrees,
			float centerX, float centerY, float depthZ, boolean translateTag,
			boolean reverse) {
		this.mFromDegrees = fromDegrees;
		this.mToDegrees = toDegrees;
		this.mCenterX = centerX;
		this.mCenterY = centerY;
		this.mDepthZ = depthZ;
		this.mTranslateTag = translateTag;
		// this.mReverse = reverse;
	}

	@Override
	public void initialize(int width, int height, int parentWidth,
			int parentHeight) {
		super.initialize(width, height, parentWidth, parentHeight);
		this.mCamera = new Camera();
	}

	@Override
	protected void applyTransformation(float interpolatedTime, Transformation t) {
		final float fromDegrees = mFromDegrees;
		// interpolatedTime大于0，小于1，通过它得到每次要执行的角度
		float degrees = fromDegrees + (mToDegrees - fromDegrees)
				* interpolatedTime;

		final float centerX = mCenterX;
		final float centerY = mCenterY;
		// final Camera camera = mCamera;

		final Matrix matrix = t.getMatrix();

		// 保存camera的状态，这样就可以进行操作，"Saves the camera state. Each
		// save should be balanced with a call to restore()."
		mCamera.save();
		if (mTranslateTag) {
			// 指两张图片的平移
			if (degrees <= -150.0f) {// >150度的時候就让他消失
				degrees = -90.0f;
				mCamera.rotateY(degrees);
			} else if (degrees >= 75.0f) {
				degrees = 90.0f;
				mCamera.rotateY(degrees);
			} else {
				mCamera.translate(0, 0, mDepthZ); // 位移
				mCamera.rotateY(degrees);
				mCamera.translate(0, 0, -mDepthZ);
			}
		} else {
			// 一张图片的效果
			mCamera.rotateY(degrees);
		}
		// camera给matrix赋值，把新的数据赋值到里面
		mCamera.getMatrix(matrix);
		// "Restores the saved state, if any."返回到save时的状态。
		mCamera.restore();

		// 前乘原始矩阵。保证以centerX，centerY为中心
		matrix.preTranslate(-centerX, -centerY);
		// 后乘原始矩阵
		matrix.postTranslate(centerX, centerY);
	}
}
