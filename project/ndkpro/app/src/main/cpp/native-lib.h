/**
 * 本地函数静态注册
 * java 调用的包名类名 和 c文件中函数接口名完全按照规范定义的方式叫做本地函数静态注册
 *
 * java类型 -> jni类型   -> 对应的c类型
 * boolean  -> jboolean -> unsigned char (unsigned 8 bits)
 * byte     -> jbyte    -> char (signed 8bits)
 * char     -> jchar    -> unsigned short (unsigned 16 bits)
 * short    -> jshort   -> short (signed 16 bits)
 * int      -> jint     -> int (signed 32 bits)
 * long     -> jlong    -> long(64位系统 signed 64 bits)
 *                         long long (32位系统的情况下使用long long 转换 jlong的值 64 bits)
 * float    -> jfloat   -> float (signed 32 bits)
 * double   -> jdouble  -> doubel (sigend 64 bits)
 * String   -> jstring  -> char * (str::string.c_str())
 *
 * JNIEXPORT : jni关键字，标记为外部该方法可以被外部调用
 * JNICALL : jni关键字，可以不填，相当于一个标记，代表该方法是jni调用的
 * JNIEnv : 上下文环境，是c和java相互调用的桥梁
 * jobject thiz : java 传递下来的调用类的对象，也可能是jclass(java中定义的是static方法时，这里是jclass,jobject和jclass没有区别，只是标记不同)，
 *                可以用这个对象回调java中的接口
 */

//避免重复引用导致的多次copy代码
#ifndef NDKPRO_NATIVE_LIB_H
#define NDKPRO_NATIVE_LIB_H
#include <jni.h>
#include <string>
#include <android/log.h>

/*
 * jni 接收java String
 * GetStringUTFChars:
 *    当从JNI函数GetStringChars中返回得到字符串B时，如果B是原始字符串java.lang.String的拷贝，则isCopy被赋值为JNI_TRUE。
 *    如果B和原始字符串指向的是JVM中的同一份数据，则isCopy被赋值为JNI_FALSE。
 *    当isCopy值为JNI_FALSE时，本地代码决不能修改字符串的内容，否则JVM中的原始字符串也会被修改，这会打破JAVA语言中字符串不可变的规则。
 *    通常，因为你不必关心JVM是否会返回原始字符串的拷贝，你只需要为isCopy传递NULL作为参数。
 *    JVM是否会通过拷贝原始Unicode字符串来生成UTF-8字符串是不可以预测的，程序员最好假设它会进行拷贝，而这个操作是花费时间和内存的。
 *    一个典型的JVM会在heap上为对象分配内存。一旦一个JAVA字符串对象的指针被传递给本地代码，GC就不会再碰这个字符串。
 *    换言之，这种情况下，JVM必须pin这个对象。可是，大量地pin一个对象是会产生内存碎片的，因为，虚拟机会随意性地来选择是复制还是直接传递指针。
 *    当你不再使用一个从GetStringChars得到的字符串时，不管JVM内部是采用复制还是直接传递指针的方式，都不要忘记调用ReleaseStringChars。
 *    根据方法GetStringChars是复制还是直接返回指针，ReleaseStringChars会释放复制对象时所占的内存，或者unpin这个对象。
 *
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_stringToJni(JNIEnv* env, jobject thiz,jstring str);

/*
 * jni 接收java基本类型
 */
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
        jdouble argDouble);

/*
 * jni 接收java 数组
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_javaArrToJni(
        JNIEnv* env,
        jobject thiz,
        jintArray intArr,
        jobjectArray strArr);

/*
 * 返回字符串
 */
extern "C" JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回byte
 */
extern "C" JNIEXPORT jbyte JNICALL
Java_com_sandro_nativelib_NativeAgent_byteFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回short
 */
extern "C" JNIEXPORT jshort JNICALL
Java_com_sandro_nativelib_NativeAgent_shortFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回int
 */
extern "C" JNIEXPORT jint JNICALL
Java_com_sandro_nativelib_NativeAgent_intFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回long
 */
extern "C" JNIEXPORT jlong JNICALL
Java_com_sandro_nativelib_NativeAgent_longFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回float
 */
extern "C" JNIEXPORT jfloat JNICALL
Java_com_sandro_nativelib_NativeAgent_floatFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回double
 */
extern "C" JNIEXPORT jdouble JNICALL
Java_com_sandro_nativelib_NativeAgent_doubleFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回char
 */
extern "C" JNIEXPORT jchar JNICALL
Java_com_sandro_nativelib_NativeAgent_charFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * 返回boolean
 */
extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeAgent_booleanFromJNI(
        JNIEnv* env,
        jobject /* this */);

/*
 * c层访问java对象中的属性
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_accessJavaAttr(
        JNIEnv* env,
        jobject thiz);

/*
 * c层访问java方法
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeAgent_accessJavaMethod(
        JNIEnv* env,
        jobject thiz);

/*
 * c层返回int数组
 */
extern "C" JNIEXPORT jintArray JNICALL
Java_com_sandro_nativelib_NativeAgent_getIntArrayFromJNI(
        JNIEnv* env,
        jobject thiz);

/*
 * c层返回string数组
 */
extern "C" JNIEXPORT jobjectArray JNICALL
Java_com_sandro_nativelib_NativeAgent_getStringArrayFromJNI(
        JNIEnv* env,
        jobject thiz);

/*
 * 从NDK中返回一个Person对象
 */
extern "C" JNIEXPORT jobject JNICALL
Java_com_sandro_nativelib_NativeAgent_getPersonFromJNI(
        JNIEnv* env,
        jobject thiz,
        jobject personOBJ);

#endif //NDKPRO_NATIVE_LIB_H
