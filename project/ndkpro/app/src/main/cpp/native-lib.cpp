/**
 * 本地函数静态注册
 * java 调用的包名类名 和 c文件中函数接口名完全按照规范定义的方式叫做本地函数静态注册
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
 * void 返回类型
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_firstNdkAcess(
        JNIEnv* env,
        jobject /* this */) {

    LOGD("Java_com_example_ndkpro_MainApp_firstNdkAcess");
}

/*
 * void 返回类型
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_printPerson(
        JNIEnv* env,
        jobject /* this */,
        jint age,
        jboolean change,
        jobject per) {
    LOGD("changePerson");

}

