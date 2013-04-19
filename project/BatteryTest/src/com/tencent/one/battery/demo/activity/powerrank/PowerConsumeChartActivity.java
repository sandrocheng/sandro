package com.tencent.one.battery.demo.activity.powerrank;

import java.util.ArrayList;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

import com.tencent.one.battery.core.powerrank.PowerRankFacade;
import com.tencent.one.battery.core.powerrank.manager.AppInfoManager;
import com.tencent.one.battery.core.powerrank.manager.BatteryCalManager;
import com.tencent.one.battery.core.powerrank.manager.AppInfoManager.IAppInfoListener;
import com.tencent.one.battery.core.powerrank.model.PowerRankInitModel;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper;
import com.tencent.one.battery.core.util.MiuiSpecialUtil;
import com.tencent.one.battery.demo.MainApp;
import com.tencent.one.battery.demo.R;

public class PowerConsumeChartActivity extends Activity {

	private PowerRankFacade mPowerRankFacade = null;

	private ListView costList;

	ArrayList<BatterySipper> sippers;

	private BatteryCostAdapter adapter = null;

	private AppInfoManager appInfoManager = null;

	private IAppInfosListener appInfoListener = null;

	private final int MESSAGE_GET_RUNNING_PROGRESS = 100;

	private CustomLoadingDialog spinner = null;

	private TextView softWarecostTitle;

	private TextView costHardWareTitle;

	private ImageView softWarecostUpdate;

	private ImageView hardWarecostUpdate;

	private boolean isSoftWare = true;

	private boolean isFirstIn = true;

