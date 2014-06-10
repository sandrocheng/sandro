package com.tokener.picturebox;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content 动画策略类接口
 */
public interface AnimationStrategy {
	
	public Rotation3DAnimation createAnimation(float centerX, float centerY);

}
