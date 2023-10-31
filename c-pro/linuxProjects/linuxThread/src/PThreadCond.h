/*
 * PThreadCond.h
 *	条件变量
 * 		1) pthread_cond_t cond;
 * 			定义一个条件变量
 *      2）int pthread_cond_init(pthread_cond_t *restrict cond,const phtread_condattr_t *restrict attr);
 *			初始化条件变量
 *			参数：
 *				cond:条件变量
 *				attr:条件变量属性，通常传NULL
 *          返回值：0，成功；其他，失败错误号
 *      3）init pthread_cond_destroy(pthread_cond_t *cond);
 *      	销毁条件变量
 *      	返回值：0，成功；其他，失败错误号
 *      4）int pthread_cond_wait(pthread_cond_t *restrict cond,pthread_mutex_t *restrict mutex);
 *      	函数描述：条件不满足，引起线程阻塞并解锁；条件满足，解除线程阻塞，并加锁
 *      	返回值：0，成功；其他，失败错误号
 *      5）int pthread_cond_signal(pthread_cond_t *cond);
 *			唤醒至少一个阻塞在该条件变量上的线程
 *			返回值：0，成功；其他，失败错误号
 *  Created on: 2023年2月9日
 *      Author: sandro
 */

#ifndef PTHREADCOND_H_
#define PTHREADCOND_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <pthread.h>//linux c库 ，线程库

/**
 * 定义链表节点结构体
 */
struct CNode{
	int data;
	struct CNode *next;
};

/**
 * 使用条件变量实现一个生产者消费者模型
 * 一个生产者线程生产数据
 * 多个消费者线程 使用数据
 */
void condFunc();

#endif /* PTHREADCOND_H_ */
