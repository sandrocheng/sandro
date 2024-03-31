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
#include <netdb.h>

/**
 * 创建socket ,绑定地址端口，监听socket
 * port : 端口号
 *
 * return : 失败，-1；成功 socketfd,
 */
int createServerSocket(int port);

/**
 * 创建socket ,绑定地址端口，监听socket
 * 因为确定只会有一个客户端连接，所以直接accept，并阻塞返回acceptfd
 *
 * port : 端口号
 * connfd : 当收到连接的时候会解除阻塞，并设置连接的套接字描述符
 * return : 失败，-1；成功 socketfd,
 */
int createServerSocketWithSingleClient(int port,int *connfd);

/**
 * 创建客户端socket,并连接对方ip和端口号
 * port,目标端口号
 * ip:对方ip地址
 *
 * ,return : 失败，-1；成功 socketfd
 */
int createClientSocket(int port,char *ip);

/**
 * 读取定长数据
 * fd:套接字描述符
 * buf:接收buf的地址
 * size:接收的长度
 * return : 读取到的字节数； -1,读取失败
 */
size_t readn(int fd,void *buf, size_t size);

/**
 * 使用 MSG_PEEK作为flags 读取数据
 * return,失败，返回-1；成功返回读取到的数据
 */
ssize_t recvPeek(int sockfd, void *buf, size_t len);

/**
 * 实现readline能力的读取函数，当遇到\n的时候才返回数据
 * maxline,一行最大的字节数量,超过了，也会返回
 */
ssize_t readline(int sockfd, void *buf, size_t maxline);

/**
 * 输出hostent类型结果
 */
void printhostent(struct hostent *host);

#endif /* UTIL_H_ */
