#include "nativeC-lib.h"

JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeAgent_stringFromCJNI(
        JNIEnv* env,
        jobject thiz){
    const char *str = "Hello from C!";
    return (*env)->NewStringUTF(env,str);
}
