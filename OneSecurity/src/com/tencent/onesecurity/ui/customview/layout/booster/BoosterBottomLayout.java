package com.tencent.onesecurity.ui.customview.layout.booster;

import android.content.Context;
import android.util.AttributeSet;
//import android.view.View;
//import android.view.animation.Animation;
//import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.customview.widget.CustomIconButton;

public class BoosterBottomLayout extends RelativeLayout {
//	private Context mContext;
//	private Animation mAlphaanimation;
	private CustomIconButton mCustomIconButton;

	public BoosterBottomLayout(Context context) {
		super(context);
//		mContext = context;
	}

	public BoosterBottomLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
//		mContext = context;
	}

	public BoosterBottomLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		
//		mContext = context;
	}

	public void prepare() {
//		setVisibility(View.INVISIBLE);
//		mAlphaanimation = AnimationUtils.loadAnimation(mContext, R.anim.anim_booster_alpha);
		mCustomIconButton = (CustomIconButton) findViewById(R.id.manage_running_apps_button);
	}

	@Override
	public void setEnabled(boolean enabled) {
		super.setEnabled(enabled);//复写这个函数
		
		mCustomIconButton.setEnabled(enabled);
	}
	@Override
	public void setOnClickListener(OnClickListener l) {
		mCustomIconButton.setOnClickListener(l);
	}

//	public void startBoosterBottomAnimation() {
//		setVisibility(View.VISIBLE);
//		mAlphaanimation.reset();
//		this.startAnimation(mAlphaanimation);
//	}
//
//	public void stopBoosterBottomAnimation() {
//
//		this.clearAnimation();
//		mAlphaanimation.cancel();
//	}
//
//	public void changeToIdle() {
//		stopBoosterBottomAnimation();
//		setVisibility(View.INVISIBLE);
//	}
}
