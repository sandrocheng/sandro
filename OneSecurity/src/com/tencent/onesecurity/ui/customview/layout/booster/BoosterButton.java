package com.tencent.onesecurity.ui.customview.layout.booster;

import java.math.BigDecimal;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
//import android.util.Log;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;

public class BoosterButton extends RelativeLayout implements
		CartonCallBackLisener {
	static public final int ANIMATION_STYLE_ONE = 0;// 用户引导
	static public final int ANIMATION_STYLE_TWO = 1;// 加速
	static public final int ANIMATION_STYLE_THREE = 2;// 结果
	static public final int ANIMATION_STYLE_FOUR = 3;// 当前信息
	static public final int ANIMATION_TWO_STEP_ONE = 0;
	static public final int ANIMATION_TWO_STEP_TWO = 1;
	static public final int ANIMATION_TWO_STEP_THREE = 2;
	static public final int ANIMATION_TWO_STEP_FOUR = 3;
	static public final int BOOSTERBUTTONCOMMAND_SHOW_RESULT_DONE = 0;
	//add by matt for 分数显示30秒
	static public final int BOOSTERBUTTONCOMMAND_SHOW_RESULT = 1;
	private int mAnimationType = -1;
	private int mCurrentIndex = 0;
	// private TextView mTextView;
	private TextView mButtonTextView;
	private TextView mProgress;
	private CartonEngine mCartonEngine;
	private Handler mHandler = null;
	private ImageView mScoreimage;
	private RelativeLayout mInfoLayout;
	private Animation mAlphaanimation;

	private AnimationListener mAlphaanimationListener;
	private Context mContext;

	private Animation mBreatheAnimation;

	private int mCountOfRunningProgress;

	private int mCurrentProgressIndex;

	/** 当前百分比 */
	private int mCurrentPresent;
	private int mCurrentFakePresent;
	
	private BoosterButtonObserver mObserver;
	public interface BoosterButtonObserver {
		void boosterButtonObserver(int command);
	}
	
	public void setButtonObserver(BoosterButtonObserver ob){
		mObserver = ob;
	}
	public BoosterButton(Context context) {
		super(context);
		mContext = context;
	}

	public BoosterButton(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		mContext = context;
	}

	public BoosterButton(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	@Override
	public void setOnClickListener(OnClickListener l) {
		mButtonTextView.setOnClickListener(l);
	}

	public void prepare(CartonEngine cartonEngine) {
		mCartonEngine = cartonEngine;
		mButtonTextView = (TextView) findViewById(R.id.boosterbutton_button);
		// mTextView = (TextView) findViewById(R.id.boosterbutton_textview);
		mScoreimage = (ImageView) findViewById(R.id.boosterbutton_scoreimage);
		mInfoLayout = (RelativeLayout) findViewById(R.id.boosterbutton_info);
		mInfoLayout.setVisibility(View.INVISIBLE);
		mAlphaanimation = AnimationUtils.loadAnimation(mContext,
				R.anim.anim_booster_alpha);
		mBreatheAnimation = AnimationUtils.loadAnimation(mContext,
				R.anim.anim_booster_alpha_go_breathe);
		mBreatheAnimation.setRepeatCount(Animation.INFINITE);

		mAlphaanimationListener = new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				BoosterButton.this.startAnimation(mBreatheAnimation);
			}
		};
		mAlphaanimation.setAnimationListener(mAlphaanimationListener);

		mProgress = (TextView) findViewById(R.id.boosterbutton_progress);
	}

	private void startTimer(int time) {
		if (mHandler == null) {
			mHandler = new Handler() {
				@Override
				public void handleMessage(Message msg) {
					if(mObserver != null){
						mObserver.boosterButtonObserver(BOOSTERBUTTONCOMMAND_SHOW_RESULT_DONE);
					}
					startBoosterButtonAnimation(ANIMATION_STYLE_THREE);
				}
			};
		}
		mHandler.removeMessages(0);
		mHandler.sendEmptyMessageDelayed(0, time);
	}

	public void setTextColor(int color) {
		if (mButtonTextView.getVisibility() == View.INVISIBLE) {
			mButtonTextView.setVisibility(View.VISIBLE);
		}
		// if (mTextView.getVisibility() == View.VISIBLE) {
		// mTextView.setVisibility(View.INVISIBLE);
		// }
		mButtonTextView.setTextColor(color);
	}

	private void setText() {
		if (mButtonTextView.getVisibility() == View.VISIBLE) {
			mButtonTextView.setVisibility(View.INVISIBLE);
		}
		// if (mTextView.getVisibility() == View.INVISIBLE) {
		// mTextView.setVisibility(View.VISIBLE);
		// }
		// float size = mTextView.getTextSize() / 2;
		// Spannable sp = new SpannableString(s + " MB");
		// sp.setSpan(new AbsoluteSizeSpan((int) (size)), sp.length() - 3,
		// sp.length(), Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
		//
		// mTextView.setText(sp);
		// mTextView.setTextColor(0xFFFFFFFF);
	}

	public void changeToIdle() {
		stopBoosterButtonAnimation(false);
		if (mHandler != null)
			mHandler.removeMessages(0);
		mButtonTextView.setVisibility(View.INVISIBLE);
		mButtonTextView.setTextColor(0xFFFFFFFF);
		mButtonTextView.clearAnimation();
		// mTextView.setVisibility(View.INVISIBLE);
		mInfoLayout.clearAnimation();
		mInfoLayout.setVisibility(View.INVISIBLE);
	}

	public int getAnimationIntervalTime() {
		return 6;
	}

	public void startBoosterButtonAnimation(int type) {
		startBoosterButtonAnimation(type, -1, -1);
	}

	public void startBoosterButtonAnimation(int type, int arg1, int arg2) {
		clearAnimation();
		if (type == ANIMATION_STYLE_ONE) {
			mButtonTextView.setVisibility(View.VISIBLE);
			mButtonTextView.setTextColor(0xFFFFFFFF);
			mAlphaanimation.reset();
			this.startAnimation(mAlphaanimation);
			return;
		}
		if (type == ANIMATION_STYLE_FOUR) {
			// mBootResult = arg2;
			mBootDesplayInfo = arg1;
			mButtonTextView.setVisibility(View.INVISIBLE);
			mInfoLayout.setVisibility(View.VISIBLE);
			mProgress.setVisibility(View.INVISIBLE);
			setText();
			setScoreimage();
			mAlphaanimation.setAnimationListener(null);
			this.startAnimation(mAlphaanimation);
			//add-s by matt for 分数显示30秒
			if(mObserver != null){
				mObserver.boosterButtonObserver(BOOSTERBUTTONCOMMAND_SHOW_RESULT);
			}
			//add-e by matt for 分数显示30秒
			startTimer(SystemBoosterManager.getInstance().getBoostTimer());
			return;
		}

		mAnimationType = type;
		mCurrentIndex = 0;
		// mBootResult = -1;
		mBootResultStep = ANIMATION_TWO_STEP_ONE;
		mCartonEngine.addListener(this);
		if (mHandler != null) {
			mHandler.removeMessages(0);
		}
		if (type == ANIMATION_STYLE_TWO) {
			mButtonTextView.setVisibility(View.INVISIBLE);
			mInfoLayout.setVisibility(View.VISIBLE);
			mProgress.setVisibility(View.VISIBLE);
			mScoreimage.setVisibility(View.INVISIBLE);
			initProgress();
		} else {
			mInfoLayout.setVisibility(View.INVISIBLE);
		}
	}

