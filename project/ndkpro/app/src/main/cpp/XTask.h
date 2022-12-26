//
// 线程池分配的任务类
//

#ifndef NDKPRO_XTASK_H
#define NDKPRO_XTASK_H


class XTask {
public:
    virtual int run()=0;
};


#endif //NDKPRO_XTASK_H
