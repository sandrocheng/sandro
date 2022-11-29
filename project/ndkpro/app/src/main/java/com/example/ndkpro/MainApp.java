package com.example.ndkpro;

import android.app.Application;
import android.util.Log;

public class MainApp extends Application {
    static {
        System.loadLibrary("native-lib");
    }

    @Override
    public void onCreate() {
        Log.d("MainApp","onCreate");
        super.onCreate();
        firstNdkAcess();
    }

    public native void firstNdkAcess();
}
