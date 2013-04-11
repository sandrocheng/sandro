package com.tencent.onesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.service.SecureService;

public class DebugReceiver extends BroadcastReceiver{
	static final String SHOUN_DEBUG_INFO = "0094";
	static final String UNSHOUN_DEBUG_INFO = "0095";
	@Override
	public void onReceive(Context arg0, Intent arg1) {
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
		// TODO Auto-generated method stub
		String s = arg1.getDataString();
		if(s.lastIndexOf(SHOUN_DEBUG_INFO) != -1){
			ApplicationConfig.DEBUGINFOWINDOW = true;
			//if(DaoCreator.createConfigDao().isDeskAssisWindowOpen() == false){
				Intent intent = new Intent();
				intent.setClass(arg0, SecureService.class);
				intent.setFlags(SecureService.SWITCH_DESK_ASSIS_WINDOW);
				arg0.startService(intent);
			//}
		}else if(s.lastIndexOf(UNSHOUN_DEBUG_INFO) != -1){
			ApplicationConfig.DEBUGINFOWINDOW = false;
		}
	}

}
