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
 *6、setitimer
 * 	函数原型： int setitimer(int which, const struct itimerval *new_value,struct itimerval *old_value);
 * 	函数描述：设置定时器（闹钟），可代替alarm函数，精度微妙，可以实现周期定时。
 * 	函数返回值：0 成功，-1 失败，并设置errno值
 * 	函数参数：
 * 			which:指定定时方式
 * 				自然定时：ITIMER_REAL -> SIGALRM 计算自然时间
 * 				虚拟空间计时（用户空间） ITIMER_VIRTUAL -> SIGVTALRM ,只计算进程占用cpu的时间
 * 				运行时计时（用户+内核）ITIMER_PROF -> SIGPROF计算占用cpu及执行系统调用的时间
 *
 * 			new_value:struct itimerval, 负责设定timeout时间
 * 				itimerval.it_value:设定第一次执行function所延迟的秒数
 * 				itimerval.it_interval:设定以后每几秒执行一次function
					struct itimerval {
               	   	   struct timeval it_interval; // Interval for periodic timer
               	   	   struct timeval it_value;    // Time until next expiration
           	   		};
           	   		struct timeval {
               	   	   time_t      tv_sec;         // seconds
               	   	   suseconds_t tv_usec;        // microseconds
           	    	};
 *				old_value:存放旧的timeout值，一般指定为NULL
 *
 *7、信号集相关函数
 *		由于信号集属于内核的一块区域，用户不能直接操作内核空间，因此，内核提供了一些信号集相关的接口函数，使用这些函数用户就可以完成对信号集的相关操作
 *		信号集是一个能表示多个信号的数据类型，sigset_t set,set是一个信号集，既然是一个集合，就需要对集进行添加，删除等操作。
 *		源码中的信号集定义（signal.h）
 *		#define _SIGSET_NWORDS(1024/(8*sizeof(unsigned long int)))
 *		typedef struct{
 *			unsigned long int _val[_SIGSET_NWORDS];
 *		} __sigset_t;
 *
 *		int sigemptyset(sigset_t *set)
 *		函数说明：将某个信号集清0
 *		函数返回值：0，成功，-1失败，并设置errno
 *
 *		int sigfillset(sigset_t *set)
 *		函数说明：将某个信号集全部位置1
 *		函数返回值：0，成功，-1失败，并设置errno
 *
 *		int sigaddset(sigset+_t *set,int signum);
 *		函数说明：将某个信号加入信号集中，实际上就是将集合中某位置1，
 *		比如sigaddset(&set,SIGINT);set集合初始化以后，所有位都是0，使用这个方法，将SIGINT对应编号的位置1
 *		函数返回值：0，成功，-1失败，并设置errno
 *
 *		int sigdelset(sigset_t *set,int signum);
 *		函数说明：将某个信号从信号集中清除，sigaddset的反操作
 *		函数返回值：0，成功，-1失败，并设置errno
 *
 *		int sigismember(const sigset_t *set,int signum);
 *		函数说明：判断某个信号是否在信号集中，实际上是signum某个编号的位是否是1
 *		函数返回值：1，在；0，不在；-1失败，并设置errno
 *
 *		sigprocmask函数
 *		函数说明：用来屏蔽信号，解除屏蔽也使用该函数。其本质，读取或者修改进程控制块中的信号屏蔽字（阻塞信号集）。
 *		注意：屏蔽信号，值是将信号处理延后执行（延至解除屏蔽）；而忽略信号表示将信号丢弃处理
 *			若调用sigprocmask解除了对当前若干个信号的阻塞，则在sigprocmask返回前，至少将其中一个信号递达
 *		函数原型：int sigprocmask(int how, const sigset_t *set, sigset_t *oldset);
 *		函数返回值：0，成功；-1，失败，并设置errno
 *		函数参数：
 *			how:参数取值，假设当前信号屏蔽字为mask
 *				SIG_BLOCK:当how=SIG_BLOCK,set表示需要屏蔽的信号，相当于mask = mask|set;
 *				SIG_UNBLOCK:当how=SIG_UNBLOCK，set表示需要解除屏蔽的信号。相当于mask = mask & ~set
 *    			SIT_SETMASK:当how=SIT_SETMASK，set表示用于替代原始屏蔽集的新屏蔽集，相当于mask=set
 *			set：使用sigaddset等函数处理过的集合，一般是先使用集合处理函数 把要设置的集合先设置好，在使用sigprocmask设置到系统中去
 *			oldset：系统之前的阻塞信号集。
 *
 *	   sigpending函数
 *	   函数原型： int sigpending(sigset_t *set);
 *	   函数说明： 读取当前进程的未决信号集
 *	   函数参数：set传出参数
 *	   函数返回值：0，成功；-1，失败，设置errno
 *
 *8 、信号捕捉函数sigaction
 *      signal函数在不同的unix版本表现不太一样，一般使用sigaction代替，signal函数不能捕捉SIGSTOP和SIGKILL。
 *		sigaction函数说明：注册一个信号处理函数
 *		函数原型：int sigaction(int signum, const struct sigaction *act,struct sigaction *oldact);
 *		函数返回值：0，成功；-1 ，失败，并设置errno
 *		函数参数：
 *			signum:捕捉的信号
 *			act:传入参数，新的处理方式。
 *			oldact:传出的参数，旧的处理方式
 *		struct sigaction {
               void     (*sa_handler)(int);//信号处理函数，系统回调
                                           //也可以赋值为SIG_IGN表示忽略或者SIG_DEF表示执行默认动作
               void     (*sa_sigaction)(int, siginfo_t *, void *);//信号处理函数，一般不用
               sigset_t   sa_mask;//信号处理函数执行期间需要阻塞的信号，
               	   	   	   	   	  //比如信号处理函数执行耗时操作，在信号处理期间再有信号发生时，会阻塞。信号处理完成后，会解除阻塞
               	   	   	   	   	  //当某个信号被执行时，它自身会被自动放入进程的信号掩码，因此再信号处理期间，这个信号不会再度发生
               int        sa_flags;//通常为0，表示使用默认标识
               void     (*sa_restorer)(void);//已经不再使用了，废弃了
           };
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
#include <sys/time.h>

/**
 * fork多个子进程，并且注册SIGCHLD信号，在收到SIGCHLD信号之后回收子进程
 */
void sigChldTest();

/**
 * 使用sigaction函数注册一个定时信号
 */
void setSigaction();

/**
 * 信号集设置和读取
 */
void sigSetTest();

/**
 * 使用setitimer 多次 执行1秒内的+1运算后，取平均值
 */
void countBySetitimer();

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
