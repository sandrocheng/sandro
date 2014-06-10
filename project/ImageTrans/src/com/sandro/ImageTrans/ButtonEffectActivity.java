package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;

import com.sandro.custom.view.AppScanCircleLayout;

public class ButtonEffectActivity extends Activity{

	private AppScanCircleLayout mAppScanCircleLayout;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		this.setContentView(R.layout.button_effect_layout);
		mAppScanCircleLayout = (AppScanCircleLayout)this.findViewById(R.id.mainView);
		mAppScanCircleLayout.init();
		mAppScanCircleLayout.startCircle();
	}



}
