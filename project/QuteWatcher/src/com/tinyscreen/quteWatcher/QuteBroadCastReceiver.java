package com.tinyscreen.quteWatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class QuteBroadCastReceiver extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		intent.setClass(context, CoreService.class);
		context.startService(intent);	
	}

}
