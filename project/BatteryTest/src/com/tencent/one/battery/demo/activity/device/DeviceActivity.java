/**
 * 
 */
package com.tencent.one.battery.demo.activity.device;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

import com.tencent.one.battery.core.device.DeviceData;
import com.tencent.one.battery.core.device.DeviceFacade;
import com.tencent.one.battery.core.device.DeviceManager;
import com.tencent.one.battery.demo.R;

/**
 * @author matrixxu
 * 
 */
public class DeviceActivity extends Activity implements OnClickListener, OnSeekBarChangeListener, OnCheckedChangeListener {

	private DeviceFacade deviceFacade = null;

	private TextView mTvScreennTimtOut = null;

	private TextView mTvScreenBrightness = null;

	private Button mBtnWifi = null;

	private Button mBtnBluetooth = null;

	private Button mBtnMobiledata = null;

	private Button mBtnAirplane = null;

	private Button mBtnHapticFeedback = null;

	private Button mBtnSyncInfo = null;

	private Button mBtnRotate = null;

	private Button mBtnScreenTimeout = null;

	private Button mBtnScreenBrightness = null;

	private Button mBtnSilent = null;

	private Button mBtnOnlyRing = null;

	private Button mBtnOnlyVibrate = null;

	private Button mBtnRingAndVibrate = null;
	
	private Button mBtnGps = null;

	private SeekBar mSbScreenTimeOut = null;

	private SeekBar mSbScreenBrightness = null;

	private CheckBox mCbScreenBrightnessAuto = null;

	private int wifiStatus = -1;

	private int bluetoothStatus = -1;

	private int mobiledataStatus = -1;

	private int airplaneStatus = -1;

	private int hapticFeedbackStatus = -1;

	private int syncInfoStatus = -1;

	private int rotateStatus = -1;

	private int screenTimeOutValue = -1;

	private int screenBrightnessValue = -1;

	private int vibrateAndRing = -1;
	
