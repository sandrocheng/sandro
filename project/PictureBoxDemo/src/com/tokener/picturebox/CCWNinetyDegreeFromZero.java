package com.tokener.picturebox;


/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content ����animation����ʱ���0�ȵ�90��
 */
public class CCWNinetyDegreeFromZero implements AnimationStrategy {

	private Rotation3DAnimation animate;

	@Override
	public Rotation3DAnimation createAnimation(float centerX, float centerY) {
		animate = new Rotation3DAnimation(0f, 90f, centerX, centerY, 0f, false,
				false);
		animate.setFillAfter(true);
		animate.setInterpolator(AnimationDatas.accelerateInterpolator);
		animate.setDuration(AnimationDatas.ANIMATION_DURATION_ONEPIC);
		return animate;
	}

}
