package com.tencent.onesecurity.ui.customview.layout.booster;

import android.view.View;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;

public abstract class DrawAnimationControlBase implements CartonCallBackLisener{
	public interface DrawAnimationControlObsercer {
		void animationDone(int type);
		void animationStep(int type, int arg);
	}

	protected View mV;
	protected DrawAnimation mDraw;
	protected int mType;
	protected DrawAnimationControlObsercer mObserver;
	protected CartonEngine mCartonEngine;
	protected boolean mIsCanceled = false;
	public DrawAnimationControlBase(CartonEngine cartonEngine, View v, DrawAnimation draw, int type,
			DrawAnimationControlObsercer o) {
		mV = v;
		mDraw = draw;
		mType = type;
		mObserver = o;
		mCartonEngine = cartonEngine;
		
		
	}

//	private Handler mHandler = new Handler() {
//
//		@Override
//		public void handleMessage(Message msg) {
//			// TODO Auto-generated method stub
//			boolean isContinue = false;
//			isContinue = doAnimation();
//			mV.postInvalidate();
//			if (isContinue) {
//				mHandler.sendEmptyMessageDelayed(0, getAnimationIntervalTime());
//			} else {
//				mObserver.animationDone(mType);
//			}
//		}
//
//	};

	public void start() {
		init();
//		mHandler.removeMessages(0);
//		mHandler.sendEmptyMessage(0);
//		mCartonEngine.addListener(this);
		mIsCanceled = false;
		mCartonEngine.addListener(this);
	}

	public void stop() {
//		mHandler.removeMessages(0);
		mCartonEngine.requestRemove(this);
		mIsCanceled = true;
	}
	
	public void setParameter(int arg){
		
	}
	
	@Override
	public void onTime() {
		if(mIsCanceled){
			return;
		}
		boolean isContinue = false;
		isContinue = doAnimation();
		mV.invalidate();
		if (isContinue) {
		} else {
			stop();
			mObserver.animationDone(mType);
		}
	}

	@Override
	public int getCircleMultiple() {
		return getAnimationIntervalTime();
	}

	@Override
	public boolean isPause() {
		return false;
	}

	abstract public void init();

	abstract public int getAnimationIntervalTime();

	abstract protected boolean doAnimation();
}
