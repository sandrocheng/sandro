package com.tencent.one.battery.core.powerrank.model;


public class PowerRankInitModel {

	public PowerRankInitModel() {
	}
	
	// 硬件蓝牙
	public int hardware_bluetooth;

	public String power_rank_phone_bluetooth;
	// 硬件屏幕
	public int hardware_screen;

	public String power_rank_display;
	// 硬件待机
	public int hardware_idle;

	public String power_rank_phone_idle;
	// 无线信号
	public int hardware_cell;

	public String power_rank_phone_radio;
	// 硬件WIFI
	public int hardware_wifi;

	public String power_rank_wifi;
	// 硬件电话
	public int hardware_cell_phone;

	public String power_rank_voice_call;
}
