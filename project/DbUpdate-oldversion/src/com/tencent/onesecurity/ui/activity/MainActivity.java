package com.tencent.onesecurity.ui.activity;

import com.tencent.onesecurity.R;

import android.app.Activity;
import android.os.Bundle;

public class MainActivity extends Activity{

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		super.setContentView(R.layout.activity_main);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}


}
