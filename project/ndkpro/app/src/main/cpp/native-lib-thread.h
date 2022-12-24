/*
 * c++ 11 线程库 <thread>
 * thread.join() //阻塞主线程，让主线程等待子线程执行完毕，然后主线程再继续执行
 *               //当多个线程使用join的时候，按调用顺序逐个执行完毕后继续主线程
 *
 * thread.detach()
 *      传统多线程程序需要等待子线程执行完毕再推出，比如使用join的方式让主线程等待
 *      detach让子线程和主线程脱离，不阻塞主线程
 *      一旦detach后，就不能再join回来
 *
 * thread.joinable 判断是否可以成功使用 join 或者 detach ，返回true或者flase
 *
 * std::ref 函数
 *      当方法参数是引用的时候，在线程调用前 使用 std::ref(obj),可以保证这个对象是线程外的对象。详间startwork3函数
 *      如果不用ref，这个对象在传入线程后实际上会被拷贝构造生成一个新的对象，方法内部引用实际上是新的对象的引用，
 *      这样就无法达到线程内修改数据，线程外数据也修改的目的，使用ref则可以实现这个目标
 *
 *
 * 线程id获取方式
 *  1 线程外部获取id : mThread.get_id()
 *  2 线程内部获取当前线程id : std::this_thread::get_id()
 *
 *
 * C++11 提供了 3 种智能指针类型，它们分别由 unique_ptr 类、shared_ptr 类和 weak_ptr 类定义，所以又分别称它们为独占指针、共享指针和弱指针。
 * #include <memory>
 * 智能指针在线程函数中传参时，需要std::move() 相见startwork4,
 * 智能指针智能用在join，不能用detach,因为move以后，原来的智能指针会维护的对象指向为空，因为是浅拷贝，只是更改了指针的指向，并没有实际更改内存
 * 当主线程结束以后，内存回收，而此时子线程智能指针指向的地址还是原来堆中的地址（此时已经释放），导致野指针错乱
 *
 *  如果使用detach，要注意对象使用是否可能造成野指针
 *  主要是要看对象是否在线程中执行了拷贝构造，如果没有，就不要使用detach
 *  std::thread(
 *             &TestClass::thread_work,//成员函数
 *             tcObj,//对象
 *             10 //成员函数第一个参数
 *       ).detach();
 *
 * 保护共享数据：
 *     操作时，用代码把共享数据锁住然后再操作数据，其他想操作共享数据的线程必须等待，直到解锁。
 * 互斥量(mutex)：
 *     是个类对象，理解为一把锁，多个线程尝试用lock()成员函数来加锁，只有一个线程能够锁定成功（lock()返回），
 *     如果没有锁成功，则线程一直阻塞在这里
 *     注意：只保护需要保护的部分。
 *           lock 和 unlock必须成对出现
 *           mutex是不可拷贝对象，如果放在类里面，当把类对象传递到thread里时，对象会执行拷贝操作，此时编译会出错
 *     用法：详见 multisThreadsReadAndWrite
 *
 * std::lock_guard 模板
 *   由于lock unlock必须成对出现，现实工作中，常常会有遗忘的情况发生导致严重后果 c++提供了lock_guard模板
 *   可以直接取代lock 和 unlock
 *   原理 ：构造的时候执行lock，析构的时候执行unclock，当函数returen或者所在代码作用域结束的时候自动调用析构
 *
 * c++ 死锁
 *     两把或两把以上的锁（互斥量），互相等待会造成死锁
 *     线程A执行的时候，先锁1号锁，再锁2号锁（还没锁上的时候线程切换了）
 *     此时线程B开始执行，这个线程先锁2号锁（因为当前在线程A里，2号锁还没锁上就切换了，所以线程B给2号锁加锁成功）
 *     然后继续lock 1号锁，此时1号锁在线程A没有释放，导致线程B被阻塞
 *     当系统再切换到线程A 2号锁继续执行锁操作，但是此时线程B已经锁住了2号锁，因此线程A也阻塞住了
 *     之后，线程A B 都无法继续执行，造成死锁。
 *
 * 死锁的一般解决方案
 *    1 保证多个互斥量在不同线程上锁顺序一致
 *    2 std::lock()函数模板
 *      一次锁住两个或者两个以上的互斥量，他能避免多个锁由于上锁顺序导致的死锁问题
 *     如果互斥量没有锁住，std::lock()就会阻塞住，并释放所有已经锁住的互斥量，避免死锁。
 *     然后不断尝试是否可以都把互斥量锁住，都锁住之后才会继续执行。
 *     注意，std::lock()只管加锁，不管解锁，需要手动在合理的位置上解锁
 *   3 std::lock_guard() + std::lock()
 *     联合使用这两个模板，同时避免死锁和忘记unclock的问题 详见TestClass4
 *
 * 注意
 * 1）
 * 线程中如果使用了其他线程内存变量的引用，需要注意该变量的生命周期是否合理，避免其他线程内存回收导致当前线程的问题
 * 使用函数对象（仿函数）构造一个thread的时候，该对象在thread内部使用拷贝构造，所以要注意仿函数内部是否由指针，考虑是否需要重写拷贝构造
 * 自己创建的子线程不能用主线程的JNIEnv了，得用AttachCurrentThread生成自己的JNIEnv，用完后调用DetachCurrentThread。
 * 在线程中获取JNIEnv ,首先要先获取javaVM，有许多方式可以获取JavaVM指针。
 * 可以在VM创建的时候记录下来，也可以通过JNI_GetCreatedJavaVMs查询被创建的虚拟机，还可以通过调用JNI函数GetJavaVM或者定义JNI_OnLoad句柄接口。
 * 与JNIEnv不同的是，JavaVM只要被缓存在全局引用中，是可以被跨线程使用的。
 * 子线程中也不能直接使用 jni传参过来的 jclass/jobject
 * 需要定义一个全局变量，然后调用NewGlobalRef给全局变量赋值
 * gs_class = (jclass)env->NewGlobalRef(jclz);
 * 在子线程中只能操作这个全局变量
 * 通过DeleteGlobalRef来 释放全局引用。 全局引用一直保持有效,直到被程序员手动释放。 在失效之前,全局引用确保了所引用的对象不会被GC
 *
 * 2)
 * 线程方法使用 引用和指针传参时的坑,详见 startwork1(const int &var,char *strbuff )方法示例
 * 当使用对象的深拷贝传参时,有可能发生在其他线程销毁时刻之后才拷贝,导致bug,比如 startwork2 方法
 * 基本类型不推荐使用引用传参,不要使用指针传参,正确方法相见startwork2(调用时使用临时变量)
 * 程方法传参，会统一调用拷贝构造，所以即便是引用传参，线程内对引用操作，也不会影响外部的原对象
 * 如果想要在线程内修改线程外的对象，需要使用std::ref函数,正确方法相见startwork3
 * 使用线程的join方法，不会有以上问题，detach方法需要注意以上问题
 * 或者使用函数对象的方式 执行线程 ，这样再调用线程之前能够完全保证 数据已经准备好
 * 例：
 *    ThreadClass tc(7,callbackJavaStaticVoidMethodInThread);
 *    std::thread mThread(tc);
 *    mThread.detach();
 *
 */

