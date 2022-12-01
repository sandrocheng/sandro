package com.sandro.nativelib;


public class NativeAgent {
    public String agentName = "cur agentName is init by java";
    public static int VERSION = 101;
    public boolean agentBoolAttr = false;
    public byte agentByteAttr = 11;
    public short agentShortAttr = 22;
    public long agentLongAttr = 3333333;
    public float agentFloatAttr = 444.444f;
    public double agentDoubleAttr = 555555.55555d;
    public char agentCharAttr = 'D';

    static {
        //加载android apk libs目录下的so 库
        System.loadLibrary("native-lib");
//      加载文件目录中具体的so库，也可以是一个url从网络下再一个so库文件
//      System.load("/sdcard/a/xx.so");
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

    public void getObjectFromJNI() {
        android.util.Log.d("NativeAgent", "----------getObjectFromJNI start---------");
        Person lily = new Person(17,"lily");
        lily.setScore(9.8f);
        Person per = getPersonFromJNI(lily);
        android.util.Log.d("NativeAgent", "person age is " + per.getAge()
                + " , name is " + per.getName()
                + " , score is " + per.getScore());
        android.util.Log.d("NativeAgent", "----------getObjectFromJNI end-----------");
    }

    /**
     * 给jni调用的方法 求和
     * @param num1
     * @param num2
     * @return
     */
    public int addByJni(int num1,int num2){
        return num1 + num2;
    }

    /**
     * 给jni调用的方法 将两个整形合并成一个字符串
     * @param num1
     * @param num2
     * @return
     */
    public static String addStringByJni(int num1,int num2){
        String str = num1 + "_" + num2;
        return str;
    }

    public void startAccessJavaAttrAndMethod(){
        accessJavaAttr();
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentName is \"" + agentName + "\"");
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr static attr VERSION is " + VERSION );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentBoolAttr is " + agentBoolAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentByteAttr is " + agentByteAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentShortAttr is " + agentShortAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentLongAttr is " + agentLongAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentFloatAttr is " + agentFloatAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentDoubleAttr is " + agentDoubleAttr );
        android.util.Log.d("NativeAgent",
                "after accessJavaAttr attr agentCharAttr is " + agentCharAttr );

        accessJavaMethod();
    }

    public void arrayFromJNI(){
        android.util.Log.d("NativeAgent","----------arrayFromJNI start---------");
        int[] intArr = getIntArrayFromJNI();
        android.util.Log.d("NativeAgent","getIntArrayFromJNI size is " + intArr.length);
        String log = "getIntArrayFromJNI array : ";
        for(int i : intArr){
            log += i + " , ";
        }
        android.util.Log.d("NativeAgent",log);

        String strArr[] = getStringArrayFromJNI();
        android.util.Log.d("NativeAgent","getStringArrayFromJNI size is " + strArr.length);
        log = "getStringArrayFromJNI array : ";
        for(String str : strArr){
            log += str + " , ";
        }
        android.util.Log.d("NativeAgent",log);
        android.util.Log.d("NativeAgent","----------arrayFromJNI end-----------");
    }

    /**
     * 向c层传递java基本类型数据
     */
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

    public void javaArrayTypeToJniTest() {
        javaArrToJni(new int[]{10,20,30,40,50,60}
                , new String[]{"word1","word2","word3","word4"});
    }

    /**
     * 从c层读取基本类型
     */
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

    private native void javaArrToJni(int[] intArr,String[] strArr);

    /**
     * @return c++返回一个字符串
     */
    public native String stringFromJNI();

    /**
     *
     * @return c返回一个字符串
     */
    public native String stringFromCJNI();
    private native byte byteFromJNI();
    private native short shortFromJNI();
    private native int intFromJNI();
    private native long longFromJNI();
    private native float floatFromJNI();
    private native double doubleFromJNI();
    private native char charFromJNI();
    private native boolean booleanFromJNI();
    private native int[] getIntArrayFromJNI();
    private native String[] getStringArrayFromJNI();

    /**
     * c层访问java对象中的属性
     */
    private native void accessJavaAttr();

    /**
     * 访问java方法
     */
    private native void accessJavaMethod();

    /**
     * 从NDK中返回一个Person对象
     * @return
     */
    private native Person getPersonFromJNI(Person person);

}
