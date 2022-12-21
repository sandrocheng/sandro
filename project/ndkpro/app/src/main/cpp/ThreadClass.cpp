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
std::unique_lock<std::mutex> UniqueLockCase4::renUniqueLock(){
    std::unique_lock<std::mutex> tempLock(mutex1,std::defer_lock);
    return tempLock;
}

extern "C"
void UniqueLockCase4::dataQPush4(){
    for(int i = 0;i<len;i++){
        std::unique_lock<std::mutex> ul = renUniqueLock();
        if(ul.try_lock()){
            dataQ.push(i);
            LOGD("UniqueLockCase4 push data : %d",i );
        }else{
            LOGD("UniqueLockCase4 lock failed");
            i--;
        }
    }
}

extern "C"
void UniqueLockCase4::getDataFromQueue4(){
    for(int i = 0;i<len * 1000;i++){
        std::unique_lock<std::mutex> ul = renUniqueLock();
        ul.lock();

        std::chrono::microseconds  dura(10);
        std::this_thread::sleep_for(dura);
        if(!dataQ.empty()){
            int data = dataQ.front() ;
            dataQ.pop();
            LOGD("UniqueLockCase4 get data from dataQ : %d " , data);
        }
        ul.unlock();//这里不需要手动调用unlock，但是调用也不会有问题
    }
}

extern "C"
void UniqueLockCase3::dataQPush3(){
    for(int i = 0;i<len;i++){
        std::unique_lock<std::mutex> ul(mutex1,std::try_to_lock);
        if(ul.owns_lock()){
            dataQ.push(i);
            LOGD("UniqueLockCase3 push data thread get lock succ , push %d",i );
        }else{
            i--;
            LOGD("UniqueLockCase3 push data thread get lock failed , ");
        }

    }
}

extern "C"
void UniqueLockCase3::getDataFromQueue3(){
    for(int i = 0;i<len * 10;i++){
        //上锁以后休眠，会导致另一个线程一直无法拿到锁，也阻塞
        //另一个线程使用try_to_lock,避免阻塞
        mutex1.lock();
        std::unique_lock<std::mutex> ul(mutex1,std::adopt_lock);

        std::chrono::milliseconds dura(10);
        std::this_thread::sleep_for(dura);

        if(!dataQ.empty()){
            int data = dataQ.front() ;
            dataQ.pop();
            LOGD("UniqueLockCase3 get data from dataQ : %d " , data);
        }
    }
}

extern "C"
void UniqueLockCase2::dataQPush2(){
    for(int i = 0;i<len;i++){
        mutex1.lock();
        std::unique_lock<std::mutex> ul(mutex1,std::adopt_lock);
        dataQ.push(i);
        LOGD("UniqueLockCase2 push data %d",i );
    }
}

extern "C"
void UniqueLockCase2::getDataFromQueue2(){
    for(int i = 0;i<1000*len;i++){
        mutex1.lock();
        std::unique_lock<std::mutex> ul(mutex1,std::adopt_lock);
        if(!dataQ.empty()){
            int data = dataQ.front() ;
            dataQ.pop();
            LOGD("UniqueLockCase2 get data from dataQ : %d " , data);
        }
    }
}

extern "C"
void UniqueLockCase::dataQPush(){
    for(int i = 0;i<len;i++){
        std::unique_lock<std::mutex> ul(mutex1);
        dataQ.push(i);
        LOGD("UniqueLockCase push data %d",i );
    }
}

extern "C"
void UniqueLockCase::getDataFromQueue(){
    for(int i = 0;i<1000*len;i++){
        std::unique_lock<std::mutex> ul(mutex1);
        if(!dataQ.empty()){
            int data = dataQ.front() ;
            dataQ.pop();
            LOGD("UniqueLockCase get data from dataQ : %d " , data);
        }
    }
}


extern "C"
ThreadClass::ThreadClass(int workId,void (*fp)(const char* name, const char* sig,...)){
    this->workId = workId;
    this->callbackfp = fp;
}

extern "C"
void ThreadClass::operator()(){
    LOGD("ThreadClass thread id : %d start",std::this_thread::get_id());
    LOGD("ThreadClass work id : %d, step 1... ...",this->workId);
    LOGD("ThreadClass work id : %d, step 2......",this->workId);
    LOGD("ThreadClass work id : %d, finish",this->workId);
    callbackfp(Java_method_name_startMultiThreadOnDetachFinish,
       Java_method_name_startMultiThreadOnDetachFinish_sig,
       this->workId);
}