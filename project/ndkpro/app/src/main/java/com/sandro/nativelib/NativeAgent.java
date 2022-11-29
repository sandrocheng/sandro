package com.sandro.nativelib;


public class NativeAgent {
    static {
        System.loadLibrary("native-lib");
    }

    private static NativeAgent mInstance;

    private NativeAgent() {
    }

    public static NativeAgent getInstance() {
        if (mInstance == null) {
            mInstance = new NativeAgent();
        }
        return mInstance;
    }

    public native void firstNdkAcess();

    public native String stringFromJNI();

    private native void printPerson(int age,boolean change,Person per);
}
