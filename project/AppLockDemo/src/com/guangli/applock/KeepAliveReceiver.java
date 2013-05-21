package com.guangli.applock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class KeepAliveReceiver extends BroadcastReceiver{
    /**
     * 接收各种系统广播，重启我们的监听服务
     */
	@Override
	public void onReceive(Context context, Intent intent) {
		Log.e("KeepAliveReceiver","KeepAliveReceiver");
        Intent i = new Intent(AppStartListenerService.ACTION_FOREGROUND);
        i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
		i.setClass(context,AppStartListenerService.class);
		context.startService(i);
	}

}
