package com.sandro.custom.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.TranslateAnimation;
import android.widget.RelativeLayout;

import com.sandro.ImageTrans.MainApp;
import com.sandro.ImageTrans.R;

@SuppressLint("HandlerLeak")
public class AppScanCircleLayout extends RelativeLayout{

	private CircleView mCircleView;
	
	public static final int MSG_DRAW_CIRCLE_FINISH = 1 ;
	
	public static final int MSG_CIRCLE_SPREAD = 2;
	
	private View imageView;
	
	private Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case MSG_DRAW_CIRCLE_FINISH:
				AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f,1.0f);  
				alphaAnimation.setDuration(1000);
				alphaAnimation.setFillAfter(true);
				imageView.startAnimation(alphaAnimation);
				
				View v = AppScanCircleLayout.this.findViewById(R.id.textView1);
				v.startAnimation(alphaAnimation);
				
				View btn = AppScanCircleLayout.this.findViewById(R.id.btn_scan);
				btn.setVisibility(View.VISIBLE);
				Animation tranAnimation = new TranslateAnimation(0,0,200,0);
				tranAnimation.setInterpolator(AnimationUtils.loadInterpolator(AppScanCircleLayout.this.getContext(),  
		                android.R.anim.overshoot_interpolator));
				tranAnimation.setDuration(500);
				btn.startAnimation(tranAnimation);
				
				this.sendEmptyMessageDelayed(MSG_CIRCLE_SPREAD, 6000);
				break;
			case MSG_CIRCLE_SPREAD:
				mCircleView.startSpread();
				this.sendEmptyMessageDelayed(MSG_CIRCLE_SPREAD, 6000);
				break;
			}
			super.handleMessage(msg);
		}
		
	};
	
	public AppScanCircleLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
	}

	public AppScanCircleLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}
	
	public AppScanCircleLayout(Context context) {
		super(context);

	}	
	
	public void init(){
		mCircleView = (CircleView)this.findViewById(R.id.circle_id);
		imageView = this.findViewById(R.id.iv_icon);
		mCircleView.setHandler(this.mHandler);
	}
	
	public void startCircle(){
		mHandler.postDelayed(new Runnable(){
			@Override
			public void run() {
				mCircleView.startCircleDraw();
			}
			
		}, 100);
	}

}
