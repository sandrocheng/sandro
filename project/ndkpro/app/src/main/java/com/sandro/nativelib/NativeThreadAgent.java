package com.sandro.nativelib;

/**
 * c++ 11线程
 */
public class NativeThreadAgent {

    /**
     * startAThread 线程结束以后回调该函数
     */
    public static void startAThreadFinish(){
        android.util.Log.d("NativeThreadAgent","startAThreadFinish callback");
    }

    public static native void startAThread();
}
