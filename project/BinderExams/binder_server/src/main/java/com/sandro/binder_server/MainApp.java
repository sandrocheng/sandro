package com.sandro.binder_server;

import android.app.Application;
import android.content.Context;
import android.content.Intent;

public class MainApp extends Application {
    private static Context MAIN_CONTEXT;

    @Override
    public void onCreate() {
        super.onCreate();
        Intent intent = new Intent(this.getApplicationContext(),MyService.class);
        this.startForegroundService(intent);
        MAIN_CONTEXT = this.getApplicationContext();
    }

    public static Context getMainContext(){
        return MAIN_CONTEXT;
    }
}
