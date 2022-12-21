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
        android.util.Log.d("NativeThreadAgent","startAThreadOnJoinFinish callback,startMultiThreadOnJoin");

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
        android.util.Log.d("NativeThreadAgent","startMultiThreadOnJoin callback,startMultiThreadOnDetach");

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
                            "startMultiThreadOnDetachFinish callback wait 1500 m and no callback,process go one,startAndWaitMultiThread ");
                    new Thread(){
                        public void run(){
                            startAndWaitMultiThread();
                        }
                    }.start();

                }
            },1500L);
        }
    }

    /**
     * startAndWaitMultiThread 结束时回调一次
     */
    public static void startAndWaitMultiThreadFinish(){
        android.util.Log.d("NativeThreadAgent","startAndWaitOtherThreadFinish callback ,multisThreadsReadAndWrite");
        new Thread(){
            public void run(){
                multisThreadsReadAndWrite();
            }
        }.start();
    }

    /**
     * multisThreadsReadAndWrite 结束回调
     */
    public static void multisThreadsReadAndWriteFinish(){
        android.util.Log.d("NativeThreadAgent","multisThreadsReadAndWriteFinish callback,start deadLockVoid ");
        new Thread(){
            public void run(){
                deadLockVoid();
            }
        }.start();
    }

    /**
     * multisThreadsReadAndWrite 结束回调
     */
    public static void deadLockVoidFinish(){
        android.util.Log.d("NativeThreadAgent","deadLockVoid callback ,start uniqueLock");
        new Thread(){
            public void run(){
                uniqueLock();
            }
        }.start();
    }

    /**
     * uniqueLock 结束回调
     */
    public static void uniqueLockFinish(){
        android.util.Log.d("NativeThreadAgent","uniqueLock callback,start singleTonSaftyThread");
        new Thread(){
            public void run(){
                singleTonSaftyThread();
            }
        }.start();
    }

    public static native void singleTonSaftyThread();

    public static native void uniqueLock();

    public static native void deadLockVoid();

    public static native void startAThreadOnJoin();

    private static native void startMultiThreadOnJoin();

    private static native void startMultiThreadOnDetach();

    private static native void startAndWaitMultiThread();

    private static native void multisThreadsReadAndWrite();
}
