package com.sandro.example;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;


public class MainActivity extends Activity {
	
	private static final int CHAGE_COLOR = 100;
	
	ColorMatirxTestView imageView;
	
	private int colorMatrixIndex = 0;
	
	public static final float COLOR_MATRIX[][] = {
		{
			1,0,0,0,0,
			0,1,0,0,0,
			0,0,1,0,0,
			0,0,0,1,0			
		}
		,{
			0.75f,0,0,0,0,
			0,1,0,0,0,
			0,0,0,0,255,
			0,0,0,1,0		
		}
		,{
			0.5f,0,0,0,0,
			0,0.5f,0,0,0,
			0,0,0,0,255,
			0,0,0,1,0			
		}
	};
	
	Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			switch(msg.what){
			case CHAGE_COLOR:
				colorMatrixIndex ++;
				if(colorMatrixIndex >= COLOR_MATRIX.length){
					colorMatrixIndex = 0;
				}
//				Log.i("sandro", "colorMatrixIndex : " + colorMatrixIndex);
				imageView.changeColor(COLOR_MATRIX[colorMatrixIndex]);
				this.sendEmptyMessageDelayed(CHAGE_COLOR, 5000);
				break;
			}
			super.handleMessage(msg);
		}
		
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);//竖屏
		setContentView(R.layout.activity_main);
		imageView = (ColorMatirxTestView)this.findViewById(R.id.image_view);
		mHandler.sendEmptyMessage(CHAGE_COLOR);
	}

	@Override
	protected void onDestroy() {
		mHandler.removeMessages(CHAGE_COLOR);
		super.onDestroy();
	}
	
	
	

}
