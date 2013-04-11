package com.tencent.onesecurity.ui.customview.layout.booster;

import java.text.DecimalFormat;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.manager.battery.BatteryManagerImpl;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.SwitchBluetooth;
import com.tencent.onesecurity.util.SwitchMobileNetwork;
import com.tencent.onesecurity.util.SwitchScreenTimeout;
import com.tencent.onesecurity.util.SwitchWifi;
import com.tencent.onesecurity.util.ToastUtil;

public class BoosterHeaderLayout extends RelativeLayout {
	private LinearLayout llMemoryUsed;
	private TextView mMemoryUsed;
	private TextView mBoosting;
	private LinearLayout llBoostResult;
	private TextView mTvFreeUpBlank;
	private TextView mTvFreeUp;
	private TextView mTvFreeUpUnit;
	private TextView mTvStopAppsBlank;
	private TextView mTvStopApps;
	private TextView mTvBatteryBlank;
	private TextView mTvBattery;
	private TextView mTvBatteryUnit;
	private TextView mBoostWarning;
	private Context context;
	
	private final int ANIMATION_TIME = 500;
	private final int ANIMATION_TIME2 = 750;
	
	private boolean mIsBoosting;
	private boolean mIsPopShowing; // 电量在30-10之间，用于判断是否弹出了pop画面
	
