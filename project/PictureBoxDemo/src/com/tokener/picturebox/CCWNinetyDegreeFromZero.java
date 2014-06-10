package com.tokener.picturebox;


/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content 定义animation，逆时针从0度到90度
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
