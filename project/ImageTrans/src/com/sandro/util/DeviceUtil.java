package com.sandro.util;

import android.app.Activity;
import android.util.DisplayMetrics;

public class DeviceUtil {

	/**
	 *屏幕宽度
	 */
	private static int SCREEN_WIDTH;
	
	/**
	 * 屏幕高度
	 */
	private static int SCREEN_HEIGHT;
	
	private static float DEVICE_DENSITY;
	
	public static void initBasicData(Activity activity){
		DisplayMetrics dm = new DisplayMetrics();
		activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
		SCREEN_WIDTH = dm.widthPixels;// 获取分辨率宽度
		SCREEN_HEIGHT = dm.heightPixels;
		DEVICE_DENSITY = activity.getResources().getDisplayMetrics().density;
	}
	
	public static float getDeviceDensity(){
		return DEVICE_DENSITY;
	}
	
	public static int getScreenWidth(){
		return SCREEN_WIDTH;
	}
	
	public static int getScreenHeight(){
		return SCREEN_HEIGHT;
	}
	
}
