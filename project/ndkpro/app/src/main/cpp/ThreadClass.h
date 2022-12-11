
#ifndef NDKPRO_THREADCLASS_H
#define NDKPRO_THREADCLASS_H

#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库
#include "native-global-params.h"
#include <queue>

static std::mutex mutex1;

/**
 * unique_lock 的第二个参数
 *      std::defer_lock，初始化了一个没有加锁的mutex,从而可以调用unique_lock的各种成员函数
 *      不能先lock否则，报异常
 * unique_lock 成员函数
 *      lock(): 手动加锁，相当于mutex的lock
 *	unlock():手动解锁,灵活使用lock unlock，可以在一段代码中跳出非共享数据处理的区域，等处理好了再继续lock上
 *      try_lock() 尝试给互斥量加锁，如果没有拿到锁返回false，这个函数不阻塞
 *      release() 返回 原始mutex指针，并释放所有权，也就是mutex和unique_lock不再有关系，后续解锁需要开发者手动调用
 *
 * unique_lock 所有权传递
 *   所有权，一般unique_lock和mutex是绑定在一起的，需要一一对应，不能一个mutex同时被多个unique_lock管理
 *   例如：std::unique_lock<std::mutex> ul(mutex,std::defer_lock);  ul 拥有 mutex 的所有权
 *   在这里，ul可以把 mutex的所有权转移给其他的unique_lock
 *   所有权可以转移不能复制
 *   std::unique_lock<std::mutex> ul2(std::move(ul)); 将ul中mutex的所有权转移给 ul2,此时ul相当于执行了Release
 */
extern "C" class UniqueLockCase4 {
private:
    std::queue<int> dataQ;
//    int len = 10000;
    int len = 10;
    /**
     * 从函数中返回一个局部的unique_lock对象是可以的
     * 移动构造函数，返回这种局部对象，系统会生成临时的unique_lock对象，并调用unique_lock的移动构造函数
     * @return  返回一个unique_lock
     */
    std::unique_lock<std::mutex> renUniqueLock();
public:
    UniqueLockCase4(){};
    void dataQPush4();
    void getDataFromQueue4();
};

/**
 * unique_lock 的第二个参数
 *      std::try_to_lock ,尝试用互斥量的lock去锁定，但如果没有锁定成功，也会立即返回不会阻塞在那里
 *      用try_to_lock的前提是不能先去lock
 */
extern "C" class UniqueLockCase3 {
private:
    std::queue<int> dataQ;
//    int len = 100000;
    int len = 10;
public:
    UniqueLockCase3(){};
    void dataQPush3();
    void getDataFromQueue3();
};

/*
 * unique_lock 类模板
 * unique_lock的第二个参数 std::adopt_lock
 * 表示互斥量已经被lock，unique_lock此时只会unlock，不会在内部上锁
 * lock_guard也可以带这个标记
 */
extern "C" class UniqueLockCase2 {
private:
    std::queue<int> dataQ;
//    int len = 100000;
    int len = 10;
public:
    UniqueLockCase2(){};
    void dataQPush2();
    void getDataFromQueue2();
};

/*
 * unique_lock 类模板
 * 比lock_guard更灵活，效率会差一点，内存占用也多一点,简单使用的时候可以直接替代lock_guard
 */
extern "C" class UniqueLockCase {
private:
    std::queue<int> dataQ;
//    int len = 100000;
    int len = 10;
public:
    UniqueLockCase(){};
    void dataQPush();
    void getDataFromQueue();
};

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
