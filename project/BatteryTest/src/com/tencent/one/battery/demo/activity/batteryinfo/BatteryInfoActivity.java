/**
 * 
 */
package com.tencent.one.battery.demo.activity.batteryinfo;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.BatteryManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.preference.PreferenceManager;
import android.widget.TextView;

import com.tencent.one.battery.core.batteryinfo.BatteryInfoManager;
import com.tencent.one.battery.demo.R;

/**
 * @author matrixxu
 * 
 */
public class BatteryInfoActivity extends Activity {

	private TextView mChargeStatus;

	private TextView mChargeTime;

	private TextView mCurrentLevel;

	private SharedPreferences localEditor = null;

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_batterinfo);
		mChargeStatus = (TextView) findViewById(R.id.charge_status);
		mChargeTime = (TextView) findViewById(R.id.charge_time);
		mCurrentLevel = (TextView) findViewById(R.id.current_level);

		localEditor = PreferenceManager.getDefaultSharedPreferences(this);
		localEditor.registerOnSharedPreferenceChangeListener(osp);
		onView();

	}

	private void onView() {
		mCurrentLevel.setText(String.valueOf(localEditor.getInt(BatteryInfoManager.LEVEL_KEY, 0)));
		boolean isPlugged = localEditor.getBoolean(BatteryInfoManager.IS_PLUGGED, false);
		if (isPlugged) {
			if (localEditor.getInt(BatteryInfoManager.PLUGGED_TYPE_KEY, 0) == BatteryManager.BATTERY_PLUGGED_AC) {
				mChargeStatus.setText("connect AC POWER!");
			}
			if (localEditor.getInt(BatteryInfoManager.PLUGGED_TYPE_KEY, 0) == BatteryManager.BATTERY_PLUGGED_USB) {
				mChargeStatus.setText("connect USB POWER!");
			}
			mChargeTime.setText(String.valueOf(localEditor.getInt(BatteryInfoManager.CHARG_TIME_KEY, 0)));
		} else {
			mChargeStatus.setText("not conntect power!");
			mChargeTime.setText("not connect power!");
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onDestroy()
	 */
	@Override
	protected void onDestroy() {
		super.onDestroy();
		localEditor.unregisterOnSharedPreferenceChangeListener(osp);
	}

	private Handler mHandler = new Handler() {

		/*
		 * (non-Javadoc)
		 * 
		 * @see android.os.Handler#handleMessage(android.os.Message)
		 */
		@Override
		public void handleMessage(Message msg) {
			// TODO Auto-generated method stub
			super.handleMessage(msg);
		}

	};

	private OnSharedPreferenceChangeListener osp = new SharedPreferences.OnSharedPreferenceChangeListener() {

		@Override
		public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
			// TODO Auto-generated method stub
			onView();
		}
	};
}
