package com.tencent.onesecurity.ui.activity;

import com.tencent.onesecurity.R;

import android.app.Activity;
import android.os.Bundle;

public class UpdateActivity extends Activity{

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.update_layout);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}

}