#ifndef NDKPRO_NATIVE_LIB_THREAD_H
#define NDKPRO_NATIVE_LIB_THREAD_H
#include <jni.h>
#include <string>
#include <android/log.h>
#include <thread>//c++ 11 线程库
#include "ThreadClass.h"
#include <memory>//智能指针
#include "native-global-params.h"
#include <vector>
#include <queue>
#include "native-global-params.h"
#include "mutex"
#include <future>
#include "SingleTonClass.h"
#define TAG "nativeThreadLibTAG"
#define LOGD(...)   __android_log_print(ANDROID_LOG_DEBUG, TAG, __VA_ARGS__)

//mutex是不可拷贝对象，如果放在类里面，当把类对象传递到thread里时，对象会执行拷贝操作，此时编译会出错
static std::mutex TestClass_mutex;

static std::mutex TestClass_mutex2;

static std::recursive_mutex reMutex;

static std::timed_mutex timedMutex;

/**
 * mutex
 */
class TestClass{
private:
    std::queue<int> dataQ;
public :
    TestClass(){};
    TestClass(int m):m_int(m){};
    int m_int = 0;
    void thread_work(int x){
        LOGD("TestClass::thread_work ,arg : %d",x);
    };
    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        for(int i = 0;i<m_int;i++){
            TestClass_mutex.lock();
            dataQ.push(i);
            TestClass_mutex.unlock();
            LOGD("dataQPush push data %d",i );

        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
     void getDataFromQueue(){
         for(int i = 0;i<10000;i++){
             TestClass_mutex.lock();
             if(!dataQ.empty()){
                 while (!dataQ.empty()){
                     int data = dataQ.front() ;
                     dataQ.pop();
                     LOGD("getDataFromQueue get data from dataQ : %d " , data);
                 }
             }
             TestClass_mutex.unlock();
         }
     }
};

/**
 * std::lock_guard()
 */
class TestClass2{
private:
    std::queue<int> dataQ;
    int queue_len = 0;
public :
    TestClass2(){};
    TestClass2(int m):queue_len(m){};

    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        for(int i = 0;i<queue_len;i++){
            std::lock_guard<std::mutex> guard(TestClass_mutex2);
            dataQ.push(i);
            LOGD("dataQPush2 push data %d",i );
        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
    void getDataFromQueue(){
        for(int i = 0;i<100000;i++){
            std::lock_guard<std::mutex> guard(TestClass_mutex2);
            if(!dataQ.empty()){
                while (!dataQ.empty()){
                    int data = dataQ.front() ;
                    dataQ.pop();
                    LOGD("getDataFromQueue2 get data from dataQ : %d " , data);
                }
            }
        }
    }
};

/**
 * std::lock()
 */
class TestClass3{
private:
    std::queue<int> dataQ;
    int queue_len = 0;
public :
    TestClass3(){};
    TestClass3(int m):queue_len(m){};

    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        for(int i = 0;i<queue_len;i++){
            std::lock(TestClass_mutex,TestClass_mutex2);
            dataQ.push(i);
            LOGD("dataQPush3 push data %d",i );
            TestClass_mutex.unlock();
            TestClass_mutex2.unlock();
        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
    void getDataFromQueue(){
        for(int i = 0;i<100000;i++){
            std::lock(TestClass_mutex,TestClass_mutex2);
            if(!dataQ.empty()){
                while (!dataQ.empty()){
                    int data = dataQ.front() ;
                    dataQ.pop();
                    LOGD("getDataFromQueue3 get data from dataQ : %d " , data);
                }
            }
            TestClass_mutex.unlock();
            TestClass_mutex2.unlock();
        }
    }
};

/**
 * std::lock_guard() + std::lock()  避免死锁和忘记unclock的问题
 */
class TestClass4{
private:
    std::queue<int> dataQ;
    int queue_len = 0;
public :
    TestClass4(){};
    TestClass4(int m):queue_len(m){};

    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        for(int i = 0;i<queue_len;i++){
            std::lock(TestClass_mutex,TestClass_mutex2);
            // std::adopt_loc对象会避免 guard 给互斥量上锁，避免二次上锁
            std::lock_guard<std::mutex> guard1(TestClass_mutex,std::adopt_lock);
            std::lock_guard<std::mutex> guard2(TestClass_mutex2,std::adopt_lock);
            dataQ.push(i);
            LOGD("dataQPush4 push data %d",i );
        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
    void getDataFromQueue(){
        for(int i = 0;i<100000;i++){
            std::lock(TestClass_mutex,TestClass_mutex2);
            // std::adopt_lock对象会避免 guard 给互斥量上锁，避免二次上锁
            std::lock_guard<std::mutex> guard1(TestClass_mutex,std::adopt_lock);
            std::lock_guard<std::mutex> guard2(TestClass_mutex2,std::adopt_lock);
            if(!dataQ.empty()){
                while (!dataQ.empty()){
                    int data = dataQ.front() ;
                    dataQ.pop();
                    LOGD("getDataFromQueue4 get data from dataQ : %d " , data);
                }
            }
        }
    }
};

class TestClass5{
public:
    int exec(int second){
        LOGD("start work TestClass5 ");
        std::chrono::seconds dura(second);
        std::this_thread::sleep_for(dura);
        LOGD("TestClass5::exec finish,thread id is %d",std::this_thread::get_id());
        return second;
    };
};

class TestClass6{
private:
    std::queue<int> dataQ;

public :
    TestClass6(){};

    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        for(int i = 0;i<10000;i++){
            reMutex.lock();
            std::unique_lock<std::recursive_mutex> ul(reMutex);
            dataQ.push(i);
            LOGD("dataQPush6 push data %d",i );
            reMutex.unlock();
        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
    void getDataFromQueue(){
        for(int i = 0;i<100000;i++){
            reMutex.lock();//std::recursive_mutex 递归的独占互斥量,允许同一个线程，同一个互斥量多次被lock
            std::lock_guard<std::recursive_mutex> lg(reMutex);
            if(!dataQ.empty()){
                int data = dataQ.front() ;
                dataQ.pop();
                LOGD("getDataFromQueue6 get data from dataQ : %d " , data);
            }
            reMutex.unlock();
        }
    }
};

class TestClass7{
private:
    std::queue<int> dataQ;

public :
    TestClass7(){};

