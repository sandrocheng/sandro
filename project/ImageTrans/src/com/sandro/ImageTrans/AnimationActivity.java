package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.view.animation.Animation.AnimationListener;

public class AnimationActivity extends Activity{
	
	private final AnimationSet set=new AnimationSet(false);    //创建动画集对象

	private Handler handler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			set.startNow(); 
		}
		
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.animation_layout);
		
		View view = (View)this.findViewById(R.id.animationLayout);
		Animation scaleLongAnimation = new ScaleAnimation(0, 1, 0, 1,Animation.RELATIVE_TO_SELF, (float)3, Animation.RELATIVE_TO_SELF,0);
		scaleLongAnimation.setInterpolator(MainApp.getContext(),android.R.anim.overshoot_interpolator);	
		scaleLongAnimation.setDuration(1000); 
		
		Animation tranAnimation = new TranslateAnimation(0,0,0,200);
		tranAnimation.setInterpolator(AnimationUtils.loadInterpolator(MainApp.getContext(),  
                android.R.anim.overshoot_interpolator));
		tranAnimation.setDuration(1000);
		
		Animation alphaAnimation = AnimationUtils.loadAnimation(MainApp.getContext(), android.R.anim.fade_out);
		alphaAnimation.setFillEnabled(true); 
		alphaAnimation.setFillAfter(true);
		alphaAnimation.setDuration(1000);
		alphaAnimation.setStartOffset(2500);
		
		
		
		set.addAnimation(tranAnimation);    
	    set.addAnimation(scaleLongAnimation);
	    set.addAnimation(alphaAnimation);
	    
	    set.setFillAfter(true);                 
	    set.setFillEnabled(true);  
	    set.setAnimationListener(new AnimationListener() {
	
			@Override
			public void onAnimationStart(Animation animation) {
	
			}
	
			@Override
			public void onAnimationRepeat(Animation animation) {
			}
	
			@Override
			public void onAnimationEnd(Animation animation) {
//				set.cancel();
//				set.reset();
//			    Message msg = AnimationActivity.this.handler.obtainMessage();
//			    msg.sendToTarget();
			}
		});
	    view.setAnimation(set);                    //设置动画  
	    Message msg = this.handler.obtainMessage();
	    msg.sendToTarget();
	}
	
	
}
