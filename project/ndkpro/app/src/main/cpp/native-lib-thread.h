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
 * 注意
 * 线程中如果使用了其他线程内存变量的引用，需要注意该变量的生命周期是否合理，避免其他线程内存回收导致当前线程的问题
 * 使用函数对象（仿函数）构造一个thread的时候，该对象在thread内部使用拷贝构造，所以要注意仿函数内部是否由指针，考虑是否需要重写拷贝构造
 *
 * 自己创建的子线程不能用主线程的JNIEnv了，得用AttachCurrentThread生成自己的JNIEnv，用完后调用DetachCurrentThread。
 *
 * 在线程中获取JNIEnv ,首先要先获取javaVM，有许多方式可以获取JavaVM指针。
 * 可以在VM创建的时候记录下来，也可以通过JNI_GetCreatedJavaVMs查询被创建的虚拟机，还可以通过调用JNI函数GetJavaVM或者定义JNI_OnLoad句柄接口。
 * 与JNIEnv不同的是，JavaVM只要被缓存在全局引用中，是可以被跨线程使用的。
 *
 * 子线程中也不能直接使用 jni传参过来的 jclass/jobject
 * 需要定义一个全局变量，然后调用NewGlobalRef给全局变量赋值
 * gs_class = (jclass)env->NewGlobalRef(jclz);
 * 在子线程中只能操作这个全局变量
 * 通过DeleteGlobalRef来 释放全局引用。 全局引用一直保持有效,直到被程序员手动释放。 在失效之前,全局引用确保了所引用的对象不会被GC
 */

#ifndef NDKPRO_NATIVE_LIB_THREAD_H
#define NDKPRO_NATIVE_LIB_THREAD_H
#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库
#include "ThreadClass.h"
#include "native-global-params.h"

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
 */
 extern "C"  void startwork1();

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
