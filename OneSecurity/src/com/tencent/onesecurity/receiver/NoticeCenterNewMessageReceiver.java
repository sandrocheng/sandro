package com.tencent.onesecurity.receiver;

import com.tencent.onesecurity.dao.DaoCreator;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class NoticeCenterNewMessageReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		// TODO Auto-generated method stub
	    if (!DaoCreator.createConfigDao().isLicenseAgreed()) {
            return;
        }
	}
}
