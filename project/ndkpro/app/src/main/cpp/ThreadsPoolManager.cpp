//
// Created by sandro on 2022/12/25.
//

#include "ThreadsPoolManager.h"
#define POOL_SIZE 5


ThreadsPoolManager* ThreadsPoolManager::instance = nullptr;
std::once_flag ThreadsPoolManager::onceFlag;

ThreadsPoolManager::ThreadsPoolManager(){
    this->mThreadsPool = new ThreadsPool(POOL_SIZE);
    this->mThreadsPool->createPool();
}

void ThreadsPoolManager::addTask(XTask* task) {
    this->mThreadsPool->addTask(task);
}

void ThreadsPoolManager::CREATE_INSTANCE() {
    ThreadsPoolManager::instance = new ThreadsPoolManager();
}

ThreadsPoolManager* ThreadsPoolManager::getInstance(){
    std::call_once(onceFlag,CREATE_INSTANCE);
    return instance;
}