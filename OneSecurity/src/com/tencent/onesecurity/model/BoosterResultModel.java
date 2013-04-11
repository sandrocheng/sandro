package com.tencent.onesecurity.model;

/**
 * Booster画面的显示项目model
* @ClassName: BoosterResultModel
* @Description:
* @author: Jack Wang
* @date: 2012-11-8 上午10:37:12
*
 */
public class BoosterResultModel {
	/** 内存使用率 */
	private int memoryUsageRate;
	/** 内存使用率 */
	private int runningAppsCount;
	/** 上次优化时间 */
	private String lastBoostedTime;
	/** 仪表盘指针的角度 */
	private float indicatorDegree;
	
	public BoosterResultModel() {
		
	}

	public int getMemoryUsageRate() {
		return memoryUsageRate;
	}

	public void setMemoryUsageRate(int memoryUsageRate) {
		this.memoryUsageRate = memoryUsageRate;
	}

	public int getRunningAppsCount() {
		return runningAppsCount;
	}

	public void setRunningAppsCount(int runningAppsCount) {
		this.runningAppsCount = runningAppsCount;
	}

	public String getLastBoostedTime() {
		return lastBoostedTime;
	}

	public void setLastBoostedTime(String lastBoostedTime) {
		this.lastBoostedTime = lastBoostedTime;
	}

	public float getIndicatorDegree() {
		return indicatorDegree;
	}

	public void setIndicatorDegree(float indicatorDegree) {
		this.indicatorDegree = indicatorDegree;
	}
}
