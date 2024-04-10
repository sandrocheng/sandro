/*
 * udpsocket.h
 *
 *  Created on: 2024年4月10日
 *      Author: sandro
 */

#ifndef UDPSOCKET_H_
#define UDPSOCKET_H_

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
#include "errno.h"

void createUDPSvr();

/**
 * 使用UDP协议接口socket客户端,创建多个子进程向createUDPSvr发送数据
 */
void createUDPCli();

#endif /* UDPSOCKET_H_ */
