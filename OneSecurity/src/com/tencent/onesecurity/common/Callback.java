package com.tencent.onesecurity.common;


/**
* @ClassName: Callback
* @Description:通用回调函数
* @author: Buck
* @date: 2012-10-15 下午2:40:27
*
* @param <T>
*/
public interface Callback<T> {
	public void onCallback(T data);
}
