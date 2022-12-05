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

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAThreadOnJoin(JNIEnv* env, jclass jclz){
    //通过 NewGlobalRef 方法，在全局变量中复制一份 jni传参jclass/jobject，只有全局的jclass/jobject 才能在子线程中调用
    setNativeThreadAgendClass(env,jclz);
    int var = 100;
    int &vartemp = var;
    LOGD("in main thread,var address is %p , vartemp address is %p",&var,&vartemp);
    char strbuff[] = "this is strBuff";
    LOGD("var strbuff address in main thread is %p ",strbuff);
    std::thread(startwork1,var,strbuff).join();

    std::string str = "this is string obj";
    LOGD("string str in main thread address is %p ",&strbuff);
//    std::thread(startwork2,var,strbuff).join();//直接使用strbuff,不安全

    /**
     * 使用strbuff构造一个新的临时变量 ,安全
     * 原因是使用临时变量显式转换会优先于线程构造,这里会构造两次,第一次是是参数中的临时变量构造,
     * 第二次是线程内部又执行了一个拷贝构造,而这两次都会在源变量销毁之前执行,
     * 因此保证了子线程在执行之前,参数已经准备完毕,这里可以自己写一个有构造,拷贝构造,析构函数的类,执行一下
     */
    std::thread(startwork2,var,std::string(strbuff)).join();
    LOGD("startAThreadOnJoin in main thread finish");
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnJoin(JNIEnv* env, jclass jclz){
    setNativeThreadAgendClass(env,jclz);
    std::thread(startwork,1).join();
    std::thread(startwork,2).join();
    std::thread(startwork,3).join();
    jmethodID mID = env->GetStaticMethodID(jclz,(char*)"startMultiThreadJoinFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,mID);
    LOGD("startMultiThreadJoinFinish in main thread finish");
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnDetach(JNIEnv* env, jclass jclz){
    setNativeThreadAgendClass(env,jclz);
    ThreadClass tc(7,callbackJavaStaticVoidMethodInThread);
    std::thread mThread(tc);
    mThread.detach();

    std::thread(startworkCallBack,4,
                Java_method_name_startMultiThreadOnDetachFinish,Java_method_name_startMultiThreadOnDetachFinish_sig).detach();
    std::thread(startworkCallBack,5,
                Java_method_name_startMultiThreadOnDetachFinish,Java_method_name_startMultiThreadOnDetachFinish_sig).detach();
    std::thread(startworkCallBack,6,
                Java_method_name_startMultiThreadOnDetachFinish,Java_method_name_startMultiThreadOnDetachFinish_sig).detach();

    auto mylamthread = []{
        startworkCallBack(8,Java_method_name_startMultiThreadOnDetachFinish, Java_method_name_startMultiThreadOnDetachFinish_sig);
    };
    std::thread(mylamthread).detach();

    LOGD("startMultiThreadOnDetach in main thread finish");
}

extern "C"  void startworkCallBack(int workid,const char* name, const char* sig){
    startwork(workid);
    callbackJavaStaticVoidMethodInThread(name,sig,workid);
}

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

extern "C"  void startwork(int workid){
    LOGD("start work ,id : %d" , workid);
    LOGD("work id : %d, step 1..." , workid);
    LOGD("work id : %d, step 2..." , workid);
    LOGD("work id : %d, step 3..." , workid);
    LOGD("start work ,id : %d finish",workid);
}
extern "C"  void startwork2(const int var,const std::string &strbuff){
    /**
     * strbuff的地址和外部地址是不一样的,这虽然能保证指针指向的内存不会被销毁
     * 但是,内存拷贝的时刻是不确定的,有可能出现在拷贝对象都被回收了,拷贝还没来得及执行,导致不可预料的问题
     * 因此调用时,使用一个临时变量,会更安全
     */
    LOGD("startwork2 var in thread address : %p , strbuff address : %p", &var,&strbuff);
    LOGD("startwork2 finish");
    callbackJavaStaticVoidMethodInThread((char*)"startAThreadOnJoinFinish",(char*)"()V");
}

extern "C" void startwork1(const int &var,char *strbuff ){
    /**
     * 线程中方法传参即使使用的是对象引用,实际上也是在线程中作了拷贝以后的引用
     * 因为外部对象的地址和内部引用的地址是不一样的,所以说,即便使用的是外部引用,线程内部使用也是安全的
     *
     * 线程中方法传参是指针的情况下,线程内外的指针是同一个指针
     * 所以当线程内部的指针变量,在外部被销毁,线程会不安全
     *
     */
    LOGD("startwork1 var in thread address : %p , strbuff address : %p", &var,strbuff);
    LOGD("startwork1 finish");
}

extern "C" void callbackJavaStaticVoidMethodInThread(const char* name, const char* sig,...){
    JNIEnv *env = nullptr;

    JavaVMAttachArgs jvmargs;
    jvmargs.version = jniVer;
    std::string threadName = "pthread-";
    threadName.append(name);
    jvmargs.name = threadName.c_str();//给线程起个名字吧，这样在调试或者崩溃的时候能显示出名字，而不是thead-1,thread-2这样的名字。
    jvmargs.group = NULL;//java.lang.ThreadGroup的全局引用，作用你懂的。

    g_vm->AttachCurrentThread(&env, &jvmargs);
//    LOGD("AttachCurrentThread env is:%p, ret=%d , jniVer=%d",env,ret,jniVer);

    jmethodID mID = env->GetStaticMethodID(gs_NativeThreadAgent_class,name,(char*)sig);

    //可变参数截取
    va_list args;
    va_start(args,sig);
    env->CallStaticVoidMethodV(gs_NativeThreadAgent_class,mID,args);
    va_end(args);


    g_vm->DetachCurrentThread();//释放当前线程
//    g_vm->GetEnv((void**)&env,jniVer);//释放之后，当前线程的env指针会被销毁
//    LOGD("after  DetachCurrentThread env is:%p", env);
}