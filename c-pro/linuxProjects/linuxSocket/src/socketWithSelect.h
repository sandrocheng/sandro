/*
 * socketWithSelect.h
 *
 *  Created on: 2024年4月1日
 *      Author: sandro
 */

#ifndef SOCKETWITHSELECT_H_
#define SOCKETWITHSELECT_H_

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
#include <sys/select.h>

/**
 * 创建服务端，使用select管理IO操作，只在主进程处理多个客户端的请求
 */
void createSelectSocketServer();

/**
 * 创建客户端，使用select管理 socket和标准输入的IO操作
 */
void createSelectSocketClient();

#endif /* SOCKETWITHSELECT_H_ */
