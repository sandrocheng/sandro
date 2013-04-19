package com.tencent.one.battery.demo.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

import com.tencent.one.battery.demo.R;
import com.tencent.one.battery.demo.activity.batteryinfo.BatteryInfoActivity;
import com.tencent.one.battery.demo.activity.device.DeviceActivity;
import com.tencent.one.battery.demo.activity.powerrank.PowerConsumeChartActivity;

public class MainActivity extends Activity implements OnClickListener {
	/** Called when the activity is first created. */
	Button btnPowerRank;

	Button btnBatteryinfo;
	
	Button btnDevice;

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		btnPowerRank = (Button) findViewById(R.id.power_rank);
		btnBatteryinfo = (Button) findViewById(R.id.batteryinfo);
		btnDevice = (Button) findViewById(R.id.device);
		btnPowerRank.setOnClickListener(this);
		btnBatteryinfo.setOnClickListener(this);
		btnDevice.setOnClickListener(this);
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		switch (v.getId()) {
		case R.id.power_rank:
			startActivity(new Intent(MainActivity.this, PowerConsumeChartActivity.class));
			break;
		case R.id.batteryinfo:
			startActivity(new Intent(MainActivity.this, BatteryInfoActivity.class));
			break;
		case R.id.device:
			startActivity(new Intent(MainActivity.this, DeviceActivity.class));
			break;
		default:
			break;
		}

	}
}