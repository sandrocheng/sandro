package com.guangli.applock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class KeepAliveReceiver extends BroadcastReceiver{
    /**
     * ���ո���ϵͳ�㲥���������ǵļ�������
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
