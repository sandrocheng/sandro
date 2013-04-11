package com.tencent.onesecurity.ui.customview.layout.booster;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.customview.layout.booster.BoosterButton.BoosterButtonObserver;

public class BoosterAnimationLayout extends RelativeLayout implements
		BoosterAnimation.BoosterAnimationObserver, BoosterButtonObserver{
	static public final int BOOSTER_CMD_STARTBOOSTER = 0;
	static public final int BOOSTER_CMD_ANIMATION_ONE_DONE = 1;
	static public final int BOOSTER_CMD_ANIMATION_THREE_DONE = 2;
	static public final int BOOSTER_CMD_SHOW_RESULT_DONE = 3;
	// add by matt for 分数显示30秒
	static public final int BOOSTER_CMD_SHOW_RESULT = 4;

	public interface BoosterAnimationLayoutObserver {
		boolean onAnimationLayoutObserver(int cmd);
	}

	private BoosterAnimation mAnimation;
	private BoosterButton mBoosterButton;
	private BoosterAnimationLayoutObserver mObserver;
	private boolean mIsFirstStart = false;
	private boolean mIsBoosting = false;

	/** 2012.12.13 add by tony 加速按钮触控范围变小使用的布局文件 */
	private LinearLayout touckBooster;

	public BoosterAnimationLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public void prepare(CartonEngine cartonEngine, boolean isFirstStart) {
		mIsFirstStart = isFirstStart;
		mAnimation = (BoosterAnimation) findViewById(R.id.animation);
		mAnimation.prepare(cartonEngine);
		mAnimation.setBoosterAnimationObserver(this);
		mBoosterButton = (BoosterButton) findViewById(R.id.boosterbutton);
		mBoosterButton.prepare(cartonEngine);
		mBoosterButton.setButtonObserver(this);
//		mBoosterButton.setOnClickListener(new BoosterButtonOnClick());

		/**2012.12.13 add by tony 加速按钮触控范围变小使用的布局文件 */
//		setOnClickListener(new BoosterButtonOnClick());
		setEnabled(false);
		touckBooster = (LinearLayout)findViewById(R.id.ll_touck);
		touckBooster.setOnClickListener(new BoosterButtonOnClick());
		/**2012.12.13 add by tony END*/
		if (isFirstStart) {
			mBoosterButton.setTextColor(android.R.color.transparent);
		}
	}

	public void showAnimation(int type, int arg1, int arg2) {
		switch (type) {
		case BoosterAnimation.ANIMATION_ID_ONE:
			if (mIsFirstStart) {
				mIsFirstStart = false;
				mAnimation.startBoosterAnimation(type, -1);
			}
			break;
		case BoosterAnimation.ANIMATION_ID_FOUR:
			mAnimation.startBoosterAnimation(type, arg1);
			mBoosterButton.startBoosterButtonAnimation(BoosterButton.ANIMATION_STYLE_FOUR, arg1, arg2);
			break;
		}
	}

	public void stopAnimation() {

	}

	private int boosterResult = 0;

	public void changeToIdle(){
		mIsBoosting = false;
		mBoosterButton.changeToIdle();
		mAnimation.changeToIdle();
	}
	
	public void boosterComplite(int memory, int desplayInfo) {
		mBoosterButton.setBootResult(memory, desplayInfo);
		mAnimation.boosterComplite(desplayInfo);
		boosterResult = desplayInfo;
	}

	public void setBoosterObserver(BoosterAnimationLayoutObserver o) {
		mObserver = o;
	}

	@Override
	public void onBoosterAnimationStart(int type) {
		setClickable(false);
	}

	@Override
	public void onBoosterAnimationDone(int type) {
		switch (type) {
		case BoosterAnimation.ANIMATION_ID_ONE:
			
			mBoosterButton
					.startBoosterButtonAnimation(BoosterButton.ANIMATION_STYLE_ONE);
			mObserver.onAnimationLayoutObserver(BOOSTER_CMD_ANIMATION_ONE_DONE);
			break;
		case BoosterAnimation.ANIMATION_ID_THREE:
			mObserver.onAnimationLayoutObserver(BOOSTER_CMD_ANIMATION_THREE_DONE);
			break;
		default:
			break;
		}
		setClickable(true);
	}

	public void stopBoosterAnimation(){
		mAnimation.stopBoosterAnimation();
		setClickable(true);
	}
	
	class BoosterButtonOnClick implements OnClickListener {

		@Override
		public void onClick(View v) {
			mAnimation.startBoosterAnimation(BoosterAnimation.ANIMATION_ID_TWO, -1);
			if(!mObserver.onAnimationLayoutObserver(BOOSTER_CMD_STARTBOOSTER)){
				mAnimation.stopBoosterAnimation();
				setClickable(true);
				return;
			}
			mIsBoosting = true;
			mBoosterButton.stopBoosterButtonAnimation(true);
			mBoosterButton.startBoosterButtonAnimation(BoosterButton.ANIMATION_STYLE_TWO);
		}
	}
	
	@Override
	public void setClickable(boolean clickable) {
		super.setClickable(clickable);
		touckBooster.setClickable(clickable);//gordon 修正加入了更大的点击热区引起的按钮重复点击及动效无法停止问题
	}

	@Override
	public void onBoosterAnimationStep(int type, int arg) {
		if (type == BoosterAnimation.ANIMATION_ID_THREE) {
			if (arg == boosterResult) {
				mBoosterButton.setAnimationStep(BoosterButton.ANIMATION_TWO_STEP_FOUR);
			} else if ((arg * 10 / boosterResult) >= 6) {
				mBoosterButton.setAnimationStep(BoosterButton.ANIMATION_TWO_STEP_THREE);
			} else if ((arg * 10 / boosterResult) >= 3) {
				mBoosterButton.setAnimationStep(BoosterButton.ANIMATION_TWO_STEP_TWO);
			}else{
				mBoosterButton.setAnimationStep(BoosterButton.ANIMATION_TWO_STEP_ONE);
			}
		}
	}
	
	/**
	 * @author gordon
	 * @param countOfAllProgress
	 */
	public void initBoosterButtonCountOfAllProgress(int countOfAllProgress){
		mBoosterButton.initCountOfAllProgress(countOfAllProgress);
	}
	
	/**
	 * @author gordon
	 */
	public void drawBoosterButtonActionPresent(){
		mBoosterButton.drawActionPresent();
	}

	@Override
	public void boosterButtonObserver(int command) {
		if(command == BoosterButton.BOOSTERBUTTONCOMMAND_SHOW_RESULT_DONE){
			mObserver.onAnimationLayoutObserver(BOOSTER_CMD_SHOW_RESULT_DONE);
		} else if (command == BoosterButton.BOOSTERBUTTONCOMMAND_SHOW_RESULT) {
			mIsBoosting = false;
			mObserver.onAnimationLayoutObserver(BOOSTER_CMD_SHOW_RESULT);
		}
	}

	// add-s by matt for 分数显示30秒
	public void updateInfo(int i) {
		if (mIsBoosting == false) {
			mBoosterButton.updateButton(i);
			mAnimation.showResult(i);
		}
	}
}
