package com.tencent.onesecurity.ui.customview.layout.booster;

import android.view.View;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;

public class BoosterAnimationControl_CurrentInfo extends DrawAnimationControlBase{

	public BoosterAnimationControl_CurrentInfo(CartonEngine cartonEngine,
			View v, DrawAnimation draw, int type, DrawAnimationControlObsercer o) {
		super(cartonEngine, v, draw, type, o);
	}
	private int mResultIndex;
	private int mCurrentIndex;
	public void init() {
		mCurrentIndex = 0;
	}

	@Override
	public void setParameter(int arg) {
		mResultIndex = arg;
	}
	@Override
	public int getAnimationIntervalTime() {

		return 1;
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
				dc.setColor(BoosterAnimationUtil.COLOR[0]);
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
