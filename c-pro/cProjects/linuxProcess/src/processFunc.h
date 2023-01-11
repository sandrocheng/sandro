/*
 * processFunc.h
 *
 *  Created on: 2023年1月10日
 *      Author: sandro
 */

#ifndef PROCESSFUNC_H_
#define PROCESSFUNC_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <sys/stat.h>//是 unix/linux 系统定义文件状态所在的伪标准头文件
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！
#include <dirent.h>//常规c标准库
#include "tools.h"

void forkTest();
#endif /* PROCESSFUNC_H_ */
