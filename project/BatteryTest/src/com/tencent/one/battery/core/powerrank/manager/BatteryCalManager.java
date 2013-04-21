package com.tencent.one.battery.core.powerrank.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.tencent.one.battery.core.powerrank.PowerRankFacade;
import com.tencent.one.battery.core.powerrank.model.PowerRankInitModel;
import com.tencent.one.battery.core.powerrank.model.PowerRankListModel;
import com.tencent.one.battery.core.powerrank.proxy.BatteryStatsImplProxy;
import com.tencent.one.battery.core.powerrank.proxy.BatteryStatsProxy;
import com.tencent.one.battery.core.powerrank.proxy.PowerProfileProxy;
import com.tencent.one.battery.core.powerrank.proxy.ProcProxy;
import com.tencent.one.battery.core.powerrank.proxy.ProcessProxy;
import com.tencent.one.battery.core.powerrank.proxy.SensorProxy;
import com.tencent.one.battery.core.powerrank.proxy.TimerProxy;
import com.tencent.one.battery.core.powerrank.proxy.UidProxy;
import com.tencent.one.battery.core.powerrank.proxy.WakelockProxy;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper;
import com.tencent.one.battery.core.powerrank.vo.BatterySipper.DrainType;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;

public class BatteryCalManager implements PowerRankFacade {

	private String TAG = "BatteryCalManager";

	private PowerProfileProxy powerProfile;

	private BatteryStatsImplProxy batteryStatsImpl;

	private BatteryStatsProxy batteryInfo;

	private int mStatsType;

	private double mMaxPower = 1; // 耗电最大的电量

	private double mTotalPower; // 总耗电量

	private double mHardWareHTotalPower; // 总硬件耗电量

	private double mWifiPower; // WIFI的总耗电量

	private double mBluetoothPower; // 蓝牙的总耗电量

	private double btPower; // 蓝牙硬件耗电量ma

	private PowerRankInitModel powerRankInitModel = new PowerRankInitModel();

	private static Context appContext = null;

	/** 构造函数 */
	public BatteryCalManager() {

	}

	private void refresh() {
		mMaxPower = 0;
		mTotalPower = 0;
		mHardWareHTotalPower = 0;
		mWifiPower = 0;
		mBluetoothPower = 0;
	}

	/**
	 * 过滤其中的数据
	 * 
	 * @param mUsageList
	 * 
	 * @param sippers
	 * @return
	 */
	private List<BatterySipper> getsoftCostSipper(List<BatterySipper> mUsageList) {
		List<BatterySipper> softCostsippers = new ArrayList<BatterySipper>();

		for (BatterySipper sipper : mUsageList) {
			if (sipper.uid < 1 || sipper.uid > 10000) {
				softCostsippers.add(sipper);
			} else if (sipper.uid != 0) {
				this.mTotalPower -= sipper.getSortValue();
			}
		}
		mUsageList.clear();
		mUsageList = softCostsippers;
		return softCostsippers;
	}

	/**
	 * 取得各个参数的百分比
	 * 
	 * @param mUsageList
	 * 
	 * @param sippers
	 */
	private void getPercent(List<BatterySipper> mUsageList) {

		if (mUsageList != null && mUsageList.size() == 1) {
			mUsageList.get(0).percent = 100;
		} else {
			for (BatterySipper sipper : mUsageList) {
				final double percentOfTotal = ((sipper.getSortValue() / this.mTotalPower) * 100);
				sipper.percent = Math.round(percentOfTotal * 100) / 100.0;

			}
		}
	}

	private void getPowerUsageList(List<BatterySipper> mUsageList) {
		// 在方法里进行排序，取到的只要用就可以了
		Collections.sort(mUsageList);
	}

	/**
	 * 显示硬件耗电量计算结果
	 */
	private void getHardWarePowerUsageList(
			List<BatterySipper> mHardwareUsageList) {
		// 在方法里进行排序，取到的只要用就可以了
		Collections.sort(mHardwareUsageList);
	}

