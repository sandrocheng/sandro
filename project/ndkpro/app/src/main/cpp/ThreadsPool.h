//
// 线程池
//

#ifndef NDKPRO_THREADSPOOL_H
#define NDKPRO_THREADSPOOL_H

#include <vector>
#include <thread>
#include <mutex>
#include <list>
#include "XTask.h"
class ThreadsPool {
private :
    /**
     * 线程池 常驻线程数量
     */
    int count;
    std::mutex threadVLocker;
    std::vector<std::thread*> threadV;
    std::list<XTask*> taskList;
    std::condition_variable condition;

    void runThread();
    XTask* getTask();
public :

    /**
     * @param count 线程池 常驻线程数量
     */
    ThreadsPool(int count);
    void createPool();
    void addTask(XTask* task);
};


#endif //NDKPRO_THREADSPOOL_H
