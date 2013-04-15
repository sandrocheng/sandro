package com.tinyscreen.quteWatcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class SystemAlarm extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		Intent intentService = new Intent(context, CoreService.class);
		context.startService(intentService);
		android.util.Log.i("SystemAlarm","onReceive");
	}

}
