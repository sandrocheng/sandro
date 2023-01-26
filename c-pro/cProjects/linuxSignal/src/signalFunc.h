/*
 * signalFunc.h
 *
 *  Created on: 2023年1月23日
 *      Author: sandro
 *
 *1、signal函数
 *	函数作用：注册信号捕捉函数
 *	函数原型：
 *		 typedef void (*sighandler_t)(int);
 *		 sighandler_t signal(int signum, sighandler_t handler);
 *  函数参数：
 *  	signum:信号编号
 *  	handler:信号处理函数
 *
 *2、kill函数/命令
 *	描述：给指定进程发送指定信号
 *	kill命令：kill -SIGKILL 进程PID
 *	kill函数原型：int kill(pid_t pid, int sig);
 *	函数返回值：
 *		0，成功
 *		-1，失败，并设置errno值
 *	函数参数：
 *		pid>0 发送信号给指定的进程
 *		pid=0，发送信号给与调用kill函数进程属于统一进程组的所有进程。
 *		pid<-1:取pid绝对值发给对应进程组
 *		pid = -1，发送给进程有权限发送的系统中所有进程。
 *	进程组：每个进程都属于一个进程组，进程组是一个或多个进程的集合。他们相互关联，共同完成一个实体任务，每个进程组都有一个进程组长，默认进程组id与进程组长id相同
 *
 *3、rasie函数
 *	函数描述：给当前进程发送指定信号（自己给自己发）
 *	函数原型：int raise(int sig);
 *	函数返回值：成功，0。失败非0值
 *	函数拓展：raise(signo) == kill(getpid(),signo);
 *
 *4、abort函数
 *	函数描述：给自己发送异常终止信号（SIGABRT，编号6），并产生core文件
 *			abort以后，使用ulimit -a 查看以下 core file size，如果是0，说明此时没有设置core文件，此时使用ulimit -c unlimited 设置core文件为不限制大小。
 *			再次运行以后,如果还没有，查看以下 cat /proc/sys/kernel/core_pattern
 *			运行 sudo service apport stop
 *			原来 设置为|/usr/share/apport/apport %p %s %c %P的话，文件的结果会被Linux的一个进程apport 吞掉，拿去检查是不是系统的bug
 *			之后再运行就有core文件了 使用dgb core可以查看core文件内容
 *
 *	函数原型：void abort(void)
 *	函数拓展：abort()==kill(getpid(),SIGABRT)
 *
 *5、alarm函数
 *	函数原型:  unsigned int alarm(unsigned int seconds);
 *	函数描述：设置定时器（闹钟）。再指定seconds后，内核会给当前进程发送SIGALRM信号，进程收到该信号，默认动作终止(比如此时正在sleep，alarm以后sleep会终止)。每个进程都有且只有为一的一个定时器
 *	函数返回值：返回0或者生于的秒数，无失败。第一次返回0，第二次返回上一次刚刚定义的剩余秒数 例如：
 *		1) alarm(5) ---> return 0
 *		2) sleep(2)
 *		3) alarm(5) --->  return 3
 *	常用操作：取消定时器，alarm(0),返回旧闹钟余下的秒数
 *	alarm使用的是自然定时法，与进程状态无关，就绪，运行，挂起（阻塞、暂停）终止、僵尸，无论进程处于哪种状态，alarm都计时
 *	注意	：
 *		使用time命令查看程序执行的时间，程序运行的瓶颈一般在与IO，优化程序，首先优化IO。
 *			例如：time ./linuxSignal count
 *			返回：
 *				real	0m1.002s
				user	0m1.001s
				sys	    0m0.000s
 *		实际执行时间（real）=系统时间(sys)+用户时间(user)+损耗时间
 *		损耗的时间主要来自文件IO操作，IO操作会有用户区到内核区的切换，切换的次数越多越耗时。
 *
 *
 */

#ifndef SIGNALFUNC_H_
#define SIGNALFUNC_H_
#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <sys/stat.h>//是 unix/linux 系统定义文件状态所在的伪标准头文件
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！
#include <dirent.h>//常规c标准库
#include <wait.h>
#include "tools.h"
#include <signal.h>

/**
 * 使用alarm函数计时，检测1秒中内，可以作多少次+1运算
 */
void countByAlarm();

/**
 * 注册管道信号
 */
void registSigPipeSignal();

/**
 * fork出子进程，并使用kill函数发送信号，杀死所有子进程
 */
void killChilden();

/**
 * 注册SIGUSR1信号，并使用raise给自己发送，收到SIGUSR1后，使用abort终止当前进程
 */
void raiseAndAbort();
#endif /* SIGNALFUNC_H_ */