	private void getHardWarePercent(List<BatterySipper> mHardwareUsageList) {
		for (BatterySipper sipper : mHardwareUsageList) {
			final double percentOfTotal = ((sipper.getSortValue() / this.mHardWareHTotalPower) * 100);
			sipper.percent = Math.round(percentOfTotal * 100) / 100.0;

		}
	}

	/**
	 * 对应源码中processMiscUsage方法
	 * 
	 * @param powerRandList
	 */
	private void processMiscUsage(PowerRankListModel powerRandList) {
		final int which = mStatsType;
		long uSecTime = SystemClock.elapsedRealtime() * 1000;
		final long uSecNow = batteryStatsImpl.computeBatteryRealtime(uSecTime,
				which);

		// final long timeSinceUnplugged = uSecNow;

		addBluetoothUsage(uSecNow, powerRandList);

		getRadioUsage(uSecNow, powerRandList);
		getScreenUsage(uSecNow, powerRandList);
		getIdleUsage(uSecNow, powerRandList);
		getWiFiUsage(uSecNow, powerRandList);
		getPhoneUsage(uSecNow, powerRandList);
	}

	/**
	 * 
	 * 蓝牙硬件耗电的3600倍率
	 * 
	 * @param uSecNow
	 *            电池的使用时间 单位毫秒
	 * @param powerRandList
	 */
	private void addBluetoothUsage(long uSecNow,
			PowerRankListModel powerRandList) {
		if (powerProfile.getPOWER_BLUETOOTH_ON() == null) {
			return;
		}
		long btOnTimeMs = batteryStatsImpl.getBluetoothOnTime(uSecNow,
				mStatsType) / 1000;
		Log.i("BatteryCalManager", "addBluetoothUsage btOnTimeMs : "
				+ btOnTimeMs + " , uSecNow : " + uSecNow);
		btPower = btOnTimeMs
				* powerProfile.getAveragePower(powerProfile
						.getPOWER_BLUETOOTH_ON()) / 1000;
		Log.i("BatteryCalManager", "addBluetoothUsage btPower : " + btPower
				+ " , uSecNow : " + uSecNow);
		long btPingCount = batteryStatsImpl.getBluetoothPingCount();
		btPower += (btPingCount * powerProfile
				.getAveragePower(powerProfile.POWER_BLUETOOTH_AT_CMD)) / 1000;
		Log.i("BatteryCalManager", "addBluetoothUsage btPower : " + btPower);
		BatterySipper bs = addEntry(powerRandList,
				powerRankInitModel.power_rank_phone_bluetooth,
				DrainType.BLUETOOTH, btOnTimeMs,
				powerRankInitModel.hardware_bluetooth, btPower
						+ mBluetoothPower);
		aggregateSippers(bs, powerRandList.mBluetoothSippers, "Bluetooth");

	}