	PowerRankInitModel powerRankInitModel = new PowerRankInitModel();

	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_battery_cost);

		mPowerRankFacade = new BatteryCalManager();

		initStringAndImg();

		costList = (ListView) findViewById(R.id.battery_cost_list);

		appInfoManager = AppInfoManager.getInstance(MainApp.getContext(),
				this.getString(R.string.power_android_system) ,
				this.getString(R.string.power_android_meida));

		softWarecostUpdate = (ImageView) findViewById(R.id.update_btn);
		softWarecostUpdate.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (!spinner.isLoading()) {
					clearList();
					initHistoryData();
					// initSoftWareData();
				}

			}
		});

		hardWarecostUpdate = (ImageView) findViewById(R.id.hardware_update_btn);
		hardWarecostUpdate.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (!spinner.isLoading()) {
					clearList();
					initSoftWareData();
					// initHareWareData();
				}

			}
		});
		// 点击title切换
		softWarecostTitle = (TextView) findViewById(R.id.cost_title);
		softWarecostTitle.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (!isSoftWare) {
					softWarecostTitle
							.setBackgroundResource(R.drawable.mode_tab_icon1_pressed);
					costHardWareTitle
							.setBackgroundResource(R.drawable.mode_tab_icon2_normal);
					softWarecostTitle.setPadding(15, 0, 15, 0);
					costHardWareTitle.setPadding(15, 0, 15, 0);
					softWarecostTitle.setTextColor(0xff6be100);
					costHardWareTitle.setTextColor(0xffffffff);
					softWarecostUpdate.setVisibility(View.VISIBLE);
					hardWarecostUpdate.setVisibility(View.GONE);
					clearList();
					// initSoftWareData();
					initHistoryData();
					isSoftWare = true;
				}
			}
		});

		// 点击title切换
		costHardWareTitle = (TextView) findViewById(R.id.cost_hardware_title);
		costHardWareTitle.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (isSoftWare) {
					softWarecostTitle
							.setBackgroundResource(R.drawable.mode_tab_icon1_normal);
					costHardWareTitle
							.setBackgroundResource(R.drawable.mode_tab_icon2_pressed);
					softWarecostTitle.setPadding(15, 0, 15, 0);
					costHardWareTitle.setPadding(15, 0, 15, 0);
					softWarecostTitle.setTextColor(0xffffffff);
					costHardWareTitle.setTextColor(0xff6be100);
					softWarecostUpdate.setVisibility(View.GONE);
					hardWarecostUpdate.setVisibility(View.VISIBLE);
					clearList();
					// initHareWareData();
					initSoftWareData();
					isSoftWare = false;
				}
			}
		});

	}

	private void initStringAndImg() {

		// 硬件蓝牙
		powerRankInitModel.hardware_bluetooth = R.drawable.hardware_bluetooth;

		powerRankInitModel.power_rank_phone_bluetooth = this
				.getString(R.string.power_rank_phone_bluetooth);
		// 硬件屏幕
		powerRankInitModel.hardware_screen = R.drawable.hardware_screen;

		powerRankInitModel.power_rank_display = this
				.getString(R.string.power_rank_display);
		// 硬件待机
		powerRankInitModel.hardware_idle = R.drawable.hardware_idle;

		powerRankInitModel.power_rank_phone_idle = this
				.getString(R.string.power_rank_phone_idle);
		// 无线信号
		powerRankInitModel.hardware_cell = R.drawable.hardware_cell;

		powerRankInitModel.power_rank_phone_radio = this
				.getString(R.string.power_rank_phone_radio);
		// 硬件WIFI
		powerRankInitModel.hardware_wifi = R.drawable.hardware_wifi;

		powerRankInitModel.power_rank_wifi = this
				.getString(R.string.power_rank_wifi);
		// 硬件电话
		powerRankInitModel.hardware_cell_phone = R.drawable.hardware_cell_phone;

		powerRankInitModel.power_rank_voice_call = this
				.getString(R.string.power_rank_voice_call);

		mPowerRankFacade.initPowerRank(powerRankInitModel,MainApp.getContext());
	}

	@Override
	protected void onResume() {
		super.onResume();

		if (appInfoListener == null) {
			appInfoListener = new IAppInfosListener();
		}
		appInfoManager.registIAppInfoListener(appInfoListener);

		// 初始化数据
		if (isFirstIn) {
			if (isSoftWare) {
				// initSoftWareData();
				initHistoryData();
			} else {
				// initHareWareData();
				initSoftWareData();
			}
		}
	}

	@Override
	protected void onPause() {
		// TODO Auto-generated method stub
		super.onPause();
		appInfoManager.unregistIAppInfoListener();
		hideSpinner();
	}

	private void hideSpinner() {
		if (spinner != null) {
			spinner.dismiss();
		}
		softWarecostTitle.setClickable(true);
		costHardWareTitle.setClickable(true);
	}

	private void showSpinner(String tips) {
		if (spinner == null) {
			spinner = new CustomLoadingDialog(PowerConsumeChartActivity.this);
		}

		softWarecostTitle.setClickable(false);
		costHardWareTitle.setClickable(false);

		spinner.setMessage(tips);
		spinner.show();
	}

	private Handler handler = new Handler() {
		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case MESSAGE_GET_RUNNING_PROGRESS:
				if (sippers != null) {
					adapter = new BCListAdapter(PowerConsumeChartActivity.this,
							sippers);
					costList = (ListView) findViewById(R.id.battery_cost_list);
					costList.setDivider(null);
					costList.setAdapter(adapter);
				} else {
					costList = (ListView) findViewById(R.id.battery_cost_list);
				}
				hideSpinner();
				break;
			default:
				break;
			}
		}
	};

	/*
	 * 初始化当前列表
	 */
	private void initSoftWareData() {
		showSpinner("Loading");

		// 对小米手机进行特殊处理
		if (MiuiSpecialUtil.isMiui()
				&& !MiuiSpecialUtil.monitorHistoryIsClosed(this
						.getContentResolver())) {
			MiuiSpecialUtil.setMonitorHistory(this.getContentResolver(), 1);
		}
		sippers = (ArrayList<BatterySipper>) mPowerRankFacade.loadPowerRank();
		for (int i = 0; i < sippers.size(); i++) {
			if (sippers.get(i).percent < 0.1) {
				sippers.get(i).percent = 0.1;
			}
		}
		new Thread(new Runnable() {
			@Override
			public void run() {
				appInfoManager.getAppNameIcon(sippers);
			}
		}, "batterySoftCostApp").start();
	}

	/*
	 * 初始化当前列表
	 */
	private void initHistoryData() {
		showSpinner("Loading");
		sippers = (ArrayList<BatterySipper>) mPowerRankFacade
				.loadHardWarePowerRank();
		if (sippers != null && sippers.size() > 0) {
			for (int i = 0; i < sippers.size(); i++) {
				if (sippers.get(i).percent < 0.1) {
					sippers.get(i).percent = 0.1;
				}
			}
		} else {
			sippers = new ArrayList<BatterySipper>();
		}
		new Thread(new Runnable() {
			@Override
			public void run() {
				appInfoManager.getAppNameIcon(sippers);
			}
		}, "batteryHareCostApp").start();
	}

	/*
	 * 清空当前列表
	 */
	private void clearList() {
		if (sippers != null && sippers.size() > 0) {
			sippers.clear();
			sippers = null;
		}

		if (adapter != null && !adapter.isEmpty()) {
			adapter.clear();
			adapter = null;
		}
	}

	private class BCListAdapter extends BatteryCostAdapter {

		public BCListAdapter(Context context,
				ArrayList<BatterySipper> batterySippers) {
			super(context, batterySippers);
		}

		@Override
		public void itemClick(View v) {
			BatteryCostHolder holder = (BatteryCostHolder) v.getTag();
			Intent intent = new Intent();
			isFirstIn = false;
			if (holder.uid > -1 && holder.packageName != null
					&& !"".equals(holder.packageName)) {
				intent = gotoAppControd(holder.packageName);
			} else if (holder.uid == -1) {
				if (MainApp.getContext().getString(R.string.power_rank_wifi)
						.equals(holder.name)) {
					intent = new Intent(Settings.ACTION_WIFI_SETTINGS);
				} else if (MainApp.getContext().getString(
						R.string.power_rank_display).equals(holder.name)) {
					intent = new Intent(Settings.ACTION_DISPLAY_SETTINGS);
				} else if (MainApp.getContext().getString(
						R.string.power_rank_phone_bluetooth)
						.equals(holder.name)) {
					intent = new Intent(Settings.ACTION_BLUETOOTH_SETTINGS);
				} else if (MainApp.getContext().getString(
						R.string.power_rank_voice_call).equals(holder.name)) {
					intent = new Intent(Settings.ACTION_SOUND_SETTINGS);
				} else {
					intent = new Intent(Settings.ACTION_SETTINGS);
				}
			} else {
				intent = new Intent(Settings.ACTION_APPLICATION_SETTINGS);
			}
			startActivity(intent);
		}
	}

	/**
	 * 跳转到当前App管理页面
	 * 
	 * @param packageName
	 * @return
	 */
	private Intent gotoAppControd(String packageName) {
		Intent intent = new Intent();
		int sdkVerson = 0;
		try {
			sdkVerson = android.os.Build.VERSION.SDK_INT;
		} catch (Exception exception) {
		}
		if (sdkVerson >= 9) {
			intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
			Uri uri = Uri.fromParts("package", packageName, null);
			intent.setData(uri);
		} else {
			String pkg;
			if (sdkVerson > 7) {
				pkg = "pkg";
			} else {
				pkg = "com.android.settings.ApplicationPkgName";
				// "android.intent.action.VIEW"
				intent.setAction(Intent.ACTION_VIEW);
				intent.setClassName("com.android.settings",
						"com.android.settings.InstalledAppDetails");
				intent.putExtra(pkg, packageName);
			}
		}
		return intent;
	}

	class IAppInfosListener implements IAppInfoListener {

		public void notifyProcess(ArrayList<BatterySipper> batList) {
			// TODO Auto-generated method stub
			sippers = (ArrayList<BatterySipper>) batList;
			if (sippers != null) {
				Message msg = new Message();
				msg.what = MESSAGE_GET_RUNNING_PROGRESS;
				handler.sendMessage(msg);
			} else {

			}
		}
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
	}
	
	
}