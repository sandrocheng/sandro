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
Java_com_sandro_nativelib_NativeThreadAgent_atomicTest(JNIEnv* env, jclass jclz){
    LOGD("[atomicTest] thread id is %d",std::this_thread::get_id());
    int globalIntValue = 0;
    auto work = [](int &data){
        for(int i=0;i< 10000000;i++){
            data++;
        }
    };

    std::vector<std::thread> threadsV;
    for(int i=0;i<10;i++){
        threadsV.push_back(std::thread(work,std::ref(globalIntValue)));
    }
    auto it = threadsV.begin();
    for(;it!=threadsV.end();it++){
        (*it).join();
    }
    LOGD("[atomicTest] 普通变量多线程写入 golbalIntValue = %d",globalIntValue);

    threadsV.clear();
    std::atomic<int> atomicIntValue(0);
    auto work1 = [](std::atomic<int>  &data){
        for(int i=0;i< 10000000;i++){
            data++;
        }
    };
    for(int i=0;i<10;i++){
        threadsV.push_back(std::thread(work1,std::ref(atomicIntValue)));
    }
    it = threadsV.begin();
    for(;it!=threadsV.end();it++){
        (*it).join();
    }
    LOGD("[atomicTest] atomic变量多线程写入 atomicIntValue = %d",(int)atomicIntValue);
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startSharedFutureTest(JNIEnv* env, jclass jclz){
    LOGD("[startSharedFutureTest] ，thread id is %d",std::this_thread::get_id());
    std::packaged_task<int(int)> task1(startwork6);
    std::thread task1Thread(std::ref(task1),1);
    task1Thread.join();
    std::future<int> result =  task1.get_future();

    //result.share() 是移动语义，调用后result会置空,可以通过result.valid()去判断当前值是否有效
    std::shared_future<int> result_s(result.share());
    if(!result.valid()){
        LOGD("[startSharedFutureTest] result.get is invalid");
    }

    //shared_future可以多次get
    LOGD("[startSharedFutureTest] result_s.get 1sd is %d",result_s.get());
    LOGD("[startSharedFutureTest] result_s.get 2nd is %d",result_s.get());

    return (unsigned char) 1;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startFutureTest(JNIEnv* env, jclass jclz){
    LOGD("startFutureTest ，thread id is %d",std::this_thread::get_id());

    std::future<int> fResult2 = std::async(startwork6,1);
    std::future_status status2 = fResult2.wait_for(std::chrono::milliseconds(1300));
    if(status2 == std::future_status::ready){
        LOGD("startFutureTest fResult2 thread ready,and result is %d",fResult2.get());
    }

    std::future<int> fResult3 = std::async(std::launch::deferred,startwork6,1);
    std::future_status status3 = fResult3.wait_for(std::chrono::milliseconds(1300));
    if(status3 == std::future_status::deferred){
        //如果async第一个参数被设置了std::launch::deferred，则本条件成立
        LOGD("startFutureTest fResult3 thread deferred,and result is %d",fResult3.get());
    }

    std::future<int> fResult1 = std::async(startwork6,2);
    //线程状态，可以设置线程超时时间。
    //通过wait_for 设置阻塞时间，超时就返回，返回时，根据status判断调用线程是否已经执行完毕
    std::future_status status1 = fResult1.wait_for(std::chrono::seconds(1));
    if(status1 == std::future_status::timeout){
        LOGD("startFutureTest fResult1 thread timeout");
    }
    return (unsigned char)1;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startPromise(JNIEnv* env, jclass jclz){
    LOGD("startPromise ，thread id is %d",std::this_thread::get_id());
    std::promise<int> result;//声明一个promise对象，保存类型为int类型
    std::thread thread1(startwork7,std::ref(result),16);
    thread1.join();
    std::future<int> fResult = result.get_future();//使用get_future前提是，必须要调用线程的join
    LOGD("startPromise startwork7 finished,thread id is %d , result is %d",std::this_thread::get_id(),fResult.get());
    return (unsigned char)1;
}

extern "C" void startwork7(std::promise<int> &tmpp,int calc){
    calc ++;
    calc*=4;
    std::chrono::seconds dura(3);
    std::this_thread::sleep_for(dura);
    tmpp.set_value(calc);
    LOGD("startwork7,thread id is %d",std::this_thread::get_id());
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startPackagedTask(JNIEnv* env, jclass jclz){
    LOGD("startPackagedTask ，thread id is %d",std::this_thread::get_id());
    //模板类型是被调用函数的 返回值 + （参数类型）组成，函数名作为对象的参数
    std::packaged_task<int(int)> mypt(startwork6);
    //作为线程对象创建线程，第二个参数，是startwork6函数的参数
    std::thread t1(std::ref(mypt),1);
    t1.join();
    //通过调用packaged_task中的get_future得到函数startwork6的返回值
    std::future<int> result = mypt.get_future();
    LOGD("startPackagedTask startwork6 finished,thread id is %d , result is %d",std::this_thread::get_id(),result.get());

    //用packaged_task包装一个lambda表达式
    std::packaged_task<int(int)> mypt2([](int second){
        LOGD("start lambda func ");
        std::chrono::seconds dura(second);
        std::this_thread::sleep_for(dura);
        LOGD("lambda func finish,thread id is %d",std::this_thread::get_id());
        return second;
    });
    std::thread t2(std::ref(mypt2),2);
    t2.join();
    std::future<int> r2 = mypt2.get_future();
    LOGD("startPackagedTask mypt2 finished,thread id is %d , r2 is %d",std::this_thread::get_id(),r2.get());

    //packaged_task本身就是可执行对象，可以直接调用，直接调用就是当前线程执行可调用对象
    std::packaged_task<int(int)> mypt3(startwork6);
    mypt3(1);
    std::future<int> r3 = mypt3.get_future();
    LOGD("startPackagedTask mypt3 finished,thread id is %d , r3 is %d",std::this_thread::get_id(),r3.get());

    //使用一个容器保存所有packaged_task
    LOGD("----------------------start task vector,thread id is %d",std::this_thread::get_id());
    std::vector<std::packaged_task<int(int)>> my_task;
    std::packaged_task<int(int)> mypt4(startwork6);
    std::packaged_task<int(int)> mypt5([](int second){
        LOGD("start lambda func ");
        std::chrono::seconds dura(second);
        std::this_thread::sleep_for(dura);
        LOGD("lambda func finish,thread id is %d",std::this_thread::get_id());
        return second;
    });


    //使用移动 避免多个地方使用这个引用
    my_task.push_back(std::move(mypt4));
    my_task.push_back(std::move(mypt5));
    my_task.push_back(std::packaged_task<int(int)>(startwork6));
    auto it = my_task.begin();
    int i = 0;
    for(;it!=my_task.end();it++,i++){
        std::packaged_task<int(int)> tmp = std::move(*it);
        tmp(1);
        LOGD("task %d result is %d,thread id is %d",i,tmp.get_future().get(),std::this_thread::get_id());
    }
    //因为使用移动语义将packaged对象移动到临时对象中去，此时vector中的元素都已经为NULL，及时清理，避免有问题
    my_task.clear();

    return (unsigned char)1;
}

extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAsyncTask(JNIEnv* env, jclass jclz){
    unsigned char dataBoolean = 1;//0->false,1->true
    LOGD("startAsyncTask started,thread id is %d",std::this_thread::get_id());
    //函数的async调用方式，第一个参数是函数名称，第二个参数开始是函数参数，没有参数不用填
    std::future<int> result = std::async(startwork6,1);

    //future get()方法会阻塞直到async线程执行完毕
    //get函数只能调用一次，第二次会报异常
    LOGD("startAsyncTask startwork6 finished,thread id is %d , result is %d",std::this_thread::get_id(),result.get());

    TestClass5 tc5;
    //类成员函数的async调用方式
    //第一个参数是类成员函数地址，第二个方法是类的实例，第三个参数开始是成员函数参数
    std::future<int> result2 = std::async(&TestClass5::exec,&tc5,2);
    //如果没有返回值，可以用wait()方法，阻塞直到线程完毕
    //如果没有调用get或者wait，调用线程依然会等待async执行完毕之后才会结束。不推荐这么做。最好手动的调用get或者wait，让流程可控比较好
    LOGD("startAsyncTask TestClass5 finished,thread id is %d , result2 is %d",std::this_thread::get_id(),result2.get());

    //async的 std::launch参数是一个枚举类型含义如下
    //1) std::launch::deferred , 表示线程入口函数调用被延迟到std::future的wait()或者get()的时候才执行
    //   如果wait或者get没有被调用,线程并不会执行，实际上线程都不会创建
    //   使用deferred后，不会创建线程执行任务，只会在调用线程调用
    //2)std::launch::async，在调用async函数的时候就开始创建线程并执行，系统默认就是这个标记
    std::future<int> result3 = std::async(std::launch::deferred,&TestClass5::exec,&tc5,1);
    LOGD("startAsyncTask TestClass5 .");
    LOGD("startAsyncTask TestClass5 ..");
    LOGD("startAsyncTask TestClass5 ...");
    LOGD("startAsyncTask TestClass5 ....");
    LOGD("startAsyncTask TestClass5 result3 finished,thread id is %d , result3 is %d",std::this_thread::get_id(),result3.get());
    return dataBoolean;
}

extern "C"  int startwork6(int second){
    LOGD("start work 6 ");
    std::chrono::seconds dura(second);
    std::this_thread::sleep_for(dura);
    LOGD("work 6 finish,thread id is %d",std::this_thread::get_id());
    return second;
}

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