	/**
	 * App的耗电计算(以uid为计算单位)。 <br>
	 * 1) 确定电池信息取值的类型(mStatsType)，获取电池使用时间 ; <br>
	 * 2) 计算每个uid下的耗电信息 ; <br>
	 * 3) 计算系统的额外awake耗电，加入到系统耗电中
	 * 
	 * @since 1.0
	 * @author LionLiu
	 * @param powerRandList
	 */
	private void processAppUsage(PowerRankListModel powerRandList) {

		// BatteryStats取值的类型
		// 具体值含义-TODO
		final int which = mStatsType;
		// 电池的实时使用时间(微秒)
		long uSecTime = batteryStatsImpl.computeBatteryRealtime(SystemClock
				.elapsedRealtime() * 1000, which);
		if (0 == uSecTime) {
			return;
		}

		Log.i(TAG, "电池使用时间 uSecTime : " + uSecTime);
		// 用于记录电池使用时间，并显示的变量
		// mStatsPeriod = uSecTime;

		// 计算每个uid的耗电量(具体业务在UidStatsManager中)
		UidStatsManager uidStatsManager = new UidStatsManager();
		uidStatsManager.calUidPowerUsage(appContext, batteryStatsImpl,
				powerProfile, batteryInfo, uSecTime, which);
		// mAppWifiRunning = uidStatsManager.mAppWifiRunning;
		mMaxPower = uidStatsManager.mMaxPower;
		mTotalPower = uidStatsManager.mTotalPower;
		mWifiPower = uidStatsManager.mWifiPower;
		mBluetoothPower = uidStatsManager.mBluetoothPower;
		powerRandList.mUsageList = uidStatsManager.mUsageList;
		powerRandList.mWifiSippers = uidStatsManager.mWifiSippers;
		powerRandList.mBluetoothSippers = uidStatsManager.mBluetoothSippers;
		// 手机除了 屏幕和应用持有的wake lock以外，还有可能有额外的awake状态。
		// 这里需要计算是否存在这种时间，如果有，则归入到 系统耗电中。
		if (uidStatsManager.osApp != null) {
			// 手机的正常运行时间(毫秒)
			long wakeTimeMillis = batteryStatsImpl.computeBatteryUptime(
					SystemClock.uptimeMillis() * 1000, which) / 1000;
			Log.i(TAG, "wakeTimeMillis before: " + wakeTimeMillis);
			// 减去APP持有的wake lock时间和屏幕开启的时间
			wakeTimeMillis -= uidStatsManager.appWakelockTime
					+ (batteryStatsImpl.getScreenOnTime(SystemClock
							.elapsedRealtime(), which) / 1000);
			Log.i(TAG, "wakeTimeMillis end: " + wakeTimeMillis);
			// 如果减后的值还大于0，说明存在系统造成的awake状态
			if (wakeTimeMillis > 0) {
				double power = (wakeTimeMillis
						* powerProfile.getAveragePower(powerProfile
								.get_POWER_CPU_AWAKE()) / 1000);
				Log.i(TAG, "OS wakeLockTime " + wakeTimeMillis + " power "
						+ power);
				BatterySipper osApp = uidStatsManager.osApp;
				osApp.wakeLockTime += wakeTimeMillis;
				osApp.value += power;
				osApp.values[0] += power;
				if (osApp.value > mMaxPower)
					mMaxPower = osApp.value;
				mTotalPower += power;
			}
		}
	}

	/**
	 * 获取屏幕打开时间以及耗费电量值以及时间ok
	 * 
	 * @param uSecNow
	 *            电池使用时间
	 * @param powerRandList
	 */
	private void getScreenUsage(long uSecNow, PowerRankListModel powerRandList) {
		double powerScreenUsage = 0;
		long screenOnTimeMs = batteryStatsImpl.getScreenOnTime(uSecNow,
				mStatsType) / 1000;
		powerScreenUsage += screenOnTimeMs
				* powerProfile.getAveragePower(powerProfile
						.get_POWER_SCREEN_ON());
		final double screenFullPower = powerProfile
				.getAveragePower(powerProfile.get_POWER_SCREEN_FULL());
		for (int i = 0; i < BatteryStatsProxy.NUM_SCREEN_BRIGHTNESS_BINS; i++) {
			double screenBinPower = screenFullPower * (i + 0.5f)
					/ BatteryStatsProxy.NUM_SCREEN_BRIGHTNESS_BINS;
			long brightnessTime = batteryStatsImpl.getScreenBrightnessTime(i,
					uSecNow, mStatsType) / 1000;
			powerScreenUsage += screenBinPower * brightnessTime;
		}
		powerScreenUsage /= 1000; // To seconds
		// screenUsage = powerScreenUsage;

		// 将硬件屏幕消耗获得的数据放到列表中
		addEntry(powerRandList, powerRankInitModel.power_rank_display,
				DrainType.SCREEN, screenOnTimeMs,
				powerRankInitModel.hardware_screen, powerScreenUsage);
	}

