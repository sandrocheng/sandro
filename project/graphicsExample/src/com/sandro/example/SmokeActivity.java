package com.sandro.example;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public class SmokeActivity extends Activity{

	private static final int CHAGE_COLOR = 100;
	
	private SmokeView smokeView;
	
	private Handler mHandler = new Handler(){
		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case CHAGE_COLOR:
				this.sendEmptyMessageDelayed(CHAGE_COLOR,1);
				smokeView.changeSmoke();
				break;
			}
			super.handleMessage(msg);
		}
	};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);//竖屏
		setContentView(R.layout.smoke_activity_main);
		smokeView = (SmokeView)this.findViewById(R.id.smoke_view_id);
		mHandler.sendEmptyMessage(CHAGE_COLOR);
	}
	@Override
	protected void onDestroy() {
		mHandler.removeMessages(CHAGE_COLOR);
		super.onDestroy();
	}
	
	

}