	public BoosterHeaderLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		this.context = context;
	}

	public BoosterHeaderLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.context = context;
	}

	public BoosterHeaderLayout(Context context) {
		super(context);
		this.context = context;
	}

	public void prepare(CartonEngine cartonEngine) {
		llMemoryUsed = (LinearLayout) findViewById(R.id.booster_header_ll_memory_used);
		mMemoryUsed = (TextView) findViewById(R.id.booster_header_tv_memory_used);
		mBoosting = (TextView) findViewById(R.id.booster_header_tv_boosting);
		mBoosting.setVisibility(View.GONE);
		llBoostResult = (LinearLayout) findViewById(R.id.booster_header_ll_boost_result);
		mTvFreeUpBlank = (TextView) findViewById(R.id.booster_header_tv_freeup_blank);
		mTvFreeUp = (TextView) findViewById(R.id.booster_header_tv_freeup_num);
		mTvFreeUp.setVisibility(View.GONE);
		mTvFreeUpUnit = (TextView) findViewById(R.id.booster_header_tv_freeup_num_unit);
		mTvFreeUpUnit.setVisibility(View.GONE);
		mTvStopAppsBlank = (TextView) findViewById(R.id.booster_header_tv_stopapps_blank);
		mTvStopApps = (TextView) findViewById(R.id.booster_header_tv_stopapps);
		mTvStopApps.setVisibility(View.GONE);
		mTvBatteryBlank = (TextView) findViewById(R.id.booster_header_tv_battery_blank);
		mTvBattery = (TextView) findViewById(R.id.booster_header_tv_battery_num);
		mTvBattery.setVisibility(View.GONE);
		mTvBatteryUnit = (TextView) findViewById(R.id.booster_header_tv_battery_num_unit);
		mTvBatteryUnit.setVisibility(View.GONE);
		mBoostWarning = (TextView) findViewById(R.id.booster_header_boost_warning);
		mBoostWarning.setVisibility(View.GONE);
	}

	public void updateInfo() {
		llMemoryUsed.setVisibility(View.VISIBLE);
		mMemoryUsed.setText(" " + SystemBoosterManager.getInstance().getMemoryUsageRate() + "%");
		mBoosting.setVisibility(View.GONE);
	}

	public void showBoosting() {
		llMemoryUsed.setVisibility(View.GONE);
		mBoosting.setVisibility(View.VISIBLE);
		llBoostResult.setVisibility(View.VISIBLE);
		mBoostWarning.setVisibility(View.GONE);
		mIsBoosting = true;
	}
	
	public void hideBoostResult() {
		if (mIsPopShowing == false) {
			llBoostResult.setVisibility(View.VISIBLE);
			mTvFreeUpUnit.setVisibility(View.GONE);
			mTvBatteryUnit.setVisibility(View.GONE);
			mTvFreeUp.setVisibility(View.GONE);
			mTvStopApps.setVisibility(View.GONE);
			mTvBattery.setVisibility(View.GONE);
			mTvFreeUpBlank.setVisibility(View.VISIBLE);
			mTvStopAppsBlank.setVisibility(View.VISIBLE);
			mTvBatteryBlank.setVisibility(View.VISIBLE);
		}
		
		mIsBoosting = false;
		
		if (BatteryManagerImpl.mIsCharging == false && BatteryManagerImpl.mExtraLevel > 0 && BatteryManagerImpl.mExtraLevel <= BatteryManagerImpl.MIDDLE_BATTERY) {
			mBoostWarning.setVisibility(View.VISIBLE);
			llBoostResult.setVisibility(View.GONE);
		}
	}
	
	public void showLowBatteryTips() {
		if (mIsBoosting == true) {
			return;
		}
		
		if (mBoostWarning == null) {
			prepare(null);
		}
		
		llMemoryUsed.setVisibility(View.VISIBLE);
		mBoostWarning.setVisibility(View.VISIBLE);
		mBoosting.setVisibility(View.GONE);
		llBoostResult.setVisibility(View.GONE);
	}
	
	public void hideLowBatteryTips() {
		if (mBoostWarning == null) {
			prepare(null);
		}
		mBoostWarning.setVisibility(View.GONE);
		llBoostResult.setVisibility(View.VISIBLE);
	}
	
	public void showBoostStatus(int count, long ramSize) {
		mBoostWarning.setVisibility(View.GONE);
		llBoostResult.setVisibility(View.VISIBLE);
		
		mTvBatteryBlank.setVisibility(View.VISIBLE);
		mTvBattery.setVisibility(View.GONE);
		mTvBatteryUnit.setVisibility(View.GONE);
		
		String ramSizeNum = "";
		String ramUnit = "";
		String parten = "#.#";
		DecimalFormat decimal = new DecimalFormat(parten);
		if (ramSize < 1024) {
			ramSizeNum = ramSize + " ";
			ramUnit = "B";
		} else if (ramSize < 1024 * 1024) {
			ramSizeNum = decimal.format(ramSize / 1024.0) + " ";
			ramUnit = "KB";
		} else {
			ramSizeNum = decimal.format(ramSize / (1024 * 1024.0)) + " ";
			ramUnit = "MB";
		}
		
		mTvFreeUp.setText(ramSizeNum);
		mTvFreeUpUnit.setText(ramUnit);
		mTvStopApps.setText(count + "");
		
		memoryResultAnimation();
		appsResultAnimation();
		
		if (BatteryManagerImpl.mIsCharging) {// 充电中
			// 情景五：接通电源，处于充电中
		} else {
			if (BatteryManagerImpl.mExtraLevel > BatteryManagerImpl.HIGH_BATTERY) {//场景一 电量大于30%
				int time = getSavedTime(count);
				mTvBattery.setText("+" + time + " ");
				batteryResultAnimation();
				GoogleAnalyticsTracker.getInstance().ClickButton("电量统计", "电量大于30%点击加速", "", 1l);
			} else if (BatteryManagerImpl.mExtraLevel > BatteryManagerImpl.MIDDLE_BATTERY) {
				//场景三  电量介于30%与10%之间 情景三：没有接通电源，不在充电状态；30%>手机电量>10%				
				// 如果用户选择过进入省电模式就不再弹出提示框
				boolean isSaved = ConfigDao.getInstance().isSavePowerMode();
				if (isSaved) {
					mIsPopShowing = false;
					return;
				}
				
				Dialog dialog = CustomDialog
						.createCustomDialogCommonBlack(
								R.layout.layout_battery_dialog,
								context,
								context.getString(R.string.booster_10_2_30_tip1),
								context.getString(R.string.common_cancel),
								context.getString(R.string.common_enter),
								new DialogInterface.OnClickListener() {
									@Override
									public void onClick(
											DialogInterface dialog,
											int which) {
										switch (which) {
										case CustomDialog.LEFT_BUTTON_CLICK:
											dialog.dismiss();
											break;
										case CustomDialog.RIGHT_BUTTON_CLICK:
											setSavePowerMode();
											GoogleAnalyticsTracker.getInstance().ClickButton("省电", "确认切换模式", "", 1l);
											dialog.dismiss();
											
											ToastUtil.ShowSimpleTextLongToast(context.getString(R.string.booster_restore_settings_tip), true,R.layout.custom_toast);
											break;
										}
										mIsPopShowing = false;
									}
								});
				dialog.setCanceledOnTouchOutside(false);
				dialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
					
					@Override
					public void onCancel(DialogInterface dialog) {
						mIsPopShowing = false;
					}
				});
				dialog.show();
				mIsPopShowing = true;
				GoogleAnalyticsTracker.getInstance().ClickButton("电量统计", "电量小于30%大于10%点击加速", "", 1l);
				GoogleAnalyticsTracker.getInstance().trackView("用户选择省电模式页");
			} else {//  情景四：没有接通电源，不在充电状态；手机电量<10%
				GoogleAnalyticsTracker.getInstance().ClickButton("电量统计", "电量小于10%点击加速", "", 1l);
			}
			
		}
	}
	
	// 计算本次加速节省的时间
	private int getSavedTime(int count) {
		int time = 0;
		
		if (count > 40) {
			time = 6;
		} else if (count > 20) {
			time = 5;
		} else if (count > 10) {
			time = 4;
		} else if (count > 3) {
			time = 3;
		} else if (count > 0) {
			time = 2;
		}
		
		long now = System.currentTimeMillis();
		int random = (int)(now % 2);
		
		if (time > 0) {
			time -= random;
		}
		return time;
	}
	
