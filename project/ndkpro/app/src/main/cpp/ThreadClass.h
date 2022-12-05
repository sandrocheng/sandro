
#ifndef NDKPRO_THREADCLASS_H
#define NDKPRO_THREADCLASS_H

#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库
#include "native-global-params.h"

extern "C"
class ThreadClass {
private:
    int workId;
    void (*callbackfp)(const char* name, const char* sig,...) = NULL;
public:
    /**
     * 线程结束回调
     * @param workId 任务id
     * @param fp 回调外部的函数指针
     */
    ThreadClass(int workId,void (*fp)(const char* name, const char* sig,...));
    void operator()();
};


#endif //NDKPRO_THREADCLASS_H
