package com.tokener.picturebox;


/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content ����animation��˳ʱ���90��ת��0��
 */
public class CWNinetyDegreeFromNinety implements AnimationStrategy {

	private Rotation3DAnimation animate;

	@Override
	public Rotation3DAnimation createAnimation(float centerX, float centerY) {
		animate = new Rotation3DAnimation(90f, 0f, centerX, centerY, centerX,
				true, false);
		animate.setFillAfter(false);
		animate.setInterpolator(AnimationDatas.accelerateInterpolator);
		animate.setDuration(AnimationDatas.ANIMATION_DURATION_TWOPIC);
		return animate;
	}

}
