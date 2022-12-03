/*
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

extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAThread(JNIEnv* env, jclass jclz);

extern "C" void startAThreadWork1();

extern "C" void setNativeThreadAgendClass(JNIEnv* env,jclass jclz);
#endif //NDKPRO_NATIVE_LIB_THREAD_H
