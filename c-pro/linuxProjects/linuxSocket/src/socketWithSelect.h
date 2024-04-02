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

#define SOCKETWITHSELECT_PORT 8333

/**
 * 创建服务端，使用select管理IO操作，只在主进程处理多个客户端的请求
 */
void createSelectSocketServer();

/**
 * 创建客户端，使用select管理 socket和标准输入的IO操作
 */
void createSelectSocketClient();

/**
 * 读取socket中的数据
 * return -1,流读取失败;0，成功
 */
static int readSocket(int socketfd, char *buf, int buflen);

/**
 * 从标准输入流中获取数据并发送给服务器
 */
static int writeSocketFromStdin(int socketfd, char *buf, int buflen);

/**
 * 服务段处理连接
 * clients:用于保存所有的accept连接描述符，数组种默认每个元素都是-1(表示空闲)，如果所有描述符都不是-1，当前的socket连接将会被舍弃
 * clientSize:clients数组的长度，
 * return : 小于 0 失败；0 成功
 */
static int handleAcceptSocket(int socketfd, int clients[], int clientSize);

/**
 * 向socket中读写数据
 */
static int readAndWriteMessage(int socketfd);
#endif /* SOCKETWITHSELECT_H_ */
