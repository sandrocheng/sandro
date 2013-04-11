package com.tencent.onesecurity.ui.customview.layout.booster;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;

import android.view.View;

public class BoosterAnimationControl_Result extends DrawAnimationControlBase{
	private int mResultIndex;
	private int mCurrentIndex;
	private final int[] INTERVALTIME = {1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6};
	public BoosterAnimationControl_Result(CartonEngine cartonEngine, View v, DrawAnimation draw, int type,
			DrawAnimationControlObsercer o) {
		super(cartonEngine, v, draw, type, o);
	}

	@Override
	public void init() {
		mCurrentIndex = 0;
		mTimer = 0;
	}

	@Override
	public void setParameter(int arg) {
		mResultIndex = arg;
	}
	private int mTimer = 0;
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
	protected boolean doAnimation() {
		mObserver.animationStep(mType, mCurrentIndex);

		int colorIndex = BoosterAnimationUtil.SECTOR_COUNT - mCurrentIndex - 1;
		int index = 0;
		for(DrawClass dc : mDraw.mDrawArray){
			if(index <= mCurrentIndex){
				if(index <= mResultIndex){
					dc.setColor(BoosterAnimationUtil.COLOR[BoosterAnimationUtil.SECTOR_COUNT - 1]);
				}else{
					dc.setColor(BoosterAnimationUtil.COLOR[0]);
				}
				
			}else{
				dc.setColor(BoosterAnimationUtil.COLOR[colorIndex]);
			}
			index++;
			colorIndex++;
			colorIndex = colorIndex % BoosterAnimationUtil.SECTOR_COUNT;
		}

		mCurrentIndex++;
		mCurrentIndex = mCurrentIndex % BoosterAnimationUtil.SECTOR_COUNT;
		if(mCurrentIndex == 0){
			return false;
		}
		return true;
	}

}