	/**
	 * 系统待机耗电量以及时间ok
	 * 
	 * @param powerRandList
	 */
	private void getIdleUsage(long uSecNow, PowerRankListModel powerRandList) {
		long idleTimeMs = (uSecNow - batteryStatsImpl.getScreenOnTime(uSecNow,
				mStatsType)) / 1000;
		double idlePower = (idleTimeMs * powerProfile
				.getAveragePower(powerProfile.get_POWER_CPU_IDLE())) / 1000;
		// idleUsage = idlePower;

		// 硬件待机消耗放到列表中
		addEntry(powerRandList, powerRankInitModel.power_rank_phone_idle,
				DrainType.IDLE, idleTimeMs, powerRankInitModel.hardware_idle,
				idlePower);
	}

	/**
	 * 手机射频耗电量以及时间ok
	 * 
	 * @param powerRandList
	 */
	private void getRadioUsage(long uSecNow, PowerRankListModel powerRandList) {

		double power = 0;
		/*
		 * 由于Android2.**系统
		 * 中signalStrength类中没有NUM_SIGNAL_STRENGTH_BINS这个变量，在这里暂时先写个固定值
		 */
		final int BINS = 5;// signalStrength.get_NumSignalStrengthBins();
		long signalTimeMs = 0;
		for (int i = 0; i < BINS; i++) {
			long strengthTimeMs = batteryStatsImpl.getPhoneSignalStrengthTime(
					i, uSecNow, mStatsType) / 1000;
			power += strengthTimeMs
					/ 1000
					* powerProfile.getAveragePower(powerProfile
							.get_POWER_RADIO_ON(), i);
			signalTimeMs += strengthTimeMs;
		}
		long scanningTimeMs = batteryStatsImpl.getPhoneSignalScanningTime(
				uSecNow, mStatsType) / 1000;
		power += scanningTimeMs
				/ 1000
				* powerProfile.getAveragePower(powerProfile
						.get_POWER_RADIO_SCANNING());
		// radioUsage = power;

		// 无线信号的数据放到列表中
		BatterySipper bs = addEntry(powerRandList,
				powerRankInitModel.power_rank_phone_radio, DrainType.CELL,
				signalTimeMs, powerRankInitModel.hardware_cell, power);
		if (signalTimeMs != 0) {
			bs.noCoveragePercent = batteryStatsImpl.getPhoneSignalStrengthTime(
					0, uSecNow, mStatsType)
					/ 1000 * 100.0 / signalTimeMs;
		}
	}

	/**
	 * wifi耗电量以及时间
	 * 
	 * @param powerRandList
	 */
	private void getWiFiUsage(long uSecNow, PowerRankListModel powerRandList) {
		long runningTimeMs = batteryStatsImpl.getGlobalWifiRunningTime(uSecNow,
				mStatsType) / 1000;
		if (runningTimeMs < 0) {
			runningTimeMs = 0;
		}
		double wifiPower = runningTimeMs
				* powerProfile
						.getAveragePower(powerProfile.get_POWER_WIFI_ON())
				/ 1000;
		// wiFiUsage = wifiPower;

		// 将硬件WIFI耗电量加入到列表中
		BatterySipper bs = addEntry(powerRandList,
				powerRankInitModel.power_rank_wifi, DrainType.WIFI,
				runningTimeMs, powerRankInitModel.hardware_wifi, wifiPower
						+ mWifiPower);
		aggregateSippers(bs, powerRandList.mWifiSippers, "WIFI");
	}

	/**
	 * 计算通话电话消耗电量
	 * 
	 * @param uSecNow
	 * @param powerRandList
	 */
	private void getPhoneUsage(long uSecNow, PowerRankListModel powerRandList) {
		long phoneOnTimeMs = batteryStatsImpl.getPhoneOnTime(uSecNow,
				mStatsType) / 1000;
		double phoneUsage = powerProfile.getAveragePower(powerProfile
				.get_POWER_RADIO_ACTIVE())
				* phoneOnTimeMs / 1000;
		// phoneUsages = phoneUsage;

		// 将硬件电话耗电量加入到列表中
		addEntry(powerRandList, powerRankInitModel.power_rank_voice_call,
				DrainType.PHONE, phoneOnTimeMs,
				powerRankInitModel.hardware_cell_phone, phoneUsage);
	}

