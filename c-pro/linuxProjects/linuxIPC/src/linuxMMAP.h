/*
 * linuxMMAP.h
 *	内存映射区 mmap
 *  Created on: 2023年1月22日
 *      Author: sandro
 *
 * 1、mmap函数
 *      建立存储映射区
 *      函数原型：void *mmap(void *addr, size_t length, int prot, int flags,int fd, off_t offset);
 *		函数返回值：
 *			成功：返回创建的映射区首地址
 *			失败：MAP_FAILED宏
 *      参数：
 *      	addr:指定映射的起始地址，通常设为NULL，由系统指定
 *  		length:映射到内存的文件长度，一般是文件大小，可以使用lseek或者stat获取文件大小,大小必须大于0
 *  		port: 映射区的保护方式，常用的如下
 *  			读 PROT_READ
 *  			写 PROT_WRITE
 *  			读写 PROT_READ|PROT_WRITE
 *  		flags:映射区的特性，如下
 *  			MAP_SHARED：写入映射区的数据会写回文件，且允许其他映射该文件的进程共享
 *  			MAP_PRIVATE：对映射区的写入操作会产生一个映射区的复制（copy-onwrite）,对此区域所作的修改不会写回原文件。
 *  		fd:由open返回的文件描述符，代表要映射的文件。
 *  		offset:以文件开始处的偏移量，必须是4k的整数倍（还要小于文件大小），通常为0，表示从文件头开始映射。
 *
 * 2、mmap匿名映射：不需要本地有文件，也可以进行mmap进程通信，只能用于有血缘关系的进程间通信
 * 	  mmap(NULL,4096,PROT_READ|PROT_WRITE,MAP_SHARED|MAP_ANONYMOUS,-1,0)
 * 	  flags 必须使用 MAP_SHARED|MAP_ANONYMOUS
 * 	  文件描述符使用 -1
 *
 * 3、munmap函数
 *		释放由mmap函数建立的存储映射区
 *		函数原型：int munmap(void *addr, size_t length);
 *		返回值：
 *			成功，返回0
 *			失败，返回-1，并设置errno值
 *		参数：
 *			addr,调用mmap函数成功发挥的映射区首地址
 *			length:映射区大小（mmap函数的第二个参数）
 *
 *
 *
 *
 *
 */

#ifndef LINUXMMAP_H_
#define LINUXMMAP_H_
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
#include <sys/mman.h>//mmap liunx标准库


/**
 * 使用mmap进行一次父子进程通信
 * @param filepath , mmap映射的文件路径，如果不存在则创建一个文件，大小为10k
 */
void IPCinFS(const char* filepath);

/**
 * 使用mmap运行一个写操作进程
 */
void MMAPIPCWriteClient(const char* filepath);

/**
 * 使用mmap运行一个读操作进程
 */
void MMAPIPCRClient(const char* filepath);

#endif /* LINUXMMAP_H_ */
