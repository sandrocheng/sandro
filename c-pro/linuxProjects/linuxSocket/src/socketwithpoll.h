/*
 * socketwithpoll.h
 *
 *  Created on: 2024年4月9日
 *      Author: sandro
 */

#ifndef SOCKETWITHPOLL_H_
#define SOCKETWITHPOLL_H_

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
#include <poll.h>
#include <sys/wait.h>//unix类库
#include <sys/resource.h>

#define SOCKETWITHPOLL_H_CLIENTSIZE 2045

void createPollSocketSvr();
void createPollSocketCli();

#endif /* SOCKETWITHPOLL_H_ */