//	public void startBoosterHeaderAnimation() {
//		setVisibility(View.VISIBLE);
//		mAlphaanimation.reset();
//		this.startAnimation(mAlphaanimation);
//	}

//	public void stopBoosterHeaderAnimation() {
//		this.clearAnimation();
//		mAlphaanimation.cancel();
//	}

//	public void changeToIdle() {
//		stopBoosterHeaderAnimation();
//		setVisibility(View.INVISIBLE);
//	}

	/**
	 * 设置省电模式，关闭WiFi、数据连接、蓝牙，将自动锁屏时间调整为15秒。
	 */
	public void setSavePowerMode() {
		boolean isSaved = ConfigDao.getInstance().isSavePowerMode();
		if (isSaved) {
			return;
		}
		
		String savedPowerMode = "";
		
		// 关闭wifi
		SwitchWifi switchWifi = new SwitchWifi(context);
		boolean isWifiOpened = switchWifi.getWifiStatus();
		savedPowerMode = "wifi:" + isWifiOpened;
		switchWifi.setWifiStatus(false);

		// 关闭手机网络
		SwitchMobileNetwork switchMobileNetwork = new SwitchMobileNetwork(context);
		boolean isMobileNetworkOpened = switchMobileNetwork.getMobileDataStatus();
		savedPowerMode += ";mobilenetwork:" + isMobileNetworkOpened;
		switchMobileNetwork.setMobileDataStatus(false);

		// 关闭蓝牙
		SwitchBluetooth switchBluetooth = new SwitchBluetooth(context);
		boolean isBluetoothOpened = switchBluetooth.getBluetoothStatus();
		savedPowerMode += ";bluetooth:" + isBluetoothOpened;
		switchBluetooth.setBluetoothStatus(false);

		// 设置自动锁屏时间为15秒
		SwitchScreenTimeout switchScreenTimeout = new SwitchScreenTimeout(context);
		int offTime = switchScreenTimeout.getScreenOffTime();
		savedPowerMode += ";screen:" + offTime;
		switchScreenTimeout.setScreenOffTime(15000);
		
		ConfigDao.getInstance().setSavePowerMode(true);
		ConfigDao.getInstance().setUserPowerMode(savedPowerMode);
	}
	
	/**
	 * 当电量及充电状态发生变化时，更新UI
	 * @author gordonbi
	 */
	public void updateLowBatteryTips() {
		if (BatteryManagerImpl.mExtraLevel == 0) {
			return;
		}
		
		if (BatteryManagerImpl.mIsCharging == false
				&& BatteryManagerImpl.mExtraLevel < BatteryManagerImpl.MIDDLE_BATTERY) {
			showLowBatteryTips();
		} else {
			hideLowBatteryTips();
		}
	}

	/**
	 * @author gordonbi
	 */
	private void memoryResultAnimation() {
		int height = mTvFreeUpBlank.getHeight()/2;
		TranslateAnimation ta = new TranslateAnimation(0, 0, 0, height);
		ta.setDuration(ANIMATION_TIME);
		mTvFreeUpBlank.startAnimation(ta);
		
		TranslateAnimation ta2 = new TranslateAnimation(0, 0, -height, 0);
		ta2.setDuration(ANIMATION_TIME2);
		mTvFreeUp.startAnimation(ta2);
		mTvFreeUpUnit.startAnimation(ta2);
		
		mTvFreeUpBlank.setVisibility(View.GONE);
		mTvFreeUp.setVisibility(View.VISIBLE);
		mTvFreeUpUnit.setVisibility(View.VISIBLE);
	}
	
	private void appsResultAnimation() {
		int height = mTvStopAppsBlank.getHeight()/2;
		TranslateAnimation ta = new TranslateAnimation(0, 0, 0, height);
		ta.setDuration(ANIMATION_TIME);
		mTvStopAppsBlank.startAnimation(ta);
		
		TranslateAnimation ta2 = new TranslateAnimation(0, 0, -height, 0);
		ta2.setDuration(ANIMATION_TIME2);
		mTvStopApps.startAnimation(ta2);
		
		mTvStopAppsBlank.setVisibility(View.GONE);
		mTvStopApps.setVisibility(View.VISIBLE);
	}
	
	private void batteryResultAnimation() {
		int height = mTvBatteryBlank.getHeight()/2;
		TranslateAnimation ta = new TranslateAnimation(0, 0, 0, height);
		ta.setDuration(ANIMATION_TIME);
		mTvBatteryBlank.startAnimation(ta);
		
		TranslateAnimation ta2 = new TranslateAnimation(0, 0, -height, 0);
		ta2.setDuration(ANIMATION_TIME2);
		mTvBattery.startAnimation(ta2);
		mTvBatteryUnit.startAnimation(ta2);
		
		mTvBatteryBlank.setVisibility(View.GONE);
		mTvBattery.setVisibility(View.VISIBLE);
		mTvBatteryUnit.setVisibility(View.VISIBLE);
	}
	
}
