/**
 * @ClassName: VirusFullScanningListRefreshTimed
 * @Description:全面扫毒过程APP/APK列表定时刷新
 * @author: hunt
 * @date: 2012-11-21
 */
package com.tencent.onesecurity.ui.model;

import java.util.ArrayList;
import java.util.List;

import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;

/**
 * @ClassName: VirusFullScanningListRefreshTimed
 * @Description:全面扫毒过程APP/APK列表定时刷新
 * @author: hunt
 * @date: 2012-11-21
 */
public class VirusFullScanningListRefreshTimed implements CartonCallBackLisener {

	// 定时操作回调接口类
	private VirusTimedListener virusTimedListener = null;
	// 待刷新列表
	private ArrayList<ScanResultModel> bufferList = null;
	// 数组取得起始位置
	private int fromIndex = 0;

	/**
	 * 构造
	 */
	public VirusFullScanningListRefreshTimed(
			VirusTimedListener virusTimedListener) {
		super();
		this.virusTimedListener = virusTimedListener;
	}

	/**
	 * 析构
	 */
	public void release() {
		this.virusTimedListener = null;
		if (null != this.bufferList) {
			this.bufferList.clear();
		}
	}

	/**
	 * 开始
	 */
	public void start() {
		if (null != this.bufferList) {
			this.bufferList.clear();
		}
		
		this.fromIndex = 0;
	}
	
	/**
	 * 定时操作内容
	 */
	@Override
	public void onTime() {

		if (null != this.virusTimedListener && null != this.bufferList
				&& this.fromIndex <= this.bufferList.size()) {

			List<ScanResultModel> subList = this.bufferList.subList(
					this.fromIndex, this.bufferList.size());

			// 定时操作回调
			this.virusTimedListener
					.timedOperation(
							VirusTimedListener.TIMED_VIRUS_FULL_SCANNING_LIST_REFRESH,
							subList);
			// 数组取得起始位置
			this.fromIndex = this.bufferList.size();
		}
	}

	/**
	 * 时间间隔
	 */
	@Override
	public int getCircleMultiple() {
		return 4; // 1:25ms
	}

	/**
	 * 暂停
	 */
	@Override
	public boolean isPause() {
		return false;
	}

	/**
	 * 待刷新列表加入成员
	 */
	public void addbufferListItem(ScanResultModel scanResultModel) {
		if (null == this.bufferList) {
			this.bufferList = new ArrayList<ScanResultModel>();
		}

		this.bufferList.add(scanResultModel);
	}
}
