/*
 * multiClientServerByFork.h
 *
 *  一个连接使用一个进程来处理并发
 *
 *  Created on: 2024年3月24日
 *      Author: sandro
 */

#ifndef MULTICLIENTSERVERBYFORK_H_
#define MULTICLIENTSERVERBYFORK_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <arpa/inet.h>//字节序转换库函数
#include <netinet/in.h>//网络库
#include <sys/socket.h>//socket类库
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include <unistd.h>
#include "tools.h"
#include "util.h"
#include <signal.h>

void createMultiClientServerByFork();

#endif /* MULTICLIENTSERVERBYFORK_H_ */
