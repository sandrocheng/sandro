package com.tokener.picturebox;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content animationª∑æ≥¿‡
 */
public class AnimationEnvironment {

	private AnimationStrategy aStrategy;

	public AnimationEnvironment() {
	}
	
	public AnimationEnvironment(AnimationStrategy aStrategy) {
		this.aStrategy = aStrategy;
	}

	public void setaStrategy(AnimationStrategy aStrategy) {
		this.aStrategy = aStrategy;
	}

	public Rotation3DAnimation getAnimation(float centerX, float centerY) {
		
		return aStrategy.createAnimation(centerX, centerY);
	}

}
