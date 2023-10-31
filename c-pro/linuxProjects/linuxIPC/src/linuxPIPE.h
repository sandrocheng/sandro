/*
 * linuxPIPE.h
 *  Created on: 2023年1月15日
 *      Author: sandro
 *
 *1、 pipe函数
 *		作用：创建一个管道
 *		原型:int pipe(int fd[2]);
 *		函数参数：若函数调用成功，fd[0]存放管道的读端，fd[1]存放管道的写端
 *		返回值：
 *			成功返回0
 *			失败返回-1 ，并设置errno的值
 *		函数调用成功返回读端和写端的文件描述符，其中fd[0]是读端，fd[1]是写端，向管道读写数据是通过使用这两个文件描述符进行的，读写管道的实质是操作内核缓冲区。
 *		管道创建成功以后，创建该管道的进程（父进程）同时掌握着管道的读端和写端
 *
 *2、父子进程使用管道通信
 *		一个进程在由pipe创建管道后，一般再fork一个子进程，然后通过管道是ixan父子间进程的通信
 *		因此不难看出只要两个进程中存在血缘关系，这里的血缘关系指的是具有共同的祖先，都可以采用管道方式来进行通信
 *		父子进程间具有相同的文件描述符，且指向同一个管道pipe，其他没有关系的进程不能获取pipe产生的两个文件描述符，也就不能利用同一个管道通信
 *
 *		第一步骤,父进程创建管道,得到两个文件描述符fd[0] fd[1] 分别指向管道的读端和写端
                 +------+
		        0|      |-->tty
		         +------+
		        1|      |-->tty                  读端           写端
		         +------+		                  +-------------+
		        2|      |-->tty          +--------|    pipe     |<----+
		         +------+	             |        +-------------+     |
		 fd[0]=3 |      |<---------------+                            |
		         +------+                                             |
		 fd[0]=4 |      |---------------------------------------------+
		         +------+
		        .|      |
		         +------+
		        .|      |
		         +------+

 *		第二步骤,父进程fork子进程 ，那么子进程也拥有了两个文件描述符，并指向同一个管道
                 +------+                                                           +-------+
		        0|      |-->tty                                                    0|      |-->tty
		         +------+                +-------------------------------+          +------+
		        1|      |-->tty          |       read         write      |         1|      |-->tty
		         +------+		         |        +-------------+        |          +------+
		        2|      |-->tty          +--------|    pipe     |<----+  |         2|      |-->tty
		         +------+	             |        +-------------+     |  |          +------+
		 fd[0]=3 |      |<---------------+                            |  +--------->|      |  fd[0]=3
		         +------+                                             |             +------+
		 fd[0]=4 |      |-------------------------------------------->+<------------|      |  fd[0]=4
		         +------+                                                           +------+
		        .|      |                                                          .|      |
		         +------+                                                           +------+
		        .|      |                                                          .|      |
		         +------+                                                           +------+

 *		第三步骤,父进程关闭fd[0] 子进程关闭fd[1]，父进程可以向管道中写入数据，子进程将管道的数据读出，这样就实现了父子进程的通信
                 +------+                                                           +-------+
		        0|      |-->tty                                                    0|      |-->tty
		         +------+                                                           +------+
		        1|      |-->tty                  write         read                1|      |-->tty
		         +------+		                  +-------------+                   +------+
		        2|      |-->tty          +------->|    pipe     |--------+         2|      |-->tty
		         +------+	             |        +-------------+        |          +------+
		 fd[0]=3 |      |                |                               +--------->|      |  fd[0]=3
		         +------+                |                                          +------+
		 fd[1]=4 |      |----------------+                                          |      |  fd[1]=4
		         +------+                                                           +------+
		        .|      |                                                          .|      |
		         +------+                                                           +------+
		        .|      |                                                          .|      |
		         +------+                                                           +------+

 *
 * 3 获取缓冲区大小
 *	 long fpathconf(int fd,int name);
 *	 printf("pipe size==[%ld]\n " , fpathconf(fd[0],_PC_PIPE_BUF));
 *
 */

#ifndef LINUXPIPE_H_
#define LINUXPIPE_H_
#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <sys/stat.h>//是 unix/linux 系统定义文件状态所在的伪标准头文件
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！
#include <dirent.h>//常规c标准库
#include <sys/wait.h>//unix类库
#include "tools.h"

/**
 * 使用pipe完成一次父子进程间的通信
 */
int ipcByPipe();

/**
 * 两个linux命令通过管道联合并输出结果
 */
int twoCMD(int argc,char* argv[]);

/**
 * twoCMD 父进程 执行命令，并写入管道
 */
static int twoCMDFather(int fd[2],char* inputCMDAndArgs[10]);

/**
 * twoCMD 子进程 读取输入，并继续执行后面的命令
 */
static int twoCMDSon(int fd[2],char* outputCMDAndArgs[10]);

/**
 * 输出命令和参数
 */
static void printCMDStr(char * title,char* cmd[],int len);

/**
 * 检查twoCMD参数是否合法
 * inputCMDAndArgs : 管道符前面的命令和参数
 * outputCMDAndArgs： 管道符后面的命令和参数
 */
static int twoCMDArgsCheck(int argc,char* argv[],char* inputCMDAndArgs[10],char* outputCMDAndArgs[10]);

#endif /* LINUXPIPE_H_ */
