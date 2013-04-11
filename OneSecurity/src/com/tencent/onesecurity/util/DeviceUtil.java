package com.tencent.onesecurity.util;

import java.util.Random;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;

public class DeviceUtil {

	/**
	 * 屏幕宽度
	 */
	private static int SCREEN_WIDTH;

	/**
	 * 屏幕高度
	 */
	private static int SCREEN_HEIGHT;

	private static float DEVICE_DENSITY;
	private static int DEVICE_DENSITYDPI;

	/**
	 * 状态栏高度
	 */
	private static int STATUSBAR_HEIGHT;

	private static int DENSITY_STATUS;

	private final static int LOW_DENSITY = 0;
	private final static int MIDDLE_DENSITY = 1;
	private final static int HIGH_DENSITY = 2;
	private final static int XHIGH_DENSITY = 3;

	public static void initBasicData(Activity activity) {
		DisplayMetrics dm = new DisplayMetrics();
		activity.getWindowManager().getDefaultDisplay().getMetrics(dm);
		SCREEN_WIDTH = dm.widthPixels;// 获取分辨率宽度
		SCREEN_HEIGHT = dm.heightPixels;
		DEVICE_DENSITY = activity.getResources().getDisplayMetrics().density;
		DEVICE_DENSITYDPI = activity.getResources().getDisplayMetrics().densityDpi;
		Drawable phoneCallIcon = activity.getResources().getDrawable(
				android.R.drawable.stat_sys_phone_call);
		STATUSBAR_HEIGHT = phoneCallIcon.getIntrinsicHeight();

		int dpi = activity.getResources().getDisplayMetrics().densityDpi;

		Log.i("DeviceUtil", "dpi : " + dpi);
	}

	public static void initDensityStatus(Context context){
		DENSITY_STATUS = context.getResources()
				.getInteger(R.integer.screen_density);
		Log.i("DeviceUtil", "DENSITY_STATUS : " + DENSITY_STATUS);
	}
	public static boolean isLowDensity() {
		return DENSITY_STATUS == LOW_DENSITY;
	}
	
	public static boolean isMiddleDensity() {
		return DENSITY_STATUS == MIDDLE_DENSITY;
	}
	
	public static boolean isHighDensity() {
		return DENSITY_STATUS == HIGH_DENSITY;
	}
	
	public static boolean isXHighDensity() {
		return DENSITY_STATUS == XHIGH_DENSITY;
	}

	public static float getDeviceDensity() {
		return DEVICE_DENSITY;
	}

	public static int getDeviceDensityDpi() {
		return DEVICE_DENSITYDPI;
	}
	
	public static int getScreenWidth() {
		return SCREEN_WIDTH;
	}

	public static int getScreenHeight() {
		return SCREEN_HEIGHT;
	}

	public static int getStatusBarHeight() {
		return STATUSBAR_HEIGHT;
	}

	/*
	 * 返回值: PHONE_TYPE_NONE PHONE_TYPE_GSM PHONE_TYPE_CDMA PHONE_TYPE_SIP
	 */
	public static int getPhoneType() {
		TelephonyManager telephonyManager = (TelephonyManager) MainApplication
				.getContext().getSystemService(Context.TELEPHONY_SERVICE);
		int type = telephonyManager.getPhoneType();
		return type;
	}

	// 获取手机的IMEI
	public static String getIMEI() {

		// FIXME 为测试而添加 add by joy start 2013.02.22
		if (com.tencent.onesecurity.common.ApplicationConfig.isTestConfigAllow) {
			String testImei = com.tencent.onesecurity.common.ApplicationConfig.just4Test_getIMEI();
			if (testImei != null && testImei.length() > 0) {
				return testImei;
			}
		}
		// FIXME 为测试而添加 add by joy end
				
		// 从设备上获得
		String imei = PhoneInfoUtil.getIMEI(MainApplication.getContext());

		if (imei == null || "".equals(imei)) {
			// 从配置文件中获得随机（事先已保存）
			imei = ConfigDao.getInstance().getRandomIMEI();
			if (imei == null || "".equals(imei)) {

				/*--Jess 修改imei生成逻辑 ----20130111-------S-*/
				// 生成随机IMEI,14位数字，后台用于区分。
				imei = getRandomIMEI(14);
				/*--Jess 修改imei生成逻辑 ----20130111-------E-*/

				// 保存随机IMEI
				ConfigDao.getInstance().setRandomIMEI(imei);
			}
		}
		return imei;
	}

	/**
	 * 随机生成字符串
	 * 
	 * @param length
	 * @return
	 */
	private static String getRandomIMEI(int length) {

		String imei = null;
		Random r = new Random();
		Double randomD = r.nextDouble();
		String rawImei = String.valueOf(randomD);
		try {
			imei = rawImei.substring(rawImei.indexOf('.') + 1,
					rawImei.indexOf('.') + length + 1);
		} catch (Exception e) {
			imei = null;
		}
		if (imei == null || "".equals(imei)) {
			imei = "00000000000000"; // 得不到用 14个0代替。一般不会走进这里
		}
		return imei;
	}

	// 获取IMSI码,即运营商的标识 MCC+MNC+MSIN
	public static String getIMSI() {
		String imsi = PhoneInfoUtil.getIMSI(MainApplication.getContext());
		if (imsi == null) {
			imsi = "";
		}
		return imsi;
	}
}
