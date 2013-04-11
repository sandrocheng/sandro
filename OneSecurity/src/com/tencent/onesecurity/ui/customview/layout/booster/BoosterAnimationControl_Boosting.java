package com.tencent.onesecurity.ui.customview.layout.booster;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;

import android.view.View;

public class BoosterAnimationControl_Boosting extends DrawAnimationControlBase{
	static public int BOOT_COMPLETE = -1;
	private int mCurrentIndex = 0;
	private boolean mIsBootComplete = false;
	private int mTimer;
	private final int[] INTERVALTIME = {4, 4, 3, 3, 2, 2, 1};
	public BoosterAnimationControl_Boosting(CartonEngine cartonEngine, View v, DrawAnimation draw,
			int type, DrawAnimationControlObsercer o) {
		super(cartonEngine, v, draw, type, o);
	}

	@Override
	public void init() {
		mCurrentIndex = 0;
		mTimer = 0;
		mIsBootComplete = false;
	}

	@Override
	public int getAnimationIntervalTime() {
		int ret = INTERVALTIME[mTimer];
		mTimer++;
		if(mTimer >= INTERVALTIME.length){
			mTimer = INTERVALTIME.length - 1;
		}
		return ret;
	}
	@Override
	public void setParameter(int arg){
		if(arg == BOOT_COMPLETE){
			mIsBootComplete = true;
		}
	}
	@Override
	protected boolean doAnimation() {
		mObserver.animationStep(mType, mCurrentIndex);
		
		int colorIndex = BoosterAnimationUtil.SECTOR_COUNT - mCurrentIndex - 1;
		for(DrawClass dc : mDraw.mDrawArray){
			dc.setColor(BoosterAnimationUtil.COLOR[colorIndex]);
			colorIndex++;
			colorIndex = colorIndex % BoosterAnimationUtil.SECTOR_COUNT;
		}

		mCurrentIndex++;
		mCurrentIndex = mCurrentIndex % BoosterAnimationUtil.SECTOR_COUNT;
		if(mCurrentIndex == 0 && mIsBootComplete == true){
			return false;
		}
		return true;
	}

}