	/**
	 * 将已有的耗电相关数据，放到总的列表中
	 * 
	 * @param label
	 * @param drainType
	 * @param time
	 * @param iconId
	 * @param power
	 * @return
	 */
	private BatterySipper addEntry(PowerRankListModel powerRandList,
			String label, DrainType drainType, long time, int iconId,
			double power) {
		// if (power > mMaxPower)
		// mMaxPower = power;
		this.mHardWareHTotalPower += power;
		// BatterySipper bs = new BatterySipper(getActivity(), mRequestQueue,
		// mHandler,
		// label, drainType, iconId, null, new double[] {power});
		BatterySipper bs = new BatterySipper(appContext, label, drainType,
				iconId, -1, new double[] { power });
		bs.usageTime = time;
		bs.iconId = iconId;
		powerRandList.mHardwareUsageList.add(bs);
		// mUsageList.add(bs);
		return bs;
	}

	/**
	 * 软件和硬件同时耗电进行累加，求均
	 * 
	 * @param bs
	 * @param from
	 * @param tag
	 */
	private void aggregateSippers(BatterySipper bs, List<BatterySipper> from,
			String tag) {
		for (int i = 0; i < from.size(); i++) {
			BatterySipper wbs = from.get(i);
			Log.i(TAG, tag + " adding sipper " + wbs + ": cpu=" + wbs.cpuTime);
			bs.cpuTime += wbs.cpuTime;
			bs.gpsTime += wbs.gpsTime;
			bs.wifiRunningTime += wbs.wifiRunningTime;
			bs.cpuFgTime += wbs.cpuFgTime;
			bs.wakeLockTime += wbs.wakeLockTime;
			bs.tcpBytesReceived += wbs.tcpBytesReceived;
			bs.tcpBytesSent += wbs.tcpBytesSent;
		}
	}

	@Override
	public List<BatterySipper> loadPowerRank() {
		this.refresh();

		PowerRankListModel powerRandList = new PowerRankListModel();
		this.processAppUsage(powerRandList);
		powerRandList.mUsageList = getsoftCostSipper(powerRandList.mUsageList);
		getPowerUsageList(powerRandList.mUsageList);
		getPercent(powerRandList.mUsageList);
		return powerRandList.mUsageList;
	}

	@Override
	public List<BatterySipper> loadHardWarePowerRank() {
		this.refresh();

		PowerRankListModel powerRandList = new PowerRankListModel();
		this.processAppUsage(powerRandList);
		this.processMiscUsage(powerRandList);
		getHardWarePercent(powerRandList.mHardwareUsageList);
		getHardWarePowerUsageList(powerRandList.mHardwareUsageList);
		return powerRandList.mHardwareUsageList;
	}

	@Override
	public boolean initPowerRank(PowerRankInitModel model, Context context) {
		if (context == null) {
			return false;
		}
		appContext = context;

		if (model != null) {
			powerRankInitModel = model;
		}

		powerProfile = new PowerProfileProxy(appContext);
		Log.i("BatteryCalManager", "powerProfile.POWER_CPU_ACTIVE : "
				+ powerProfile.get_POWER_CPU_ACTIVE());

		batteryInfo = new BatteryStatsProxy(appContext);
		mStatsType = batteryInfo.get_STATS_SINCE_UNPLUGGED();
		Log.i("BatteryCalManager", "batteryStats.STATS_SINCE_CHARGED : "
				+ mStatsType);

		byte[] staticstisData = batteryInfo.getStatistics(appContext);
		batteryStatsImpl = new BatteryStatsImplProxy(appContext, staticstisData);

		new UidProxy(appContext);
		new ProcProxy(appContext);
		new WakelockProxy(appContext);
		new TimerProxy(appContext);
		new SensorProxy(appContext);
		new ProcessProxy(appContext);
		return true;
	}

}
