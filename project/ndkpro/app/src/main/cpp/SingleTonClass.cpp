//
// Created by sandro on 2022/12/19.
//

#include "SingleTonClass.h"
#define TAG "nativeThreadLibTAG"
#define LOGD(...)   __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)

/////////////////////////SingleTonClass 实现 ///////////////////////////
//单例静态变量初始化
SingleTonClass* SingleTonClass::instance = nullptr;
std::mutex SingleTonClass::instanceLock;

SingleTonClass* SingleTonClass::getInstance(){
    //双重锁定
    //锁只有在第一次初始化的时候才会生效，初始化成功以后再不用每次都上锁，提升调用效率
    if(instance == nullptr){
        std::unique_lock<std::mutex> myUL(SingleTonClass::instanceLock);
        if(instance == nullptr){
            instance = new SingleTonClass();
            LOGD("new SingleTonClass");
            //静态对象声明周期一直会到进程退出，所以当对象被销毁时，执行析构函数在析构函数中会执行instance的delete操作
            //这种写法意义不大，仅参考
            static CGSingleTon cl;
        }
    }
    return instance;
}

SingleTonClass::CGSingleTon::~CGSingleTon() {
    if(SingleTonClass::instance != nullptr){
        delete SingleTonClass::instance;
        SingleTonClass::instance = nullptr;
        LOGD("CGSingleTon finish");
    }
}

/////////////////////////SingleTonClass2 实现 ///////////////////////////
SingleTonClass2* SingleTonClass2::instance = nullptr;
std::once_flag SingleTonClass2::g_flag;
void SingleTonClass2::CREATE_INSTANCE() {
    instance = new SingleTonClass2();
    static SingleTonClass2::CGSingleTon cl;
    LOGD("new SingleTonClass2");
}

SingleTonClass2* SingleTonClass2::getInstance() {
    std::call_once(g_flag,CREATE_INSTANCE);
    return instance;
}

SingleTonClass2::CGSingleTon::~CGSingleTon() {
    if(SingleTonClass2::instance != nullptr){
        delete SingleTonClass2::instance;
        SingleTonClass2::instance = nullptr;
        LOGD("CGSingleTon finish");
    }
}
