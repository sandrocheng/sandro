package com.tokener.picturebox;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content �Զ���animation
 */
public class Rotation3DAnimation extends Animation {
	/**
	 * ��ʼ��ת�Ķ���
	 */
	private float mFromDegrees;
	/**
	 * Ҫ��ת���Ķ���
	 */
	private float mToDegrees;
	/**
	 * ��X���ϵ������Ϊ����
	 */
	private float mCenterX;
	/**
	 * ��Y���ϵ������Ϊ����
	 */
	private float mCenterY;
	/**
	 * Z���ϵĵ㣬��Ϊ���
	 */
	private float mDepthZ;
	/**
	 * �Ƿ�Ҫ��ƽ��Ч��
	 */
	private boolean mTranslateTag;
	/**
	 * �Ƿ����෴��3DЧ������δʹ�õ�
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
		// interpolatedTime����0��С��1��ͨ�����õ�ÿ��Ҫִ�еĽǶ�
		float degrees = fromDegrees + (mToDegrees - fromDegrees)
				* interpolatedTime;

		final float centerX = mCenterX;
		final float centerY = mCenterY;
		// final Camera camera = mCamera;

		final Matrix matrix = t.getMatrix();

		// ����camera��״̬�������Ϳ��Խ��в�����"Saves the camera state. Each
		// save should be balanced with a call to restore()."
		mCamera.save();
		if (mTranslateTag) {
			// ָ����ͼƬ��ƽ��
			if (degrees <= -150.0f) {// >150�ȵĕr���������ʧ
				degrees = -90.0f;
				mCamera.rotateY(degrees);
			} else if (degrees >= 75.0f) {
				degrees = 90.0f;
				mCamera.rotateY(degrees);
			} else {
				mCamera.translate(0, 0, mDepthZ); // λ��
				mCamera.rotateY(degrees);
				mCamera.translate(0, 0, -mDepthZ);
			}
		} else {
			// һ��ͼƬ��Ч��
			mCamera.rotateY(degrees);
		}
		// camera��matrix��ֵ�����µ����ݸ�ֵ������
		mCamera.getMatrix(matrix);
		// "Restores the saved state, if any."���ص�saveʱ��״̬��
		mCamera.restore();

		// ǰ��ԭʼ���󡣱�֤��centerX��centerYΪ����
		matrix.preTranslate(-centerX, -centerY);
		// ���ԭʼ����
		matrix.postTranslate(centerX, centerY);
	}
}
