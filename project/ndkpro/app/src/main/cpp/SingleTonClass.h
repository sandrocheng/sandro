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
#include <queue>

class SingleTonClass {
private:
    static SingleTonClass* instance ;
    static std::mutex instanceLock;
    std::queue<int> msgQ;
    /**
     * 条件变量，配合一个互斥量，达到多线程通知的作用
     * 当一个线程中将该变量置为条件达成，另一个线程等待这个条件的地方再继续执行
     */
    std::condition_variable cvar;
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

    void clearMsg();

    void startPushMsg();

    void getMsgFromQueue();
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
