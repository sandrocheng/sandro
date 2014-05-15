package com.sandro.example;

import android.app.Activity;
import android.os.Bundle;

/**
 * 伸缩可滑动的卡片效果
 * @author sandrocheng
 *
 */
public class CardActivity extends Activity{

	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.card_activity_main);
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}

}