//	private int mProgressIndex = 0;
	final int PROGRESSSTEP_ONE = 0;
	final int PROGRESSSTEP_TWO = 1;
	final int PROGRESSSTEP_THREE = 2;

	private void initProgress() {
//		mProgressIndex = 0;
		// drawProgress();
		// updateProgress(); // 初始化后再刷一下动画防止最初显示效果有顿的感觉
	}

	// private void updateProgress() {
	// drawProgress();
	// mProgressIndex++;
	// mProgressIndex = mProgressIndex % (PROGRESSSTEP_THREE + 1);
	//
	// }

	// private void drawProgress() {
	// String s = new String();
	// switch (mProgressIndex) {
	// case PROGRESSSTEP_ONE:
	// s = BoosterAnimationUtil.STRING_POINT_HOLLOW + "  "
	// + BoosterAnimationUtil.STRING_POINT_SOLID + "  "
	// + BoosterAnimationUtil.STRING_POINT_SOLID;
	// break;
	// case PROGRESSSTEP_TWO:
	// s = BoosterAnimationUtil.STRING_POINT_SOLID + "  "
	// + BoosterAnimationUtil.STRING_POINT_HOLLOW + "  "
	// + BoosterAnimationUtil.STRING_POINT_SOLID;
	// break;
	// case PROGRESSSTEP_THREE:
	// s = BoosterAnimationUtil.STRING_POINT_SOLID + "  "
	// + BoosterAnimationUtil.STRING_POINT_SOLID + "  "
	// + BoosterAnimationUtil.STRING_POINT_HOLLOW;
	// break;
	// default:
	// break;
	// }
	// mProgress.setText(s);
	// }

	public void stopBoosterButtonAnimation(boolean isNeedCleanAnimation) {
		mCartonEngine.requestRemove(this);
		if (isNeedCleanAnimation) {
			clearAnimation();
		}
	}

	// private int mBootResult = -1;
	private int mBootDesplayInfo = 0;
	private int mBootResultStep = ANIMATION_TWO_STEP_ONE;

	public void setBootResult(int arg, int arg1) {
		// mBootResult = arg;
		mBootDesplayInfo = arg1;
	}

	private void setScoreimage() {
		int ret = -1;
		for (int i = 0; i < BoosterAnimationUtil.SCORERESULT.length; i++) {
			if (mBootDesplayInfo >= BoosterAnimationUtil.SCORERESULT[i][0]
					&& mBootDesplayInfo < BoosterAnimationUtil.SCORERESULT[i][1]) {
				ret = BoosterAnimationUtil.SCORERESULT[i][2];
				break;
			}
		}
		if (ret != -1) {
			mScoreimage.setImageResource(ret);
			mScoreimage.setVisibility(View.VISIBLE);
		}
		mProgress.setVisibility(View.INVISIBLE);
		mProgress.setText("");
	}

	public void setAnimationStep(int step) {
		mBootResultStep = step;
	}

	protected boolean doAnimation() {
		int color = 0;
		boolean ret = false;
		switch (mAnimationType) {
		case ANIMATION_STYLE_ONE:// 引导动画
			color = BoosterAnimationUtil.BUTTONCOLOR[mCurrentIndex];
			setTextColor(color);
			mCurrentIndex++;
			mCurrentIndex = mCurrentIndex
					% BoosterAnimationUtil.BUTTONCOLOR.length;
			if (mCurrentIndex == 0) {
				ret = false;
			} else {
				ret = true;
			}
			break;
		case ANIMATION_STYLE_TWO:// 加速中
			ret = true;
			// String s = new String();
			switch (mBootResultStep) {
			// case ANIMATION_TWO_STEP_ONE: {
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// }
			// break;
			// case ANIMATION_TWO_STEP_TWO: {
			// s = String.valueOf(mBootResult % 10);
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// }
			// break;
			//
			// case ANIMATION_TWO_STEP_THREE: {
			// s = String.valueOf(mBootResult % 10);
			// s = String.valueOf((mBootResult / 10) % 10) + s;
			// s = String.valueOf((int) (Math.random() * 10)) + s;
			// }
			// break;

			case ANIMATION_TWO_STEP_FOUR: {
				// s = String.valueOf(mBootResult % 10);
				// s = String.valueOf((mBootResult / 10) % 10) + s;
				// s = String.valueOf((mBootResult / 100) % 10) + s;
				ret = false;
				setScoreimage();
				//add-s by matt for 分数显示30秒
				if(mObserver != null){
					mObserver.boosterButtonObserver(BOOSTERBUTTONCOMMAND_SHOW_RESULT);
				}
				//add-e by matt for 分数显示30秒
				startTimer(SystemBoosterManager.getInstance().getBoostTimer());
			}
				break;
			default:
				break;
			}
			
			drawFakePresent();
			setText();

			break;
		case ANIMATION_STYLE_THREE:// 结果
			color = BoosterAnimationUtil.BUTTONCOLOR[mCurrentIndex];
			if (mButtonTextView.getVisibility() == View.INVISIBLE) {
				mButtonTextView.setVisibility(View.VISIBLE);
				mAlphaanimation.setAnimationListener(mAlphaanimationListener);
				this.startAnimation(mAlphaanimation);
			}
			mButtonTextView.setTextColor(color);
			mCurrentIndex++;
			mCurrentIndex = mCurrentIndex
					% BoosterAnimationUtil.BUTTONCOLOR.length;
			if (mCurrentIndex == 0) {
				ret = false;
			} else {
				ret = true;
			}
			break;
		default:
			break;
		}
		return ret;
	}

	@Override
	public void onTime() {
		boolean isContinue = false;
		isContinue = doAnimation();
		invalidate();
		if (isContinue) {
		} else {
			stopBoosterButtonAnimation(false);
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

	/**
	 * 绘制扫描任务完成百分比
	 * 
	 * @author gordon
	 */
	public void drawActionPresent() {
		if(mCountOfRunningProgress==0){
			return;
		}
		mCurrentProgressIndex++;
		BigDecimal bd1 = new BigDecimal(mCurrentProgressIndex);
		BigDecimal bd2 = new BigDecimal(mCountOfRunningProgress);
		bd1 = bd1.divide(bd2, 2, BigDecimal.ROUND_HALF_UP);
		mCurrentPresent = (int) (bd1.doubleValue() * 100);
//		if (mCurrentFakePresent > BoosterAnimationUtil.INTEGER_FAKE_PRESENT_DIFFERENCE_EDGE) {
			if (mCurrentPresent > mCurrentFakePresent) {
				mCurrentFakePresent = mCurrentPresent;
			}
			String s = mCurrentFakePresent
					+ BoosterAnimationUtil.STRING_PERSENT_MARK;
			mProgress.setText(s);
//		}

	}

	private void drawFakePresent() {
		if (mCurrentFakePresent >= 100 || mCurrentFakePresent > mCurrentPresent) {
			return;
		}
		mCurrentFakePresent += BoosterAnimationUtil.INTEGER_FAKE_PRESENT_DIFFERENCE;
		mCurrentFakePresent=mCurrentFakePresent>=100?100:mCurrentFakePresent;
		String s = mCurrentFakePresent
				+ BoosterAnimationUtil.STRING_PERSENT_MARK;
		mProgress.setText(s);
	}

	/**
	 * 初始化进程总数
	 * 
	 * @author gordon
	 * @param countOfAllProgress
	 */
	public void initCountOfAllProgress(int countOfRunningProgress) {
		mCurrentProgressIndex = 0;
		mCurrentFakePresent = 0;
		mCurrentPresent = 0;
		mCountOfRunningProgress = countOfRunningProgress;
		mProgress.setText(BoosterAnimationUtil.STRING_PERSENT_START
				+ BoosterAnimationUtil.STRING_PERSENT_MARK);
	}
	//add-s by matt for 分数显示30秒	
	public void updateButton(int i){
		if(SystemBoosterManager.getInstance().getBoostTimer() !=  SystemBoosterManager.MINDISPLAYTIME){
			clearAnimation();
			mButtonTextView.setVisibility(View.INVISIBLE);
			mInfoLayout.setVisibility(View.VISIBLE);
			mBootDesplayInfo = i;
			setScoreimage();
			startTimer(SystemBoosterManager.getInstance().getBoostTimer());
		}
	}
}
