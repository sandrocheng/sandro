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
Java_com_sandro_nativelib_NativeThreadAgent_waitAndNotify(JNIEnv* env, jclass jclz){
    SingleTonClass::getInstance()->clearMsg();
    std::thread getThread ([]{
        SingleTonClass::getInstance()->getMsgFromQueue();
    });
    std::thread getThread2 ([]{
        SingleTonClass::getInstance()->getMsgFromQueue();
    });
    std::thread pushThread([]{
        SingleTonClass::getInstance()->startPushMsg();
    });
    getThread.join();
    getThread2.join();
    pushThread.join();

    LOGD("waitAndNotify thread finish,cur thread id is %d",std::this_thread::get_id());
    jmethodID  jmID = env->GetStaticMethodID(jclz,(char *)"waitAndNotifyFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,jmID);

}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_singleTonSaftyThread(JNIEnv* env, jclass jclz){
    std::vector<std::thread> threadArr;
    auto mythWork = [](int i){
        SingleTonClass::getInstance();
        SingleTonClass2::getInstance();
        LOGD("work %d , thread_id : %d",i,std::this_thread::get_id());
    };
    for(int i=0;i<10;i++){
        threadArr.push_back(std::thread(mythWork,i));
    }
    for(auto iter = threadArr.begin() ;iter!=threadArr.end();iter++){
        iter->join();
    }
    LOGD("singleTonSaftyThread thread finish,cur thread id is %d",std::this_thread::get_id());
    jmethodID  jmID = env->GetStaticMethodID(jclz,(char *)"singleTonSaftyThreadFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,jmID);
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_uniqueLock(JNIEnv* env, jclass jclz){
    UniqueLockCase ulc;
    std::thread pushThread(&UniqueLockCase::dataQPush,std::ref(ulc));
    std::thread popThread(&UniqueLockCase::getDataFromQueue,std::ref(ulc));
    pushThread.join();
    popThread.join();

    UniqueLockCase2 ulc2;
    std::thread pushThread2(&UniqueLockCase2::dataQPush2,std::ref(ulc2));
    std::thread popThread2(&UniqueLockCase2::getDataFromQueue2,std::ref(ulc2));
    pushThread2.join();
    popThread2.join();

    UniqueLockCase3 ulc3;
    std::thread popThread3(&UniqueLockCase3::getDataFromQueue3,std::ref(ulc3));
    std::thread pushThread3(&UniqueLockCase3::dataQPush3,std::ref(ulc3));
    popThread3.join();
    pushThread3.join();

    UniqueLockCase4 ulc4;
    std::thread popThread4(&UniqueLockCase4::getDataFromQueue4,std::ref(ulc4));
    std::thread pushThread4(&UniqueLockCase4::dataQPush4,std::ref(ulc4));
    popThread4.join();
    pushThread4.join();

    LOGD("uniqueLock thread finish,cur thread id is %d",std::this_thread::get_id());
    jmethodID  jmID = env->GetStaticMethodID(jclz,(char *)"uniqueLockFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,jmID);
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_deadLockVoid(JNIEnv* env, jclass jclz){
    TestClass3 tc3(10);
    std::thread getDataThread(&TestClass3::getDataFromQueue,std::ref(tc3));
    std::thread pushThread(&TestClass3::dataQPush,std::ref(tc3));
    getDataThread.join();
    pushThread.join();

    TestClass4 tc4(10);
    std::thread getDataThread4(&TestClass4::getDataFromQueue,std::ref(tc4));
    std::thread pushThread4(&TestClass4::dataQPush,std::ref(tc4));
    getDataThread4.join();
    pushThread4.join();

    jmethodID  jmID = env->GetStaticMethodID(jclz,(char *)"deadLockVoidFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,jmID);

}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_multisThreadsReadAndWrite(JNIEnv* env, jclass jclz){

    //使用lock 和 unlock 对数据加锁
    TestClass tc(10);
    std::thread getDataThread(&TestClass::getDataFromQueue,std::ref(tc));
    std::thread pushThread(&TestClass::dataQPush,std::ref(tc));
    pushThread.join();
    getDataThread.join();

    //使用std::lock_guard模板对数据加锁
    TestClass2 tc2(10);
    std::thread getDataThread2(&TestClass2::getDataFromQueue,std::ref(tc2));
    std::thread pushThread2(&TestClass2::dataQPush,std::ref(tc2));
    getDataThread2.join();
    pushThread2.join();
    jmethodID mID = env->GetStaticMethodID(jclz,(char*)"multisThreadsReadAndWriteFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,mID);
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAndWaitMultiThread(JNIEnv* env, jclass jclz){
    std::vector<std::thread> threadArr;
    for(int i=0;i<3;i++){
        threadArr.push_back(std::thread(startwork5,(100+i)));
    }
    for(auto iter = threadArr.begin() ;iter!=threadArr.end();iter++){
        iter->join();
    }
    jmethodID mID = env->GetStaticMethodID(jclz,(char*)"startAndWaitMultiThreadFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,mID);
    LOGD("startAndWaitOtherThread in main thread finish,cur thread id is %d",std::this_thread::get_id());
}

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
     * 原因是使用临时变量显式转换会在父线程执行,这里会构造两次,第一次是是参数中的临时变量构造,
     * 第二次是内部又隐式地执行了一个拷贝构造,而这两次构造都是在父线程中执行，两次构造执行完毕后子线程才会执行
     * 因此保证了子线程在执行之前,参数已经准备完毕,这里可以自己写一个有构造,拷贝构造,析构函数的类,执行一下
     */
    std::thread(startwork2,var,std::string(strbuff)).join();
    LOGD("startAThreadOnJoin in main thread finish,cur thread id is %d",std::this_thread::get_id());
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnJoin(JNIEnv* env, jclass jclz){
    setNativeThreadAgendClass(env,jclz);
    std::thread(startwork,1).join();
    std::thread(startwork,2).join();
    std::thread(startwork,3).join();
    jmethodID mID = env->GetStaticMethodID(jclz,(char*)"startMultiThreadJoinFinish",(char*)"()V");
    env->CallStaticVoidMethod(jclz,mID);
    LOGD("startMultiThreadJoinFinish in main thread finish,cur thread id is %d",std::this_thread::get_id());
}

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnDetach(JNIEnv* env, jclass jclz){
    setNativeThreadAgendClass(env,jclz);

    TestClass tcObj(100);
    LOGD("in mainThread tcobj address is %p" ,&tcObj);
    std::thread(startwork3,std::ref(tcObj)).detach();


    std::unique_ptr<int> pzn(new int(200));
    std::thread(startwork4,std::move(pzn)).join();

    //使用对象成员函数执行线程
    std::thread(
                &TestClass::thread_work,//成员函数
                tcObj,//对象
                10 //成员函数第一个参数
                ).detach();

    ThreadClass tc(7,callbackJavaStaticVoidMethodInThread);
    std::thread mThread(tc);
    LOGD("mThread id is %d" ,mThread.get_id());
    mThread.join();

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



    LOGD("startMultiThreadOnDetach in main thread finish ,cur thread id is %d",std::this_thread::get_id());
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

extern "C"  void startwork4(std::unique_ptr<int> pzn){
    LOGD("start work4(unituq_ptr) ,id : %d" , *pzn);
    LOGD("work(unituq_ptr)  id : %d, step 1..." , *pzn);
    LOGD("work id(unituq_ptr)  : %d, step 2..." , *pzn);
    LOGD("work id(unituq_ptr)  : %d, step 3..." , *pzn);
    LOGD("work(unituq_ptr)  ,id : %d finish",*pzn);

}

extern "C"  void startwork5(int workid){
    LOGD("start work5 ,id : %d ,thread_id is %d" , workid,std::this_thread::get_id());
    LOGD("work5  %d ,step1...." , workid);
    LOGD("work5  %d ,step2...." , workid);
    LOGD("work5  %d ,step3...." , workid);
    LOGD("work5  %d ,step4...." , workid);
    LOGD("work5  %d ,step5...." , workid);
    LOGD("work5 id : %d,thread_id is %d  finish",workid,std::this_thread::get_id());
}

extern "C"  void startwork(int workid){
    LOGD("start work ,id : %d" , workid);
    LOGD("work id : %d, step 1..." , workid);
    LOGD("work id : %d, step 2..." , workid);
    LOGD("work id : %d, step 3..." , workid);
    LOGD("start work ,id : %d finish",workid);
}

extern "C"  void startwork3(TestClass &tcobj){
    tcobj.m_int--;
    LOGD("startwork3 tc in thread address is %p ", &tcobj);
    LOGD("startwork3 finish");
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