/*
 * linuxFIFO.h
 *
 *  Created on: 2023年1月18日
 *      Author: sandro
 *
 *	创建fifo文件
 *	@mode_t 文件权限和创建文件的参数一样
 *  int mkfifo(const char *pathname, mode_t mode);
 *  返回值 ：0 成功
 *  	   -1 失败，并设置errno值
 *
 *
 */

#ifndef LINUXFIFO_H_
#define LINUXFIFO_H_
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
 * 使用fifo，进行一次进程间通信
 * @param fifoPath,命名管道文件路径
 */
void useFIFO(const char* fifoPath);


#endif /* LINUXFIFO_H_ */
