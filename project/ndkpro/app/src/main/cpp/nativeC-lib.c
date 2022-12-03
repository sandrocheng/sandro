#include "nativeC-lib.h"

JNIEXPORT jstring JNICALL
Java_com_sandro_nativelib_NativeCAgent_stringFromCJNI(
        JNIEnv* env,
        jclass thiz){
    const char *str = "Hello from C !";
    return (*env)->NewStringUTF(env,str);
}
