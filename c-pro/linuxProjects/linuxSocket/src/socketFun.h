/*
 * socketFun.h
 *
 *  Created on: 2024年3月21日
 *      Author: sandro
 */

#ifndef SOCKETFUN_H_
#define SOCKETFUN_H_
#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <arpa/inet.h>//字节序转换库函数
#include <netinet/in.h>//网络库
#include <sys/socket.h>//socket类库
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include <unistd.h>
#include "tools.h"

#define SOCKETFUN_SERVER_PORT 5188

/**
 * 查看当前系统的字节序
 * 把系统字节序转换位网络字节序
 */
void checkEdian();

/**
 * ip地址转换
 * ipv4地址转换为整数
 * 将一个地址结构的数据转换为ipv4地址字符串
 */
void addrRevert();

/**
 * 创建一个socket回射服务，并监听该socket绑定的端口
 */
void createSocketServer();

/**
 * 创建一个socket回射客户端，并发送数据
 */
void createSocketClient();

#endif /* SOCKETFUN_H_ */
