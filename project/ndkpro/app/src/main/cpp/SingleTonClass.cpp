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

void SingleTonClass::startPushMsg(){
    int count = 100;
    for(int i = 0;i<count;i++){
        std::unique_lock<std::mutex> ul(SingleTonClass::instanceLock);
        msgQ.push(i);
        LOGD("SingleTonClass startPushMsg %d , queue size %d",i,msgQ.size());
        cvar.notify_one();//把wait的线程唤醒,一次通知一个线程
    }

    for(int i = 0;i<20;i++){
        std::unique_lock<std::mutex> ul(SingleTonClass::instanceLock);
        msgQ.push(-1);//连续每隔一段时间push一个-1,用于通知其他线程,任务结束,离开定时循环
        cvar.notify_all();//尝试唤醒所有线程
        ul.unlock();
        std::chrono::milliseconds dura(5);
        std::this_thread::sleep_for(dura);
    }

}

void SingleTonClass::getMsgFromQueue(){
    while(true){
        std::unique_lock<std::mutex> ul(SingleTonClass::instanceLock);
        //wait：线程阻塞
        //如果接口返回值(第二个参数)是false，那么wait将释放互斥量，并阻塞到本行，
        //直到其他线程调用notify_one()
        //第二个参数不填写，默认接口返回false
        //返回true,则加锁，并继续执行后面的代码
        //wait被notify_one时,wait会不断尝试获得锁,一旦得到,锁一定是已经得到并上锁了的状态(条件变量内部上的锁)
        //wait继续执行时,如果没有第二个参数,则上锁,继续执行
        //如果有第二个参数,需要判断是否返回true,才能继续执行,如果返回false,则释放锁,并阻塞在这里,直到下次被唤醒
        cvar.wait(ul,[this]{
            //队列不为空的时候返回true,结束等待
            return !msgQ.empty();
        });
        int msg = msgQ.front();
        msgQ.pop();
        int size = msgQ.size();
        LOGD("thread %d SingleTonClass getMsgFromQueue %d,cur queue size %d,thread",std::this_thread::get_id(),msg,size);
        if(msg == -1){
            LOGD("thread %d SingleTonClass getMsgFromQueue done !",std::this_thread::get_id());
            return;
        }
    }
}

void SingleTonClass::clearMsg() {
    std::unique_lock<std::mutex> ul(SingleTonClass::instanceLock);
    while(!msgQ.empty()){
        msgQ.pop();
    }
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
