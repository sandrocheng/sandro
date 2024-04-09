/*
 * readline.h
 *
 *  使用recv配合MSG_PEEK参数实现 readline 功能
 *
 *  Created on: 2024年3月29日
 *      Author: sandro
 */

#ifndef READLINE_H_
#define READLINE_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <arpa/inet.h>//字节序转换库函数
#include <netinet/in.h>//网络库
#include <sys/socket.h>//socket类库
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include <unistd.h>
#include <errno.h>
#include "tools.h"
#include "util.h"
#include <netdb.h>

#define READLINE_MAX_LINE 1024

void createReadlineServer();

void createReadlineClient();

#endif /* READLINE_H_ */
