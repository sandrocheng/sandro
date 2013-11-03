package com.sandro.smstotxlqqmail.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.Bundle;
import android.widget.TextView;

import com.sandro.smstotxlqqmail.R;

public class MainActivity extends Activity {

	private TextView tv ;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		tv = (TextView)this.findViewById(R.id.tv);
		IntentFilter mIntentFilter = new IntentFilter();   
		mIntentFilter.addAction(Intent.ACTION_BATTERY_CHANGED);   
		registerReceiver(mIntentReceiver, mIntentFilter);
	}

	@Override
	protected void onDestroy() {
		this.unregisterReceiver(mIntentReceiver);
		super.onDestroy();
	}
	
	private BroadcastReceiver mIntentReceiver = new BroadcastReceiver(){

		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(Intent.ACTION_BATTERY_CHANGED)){
				tv.setText("当前电量 ：" + intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0));
			}
		}
		
	};
	
}
