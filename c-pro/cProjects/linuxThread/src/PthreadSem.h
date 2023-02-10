/*
 * PthreadSem.h
 *	信号量
 *  Created on: 2023年2月10日
 *      Author: sandro
 *
 * 1、定义信号量
 * 		sem_t sem;
 *
 * 2、初始化信号量
 * 		int sem_init(sem_t *sem,int pshared,unsigned int value);
 *      参数：
 *      	sem,信号量变量
 *      	pshared:0,线程同步，1 进程同步
 *      	value:最多有几个线程操作共享数据
 *      返回值：0，成功；-1，失败，并设置errno值
 *
 * 3、int sem_wait(sem_t *sem);
 *		函数描述：调用该函数一次，相当于sem--,当sem为0的时候，引起阻塞，一般是生产者产品为空阻塞，不会空则解除阻塞
 *		函数参数：信号量变量
 *		函数返回值：0，成功；-1，失败，并设置errno值
 *
 * 4、int sem_post(sem_t *sem);
 * 		函数描述：调用一次，相当于sem++,一般是生产者产生一个节点时，就调用一次。
 * 		函数参数：信号量变量
 * 		返回值：0，成功；-1，失败，并设置errno值
 *
 * 5、int sem_trywait(sem_t *sem);
 * 		函数描述：尝试加锁，若失败直接返回，不阻塞
 * 		函数参数：信号量
 * 		返回值：0，成功；-1，失败，并设置errno值
 *
 *6、int sem_destroy(sem_t *sem);
 *     	信号量销毁
 *     	返回值：0，成功；-1，失败，并设置errno值
 *
 */

#ifndef PTHREADSEM_H_
#define PTHREADSEM_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <pthread.h>//linux c库 ，线程库
#include <semaphore.h> //linux c库，信号量

struct semNode{
	int data;
	struct semNode *next;
};

/**
 * 使用信号量 实现一个生产者、消费者模型
 * 车库问题,一个生产者线程，一个消费者线程
 * 	1 车库里当有n个车离开时，生产者生产n个车位
 * 	2 生产者通知消费者让n个车进入车库停车。
 * 	3 消费者停车之后，等待车库生产者生产车位。
 *
 * 	当车位小于n的时候，既可以进入新车（消费者消费），也可以退出车位（生产者生产车位）（看cpu时间片给谁）
 * 	当车位>=5时，只能进车位。
 * 	当车位==0时，只能出车，不能进车
 *
 */
void semTest();

#endif /* PTHREADSEM_H_ */
