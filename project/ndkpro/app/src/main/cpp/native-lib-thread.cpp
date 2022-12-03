#include "native-lib-thread.h"

#define TAG "nativeThreadLibTAG"
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

JavaVM *g_vm;
jint jniVer;
static jclass gs_NativeThreadAgent_class = NULL;

/*
 * 通过重写 jni中 JNI_OnLoad 方法，在jni加载时候可以获取 JavaVM 指针，这个JavaVm是全局变量，用于之后获取env使用
 */
extern "C" JNIEXPORT jint JNICALL
JNI_OnLoad(JavaVM *vm, void *reserved) {
    LOGW("%s\n", "JNI_OnLoad startup ...");
    g_vm = vm;
    JNIEnv *env = NULL;
    jint result;

    if (vm->GetEnv((void **)&env, JNI_VERSION_1_6) == JNI_OK) {
        LOGI("Catch JNI_VERSION_1_6");
        result = JNI_VERSION_1_6;
        jniVer = JNI_VERSION_1_6;
    }
    else if (vm->GetEnv((void **)&env, JNI_VERSION_1_4) == JNI_OK) {
        LOGI("Catch JNI_VERSION_1_4");
        result = JNI_VERSION_1_4;
        jniVer = JNI_VERSION_1_4;
    }
    else {
        LOGI("Default JNI_VERSION_1_2");
        result = JNI_VERSION_1_2;
        jniVer = JNI_VERSION_1_4;
    }

    assert(env != NULL);
    // 动态注册native函数 ...
    return result;
}

extern "C" void setNativeThreadAgendClass(JNIEnv* env,jclass jclz){
    if(gs_NativeThreadAgent_class == NULL){
        gs_NativeThreadAgent_class = (jclass)env->NewGlobalRef(jclz);
    }
}


extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAThread(JNIEnv* env, jclass jclz){
    //通过 NewGlobalRef 方法，在全局变量中复制一份 jni传参jclass/jobject，只有全局的jclass/jobject 才能在子线程中调用
    setNativeThreadAgendClass(env,jclz);
    std::thread(startAThreadWork1).join();
}

extern "C" void startAThreadWork1(){
    LOGD("startAThreadWork");
    LOGD("startAThreadWork finish");
    JNIEnv *env = nullptr;

    JavaVMAttachArgs args;
    args.version = jniVer;
    args.name = "pthread-startAThreadWork1";//给线程起个名字吧，这样在调试或者崩溃的时候能显示出名字，而不是thead-1,thread-2这样的名字。
    args.group = NULL;//java.lang.ThreadGroup的全局引用，作用你懂的。

     int ret = g_vm->AttachCurrentThread(&env, &args);
     LOGD("AttachCurrentThread env is:%p, ret=%d , jniVer=%d",env,ret,jniVer);

    jmethodID mID = env->GetStaticMethodID(gs_NativeThreadAgent_class,(char*)"startAThreadFinish",(char*)"()V");
    env->CallStaticVoidMethod(gs_NativeThreadAgent_class,mID);
    g_vm->DetachCurrentThread();//释放当前线程
    g_vm->GetEnv((void**)&env,jniVer);//释放之后，当前线程的env指针会被销毁
    LOGD("after  DetachCurrentThread env is:%p", env);
}