//
// 线程池单例管理类
//

#ifndef NDKPRO_THREADSPOOLMANAGER_H
#define NDKPRO_THREADSPOOLMANAGER_H

#include <mutex>
#include "XTask.h"
#include "ThreadsPool.h"


class ThreadsPoolManager {
private:
    static ThreadsPoolManager * instance;
    static std::once_flag onceFlag;
    ThreadsPool *mThreadsPool = nullptr;
    ThreadsPoolManager();
    static void CREATE_INSTANCE();
public:
    static ThreadsPoolManager* getInstance();
    void addTask(XTask *task);
};


#endif //NDKPRO_THREADSPOOLMANAGER_H
