package com.tinyscreen.quteWatcher.service;

import android.content.Context;

/**
 * 
* @ClassName: WatcherService
* @Description:和qutewatcher插件通信的接口
* @author: Sandro
* @date: 2013-2-21 下午03:12:31
*
 */
public interface WatcherService {
	
	/**
	 * 包括业务数据监控 appid lc 业务数据上报等数据
	 */
	public static final String BUSINESS_TAG="business_tag";
	
	/**
	 *监控系统内存，耗电量，网络流量等 系统数据
	 */
	public static final String SYSTEM_TAG="system_tag";
	
	void i(String tag, Object data);

	void e(String tag, Object data);

	void d(String tag, Object data);

	void w(String tag, Object data);

	void writeFile(String filename, String content);
	
	void setContext(Context context);
	
	void checkMemory(String tag, Object data);
}
