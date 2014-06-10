package com.tokener.picturebox;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content ����animation����ʱ���90��ת��180��
 */
public class CCWNinetyDegreeFromNinety implements AnimationStrategy {

	private Rotation3DAnimation animate;

	@Override
	public Rotation3DAnimation createAnimation(float centerX, float centerY) {
		animate = new Rotation3DAnimation(90f, 180f, centerX, centerY, 0f,
				false, false);
		animate.setFillAfter(true);
		animate.setInterpolator(AnimationDatas.accelerateInterpolator);
		animate.setDuration(AnimationDatas.ANIMATION_DURATION_ONEPIC);
		return animate;
	}
}
