/*
 * p2pChat.h
 *  点对点聊天程序
 *  Created on: 2024年3月24日
 *      Author: sandro
 */

#ifndef P2PCHAT_H_
#define P2PCHAT_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <arpa/inet.h>//字节序转换库函数
#include <netinet/in.h>//网络库
#include <sys/socket.h>//socket类库
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include <unistd.h>
#include "tools.h"

#define P2PCHAT_USER_A_PORT 6111

void startUserA();

void startUserB();

#endif /* P2PCHAT_H_ */
