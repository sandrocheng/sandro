/*
 * caseShutdown.h
 *  使用shutdown代替close，关闭socket连接的例子
 *  Created on: 2024年4月2日
 *      Author: sandro
 */

#ifndef CASESHUTDOWN_H_
#define CASESHUTDOWN_H_

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
#include <signal.h>

#define CASESHUTDOWN_MSG_OVER "over"
#define CASESHUTDOWN_MSG_SHUTDOWN "shutdown"

void shutdownServer();

/**
 * closeType : 0,使用close关闭连接；其他，使用shutdown关闭连接
 */
void shutdownClient(int closeType);

#endif /* CASESHUTDOWN_H_ */
