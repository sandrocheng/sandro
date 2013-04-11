package com.tencent.onesecurity.ui.customview.layout.booster;

import android.view.View;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;

public class BoosterAnimationControl_Idle extends DrawAnimationControlBase{

	public BoosterAnimationControl_Idle(CartonEngine cartonEngine, View v,
			DrawAnimation draw, int type, DrawAnimationControlObsercer o) {
		super(cartonEngine, v, draw, type, o);
	}

	@Override
	public void start() {
		for(DrawClass dc : mDraw.mDrawArray){
			dc.setColor(BoosterAnimationUtil.COLOR[0]);
		}
		mV.invalidate();
		mObserver.animationDone(mType);
	}

	@Override
	public void stop() {

	}

	@Override
	public void init() {
		
	}

	@Override
	public int getAnimationIntervalTime() {
		return 0;
	}

	@Override
	protected boolean doAnimation() {
		return false;
	}

}
