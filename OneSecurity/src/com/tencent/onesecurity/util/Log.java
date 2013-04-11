package com.tencent.onesecurity.util;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;


/**
 * Log 工具
 * 
 * @author eddy
 * 
 */
public final class Log {

	private static final String CRASH_REPORTER_FILE_NAME = "onesecurity";
	
	private static final String FORMATSTR_FOR_LOG_FILE = "MMddkk";
	
	private static final String VERSION_NAME = "versionName";

	private static final String VERSION_CODE = "versionCode";
	
	private static Ilog instance;
	
	private static boolean isLog = false;
	
	static {
		isLog = MainApplication.getContext().getResources().getBoolean(R.bool.islog);
		if(isLog){ //输出log
			instance = new WithLog();	
		}else{ //不输出log
			instance = new WithOutLog();	
		}
	}
	
	/**
	 * error;
	 * 
	 * @param tag
	 * @param data
	 */
	public static void e(String tag, Object data) {
		instance.e(tag, data);
	}

	/**
	 * warning
	 * 
	 * @param tag
	 * @param data
	 */
	public static void w(String tag, Object data) {
		instance.w(tag, data);
	}

	public static void i(String tag, Object data) {
		instance.i(tag, data);
	}

	public static void d(String tag, Object data) {
		instance.d(tag, data);

	}

	public static void writeFile(String filename, String content) {
		instance.writeFile(filename, content);
	}

	/**
	 * @param ex
	 */
	public static void saveCrashInfoToSdCard(Context context, String tag,
			Throwable ex) {
		Writer info = new StringWriter();
		PrintWriter printWriter = new PrintWriter(info);
		ex.printStackTrace(printWriter);

		Throwable cause = ex.getCause();
		while (cause != null) {
			cause.printStackTrace(printWriter);
			cause = cause.getCause();
		}

		String result = info.toString();
		result = deviceInfo2String(collectCrashDeviceInfo(context)) + result
				+ "------------------\r\n";
		printWriter.close();
		Date date = new Date();

		File file = new File(FileUtil.getSDCardDir() + "/log/"
				+ CRASH_REPORTER_FILE_NAME
				+ DateUtil.date2String(date, FORMATSTR_FOR_LOG_FILE)
				+ ".log");
		printCrashInfo(context, tag, ex);
		try {
			FileUtil.write(file, new StringBuffer(result));
		} catch (IOException e) {
		}

	}

	/**
	 * saveInfoToSdCard
	 * @param ex
	 */
	public static void saveInfoToSdCard(Context context, String tag,
			String result) {
		result = DateUtil.date2String(System.currentTimeMillis(),
				"yyyy-MM-dd kk:mm:ss")
				+ ": " + StringUtil.emptyIfNull(tag) + ":" + result + "\r\n";
		Date date = new Date();

		File file = new File(FileUtil.getSDCardDir() + "/log/"
				+ CRASH_REPORTER_FILE_NAME
				+ DateUtil.date2String(date, FORMATSTR_FOR_LOG_FILE)
				+ ".log");

		try {
			FileUtil.write(file, new StringBuffer(result));
		} catch (IOException e) {
		}

	}

	private static void printCrashInfo(Context context, String tag, Throwable ex) {
		if (ex == null) {
			return;
		}
		Writer info = new StringWriter();
		PrintWriter printWriter = new PrintWriter(info);
		ex.printStackTrace(printWriter);

		Throwable cause = ex.getCause();
		while (cause != null) {
			cause.printStackTrace(printWriter);
			cause = cause.getCause();
		}

		String result = info.toString();
		android.util.Log.e(tag, result);

	}

	private static String deviceInfo2String(Map<String, Object> deviceCrashInfo) {
		String info = "-------------------------------------\n";
		Iterator<String> iter = deviceCrashInfo.keySet().iterator();
		while (iter.hasNext()) {
			String key = (String) iter.next();
			info += key + ":" + deviceCrashInfo.get(key) + "\n";

		}
		return info;
	}

	/**
	 * collectCrash
	 * 
	 * @param ctx
	 */
	private static Map<String, Object> collectCrashDeviceInfo(Context context) {
		Map<String, Object> deviceCrashInfo = new HashMap<String, Object>();
		try {
			PackageManager pm = context.getPackageManager();
			PackageInfo pi = pm.getPackageInfo(context.getPackageName(),
					PackageManager.GET_ACTIVITIES);
			if (pi != null) {
				deviceCrashInfo.put(VERSION_NAME,
						pi.versionName == null ? "not set" : pi.versionName);
				deviceCrashInfo.put(VERSION_CODE, pi.versionCode);
			}
		} catch (NameNotFoundException e) {

		}
		Field[] fields = Build.class.getDeclaredFields();
		for (Field field : fields) {
			try {
				field.setAccessible(true);
				deviceCrashInfo.put(field.getName(), field.get(null));
			} catch (Exception e) {
			}
		}
		return deviceCrashInfo;

	}

}

/**
 * WithLog
 * 
 */
class WithLog implements Ilog {

//	private int mLevel = 0;

	public WithLog() {
	}

	public WithLog(int level) {
//		mLevel = level;
	}

	@Override
	public void d(String tag, Object data) {
		if (data != null) {
			android.util.Log.d(tag, data.toString());
		}

	}

	@Override
	public void e(String tag, Object data) {
		if (data != null) {
			recordException(tag, data);
			android.util.Log.e(tag, data.toString());
		}
	}

	@Override
	public void i(String tag, Object data) {
		if (data != null) {
			android.util.Log.i(tag, data.toString());
			if(tag.equals("QQDOCTOR"))
				writeFile("vipLog", data.toString());
		}
	}

	@Override
	public void w(String tag, Object data) {
		if (data != null) {
			recordException(tag, data);
			android.util.Log.w(tag, data.toString());
		}

	}

	private void recordException(String tag, Object data) {
		if (data == null) {
			android.util.Log.e(tag, "log message is null");
		} else if (data instanceof Throwable) {
			Log.saveCrashInfoToSdCard(MainApplication.getContext(),
					tag, (Throwable) data);
		} else
			Log.saveInfoToSdCard(MainApplication.getContext(), tag,
					data.toString());
	}

	@Override
	public void writeFile(String filename, String content) {
		content = DateUtil.date2String(System.currentTimeMillis(),
				"yyyy-MM-dd kk:mm:ss")
				+ ":" + content + "\r\n";
		File file = new File(FileUtil.getSDCardDir() + "/log/" + filename
				+ ".log");
		try {
			FileUtil.write(file, new StringBuffer(content));
		} catch (IOException e) {
		}
	}

}

class WithOutLog implements Ilog {

	@Override
	public void d(String tag, Object data) {

	}

	@Override
	public void e(String tag, Object data) {

	}

	@Override
	public void i(String tag, Object data) {

	}

	@Override
	public void w(String tag, Object data) {

	}

	@Override
	public void writeFile(String filename, String content) {

	}

}

/**
 * 定义Interface
 */
interface Ilog {
	void i(String tag, Object data);

	void e(String tag, Object data);

	void d(String tag, Object data);

	void w(String tag, Object data);

	void writeFile(String filename, String content);
}
