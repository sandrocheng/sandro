/*
 * c语言NDK
 * JNIEnv 的使用 : JNIEnv因为是JNINativeInterface结构体，所以需要使用 (*env) 才能引用到该结构体的地址，再通过指针调用函数
 *                c 的JNIEnv 函数基本和c++中的函数是一一对应的，但是需要手动传递 JNIEnv 实参
 *
 */

#include <jni.h>
#include <android/log.h>
#ifndef NDKPRO_NATIVEC_LIB_H
#define NDKPRO_NATIVEC_LIB_H

/*
 * 返回字符串
 */
JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromCJNI(
        JNIEnv* env,
        jobject thiz);

#endif //NDKPRO_NATIVEC_LIB_H
