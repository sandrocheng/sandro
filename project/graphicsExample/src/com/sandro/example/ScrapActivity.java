package com.sandro.example;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public class ScrapActivity extends Activity{

	private static final int CHAGE_COLOR = 100;
	
	private ScrapView scrapView;
	
	private Handler mHandler = new Handler(){
		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case CHAGE_COLOR:
				this.sendEmptyMessageDelayed(CHAGE_COLOR,20);
				scrapView.changeView();
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
		mHandler.sendEmptyMessage(CHAGE_COLOR);
		scrapView = (ScrapView)this.findViewById(R.id.scrap_view_id);
	}
	
	protected void onDestroy() {
		mHandler.removeMessages(CHAGE_COLOR);
		super.onDestroy();
	}	

	
}