    /**
     * 模拟耗时操作往 dataQ里插入数据
     */
    void dataQPush(){
        std::chrono::microseconds timeout(60);
        for(int i = 0;i<10000;i++){
            if(timedMutex.try_lock_for(timeout)){
                dataQ.push(i);
                LOGD("dataQPush7 push data %d",i );
                timedMutex.unlock();
            }else{
                LOGD("dataQPush7 push data time out ,CUZ timedMutex is locked by other thread");
            }
        }
    }

    /**
     * 把数据从消息队列取出的线程操作
     */
    void getDataFromQueue(){
        for(int i = 0;i<100000;i++){
            std::chrono::microseconds timeout(60);
            //等待60微秒来尝试获取锁
            if(timedMutex.try_lock_for(timeout)){
                //在100毫秒内拿到了锁
                if(!dataQ.empty()){
                    int data = dataQ.front() ;
                    dataQ.pop();
                    LOGD("getDataFromQueue7 get data from dataQ : %d " , data);
                }
                timedMutex.unlock();
            }else{
                LOGD("getDataFromQueue7 lock timeout ,CUZ timedMutex is locked by other thread");
            }
        }
    }
};
/**
 * 启动一个线程使用join方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAThreadOnJoin(JNIEnv* env, jclass jclz);

/**
 * 启动多个线程使用join方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnJoin(JNIEnv* env, jclass jclz);

/**
 * 启动多个线程使用detach方法执行
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startMultiThreadOnDetach(JNIEnv* env, jclass jclz);

/**
 * 创建和等待多个线程
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAndWaitMultiThread(JNIEnv* env, jclass jclz);

/**
 * 多个线程读写共享数据
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_multisThreadsReadAndWrite(JNIEnv* env, jclass jclz);

/**
 * 避免死锁的常规处理方法
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_deadLockVoid(JNIEnv* env, jclass jclz);

/**
 * unique_lock
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_uniqueLock(JNIEnv* env, jclass jclz);

/**
 * 单例中的线程安全问题
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_singleTonSaftyThread(JNIEnv* env, jclass jclz);

/**
 * c++11 条件变量std::condition_variable 的 wait notify
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_waitAndNotify(JNIEnv* env, jclass jclz);

/**
 * c++11 线程 async future
 * 1）std::async 是一个函数模板，用来启动一个异步任务，启动之后返回一个std::future对象，
 *   std::future 对象里边含有线程入口函数所返回的结果
 *   可以通过future对象的成员函数get()来取得结果
 * 2）std::thread如果系统资源紧张，那么可能创建线程失败，导致整个程序不稳定，甚至崩溃
 *   std::async，一般叫创建一个异步任务，
 *   二者最大的区别是async有时候并不创建新线程（不加launch的调用）。
 *   async 相对 thread 能比较容易得到线程入口函数的返回值
 */
extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startAsyncTask(JNIEnv* env, jclass jclz);

/**
 * std::packaged_task,类模板 打包任务，模板参数是各种可调用对象
 * 把各种可调用对象包装起来，方便将来作为线程入口函数来调用。
 */
extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startPackagedTask(JNIEnv* env, jclass jclz);

/**
 * std::promise 类模板 ，作用是某个线程中给他赋值，然后在其他线程中取出来使用
 */
extern "C" JNIEXPORT jboolean JNICALL
        Java_com_sandro_nativelib_NativeThreadAgent_startPromise(JNIEnv* env, jclass jclz);

/**
 * future 成员函数演示
 */
extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startFutureTest(JNIEnv* env, jclass jclz);

/**
 * std::shared_future演示
 * future.get()的设计是移动语义，所以第二次调用取值时会发生异常
 * std::shared_future 类模板的get方法是复制数据，可以多次get取值
 */
extern "C" JNIEXPORT jboolean JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_startSharedFutureTest(JNIEnv* env, jclass jclz);

/**
 * 互斥量：多线程中保护共享数据，操作前上锁，操作后开锁，锁期间其他线程无法操作被锁的共享数据
 * 在c++中即使简单的读写操作，分别在不同线程中执行，也会有线程安全问题，比如：
 * int x = sharedvalue;//读线程取值
 * sharedvalue++;//写线程赋值
 * 实际情况是读线程有可能得到的是一个预料不到的中间值
 * 因为赋值语句在内部也是多个步骤执行（汇编层比如++ ，是三个步骤），每个步骤执行的时候都有可能发生线程切换。导致读线程读到的值不可预料
 * 如果使用互斥量保护数据，虽然安全，但是在频繁操作的情况下，效率会低很多。
 * std::atomic,C++中提供的无锁原子操作技术，能在保证安全的前提下，提升效率
 * 互斥量的优势是对多步骤操作的代码段加锁，而原子操作只能针对某一个变量进行保护，一般用于基础类型的变量
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_atomicTest(JNIEnv* env, jclass jclz);

/**
 * 普通的std::mutex 独占互斥量（自己lock时候，其他地方lock不了），同一个线程，同一个互斥量多次调用lock(),系统会报异常
 * 相对的std::recursive_mutex 递归的独占互斥量,允许同一个线程，同一个互斥量多次被lock
 * 当出现有多次lock的情况时候，优先应该考虑代码是否有优化空间，而不是直接使用recursive_mutex，因为recursive_mutex的效率较差
 * recursive_mutex递归次数上限，太多次会报异常
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_recursiveMutex(JNIEnv* env, jclass jclz);

/**
 * 带超时的互斥量
 * std::timed_mutex : 有超时功能的互斥量
 *       try_lock_for() : 等待超时时间
 *       try_lock_until() : 等到未来的一个时间点
 * std::recursive_timed_mutex : 有超时功能的递归互斥量,超时使用方法和timed_mutex一样
 */
extern "C" JNIEXPORT void JNICALL
Java_com_sandro_nativelib_NativeThreadAgent_timedMutex(JNIEnv* env, jclass jclz);

/**
 * 线程任务：输出字符串，结束后回调java接口
 * @param workid  任务id
 * @param name 方法名称
 * @param sig 方法签名
 */
extern "C"  void startworkCallBack(int workid,const char* name, const char* sig);

/**
 * 线程任务：输出字符串
 * @param workid  任务id
 */
extern "C"  void startwork(int workid);

/**
 * 线程任务1：输出字符串
 * @param var 类型引用
 * @param strbuff 字符串指针
 */
 extern "C"  void startwork1(const int &var,char *strbuff );

/**
* 线程任务2：输出字符串
* @param var
* @param strbuff 字符串引用，使用引用接类对象，减少消耗
*/
extern "C"  void startwork2(const int var,const std::string &strbuff);

/**
* 线程任务3：
* @param TestClass
*/
extern "C"  void startwork3(TestClass &tcobj);

/**
* 线程任务3：
* @param pzn  std::unique_ptr<int> 独占式智能指针
*/
extern "C"  void startwork4(std::unique_ptr<int> pzn);

/**
* 线程任务5：
* @param workid  id
 */
extern "C"  void startwork5(int workid);

/**
* 线程任务6：
 * @param seconds  任务执行时间,单位：秒
 */
extern "C"  int startwork6(int seconds);

/**
 * 使用promise在线程之间传递结果值
 * @param tmpp1 线程执行完毕以后，会把需要给外部线程的结果保存到这个参数中
 * @param tmpp2 线程执行的时间（秒）
 * @param clac 需要计算的数据，根据这个数据计算一个结果，然后保存到tmpp中去
 */
extern "C" void startwork7(std::promise<int> &tmpp1,std::promise<int> &tmpp2,int calc);
/**
 * 设置全局变量 NativeThreadAgent的class，用于子线程中evn的生成
 */
extern "C" void setNativeThreadAgendClass(JNIEnv* env,jclass jclz);


/**
 * 回调java层 NativeThreadAgent 对应类的静态void方法
 * @param name 回调方法名称
 * @param sig 回调方法签名
 * @param ... 回调方法参数
 */
extern "C" void callbackJavaStaticVoidMethodInThread(const char* name, const char* sig,...);
#endif //NDKPRO_NATIVE_LIB_THREAD_H
