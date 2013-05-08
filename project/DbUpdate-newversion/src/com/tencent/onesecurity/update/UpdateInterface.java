package com.tencent.onesecurity.update;

import android.os.Handler;

public interface UpdateInterface {

	/**
	 * 返回组件是否需要进行升级
	 * @return
	 */
	public boolean isNeedUpdate();
	
	/**
	 * 返回升级数据数，用于进度条显示，
	 * @return
	 */
	public int updateCount();
	
	/**
	 * 升级，传入的handler可以用来通知Activity更新进度条
	 * @param handler
	 */
	public void update(Handler handler);
}
