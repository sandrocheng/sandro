package com.guangli.applock;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;

public class AppStartReceiver extends BroadcastReceiver{
	SharedPreferences sharedPreferences;
	@Override
	public void onReceive(Context context, Intent intent) {
		Log.i("AppStartReceiver", "Receive a broadcast");
		sharedPreferences = context.getSharedPreferences(Meta.SP_FILE,Activity.MODE_WORLD_READABLE);
		// check pw
		String name = intent.getStringExtra("name");
		Log.i("AppStartReceiver", name+Meta.LOKCED);
		if(sharedPreferences.getBoolean(name+Meta.LOKCED,false)){
			//to input password activity
			Log.i("AppStartReceiver", "to activity");
			intent.setClass(context,PasswordInutActivity.class);
			context.startActivity(intent);
		    return;
		}
		
		Intent i = new Intent();
		i.setClass(context,AppStartListenerService.class);
		i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		context.startService(i);
	}

}
