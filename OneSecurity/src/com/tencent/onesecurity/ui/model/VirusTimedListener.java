/**
 * 
 */
package com.tencent.onesecurity.ui.model;

/**
 * @ClassName: VirusScanTimedListener
 * @Description:定时操作回调接口类
 * @author: hunt
 * @date: 2012-11-7
 */
public interface VirusTimedListener {

	/**
	 * 全面扫毒中列表刷新
	 */
	public final static int TIMED_VIRUS_FULL_SCANNING_LIST_REFRESH = 1;
	
	/**
	 * 1s画面刷新
	 */
	public final static int TIMED_ONE_SECOND_REFRESH = 2;

	/**
	 * 初始化定时操作回调接口
	 */
	public void initTimed(int operationType, Object obj);
	
	/**
	 * 定时操作回调接口
	 */
	public void timedOperation(int operationType, Object obj);
}