	private int gpsStatus = -1;

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onCreate(android.os.Bundle)
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_device);

		mTvScreennTimtOut = (TextView) findViewById(R.id.timeout_value);
		mTvScreenBrightness = (TextView) findViewById(R.id.screen_brightness_text);
		mBtnWifi = (Button) findViewById(R.id.btn_wifi);
		mBtnBluetooth = (Button) findViewById(R.id.btn_bluetooth);
		mBtnMobiledata = (Button) findViewById(R.id.btn_mobiledata);
		mBtnAirplane = (Button) findViewById(R.id.btn_aireplane);
		mBtnHapticFeedback = (Button) findViewById(R.id.btn_feedback);
		mBtnSyncInfo = (Button) findViewById(R.id.btn_syncinfo);
		mBtnRotate = (Button) findViewById(R.id.btn_rotate);
		mBtnScreenTimeout = (Button) findViewById(R.id.btn_timeout);
		mBtnScreenBrightness = (Button) findViewById(R.id.btn_screen_brightness);
		mSbScreenTimeOut = (SeekBar) findViewById(R.id.timeout_seekBar);
		mSbScreenBrightness = (SeekBar) findViewById(R.id.screenBrightness_seekBar);
		mCbScreenBrightnessAuto = (CheckBox) findViewById(R.id.screen_brightness_auto_cb);
		mBtnSilent = (Button) findViewById(R.id.btn_silent);
		mBtnOnlyRing = (Button) findViewById(R.id.btn_ring);
		mBtnOnlyVibrate = (Button) findViewById(R.id.btn_vibrate);
		mBtnRingAndVibrate = (Button) findViewById(R.id.btn_vibrateandring);
		mBtnGps = (Button) findViewById(R.id.btn_gps);

		mBtnAirplane.setOnClickListener(this);
		mBtnHapticFeedback.setOnClickListener(this);
		mBtnMobiledata.setOnClickListener(this);
		mBtnWifi.setOnClickListener(this);
		mBtnBluetooth.setOnClickListener(this);
		mBtnSyncInfo.setOnClickListener(this);
		mBtnRotate.setOnClickListener(this);
		mBtnScreenTimeout.setOnClickListener(this);
		mBtnScreenBrightness.setOnClickListener(this);
		mBtnSilent.setOnClickListener(this);
		mBtnOnlyRing.setOnClickListener(this);
		mBtnOnlyVibrate.setOnClickListener(this);
		mBtnRingAndVibrate.setOnClickListener(this);
		mSbScreenTimeOut.setOnSeekBarChangeListener(this);
		mSbScreenBrightness.setOnSeekBarChangeListener(this);
		mCbScreenBrightnessAuto.setOnCheckedChangeListener(this);
		mBtnGps.setOnClickListener(this);

		deviceFacade = new DeviceManager();
		deviceFacade.registDataObserver(mOnSharedPreferenceChangeListener, this);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see android.app.Activity#onResume()
	 */
	@Override
	protected void onResume() {
		checkWifiStatus();
		checkBluetoothStatus();
		checkMobiledataStatus();
		checkAirplaneStatus();
		checkHapticFeedbackStatus();
		checkSyncInfo();
		checkRotate();
		checkScreenTimeOut();
		checkScreenBrightness();
		checkGps();
		super.onResume();
	}

	private void checkAirplaneStatus() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.AIRPLANE_KEY);
		airplaneStatus = status;
		switch (status) {
		case 0:
			mBtnAirplane.setText("airplane model is close!");
			break;
		case 1:
			mBtnAirplane.setText("airplane model is open!");
			break;
		case -1:
			mBtnAirplane.setText("system error!");
			break;
		}
	}

	private void checkHapticFeedbackStatus() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.HAFEEDBACK);
		hapticFeedbackStatus = status;
		switch (status) {
		case 0:
			mBtnHapticFeedback.setText("hapticFeedback is close!");
			break;
		case 1:
			mBtnHapticFeedback.setText("hapticFeedback is open!");
			break;
		case -1:
			mBtnHapticFeedback.setText("system error!");
			break;
		}
	}

	private void checkMobiledataStatus() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.MOBILEDATA_KEY);
		mobiledataStatus = status;
		switch (status) {
		case 0:
			mBtnMobiledata.setText("mobiledata is close!");
			break;
		case 1:
			mBtnMobiledata.setText("mobiledata is open!");
			break;
		case -1:
			mBtnMobiledata.setText("system error!");
			break;
		}
	}

	private void checkBluetoothStatus() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.BLUETOOTH_KEY);
		bluetoothStatus = status;
		switch (status) {
		case 0:
			mBtnBluetooth.setText("bluetooth is close!");
			break;
		case 1:
			mBtnBluetooth.setText("bluetooth is open!");
			break;
		case -1:
			mBtnBluetooth.setText("system error!");
			break;
		}
	}

	private void checkWifiStatus() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.WIFI_KEY);
		wifiStatus = status;
		switch (status) {
		case 0:
			mBtnWifi.setText("wifi is close!");
			break;
		case 1:
			mBtnWifi.setText("wifi is open!");
			break;
		case -1:
			mBtnWifi.setText("system error!");
			break;
		}
	}

	private void checkSyncInfo() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.SYNCINFO_KEY);
		syncInfoStatus = status;
		switch (status) {
		case 0:
			mBtnSyncInfo.setText("syncinfo is close!");
			break;
		case 1:
			mBtnSyncInfo.setText("syncinfo is open!");
			break;
		case -1:
			mBtnSyncInfo.setText("system error!");
			break;
		}
	}

	private void checkRotate() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.ROTATE_KEY);
		rotateStatus = status;
		switch (status) {
		case 0:
			mBtnRotate.setText("rotate is close!");
			break;
		case 1:
			mBtnRotate.setText("rotate is open!");
			break;
		case -1:
			mBtnRotate.setText("system error!");
			break;
		}
	}

	private void checkScreenTimeOut() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.SCREENTIMEOUT_KEY);
		screenTimeOutValue = status;
		mSbScreenTimeOut.setProgress(screenTimeOutValue - 10);
	}

	private void checkScreenBrightness() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.SCREENBRIGHTNESS_KEY);

		if (status != 1) {
			if (mCbScreenBrightnessAuto.isChecked()) {
				mCbScreenBrightnessAuto.setChecked(false);
			}
			screenBrightnessValue = status;
			mSbScreenBrightness.setProgress(screenBrightnessValue - 15);
		} else {
			mCbScreenBrightnessAuto.setChecked(true);
		}

	}

	private void checkVibrateAndRing() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.RINGANDVIBRATE_KEY);
		vibrateAndRing = status;

	}
	
	private void checkGps() {
		int status = deviceFacade.getDeviceStatus(this, DeviceManager.GPS_KEY);
		gpsStatus = status;
		switch (status) {
		case 0:
			mBtnGps.setText("gps is close!");
			break;
		case 1:
			mBtnGps.setText("gps is open!");
			break;
		case -1:
			mBtnGps.setText("system error!");
			break;
		}
	}
	

	@Override
	public void onClick(View v) {
		switch (v.getId()) {
		case R.id.btn_wifi:
			boolean isOpen = false;
			switch (wifiStatus) {
			case 0:
				mBtnWifi.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnWifi.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.WIFI_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_bluetooth:
			boolean isOpen = false;
			switch (bluetoothStatus) {
			case 0:
				mBtnBluetooth.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnBluetooth.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.BLUETOOTH_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_mobiledata:
			boolean isOpen = false;
			switch (mobiledataStatus) {
			case 0:
				mBtnMobiledata.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnMobiledata.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.MOBILEDATA_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_feedback:
			boolean isOpen = false;
			switch (hapticFeedbackStatus) {
			case 0:
				mBtnHapticFeedback.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnHapticFeedback.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.HAFEEDBACK, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_aireplane:
			boolean isOpen = false;
			switch (airplaneStatus) {
			case 0:
				mBtnAirplane.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnAirplane.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.AIRPLANE_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_syncinfo:
			boolean isOpen = false;
			switch (syncInfoStatus) {
			case 0:
				mBtnSyncInfo.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnSyncInfo.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.SYNCINFO_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_rotate:
			boolean isOpen = false;
			switch (rotateStatus) {
			case 0:
				mBtnRotate.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnRotate.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.ROTATE_KEY, isOpen, 0);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_timeout:
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.SCREENTIMEOUT_KEY, false, screenTimeOutValue);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_screen_brightness:
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.SCREENBRIGHTNESS_KEY, mCbScreenBrightnessAuto.isChecked(),
					screenBrightnessValue);
			break;
		}

		switch (v.getId()) {
		case R.id.btn_ring:
			vibrateAndRing = DeviceManager.ONLY_RING;
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.RINGANDVIBRATE_KEY, false, vibrateAndRing);
			break;
		case R.id.btn_vibrate:
			vibrateAndRing = DeviceManager.ONLY_VIBRATE;
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.RINGANDVIBRATE_KEY, false, vibrateAndRing);
			break;
		case R.id.btn_silent:
			vibrateAndRing = DeviceManager.SILENT;
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.RINGANDVIBRATE_KEY, false, vibrateAndRing);
			break;
		case R.id.btn_vibrateandring:
			vibrateAndRing = DeviceManager.RING_AND_VIBRATE;
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.RINGANDVIBRATE_KEY, false, vibrateAndRing);
			break;

		}
		
		switch (v.getId()) {
		case R.id.btn_gps:
			boolean isOpen = false;
			switch (gpsStatus) {
			case 0:
				mBtnGps.setText("be open now...");
				isOpen = true;
				break;
			case 1:
				mBtnGps.setText("be closed now...");
				isOpen = false;
				break;

			}
			deviceFacade.deviceControll(DeviceActivity.this, DeviceManager.GPS_KEY, isOpen, 0);
			break;
		}
	}

	@Override
	public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
		if (seekBar.getId() == R.id.timeout_seekBar) {
			screenTimeOutValue = progress + 10;
			mTvScreennTimtOut.setText(screenTimeOutValue + "s");
		} else {
			screenBrightnessValue = progress + 15;
			mTvScreenBrightness.setText(screenBrightnessValue + "%");
		}
	}

	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
		if (isChecked) {
			mSbScreenBrightness.setVisibility(View.GONE);
			mTvScreenBrightness.setVisibility(View.GONE);
		} else {
			mSbScreenBrightness.setVisibility(View.VISIBLE);
			mTvScreenBrightness.setVisibility(View.VISIBLE);
		}

	}

	private OnSharedPreferenceChangeListener mOnSharedPreferenceChangeListener = new OnSharedPreferenceChangeListener() {

		@Override
		public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
			if (key.equals(DeviceData.WIFI_KEY)) {
				checkWifiStatus();
			}
			if (key.equals(DeviceData.BLUETOOTH_KEY)) {
				checkBluetoothStatus();
			}
			if (key.equals(DeviceData.MOBILEDATA_KEY)) {
				checkMobiledataStatus();
			}
			if (key.equals(DeviceData.HAPTICFEEDBACK_KEY)) {
				checkHapticFeedbackStatus();
			}
			if (key.equals(DeviceData.AIRPLANE_KEY)) {
				checkAirplaneStatus();
			}
			if (key.equals(DeviceData.SYNCINFO_KEY)) {
				checkSyncInfo();
			}
			if (key.equals(DeviceData.ROTATE_KEY)) {
				checkRotate();
			}
			if (key.equals(DeviceData.SCREENTIMEOUT_KEY)) {
				checkScreenTimeOut();
			}
			if (key.equals(DeviceData.SCREENBRIGHTNESS_KEY)) {
				checkScreenBrightness();
			}
			if (key.equals(DeviceData.RINGANDVIBRATE_KEY)) {
				checkVibrateAndRing();
			}
			if (key.equals(DeviceData.GPS_KEY)) {
				checkGps();
			}
		}

	};
}
