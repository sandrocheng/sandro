package com.tencent.onesecurity.ui.customview.layout.booster;

import java.util.HashMap;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.customview.layout.booster.DrawAnimationControlBase.DrawAnimationControlObsercer;

public class BoosterAnimation extends View implements DrawAnimationControlObsercer {
	public interface BoosterAnimationObserver {
		void onBoosterAnimationStart(int type);

		void onBoosterAnimationStep(int type, int arg);

		void onBoosterAnimationDone(int type);
	}

	static public final int ANIMATION_ID_ONE = 0;
	static public final int ANIMATION_ID_TWO = 1;
	static public final int ANIMATION_ID_THREE = 2;
	static public final int ANIMATION_ID_FOUR = 3;
	static public final int ANIMATION_ID_IDLE = 4;
	
	private boolean mIsPrepared = false;
	private BoosterAnimationObserver mObserver;
	private DrawAnimation mAnimation = null;
	private DrawAnimationControlBase mCurrentControl;
	private HashMap<Integer, DrawAnimationControlBase> mControlMap;
	private CartonEngine mCartonEngine;
	private Context mContext;
	
	public BoosterAnimation(Context context, AttributeSet attrs) {
		super(context, attrs);
		
		mContext = context;
	}
	public void changeToIdle(){
		stopBoosterAnimation();
		startBoosterAnimation(ANIMATION_ID_IDLE, 0);
	}
	public void prepare(CartonEngine cartonEngine) {
		mCartonEngine = cartonEngine;
		//add-s matt for 主页顺序变更
		initAnimation();
		//add-e matt for 主页顺序变更
	}

	private void initAnimation() {
		if (mIsPrepared != false) {
			return;
		}
		mIsPrepared = true;
//		int offset_outside = BoosterAnimationUtil.dip2px(mContext, BoosterAnimationUtil.ANIMATION_OUTSIDE_OFFSET);
		int offset_outside = BoosterAnimationUtil.dip2px(mContext, Float.valueOf(mContext.getResources().getString(R.string.main_booster_outside_offset)));
//		int offset_inside = BoosterAnimationUtil.dip2px(mContext, BoosterAnimationUtil.ANIMATION_INSIDE_OFFSET);
		int offset_inside = BoosterAnimationUtil.dip2px(mContext, Float.valueOf(mContext.getResources().getString(R.string.main_booster_inside_offset)));
		//mod-s matt for 主页顺序变更
//		mAnimation = new DrawAnimation(this.getWidth(), offset_outside, offset_inside);
		int diameter = BoosterAnimationUtil.dip2px(mContext, Float.valueOf(mContext.getResources().getString(R.string.main_booster_diameter)));
		mAnimation = new DrawAnimation(diameter, offset_outside, offset_inside);
		//mod-s matt for 主页顺序变更
		mControlMap = new HashMap<Integer, DrawAnimationControlBase>();
		mControlMap.put(Integer.valueOf(ANIMATION_ID_ONE),
				new BoosterAnimationControl_Guide(mCartonEngine, this,
						mAnimation, ANIMATION_ID_ONE, this));
		mControlMap.put(Integer.valueOf(ANIMATION_ID_TWO),
				new BoosterAnimationControl_Boosting(mCartonEngine, this,
						mAnimation, ANIMATION_ID_TWO, this));
		mControlMap.put(Integer.valueOf(ANIMATION_ID_THREE),
				new BoosterAnimationControl_Result(mCartonEngine, this,
						mAnimation, ANIMATION_ID_THREE, this));
		mControlMap.put(Integer.valueOf(ANIMATION_ID_FOUR),
				new BoosterAnimationControl_CurrentInfo(mCartonEngine, this,
						mAnimation, ANIMATION_ID_FOUR, this));
		mControlMap.put(Integer.valueOf(ANIMATION_ID_IDLE),
				new BoosterAnimationControl_Idle(mCartonEngine, this,
						mAnimation, ANIMATION_ID_IDLE, this));
	}

	public void setBoosterAnimationObserver(BoosterAnimationObserver m) {
		mObserver = m;
	}

	public void startBoosterAnimation(int type, int arg) {
		if(!mIsPrepared){
			return;
		}
		if (mCurrentControl != null) {
			mCurrentControl.stop();
		}
		mCurrentControl = mControlMap.get(Integer.valueOf(type));
		mObserver.onBoosterAnimationStart(type);
		switch (type) {
		case ANIMATION_ID_ONE:
			mCurrentControl.start();
			break;
		case ANIMATION_ID_TWO:
			mCurrentControl.start();
			break;
		case ANIMATION_ID_THREE:
			mCurrentControl.setParameter(arg);
			mCurrentControl.start();
			break;
		case ANIMATION_ID_FOUR:
			mCurrentControl.setParameter(arg);
			mCurrentControl.start();
			break;
		case ANIMATION_ID_IDLE:
			mCurrentControl.start();
		default:
			break;
		}
	}

	protected int mResultindex;

	public void boosterComplite(int i) {
		if (mCurrentControl.mType == ANIMATION_ID_TWO) {
			mResultindex = i;
			mCurrentControl.setParameter(BoosterAnimationControl_Boosting.BOOT_COMPLETE);
		}
	}

	public void stopBoosterAnimation() {
		if (mCurrentControl != null) {
			mCurrentControl.stop();
		}
	}

	@Override
	protected void onDraw(Canvas canvas) {
		//del-s matt for 主页顺序变更
		initAnimation();
		//del-e matt for 主页顺序变更
		mAnimation.onDraw(canvas);
	}

	@Override
	public void animationDone(int type) {
		switch (type) {
		case ANIMATION_ID_ONE:
			mObserver.onBoosterAnimationDone(type);
			break;
		case ANIMATION_ID_TWO:
			startBoosterAnimation(ANIMATION_ID_THREE, mResultindex);
			break;
		case ANIMATION_ID_THREE:
			mObserver.onBoosterAnimationDone(type);
			break;
		case ANIMATION_ID_FOUR:
			mObserver.onBoosterAnimationDone(type);
			break;
		default:
			break;
		}
	}

	@Override
	public void animationStep(int type, int arg) {
		mObserver.onBoosterAnimationStep(type, arg);
	}

	public void showResult(int i) {
		int index = 0;
		for (DrawClass dc : mAnimation.mDrawArray) {

			if (index <= i) {
				dc.setColor(BoosterAnimationUtil.COLOR[BoosterAnimationUtil.SECTOR_COUNT - 1]);
			} else {
				dc.setColor(BoosterAnimationUtil.COLOR[0]);
			}
			index++;

		}
		invalidate();//gordon 9698674【One Security 2.3.0.63_灰度发布版_迭代一】【一键加速】插入数据线，界面图显示不全	
	}
}
