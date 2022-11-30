
#include "native-lib.h"

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


extern "C" JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    std::string hello = "Hello from C++!" ;
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jbyte JNICALL
Java_com_sandro_nativelib_NativeAgent_byteFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    char dataByte = 120;
    return dataByte;
}

extern "C" JNIEXPORT jshort JNICALL
Java_com_sandro_nativelib_NativeAgent_shortFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    short dataShort = 10240;
    return dataShort;
}

extern "C" JNIEXPORT jint JNICALL
Java_com_sandro_nativelib_NativeAgent_intFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    int dataInt = 204800;
    return dataInt;
}

extern "C" JNIEXPORT jlong JNICALL
Java_com_sandro_nativelib_NativeAgent_longFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    long dataLong = 4096000;
    return dataLong;
}

extern "C" JNIEXPORT jfloat JNICALL
Java_com_sandro_nativelib_NativeAgent_floatFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    float dataFloat = 1024.1024f;
    return dataFloat;
}

extern "C" JNIEXPORT jdouble JNICALL
Java_com_sandro_nativelib_NativeAgent_doubleFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    double dataDouble = 2048.20482;
    return dataDouble;
}

extern "C" JNIEXPORT jchar JNICALL
Java_com_sandro_nativelib_NativeAgent_charFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    unsigned short dataChar = 'Z';
    return dataChar;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeAgent_booleanFromJNI(
        JNIEnv* env,
        jobject /* this */) {
    unsigned char dataBoolean = 1;//0->false,1->true
    return dataBoolean;
}


