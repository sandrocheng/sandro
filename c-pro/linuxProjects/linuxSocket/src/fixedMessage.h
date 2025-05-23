/*
 * fixedMessage.h
 *	使用定长包发送数据，避免粘包问题
 *	对于定长包消息来说，发送端如果发送的数据小于约定的值，接收端就会阻塞在read处等待，另外定长包会比较浪费网络资源
 *  Created on: 2024年3月26日
 *      Author: sandro
 */

#ifndef FIXEDMESSAGE_H_
#define FIXEDMESSAGE_H_

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

/**
 * 创建socket服务，使用定长包的方式接收和发送数据
 */
void fixedMsgServer();

/**
 * 向fixedMsgServer发送定长数据，并接收服务端的定长回执
 */
void fixedMsgClient();

#endif /* FIXEDMESSAGE_H_ */
