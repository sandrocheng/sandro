/*
 *	linux线程案例
 *  Created on: 2023年2月5日
 *      Author: sandro
 *
 * pthread库
 * Compile and link with -pthread.
 * 编译时，需要链接这个库文件
 *
 * 1、pthread_create
 * 		函数作用： 创建一个新线程
 * 		函数原型：int pthread_create(pthread_t *thread, const pthread_attr_t *attr,void *(*start_routine) (void *), void *arg);
 * 		返回值：0，成功；其他，失败错误号（使用strerror输出）
 * 		函数参数：
 * 			pthread_t 传出参数，保存系统分配好的线程ID
 * 				当前linux中可以理解为 typedef unsigned long int pthread_t
 * 			attr:通常传NULL，表示使用线程默认属性。若想使用具体属性也可以修改该参数
 *			void *(*start_routine) (void *) ： 函数指针，指向线程主函数，该函数运行结束，则线程结束。
 *			arg:线程主函数执行期间所使用的参数。
 *		注意点：
 *			由于pthread_create的错误码不保存在errno中，因此不能直接用perror打印错误信息，可以先用strerror()把错误码转换成错误信息再打印。
 *			如果任意一个线程调用了exit或者_exit，则整个进程的所有线程都终止。
 *			由于从main函数return也相当于调用exit，为了防止新创建的线程还没有得到执行就终止，可以在main函数return之前先延时1秒（这个方法有缺陷，后面有更好的方式）
 *
 *2、pthread_exit
 *		在线程中禁止调用exit函数，否则会导致整个进程退出，取而代之的是调用pthread_exit函数，这个函数是使一个线程退出，如果主线程调用pthread_exit函数也不会使整个进程
 *		退出，不影响其他线程的执行
 *
 *		函数描述：单个线程退出
 *		函数原型:void pthread_exit(void *retval);
 *		函数参数：
 *			retval表示线程退出状态，一般传NULL
 *		注意：pthread_exit或者rturn返回的指针所指向的内存单元必须是全局的或者使用malloc分配的，不能在线程函数的栈上分配，因为当其他线程得到这个返回指针时线程函数已经退出了
 *		栈空间就会被回收。
 *
 *3、pthread_join
 * 		函数描述：阻塞等待线程退出，获取线程退出状态。其作用，对应进程中的waitpid()函数
 *		函数原型：int pthread_join(pthread_t thread,void **retval);
 *		函数返回值：0，成功；其他，错误号
 *		函数参数：
 *			thread:create时候的线程ID
 *			retval:储存线程结束状态，这个指针和pthread_exit的参数是统一块内存地址。
 *
 *4、pthread_detach
 *		线程分离状态：指定该状态，线程主动与主控线程断开关系，线程结束后，其退出状态不由其他线程获取，而直接自己自动释放。网络多线程服务器常用。
 *		进程若有该机制，将不会产生僵尸进程。僵尸进程的产生主要由于进程死后，大部分资源被释放，一点残留资源仍然村于系统中。导致内核认为该进程仍存在。
 *		也可以使用pthread_create函数参2（线程属性），来设置线程分离。pthread_detach函数是在创建线程之后调用的。
 *		函数描述：实现线程分离
 *		函数原型：int pthread_detach(pthread_t thread);
 *		函数返回值：0，成功；其他，错误号
 *
 *		一般情况下，线程终止后，其终止状态一直保留到其他线程调用pthread_join获取它的状态为止。但是线程也可以被设置为detach状态，这样的线程一旦终止就立刻回收他占用的所有资源，
 *		而不保留终止状态。不能对一个已经处于detach状态的线程调用pthread_join，这样的调用将返回EINVAL错误。也就是说，如果已经对一个线程调用了pthread_detach就不能再调用
 *		pthread_join了。
 *
 *
 *
 *
 *
 */

#ifndef PTHREADFUN_H_
#define PTHREADFUN_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <pthread.h>//linux c库 ，线程库

/**
 * 创建一个线程，并使用pthread_detach设置线程分离
 */
void detachThread();

/**
 * 创建一个简单线程
 */
void createThread();

/**
 * 创建一个带参数的线程
 */
void createArgThread();

/**
 * 创建一个结构体参数的线程
 */
void createStructArgThread();

void create5Threads();
#endif /* PTHREADFUN_H_ */