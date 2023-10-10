package com.sandro.binder_server;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

import androidx.annotation.Nullable;

import com.sandro.ipc.IServer;

public class MyService extends android.app.Service {
    public static final String TAG = "sandro_MyService";
    private static final String CHANNEL_ID = "com.sandro.binder_server";


    private IServer.Stub mServerImpl = new ServerImpl();

    @Nullable
    @Override
    public IBinder onBind(Intent intent) {
        return mServerImpl;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        Log.d(TAG, "onCreate");
        startServiceForground();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        Log.d(TAG, "onDestroy");
    }

    /**
     * 8.0service启动后需要添加Notification将其设置为前台service,否则会抛出异常
     */
    private void startServiceForground() {
        NotificationManager notificationManager = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        NotificationChannel channel = new NotificationChannel(CHANNEL_ID, "Service", NotificationManager.IMPORTANCE_LOW);
        notificationManager.createNotificationChannel(channel);

        Notification notify = new Notification.Builder(getApplicationContext(),CHANNEL_ID).build();
        startForeground(0x11,notify);
    }
}
