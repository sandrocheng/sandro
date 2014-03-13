package com.sandro.example;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

/**
 * 
 * @author sandrocheng
 *
 */
public class ParticleActivity extends Activity{

	private ParticleView particleView;
	
	private static final int CHAGE = 100;
	
	Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case CHAGE:
				particleView.changeView();
				this.sendEmptyMessageDelayed(CHAGE, 1);
				break;
			}
			super.handleMessage(msg);
		}
		
	};	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);//竖屏
		setContentView(R.layout.particle_activity_main);
		particleView = (ParticleView)this.findViewById(R.id.particle_view_id);
		mHandler.sendEmptyMessage(CHAGE);
	}

	@Override
	protected void onDestroy() {
		mHandler.removeMessages(CHAGE);
		super.onDestroy();
	}	
	
	

}
