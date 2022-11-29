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

    public void basicJavaTypeToJniTest() {
        boolean argBoolean = false;
        byte argByte = 98;
        char argChar = 'A';
        short argShort = 1024;
        int argInt = 999999;
        long argLong = 10000000;
        float argfloat = 1.1f;
        double argDouble = 3.1415d;
        basicJavaTypeToJni(argBoolean, argByte, argChar, argShort, argInt, argLong, argfloat, argDouble);
    }

    public native void stringToJni(String str);

    public native String stringFromJNI();

    private native void basicJavaTypeToJni(boolean argBoolean,
                                           byte argByte,
                                           char argChar,
                                           short argShort,
                                           int argInt,
                                           long argLong,
                                           float argFloat,
                                           double argDouble);
}
