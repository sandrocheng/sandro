//
// Created by sandro on 2022/12/25.
//

#include "ThreadsPool.h"

ThreadsPool::ThreadsPool(int count){
    this->count = count;
}

void ThreadsPool::createPool() {
    std::unique_lock<std::mutex> ul(this->threadVLocker);
    for(int i = 0;i<count;i++){
        std::thread* th = new std::thread(&ThreadsPool::runThread,this);
        threadV.push_back(th);
        th->detach();
    }

}

void ThreadsPool::runThread() {
    while(true){
        XTask* task = getTask();
        try{
            task->run();
        }catch(...){

        }

        delete task;
    }
}

void ThreadsPool::addTask(XTask *task){
    std::unique_lock<std::mutex> ul(this->threadVLocker);
    taskList.push_back(task);
    this->condition.notify_one();
}

XTask* ThreadsPool::getTask(){
    std::unique_lock<std::mutex> ul(this->threadVLocker);
    this->condition.wait(ul,[this](){
        return !this->taskList.empty();
    });
    auto task = taskList.front();
    taskList.pop_front();
    return task;
}
