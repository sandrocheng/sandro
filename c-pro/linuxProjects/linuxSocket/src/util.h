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
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！

#define UTIL_H_COMMON_PORT 1557
#define UTIL_H_COMMON_IP "127.0.0.1"
/**
 * 创建socket ,绑定地址端口，监听socket
 * port : 端口号
 *
 * return : 失败，-1；成功 socketfd,
 */
int createServerSocket(int port);

/**
 * 创建并绑定socket
 * port : 端口号
 * socketType：socket的类型
 * return : 失败，-1；成功 socketfd,
 */
int createAndBindSocket(int port,int socketType);

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
 * 创建socket ,绑定地址端口，监听socket
 * 因为确定只会有一个客户端连接，所以直接accept，并阻塞返回acceptfd
 *
 * port : 端口号
 * connfd : 当收到连接的时候会解除阻塞，并设置连接的套接字描述符
 * wait_seconds : 0,不设置超时
 * 				accept等待时间，超时返回-1，并且设置errno=ETIMEDOUT
 * return : 失败，-1；成功 socketfd,
 */
int createServerSocketWithSingleClientTimeout(int port,int *connfd,int wait_seconds);

/**
 * 创建客户端socket,并连接对方ip和端口号
 * port,目标端口号
 * ip:对方ip地址
 *
 * ,return : 失败，-1；成功 socketfd
 */
int createClientSocket(int port,char *ip);

/**
 * 创建客户端socket,并连接对方ip和端口号,如果超时没有连接上则返回失败
 * port,目标端口号
 * ip:对方ip地址
 * wait_seconds ： 等待connect的时间
 * ,return : 失败，-1；成功 socketfd
 */
int createClientSocketinTime(int port,char *ip,int wait_seconds);

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

/*
 * 检测读操作是否超时，该函数不包括读操作
 * wait_seconds : 等待超时的秒数，如果为0，表示不检测超时
 * return : 0,成功，
 * 			-1，失败 ，超时返回-1 ，并且errno = ETIMEDOUT
 */
int read_timeout_check(int fd,int wait_seconds);

/**
 * 检测写操作是否超时，不包含写操作
 * wait_seconds : 等待超时的秒数，如果为0，表示不检测超时
 * return : 0,成功，
 * 			-1，失败 ，超时返回-1 ，并且errno = ETIMEDOUT
 */
int write_timeout_check(int fd,int wait_seconds);

/**
 * 设置IO为非阻塞模式
 * return : 0,成功，
 * 			-1，失败
 */
int active_nonblock(int fd);

/**
 * 设置IO为阻塞模式
 * return : 0,成功，
 * 			-1，失败
 */
int deactive_nonblock(int fd);

/**
 * 使用select的写集合 监听socket
 * return : 0,成功，
 * 			-1，失败 ，超时返回-1 ，并且errno = ETIMEDOUT
 */
int selectfdInWriteSet(int socketfd,int wait_seconds);

/**
 * 使用select的读集合 监听socket
 * return : 0,成功，
 * 			-1，失败 ，超时返回-1 ，并且errno = ETIMEDOUT
 */
int selectfdInReadeSet(int socketfd,int wait_seconds);

/**
 * 不断从一个sockfd 中读取UDP数据
 */
void receiveUDPClientData(int sockfd);

/**
 * 发送UDP数据
 */
int sendUDPMsg(int socketfd,int port,char *ip,void *buf,int buflen);

#endif /* UTIL_H_ */
