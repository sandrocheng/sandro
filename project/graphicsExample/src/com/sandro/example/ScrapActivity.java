package com.sandro.example;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public class ScrapActivity extends Activity{

	private static final int CHAGE_COLOR = 100;
	private static final int SHOW_IN_WINDOW = 200;
	
	private Handler mHandler = new Handler(){
		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case CHAGE_COLOR:
				this.sendEmptyMessageDelayed(CHAGE_COLOR,20);
				break;
			case SHOW_IN_WINDOW:
				Intent intent = new Intent(ScrapActivity.this.getApplicationContext(),CoreService.class);
				ScrapActivity.this.startService(intent);
				ScrapActivity.this.finish();
				
				break;
			}
			super.handleMessage(msg);
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);//竖屏
		setContentView(R.layout.scrap_activity_main);
		mHandler.sendEmptyMessageDelayed(SHOW_IN_WINDOW,500);
//		mHandler.sendEmptyMessage(CHAGE_COLOR);
//		scrapView = (ScrapView)this.findViewById(R.id.scrap_view_id);
	}
	
	protected void onDestroy() {
		mHandler.removeMessages(CHAGE_COLOR);
		super.onDestroy();
	}	

	
}
