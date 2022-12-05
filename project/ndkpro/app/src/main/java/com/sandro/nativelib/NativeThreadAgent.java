package com.sandro.nativelib;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

import androidx.annotation.NonNull;

/**
 * c++ 11线程
 */
public class NativeThreadAgent {

    private static Handler mHandler = new Handler(Looper.getMainLooper());

    /**
     * startAThreadOnJoin 线程结束以后回调该函数
     */
    public static void startAThreadOnJoinFinish(){
        android.util.Log.d("NativeThreadAgent","startAThreadOnJoinFinish callback");

        mHandler.post(new Runnable() {
            @Override
            public void run() {
                startMultiThreadOnJoin();
            }
        });

    }

    /**
     * startMulitThreadOnJoin 线程结束以后回调该函数
     */
    public static void startMultiThreadJoinFinish(){
        android.util.Log.d("NativeThreadAgent","startMultiThreadOnJoin callback");

        mHandler.post(new Runnable() {
            @Override
            public void run() {
                startMultiThreadOnDetach();
            }
        });
    }

    /**
     * startMultiThreadOnDetach 每个线程结束时回调一次
     * @param workid 线程任务id
     */
    public static void startMultiThreadOnDetachFinish(int workid){
        android.util.Log.d("NativeThreadAgent","startMultiThreadOnDetachFinish callback ,workid is " + workid);
        synchronized (mHandler){
            mHandler.removeCallbacksAndMessages(null);
            mHandler.postDelayed(new Runnable() {
                @Override
                public void run() {
                    android.util.Log.d("NativeThreadAgent",
                            "startMultiThreadOnDetachFinish callback wait 1500 m and no callback,process go one ");
                }
            },1500L);
        }

    }

    public static native void startAThreadOnJoin();

    private static native void startMultiThreadOnJoin();

    private static native void startMultiThreadOnDetach();
}
