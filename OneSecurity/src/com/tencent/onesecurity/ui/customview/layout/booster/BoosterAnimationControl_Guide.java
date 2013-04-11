package com.tencent.onesecurity.ui.customview.layout.booster;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;

import android.view.View;

public class BoosterAnimationControl_Guide extends DrawAnimationControlBase {
	private int mCurrentIndex;
	
	public BoosterAnimationControl_Guide(CartonEngine cartonEngine, View v, DrawAnimation draw, int type,
			DrawAnimationControlObsercer o) {
		super(cartonEngine, v, draw, type, o);
	}

	@Override
	public void init() {
		for (DrawClass d : mDraw.mDrawArray) {
			d.setColor(android.R.color.transparent);
		}
		mCurrentIndex = 0;
	}

	@Override
	public int getAnimationIntervalTime() {
		return 4;
	}

	@Override
	protected boolean doAnimation() {
		mObserver.animationStep(mType, mCurrentIndex);
		mDraw.mDrawArray.get(mCurrentIndex).setColor(BoosterAnimationUtil.COLOR[mCurrentIndex]);
		mCurrentIndex++;
		mCurrentIndex = mCurrentIndex % BoosterAnimationUtil.SECTOR_COUNT;
		if (mCurrentIndex == 0) {
			return false;
		}
		return true;
	}
}
