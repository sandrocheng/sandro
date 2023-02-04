/*
 * linuxDaemon.h
 *
 *  Created on: 2023年2月4日
 *      Author: sandro
 */

#ifndef LINUXDAEMON_H_
#define LINUXDAEMON_H_
#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <sys/stat.h>//是 unix/linux 系统定义文件状态所在的伪标准头文件
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！
#include <dirent.h>//常规c标准库
#include <signal.h>
#include <sys/time.h>
#include <time.h>
/**
 * 创建守护进程工作目录路径
 * 0:成功，-1失败
 */
static int createDIR(char *path, size_t size);

static void createDaemon();

static void filelog(int fd,char *logstr);

/**
 * 守护进程工作
 * 0:成功，-1失败
 */
static int working();
/**
 * 定时信号处理函数
 */
static void sigHandler(int sigNO);
#endif /* LINUXDAEMON_H_ */
