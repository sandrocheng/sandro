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
#include "ThreadClass.h"

extern "C"
ThreadClass::ThreadClass(int workId,void (*fp)(const char* name, const char* sig,...)){
    this->workId = workId;
    this->callbackfp = fp;
}

extern "C"
void ThreadClass::operator()(){
    LOGD("ThreadClass work id : %d, step 1... ...",this->workId);
    LOGD("ThreadClass work id : %d, step 2......",this->workId);
    LOGD("ThreadClass work id : %d, step 3... ...",this->workId);
    LOGD("ThreadClass work id : %d, finish",this->workId);
    callbackfp(Java_method_name_startMultiThreadOnDetachFinish,
       Java_method_name_startMultiThreadOnDetachFinish_sig,
       this->workId);
}