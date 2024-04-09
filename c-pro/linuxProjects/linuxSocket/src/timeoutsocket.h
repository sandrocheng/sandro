/*
 * timeoutsocket.h
 *
 *  建立socket服务端和客户端，使用select在 accept,connect, read,write 的时候判断超时
 *  Created on: 2024年4月7日
 *      Author: sandro
 */

#ifndef TIMEOUTSOCKET_H_
#define TIMEOUTSOCKET_H_

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

void createtimeoutSvr();

void createtimeoutCli();

#endif /* TIMEOUTSOCKET_H_ */
