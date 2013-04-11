package com.tencent.onesecurity.model;

/**
 * 下发闪屏类
 * @ClassName: SplashEntity
 * @Description:下发闪屏类
 * @author: kevin
 * @date: 2013-03-11 下午01:34:52
 *
 */
public class SplashEntity {
	/** 主键 */
	public int id = -1;
	/**  */
	public long startTime = 0;
	/**  */
	public long endTime = 0;
	
	public byte[] splashPic = null;
	
	public SplashEntity() {}
	
	@Override
	public boolean equals(Object o) {
		SplashEntity entity = (SplashEntity)o;
		if(startTime == entity.startTime 
				&&endTime == entity.endTime
				&&splashPic.equals(entity.splashPic)){
			return true;
		}
		return super.equals(o);
	}
}
