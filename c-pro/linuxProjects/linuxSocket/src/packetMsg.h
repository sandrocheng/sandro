/*
 * packetMsg.h
 *
 *  Created on: 2024年3月28日
 *      Author: sandro
 */

#ifndef PACKETMSG_H_
#define PACKETMSG_H_

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


#define PCKETMSG_SERVER_PORT 8101

struct msgPacket{
	int len;//包体的实际长度
	char buf[1024];
};

void packetMsgServer();

void packetMsgClient();

#endif /* PACKETMSG_H_ */
