package com.example.ndkpro;

import android.app.Application;
import android.util.Log;

import com.sandro.nativelib.NativeAgent;

public class MainApp extends Application {

    @Override
    public void onCreate() {
        Log.d("MainApp","onCreate");
        super.onCreate();
        NativeAgent.getInstance().firstNdkAcess();
    }


}
