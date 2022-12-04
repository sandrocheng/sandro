
#ifndef NDKPRO_THREADCLASS_H
#define NDKPRO_THREADCLASS_H

#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库

extern "C"
class ThreadClass {
private:
    int workId;

public:
    ThreadClass(int workId);
    void operator()();
};


#endif //NDKPRO_THREADCLASS_H
