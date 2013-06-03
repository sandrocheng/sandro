package com.sandro.custom.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.widget.Toast;

public class TimeReceiver  extends BroadcastReceiver{

	@Override
	public void onReceive(Context context, Intent intent) {
		Log.i("TimeReceiver", "get change");
		Toast.makeText(context, "time change", Toast.LENGTH_LONG).show();
	}

}
