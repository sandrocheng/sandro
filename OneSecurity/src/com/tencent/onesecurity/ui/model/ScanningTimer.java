package com.tencent.onesecurity.ui.model;

import android.widget.TextView;

import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;

/**
 * @ClassName: ScanningTimer
 * @Description:全面杀毒计时
 * @author: hunt
 * @date: 2012-11-7
 */
public class ScanningTimer implements CartonCallBackLisener {

	private boolean pause = false;

	private static final String ZERO = "0";
	private static final String COLON = ":";

	private TextView textDoingTime = null;
	private TextView textDidTime = null;

	private long baseTime = 0;
	
	private long lastSecond = 0;

	// 定时操作回调接口类
	private VirusTimedListener virusTimedListener = null;

	/**
	 * 构造
	 */
	public ScanningTimer(VirusTimedListener virusTimedListener,
			TextView textScanningTime, TextView textScannedTime) {

		this.virusTimedListener = virusTimedListener;

		this.textDoingTime = textScanningTime;
		this.textDidTime = textScannedTime;
	}

	public void start() {

		baseTime = System.currentTimeMillis();

		String strTime = this.getTR(0);

		if (null != textDoingTime) {
			this.textDoingTime.setText(strTime);
		}
		if (null != textDidTime) {
			this.textDidTime.setText(strTime);
		}

		strTime = null;
	}

	@Override
	public int getCircleMultiple() {
		return 1;
	}

	public void setPause(boolean pause) {
		this.pause = pause;
	}

	@Override
	public boolean isPause() {
		return pause;
	}

	@Override
	public void onTime() {

		long thisScecond = (System.currentTimeMillis() - baseTime) / 1000;

		if (thisScecond - lastSecond >= 1){
			if (null != this.virusTimedListener) {
				// 定时操作回调
				this.virusTimedListener.timedOperation(
						VirusTimedListener.TIMED_ONE_SECOND_REFRESH, null);
			}
		}
		
		this.lastSecond = thisScecond;
		
		String strTime = this.getTR(thisScecond);

		if (null != textDoingTime) {
			this.textDoingTime.setText(strTime);
		}
		if (null != textDidTime) {
			this.textDidTime.setText(strTime);
		}

		strTime = null;
	}

	private String getTR(long second) {

		long intT = second / 60;
		long intR = second % 60;

		StringBuffer stuTR = new StringBuffer();
		// 分钟
		if (intT < 10) {
			stuTR.append(ZERO);
		}
		stuTR.append(intT);
		stuTR.append(COLON);
		// 秒
		if (intR < 10) {
			stuTR.append(ZERO);
		}
		stuTR.append(intR);

		return stuTR.toString();
	}
}
