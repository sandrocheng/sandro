package com.tokener.picturebox;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content 定义animation，顺时针从0度转到-180度
 */
public class CWReverseFromZero implements AnimationStrategy {
	
	private Rotation3DAnimation animate;

	@Override
	public Rotation3DAnimation createAnimation(float centerX, float centerY) {
		animate = new Rotation3DAnimation(0f, -180f, centerX, centerY, centerX,
				true, false);
		animate.setFillAfter(true);
		animate.setInterpolator(AnimationDatas.accelerateInterpolator);
		animate.setDuration(AnimationDatas.ANIMATION_DURATION_TWOPIC);
		return animate;
	}

}
