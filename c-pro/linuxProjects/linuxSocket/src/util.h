/*
 * util.h
 *
 *  Created on: 2024年3月28日
 *      Author: sandro
 */

#ifndef UTIL_H_
#define UTIL_H_

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

/**
 * 创建socket ,绑定地址端口，监听socket
 * port : 端口号
 *
 * return : 失败，-1；成功 socketfd,
 */
int createServerSocket(int port);

/**
 * 创建客户端socket,并连接对方ip和端口号
 * port,目标端口号
 * ip:对方ip地址
 *
 * ,return : 失败，-1；成功 socketfd
 */
int createClientSocket(int port,char *ip);

#endif /* UTIL_H_ */
