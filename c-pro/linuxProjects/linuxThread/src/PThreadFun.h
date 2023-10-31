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
 *5、pthread_cancel函数
 *		函数描述：杀死（取消）线程。类似进程的kill函数
 *		函数原型：int pthread_cancel(pthread_t thread);
 *		函数返回值：0，成功；其他，错误号
 *		注意：线程的取消不是实时的，有一定的延时。需要等待线程达到某个取消点（检查点），取消点类似游戏的存档，必须达到指定的场所才能执行，
 *		取消点：是线程检查是否被取消，并按请求进行动作的一个位值。通常是一些系统调用create,open,pause,close,read,write等（man 7 pthreads可以查看取消点的调用列表）
 *			   可以粗略的认为一个系统调用(进入内核)即为一个取消点。还可以通过调用pthread_testcancel函数设置一个取消点。
 *
 *6 、pthread_testcancel
 * 		函数描述，设置一个取消点，需要结合pthread_cancel使用
 * 		函数原型:void pthread_testcancel(void);
 *
 *7、pthread_equal
 *		函数表述，比较两个线程ID是否相等
 *		函数原型 int pthread_equal(pthread_t t1, pthread_t t2);
 *		返回值：非0，相等；0，不等
 *		注意：这个函数是为了能够扩展使用的，有可能linux再未来的线程ID pthread类型被修改为结构体实现
 *
 *8、pthread_mutex_t类型
 *		其本质是一个结构体，为简化理解，应用时可以忽略其实现细节，简单当成整数看待
 *		pthread_mutex_t mutex;变量mutex只有两种取值，1和0
 *
 *9、pthread_mutex_init函数
 *		函数描述：初始化一个互斥锁（互斥量）---> 初值可以看作1
 *		函数原型：pthread_mutex_init (pthread_mutex_t *__mutex,const pthread_mutexattr_t *__mutexattr)
 *		函数参数：
 *			mutex:传出参数，调用时应传&mutex
 *			attr:互斥锁属性。是一个传入参数，通常传NULL,选用默认属性(线程间共享)。
 *			restrict关键字：只用于限制指针，告诉编译器，所有修改该指针指向内存中内容的操作，只能通过本指针完成。不能通过除本指针以外的其他变量或指针修改互斥量，
 *			mutex的两种初始化方式：
 *				静态初始化：如果互斥锁mutex时静态分配的（定义在全局，或加了static关键字修饰），可以直接使用宏进行初始化。
 *					phtread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
 *				动态初始化：局部变量应该采用动态初始化。
 *					pthread_mutex_init(&mutex,NULL);
 *
 *10、pthread_mutex_destroy函数
 *		函数描述：销毁一个互斥锁。
 *		函数原型：int pthread_mutex_destroy(pthread_mutex_t *mutex);
 *
 *11 、pthread_mutex_lock
 *		函数描述：对互斥锁加锁，可理解为将mutex--，阻塞函数
 *		函数原型： int pthread_mutex_lock(pthread_mutex_t *mutex);
 *
 *12、phtread_mutex_unlock
 *		函数描述：对互斥锁解锁，可理解为将mutex++.
 *		函数原型：int pthread_mutex_unlock(pthread_mutex_t *mutex);
 *
 *13、pthread_mutex_trylock
 *		函数描述：尝试加锁，非阻塞函数
 *		函数原型：int pthread_mutex_trylock(pthread_mutex_t *mutex)
 *		函数成功返回0。任何其他返回值都表示错误。
 *
 *
 *14、 读写锁主要操作函数
 *		1）定以读写锁：pthread_rwlock_t rwlock;
 *		2) 初始化读写锁：
 *			int pthread_rwlock_init(pthread_rwlock_t *restrict rwlock,const pthread_rwlockattr_t *restrict attr);
 *				rwlock-读写锁
 *				attr- 读写属性，NULL为默认属性
 *		3）销毁读写锁：int pthread_rwlock_destroy(pthread_rwlock *rwlock);
 *		4) 加读锁 ：int pthread_rwlock_rdlock(pthread_rwlock *rwlock);
 *		5) 尝试加读锁：int pthread_rwlock_tryrdlock(pthread_rwlock *rwlock);
 *		6) 加写锁：int pthread_rwlock_wrlock(pthread_rwlock *rwlock);
 *		7) 尝试加写锁：int pthread_rwlock_trylock(pthread_rwlock *rwlock);
 *		8) 解锁：int pthread_rwlock_unlock(pthread_rwlock_t * rwlock);
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
 * 使用读写锁对共享资源进行线程安全保护，7个读线程，3个写线程
 * 3个写线程 计算 数字++ 5万次
 * 7读线程 每个读线程，随机sleep
 * 验证 结果是否是 15万
 */
void rwlockTest();

/**
 * 使用多个线程对一个全局变量分别做加法，查看同步和不同步的计算结果是什么
 * @param useMutex : 1，加锁；0，不加锁
 */
void synchronizationTest(int useMutex);

/**
 * 使用线程属性，创加一个分离线程
 */
void createDetachedThread();

/**
 * 创建一个线程，并尝试取消该线程
 */
void cancelThread();

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
