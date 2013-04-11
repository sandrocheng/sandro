package com.tencent.onesecurity.util;

import java.io.File;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;

/**
 *  手机信息
 *  sim卡、SD卡、IMEI码、手机号码等信息
 *  
 *  @author Jess Yan
 *
 */
public final class PhoneInfoUtil {
	
	public static final int NO_NETOP = -2;
	public static final int OTHER = -1;
	public static final int CHINA_MOBILE = 0;
	public static final int CHINA_UNICOM = 1;
	public static final int CHINA_TELECOM = 2;
	
	private static String ESCAPE_SERVICE = "tms_";
	
	private static String TELEPHONY_SERVICE = "[com.android.internal.telephony.ITelephony]";

	private static String TELEPHONY_REGISTRY = "[com.android.internal.telephony.ITelephonyRegistry]";
	
	private static Boolean sDualSimDevice = null;
	
	/**
	 * 获取IMEI码
	 * @param context
	 * @return
	 */
	public static String getIMEI(Context context) {
		TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		String imei = telephonyManager.getDeviceId();
		return imei;
	}
	
	
	/**
	 * 获取本机号码
	 * @param context
	 * @return
	 */
//	public static String getLine1Number(Context context) {//因涉及权限问题，去除此函数的调用
//		TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
//		String line1Number = telephonyManager.getLine1Number();
//		return line1Number;
//	}
	
	/**
	 * 获取IMSI码
	 * 
	 * @param context
	 * @return
	 */
	public static String getIMSI(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        String imsi = telephonyManager.getSubscriberId();
        return imsi;
    }

//	/**
//	 * 获取MSISDN码
//	 * @param context
//	 * @return
//	 */
//	public static String getMSISDN(Context context) {
//		TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
//		String number = telephonyManager.getLine1Number();
//		return number;
//	}
	
	public static String getModelName() {
	    return android.os.Build.MODEL;
	}
	
	public static String getProductName() {
        return android.os.Build.PRODUCT;
    }
	
	/**
     * 获取手机屏幕宽度
     * 
     * @param context
     * @return
     */
    public static int getScreenWidth(Context context) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        return dm.widthPixels;
    }

    /**
     * 获取手机屏幕高度
     * 
     * @param context
     * @return
     */
    public static int getScreenHeight(Context context) {
        DisplayMetrics dm = context.getResources().getDisplayMetrics();
        return dm.heightPixels;
    }


//	/**
//	 * 拨打电话
//	 * @param context
//	 * @param number 电话号码
//	 */
//	public static void Call(String number) {
//		Uri telUri = Uri.parse("tel:" + number);
//		Intent intent = new Intent(Intent.ACTION_DIAL, telUri);
//		intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//		MainApplication.getContext().startActivity(intent);
//	}
	
//	/**
//	 * 获取网络运营商的代码, 移动是46000, 联通是46001,没有SIM卡，返回NULL
//	 * 
//	 * @param context
//	 * @return
//	 */
//	public static int getNetworkOperatorCode() {
//		Context context = MainApplication.getContext();
//		TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
//		if (PhoneInfoUtil.hasSIM(context)) {
//			//String networdoperator = tm.getNetworkOperator();
//			
//			String networdoperator = tm.getSimOperator();
//			if (networdoperator.equals("46000") || networdoperator.equals("46002") || networdoperator.equals("46007")) {
//				return PhoneInfoUtil.CHINA_MOBILE;
//			} else if (networdoperator.equals("46001")) {
//				return PhoneInfoUtil.CHINA_UNICOM;
//			} else if (networdoperator.equals("46003")) {
//				return PhoneInfoUtil.CHINA_TELECOM;
//			} else if (!networdoperator.equals("")) {
//				return PhoneInfoUtil.OTHER;
//			} else {
//				return PhoneInfoUtil.NO_NETOP;
//			}
//		} else {
//			return PhoneInfoUtil.NO_NETOP;
//		}
//	}

	/**
	 * 判断是否存在SIM卡
	 * 
	 * @param context
	 * @return
	 */
	public static boolean hasSIM(Context context) {
		TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
		return tm.getSimState() != TelephonyManager.SIM_STATE_ABSENT;
	}
	
	/**
	 * 判断是否双卡
	 * 
	 * @return
	 */
	public static boolean isDualSimDevice() {
		if (sDualSimDevice == null) {
			try {
				String[] resultCode = ScriptRunner.exec("service", "list");
				int telephonyServiceCounter = 0;
				int telephonyRegistryCounter = 0;
				if (resultCode != null && resultCode.length > 0) {
					for (String line : resultCode) {
						if (line.contains(ESCAPE_SERVICE)) {
							continue;
						} else if (line.contains(TELEPHONY_SERVICE)) {
							telephonyServiceCounter++;
						} else if (line.contains(TELEPHONY_REGISTRY)) {
							telephonyRegistryCounter++;
						}
					}
					if (telephonyServiceCounter > 1
							|| telephonyRegistryCounter > 1) {
						sDualSimDevice = true;
					} else {
						sDualSimDevice = false;
					}

				} else {
					sDualSimDevice = false;
				}
			} catch (Exception e) {
				sDualSimDevice = false;
			}
		}
		if(sDualSimDevice == null){
			sDualSimDevice = false;
		}
		return sDualSimDevice.booleanValue();
	}
	
	/**
	 * 获取存储卡存储量
	 */
	public static void getStorageCardSize(SizeInfo info) {
		if (FileUtil.hasStorageCard()) {
			getSizeInfo(Environment.getExternalStorageDirectory(), info);
		}else{
			info.availdSize = 0;
			info.totalSize = 0;
		}
	}

	/**
	 * 获取手机存储容量
	 */
	public static void getPhoneStorageSize(SizeInfo info) {
		getSizeInfo(Environment.getDataDirectory(), info);
	}
	
	/**获取系统的存储情况
	 * @param info 返回去的存储情况
	 */
	public static void getSystemStorageSize(SizeInfo info) {
		getSizeInfo(Environment.getRootDirectory(), info);
	}
	
	public static void getSizeInfo(File path, SizeInfo info){
		StatFs statfs = new StatFs(path.getPath());
		
		long blockSize = statfs.getBlockSize();// 获取block的SIZE
		info.availdSize = statfs.getAvailableBlocks() * blockSize;
		info.totalSize = statfs.getBlockCount() * blockSize;
	}

	
	public static class SizeInfo{
		/**
		 * 可用大小
		 */
		public long availdSize;
		
		/**
		 * 总共大小
		 */
		public long totalSize;
		
		/**
		 * 已用百分比
		 * @return
		 */
		public int percent(){
			int percent = 0;
			if(totalSize > 0){
				float hadused = (float)(totalSize - availdSize) / (float)totalSize;
				percent = (int) (hadused * 100);
			}
			return percent;
		}
	}
}

