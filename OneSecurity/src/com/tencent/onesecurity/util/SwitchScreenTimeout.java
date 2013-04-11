package com.tencent.onesecurity.util;

import android.content.Context;
import android.provider.Settings;

public class SwitchScreenTimeout {
	private Context context;
	
	// public static int[] volumeNum={0,15000,30000,45000,60000};
	
	public SwitchScreenTimeout(Context context) {
		super();
		
		this.context = context;
	}
	
	/**
	 * 获得锁屏时间  毫秒
	 */
	public int getScreenOffTime() {
		int screenOffTime=0;
		try{
			screenOffTime = Settings.System.getInt(context.getContentResolver(), Settings.System.SCREEN_OFF_TIMEOUT);   
		}   
		catch (Exception localException){   

		}   
		return screenOffTime;   
	}   
	
	/**
	 * 设置锁屏时间  毫秒
	 */
	public void setScreenOffTime(int timeout) {
		try {
			Settings.System.putInt(context.getContentResolver(), Settings.System.SCREEN_OFF_TIMEOUT, timeout);   
		} catch (Exception localException) {
			
		}   
	}
}

