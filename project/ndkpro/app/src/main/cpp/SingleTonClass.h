/**
 * 单例中线程安全问题
 *
 *
 *
 */

#ifndef NDKPRO_SINGLETONCLASS_H
#define NDKPRO_SINGLETONCLASS_H
#include <jni.h>
#include <android/log.h>
#include <thread>
#include <mutex>

class SingleTonClass {
private:
    static SingleTonClass* instance ;
    static std::mutex instanceLock;
    SingleTonClass(){};

private:
    /**
    * 类中类，用于释放对象
    */
    class CGSingleTon{
    public:
        ~CGSingleTon();
    };

public:
    /**
     * 使用mutex锁保证单例在多个线程中使用时，初始化线程安全
     * @return
     */
    static SingleTonClass* getInstance();
};


class SingleTonClass2 {
private:
    static SingleTonClass2* instance ;
    static std::once_flag g_flag;
    SingleTonClass2(){};
    static void CREATE_INSTANCE();
    /**
    * 类中类，用于释放对象
    */
    class CGSingleTon{
    public:
        ~CGSingleTon();
    };

public:
    /**
     * 使用std::call_once() 保证单例在多个线程中使用时，初始化线程安全
     * call_once具备互斥量的能力，并且比互斥量消耗的资源更少
     * call_once需要与std::once_flag标记结合使用
     * call_once根据这个标记判断是否对应的函数已经执行，调用后，call_once会把这个状态转为“已调用”
     * @return
     */
    static SingleTonClass2* getInstance();
};



#endif //NDKPRO_SINGLETONCLASS_H
