/*
 * c++ 11 线程库 <thread>
 * thread.join() //阻塞主线程，让主线程等待子线程执行完毕，然后主线程再继续执行
 *               //当多个线程使用join的时候，按调用顺序逐个执行完毕后继续主线程
 *
 * thread.detach()
 *      传统多线程程序需要等待子线程执行完毕再推出，比如使用join的方式让主线程等待
 *      detach让子线程和主线程脱离，不阻塞主线程
 *      一旦detach后，就不能再join回来
 * thread.joinable 判断是否可以成功使用 join 或者 detach ，返回true或者flase
 *
 * std::ref 函数
 *      当方法参数是引用的时候，在线程调用前 使用 std::ref(obj),可以保证这个对象是线程外的对象。详间startwork3函数
 *      如果不用ref，这个对象在传入线程后实际上会被拷贝构造生成一个新的对象，方法内部引用实际上是新的对象的引用，
 *      这样就无法达到线程内修改数据，线程外数据也修改的目的，使用ref则可以实现这个目标
 *
 * C++11 提供了 3 种智能指针类型，它们分别由 unique_ptr 类、shared_ptr 类和 weak_ptr 类定义，所以又分别称它们为独占指针、共享指针和弱指针。
 * #include <memory>
 * 智能指针在线程函数中传参时，需要std::move() 相见startwork4,
 * 智能指针智能用在join，不能用detach,因为move以后，原来的智能指针会维护的对象指向为空，因为是浅拷贝，只是更改了指针的指向，并没有实际更改内存
 * 当主线程结束以后，内存回收，而此时子线程智能指针指向的地址还是原来堆中的地址（此时已经释放），导致野指针错乱
 *
 *  如果使用detach，要注意对象使用是否可能造成野指针
 *  主要是要看对象是否在线程中执行了拷贝构造，如果没有，就不要使用detach
 *  std::thread(
 *             &TestClass::thread_work,//成员函数
 *             tcObj,//对象
 *             10 //成员函数第一个参数
 *       ).detach();
 * 注意
 * 1）
 * 线程中如果使用了其他线程内存变量的引用，需要注意该变量的生命周期是否合理，避免其他线程内存回收导致当前线程的问题
 * 使用函数对象（仿函数）构造一个thread的时候，该对象在thread内部使用拷贝构造，所以要注意仿函数内部是否由指针，考虑是否需要重写拷贝构造
 * 自己创建的子线程不能用主线程的JNIEnv了，得用AttachCurrentThread生成自己的JNIEnv，用完后调用DetachCurrentThread。
 * 在线程中获取JNIEnv ,首先要先获取javaVM，有许多方式可以获取JavaVM指针。
 * 可以在VM创建的时候记录下来，也可以通过JNI_GetCreatedJavaVMs查询被创建的虚拟机，还可以通过调用JNI函数GetJavaVM或者定义JNI_OnLoad句柄接口。
 * 与JNIEnv不同的是，JavaVM只要被缓存在全局引用中，是可以被跨线程使用的。
 * 子线程中也不能直接使用 jni传参过来的 jclass/jobject
 * 需要定义一个全局变量，然后调用NewGlobalRef给全局变量赋值
 * gs_class = (jclass)env->NewGlobalRef(jclz);
 * 在子线程中只能操作这个全局变量
 * 通过DeleteGlobalRef来 释放全局引用。 全局引用一直保持有效,直到被程序员手动释放。 在失效之前,全局引用确保了所引用的对象不会被GC
 *
 * 2)
 * 线程方法使用 引用和指针传参时的坑,详见 startwork1(const int &var,char *strbuff )方法示例
 * 当使用对象的深拷贝传参时,有可能发生在其他线程销毁时刻之后才拷贝,导致bug,比如 startwork2 方法
 * 基本类型不推荐使用引用传参,不要使用指针传参,正确方法相见startwork2(调用时使用临时变量)
 * 程方法传参，会统一调用拷贝构造，所以即便是引用传参，线程内对引用操作，也不会影响外部的原对象
 * 如果想要在线程内修改线程外的对象，需要使用std::ref函数,正确方法相见startwork3
 * 使用线程的join方法，不会有以上问题，detach方法需要注意以上问题
 * 或者使用函数对象的方式 执行线程 ，这样再调用线程之前能够完全保证 数据已经准备好
 * 例：
 *    ThreadClass tc(7,callbackJavaStaticVoidMethodInThread);
 *    std::thread mThread(tc);
 *    mThread.detach();
 *
 */

#ifndef NDKPRO_NATIVE_LIB_THREAD_H
#define NDKPRO_NATIVE_LIB_THREAD_H
#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库
#include "ThreadClass.h"
#include <memory>//智能指针
#include "native-global-params.h"

#define TAG "nativeThreadLibTAG"
#define LOGD(...)   __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)

class TestClass{
public :
    TestClass(int m):m_int(m){};
    int m_int = 0;
    void thread_work(int x){
        LOGD("TestClass::thread_work ,arg : %d",x);
    };
};

/**
 * 启动一个线程使用join方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAThreadOnJoin(JNIEnv* env, jclass jclz);

/**
 * 启动多个线程使用join方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnJoin(JNIEnv* env, jclass jclz);

/**
 * 启动多个线程使用detach方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnDetach(JNIEnv* env, jclass jclz);


/**
 * 线程任务：输出字符串，结束后回调java接口
 * @param workid  任务id
 * @param name 方法名称
 * @param sig 方法签名
 */
extern "C"  void startworkCallBack(int workid,const char* name, const char* sig);

/**
 * 线程任务：输出字符串
 * @param workid  任务id
 */
extern "C"  void startwork(int workid);

/**
 * 线程任务1：输出字符串
 * @param var 类型引用
 * @param strbuff 字符串指针
 */
 extern "C"  void startwork1(const int &var,char *strbuff );

/**
* 线程任务2：输出字符串
* @param var
* @param strbuff 字符串引用，使用引用接类对象，减少消耗
*/
extern "C"  void startwork2(const int var,const std::string &strbuff);

/**
* 线程任务3：
* @param TestClass
*/
extern "C"  void startwork3(TestClass &tcobj);

/**
* 线程任务3：
* @param pzn  std::unique_ptr<int> 独占式智能指针
*/
extern "C"  void startwork4(std::unique_ptr<int> pzn);

/**
 * 设置全局变量 NativeThreadAgent的class，用于子线程中evn的生成
 */
extern "C" void setNativeThreadAgendClass(JNIEnv* env,jclass jclz);


/**
 * 回调java层 NativeThreadAgent 对应类的静态void方法
 * @param name 回调方法名称
 * @param sig 回调方法签名
 * @param ... 回调方法参数
 */
extern "C" void callbackJavaStaticVoidMethodInThread(const char* name, const char* sig,...);
#endif //NDKPRO_NATIVE_LIB_THREAD_H
