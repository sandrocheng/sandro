/**
 * FileName: sdfsdfsdf.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-10-26 下午4:32:07
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-10-26 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.usage.google;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.UnsupportedCharsetException;
import java.util.HashMap;
import java.util.Map;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;

/**
 * @ClassName: ReferralReceiver
 * @Description:Google play Campaign Tracking 系统安装后，第一次启动之前监听时间,并获得URL中的参数信息
 * @author: Matrix
 * @date: 2012-10-26 下午4:32:07
 * 
 */
public class ReferralReceiver extends BroadcastReceiver {
	public final static String[] EXPECTED_PARAMETERS = {"utm_source", "utm_medium", "utm_term", "utm_content", "utm_campaign"};
	public final static String PREFS_FILE_NAME = "ReferralParamsFile";

	@Override
	public void onReceive(Context context, Intent intent) {
		// Workaround for Android security issue:
		// http://code.google.com/p/android/issues/detail?id=16006
		try {
			final Bundle extras = intent.getExtras();
			if (extras != null) {
				extras.containsKey(null);
			}
		} catch (final Exception e) {
			return;
		}

		final Map<String, String> referralParams = new HashMap<String, String>();

		// Return if this is not the right intent.
		if (!intent.getAction().equals("com.android.vending.INSTALL_REFERRER")) {
			return;
		}

		String referrer = intent.getStringExtra("referrer");
		if (referrer == null || referrer.length() == 0) {
			return;
		}

		try { // Remove any url encoding
			referrer = URLDecoder.decode(referrer, "x-www-form-urlencoded");
		} catch (UnsupportedEncodingException e) {
			return;
		} catch (UnsupportedCharsetException e) {
			// 部分机器会提示不支持的字符集
			referrer = URLDecoder.decode(referrer);
		} catch (Exception e) {
			return;
		}

		// Parse the query string, extracting the relevant data
		String[] params = referrer.split("&");
		for (String param : params) {
			String[] pair = param.split("=");
			if (pair != null && pair.length > 0) {
				String value = "";
				if (pair.length > 1 && pair[1] != null && pair[1].length() > 0) {
					value = pair[1];
				}
				referralParams.put(pair[0], value);
			}
		}
		
		ReferralReceiver.storeReferralParams(context, referralParams);
	}

	/*
	 * Stores the referral parameters in the app's sharedPreferences. Rewrite
	 * this function and retrieveReferralParams() if a different storage
	 * mechanism is preferred.
	 */
	public static void storeReferralParams(Context context, Map<String, String> params) {
		SharedPreferences storage = context.getSharedPreferences(ReferralReceiver.PREFS_FILE_NAME, Context.MODE_PRIVATE);
		SharedPreferences.Editor editor = storage.edit();

		for (String key : ReferralReceiver.EXPECTED_PARAMETERS) {
			String value = params.get(key);
			if (value != null) {
				editor.putString(key, value);
			} else {
				editor.putString(key, "");
				params.put(key, "");
			}
		}

		editor.commit();
	}

	/*
	 * Returns a map with the Market Referral parameters pulled from the
	 * sharedPreferences.
	 */
	public static Map<String, String> retrieveReferralParams(Context context) {
		HashMap<String, String> params = new HashMap<String, String>();
		SharedPreferences storage = context.getSharedPreferences(ReferralReceiver.PREFS_FILE_NAME, Context.MODE_PRIVATE);

		for (String key : ReferralReceiver.EXPECTED_PARAMETERS) {
			String value = storage.getString(key, null);
			if (value != null) {
				params.put(key, value);
			}
		}
		return params;
	}
}
