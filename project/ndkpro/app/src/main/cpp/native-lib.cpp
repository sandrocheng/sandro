/**
 * 本地函数静态注册
 * java 调用的包名类名 和 c文件中函数接口名完全按照规范定义的方式叫做本地函数静态注册
 *
 * java类型 -> jni类型   -> 对应的c类型
 * boolean  -> jboolean -> unsigned char (unsigned 8 bits)
 * byte     -> jbyte    -> char (signed 8bits)
 * char     -> jchar    -> unsigned short (unsigned 16 bits)
 * short    -> jshort   -> short (signed 16 bits)
 * int      -> jint     -> int (signed 32 bits)
 * long     -> jlong    -> long(64位系统 signed 64 bits)
 *                         long long (32位系统的情况下使用long long 转换 jlong的值 64 bits)
 * float    -> jfloat   -> float (signed 32 bits)
 * double   -> jdouble  -> doubel (sigend 64 bits)
 *
 *
 */

#include <jni.h>
#include <string>
#include <android/log.h>

#define TAG "nativeLibTAG"
//#define NO_LOG 1
#ifdef NO_LOG
#define LOGI(...)
#define LOGD(...)
#define LOGW(...)
#define LOGE(...)
#else
#define LOGI(...)   __android_log_print(ANDROID_LOG_INFO, TAG, __VA_ARGS__)
#define LOGD(...)   __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)
#define LOGW(...)   __android_log_print(ANDROID_LOG_WARN, TAG, __VA_ARGS__)
#define LOGE(...)   __android_log_print(ANDROID_LOG_ERROR, TAG, __VA_ARGS__)
#endif

/*
 * 返回字符串
 */
extern "C" JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++!";
    return env->NewStringUTF(hello.c_str());
}

/*
 * jni 接收java String
 * GetStringUTFChars:
 *    当从JNI函数GetStringChars中返回得到字符串B时，如果B是原始字符串java.lang.String的拷贝，则isCopy被赋值为JNI_TRUE。
 *    如果B和原始字符串指向的是JVM中的同一份数据，则isCopy被赋值为JNI_FALSE。
 *    当isCopy值为JNI_FALSE时，本地代码决不能修改字符串的内容，否则JVM中的原始字符串也会被修改，这会打破JAVA语言中字符串不可变的规则。
 *    通常，因为你不必关心JVM是否会返回原始字符串的拷贝，你只需要为isCopy传递NULL作为参数。
 *    JVM是否会通过拷贝原始Unicode字符串来生成UTF-8字符串是不可以预测的，程序员最好假设它会进行拷贝，而这个操作是花费时间和内存的。
 *    一个典型的JVM会在heap上为对象分配内存。一旦一个JAVA字符串对象的指针被传递给本地代码，GC就不会再碰这个字符串。
 *    换言之，这种情况下，JVM必须pin这个对象。可是，大量地pin一个对象是会产生内存碎片的，因为，虚拟机会随意性地来选择是复制还是直接传递指针。
 *    当你不再使用一个从GetStringChars得到的字符串时，不管JVM内部是采用复制还是直接传递指针的方式，都不要忘记调用ReleaseStringChars。
 *    根据方法GetStringChars是复制还是直接返回指针，ReleaseStringChars会释放复制对象时所占的内存，或者unpin这个对象。
 *
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_stringToJni(JNIEnv* env, jobject thiz,jstring str){
    LOGD("----------stringToJni start-------------");


    //法一 : 使用 GetStringLength 和 GetStringUTFRegion把jvm中的字符串拷贝到c中，这种方法不需要销毁
    jsize strlen = env->GetStringLength(str);
    char wordBuff[strlen];
    env->GetStringUTFRegion(str,0,strlen,wordBuff);
    if(wordBuff == NULL){
        LOGD("GetStringUtfChars error");
    }else{
        //释放word指向的字符串，释放后word指向的字符串为NULL。但是word保存的地址不变
        LOGD("get java str by GetStringUTFRegion ：%s",wordBuff);
    }

    //方法二 :该字符串由Unicode的str转换生成新的UTF-8编码字符串，该新的字符串在javaVM中，由word指向该内存
    const char *word = env->GetStringUTFChars(str,JNI_FALSE);
    if(word == NULL){
        LOGD("GetStringUtfChars error");
    }else{
        //释放word指向的字符串，释放后word指向的字符串为NULL。但是word保存的地址不变
        LOGD("get java str by GetStringUTFChars ：%s",word);
        env->ReleaseStringUTFChars(str,word);
    }
    LOGD("----------stringToJni end---------------");

}
/*
 * jni 接收java基本类型
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_basicJavaTypeToJni(
        JNIEnv* env,
        jobject thiz,
        jboolean argBoolean,
        jbyte argByte,
        jchar argChar,
        jshort argShort,
        jint argInt,
        jlong argLong,
        jfloat argFloat,
        jdouble argDouble) {
    LOGD("----------basicJavaTypeToJni start-------------");
    unsigned char dataBool = argBoolean;
    char dataByte = argByte;
    unsigned short dataChar = argChar;
    short dataShort = argShort;
    int dataInt = argInt;
    long dataLong = argLong;
    float dataFloat = argFloat;
    double dataDouble = argDouble;
    LOGD("argBoolean ：%d",dataBool);//false->0,true->1
    LOGD("argByte : %d",dataByte);
    LOGD("argChar : %c , argChar value : %d",dataChar,dataChar);
    LOGD("argShort : %d",dataShort);
    LOGD("argInt : %d",dataInt);
    LOGD("argLong : %ld",dataLong);
    LOGD("argFloat : %f",dataFloat);
    LOGD("argDouble : %lf",dataDouble);
    LOGD("----------basicJavaTypeToJni end-------------");
}



