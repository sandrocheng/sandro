package com.tencent.one.battery.core.powerrank.model;

import java.util.ArrayList;
import java.util.List;

import com.tencent.one.battery.core.powerrank.vo.BatterySipper;


public class PowerRankListModel {

	public PowerRankListModel() {
	}
	/** 软件排行列表 */
	public List<BatterySipper> mUsageList = new ArrayList<BatterySipper>();
	/** 硬件排行列表*/
	public List<BatterySipper> mHardwareUsageList = new ArrayList<BatterySipper>();

	public List<BatterySipper> mWifiSippers = new ArrayList<BatterySipper>();

	public List<BatterySipper> mBluetoothSippers = new ArrayList<BatterySipper>();
	
}
