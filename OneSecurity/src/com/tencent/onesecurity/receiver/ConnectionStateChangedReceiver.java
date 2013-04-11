/**
* FileName: ConnectionStateChangedReceiver.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2012-11-13 下午08:12:50
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-11-13 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;

import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.service.MemberTimerService;
import com.tencent.onesecurity.usage.qq.ReportService;
import com.tencent.onesecurity.util.Log;

/**
 * @ClassName: ConnectionStateChangedReceiver
 * @Description:监听网络变化
 * @author: Allan
 * @date: 2012-11-13 下午08:12:50
 *
 */
public class ConnectionStateChangedReceiver extends BroadcastReceiver{

	/* (non-Javadoc)
	 * @see android.content.BroadcastReceiver#onReceive(android.content.Context, android.content.Intent)
	 */
	
	@Override
	public void onReceive(Context context, Intent intent) {
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
		if (intent.getAction().equals(ConnectivityManager.CONNECTIVITY_ACTION)) {
			Log.i("QQDOCTOR", "ConnectivityManager.CONNECTIVITY_ACTION");
			Intent i = new Intent(context, MemberTimerService.class);
			i.setFlags(MemberTimerService.NETWORK_CONNECTED);
			context.startService(i);
			// 有网络时 进行数据上报
			boolean isBreak = intent.getBooleanExtra(
					ConnectivityManager.EXTRA_NO_CONNECTIVITY, false);
			if (!isBreak) {
				long time = System.currentTimeMillis();
				long dataReportTime = ConfigDao.getInstance()
						.getDataReportTime();
				// (当前时间)超过(上次成功上报时间)1小时 上报Featuer 否则不上报
				if (time - dataReportTime > 3600000) {
					Intent intent2 = new Intent(context, ReportService.class);
					context.startService(intent2);
				}
			}
		}
		else if(intent.getAction().equals(ConnectivityManager.ACTION_BACKGROUND_DATA_SETTING_CHANGED)) {
//			Log.i("QQDOCTOR", "ConnectivityManager.ACTION_BACKGROUND_DATA_SETTING_CHANGED");
		}
		else if(intent.getAction().equals(WifiManager.NETWORK_STATE_CHANGED_ACTION)) {
			Log.i("QQDOCTOR", "WifiManager.NETWORK_STATE_CHANGED_ACTION");
		}
		else if(intent.getAction().equals(WifiManager.WIFI_STATE_CHANGED_ACTION)) {
			Log.i("QQDOCTOR", "WifiManager.WIFI_STATE_CHANGED_ACTION");
		}
	}
}
