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

    public void readBasicDataFromJni(){
        android.util.Log.d("NativeAgent","----------readBasicDataFromJni start---------");
        android.util.Log.d("NativeAgent","byteFromJNI : " + byteFromJNI());
        android.util.Log.d("NativeAgent","shortFromJNI : " + shortFromJNI());
        android.util.Log.d("NativeAgent","intFromJNI : " + intFromJNI());
        android.util.Log.d("NativeAgent","longFromJNI : " + longFromJNI());
        android.util.Log.d("NativeAgent","floatFromJNI : " + floatFromJNI());
        android.util.Log.d("NativeAgent","doubleFromJNI : " + doubleFromJNI());
        android.util.Log.d("NativeAgent","charFromJNI : " + charFromJNI());
        android.util.Log.d("NativeAgent","booleanFromJNI : " + booleanFromJNI());

        android.util.Log.d("NativeAgent","----------readBasicDataFromJni end -----------");
    }

    public native void stringToJni(String str);
    private native void basicJavaTypeToJni(boolean argBoolean,
                                           byte argByte,
                                           char argChar,
                                           short argShort,
                                           int argInt,
                                           long argLong,
                                           float argFloat,
                                           double argDouble);

    public native String stringFromJNI();
    private native byte byteFromJNI();
    private native short shortFromJNI();
    private native int intFromJNI();
    private native long longFromJNI();
    private native float floatFromJNI();
    private native double doubleFromJNI();
    private native char charFromJNI();
    private native boolean booleanFromJNI();
}
