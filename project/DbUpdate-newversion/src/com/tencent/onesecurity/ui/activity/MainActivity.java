package com.tencent.onesecurity.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.update.UpdateManager;

public class MainActivity extends Activity{
		
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		if(UpdateManager.getInstance().isNeedToUpdateShow()){
			Intent intent = new Intent(this,UpdateActivity.class);
			this.startActivity(intent);
			finish();
			return;
		}
		super.setContentView(R.layout.activity_main);
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}


}
