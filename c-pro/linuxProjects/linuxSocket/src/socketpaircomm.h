/*
 * socketpaircomm.h
 *
 *  Created on: 2024年4月11日
 *      Author: sandro
 */

#ifndef SOCKETPAIRCOMM_H_
#define SOCKETPAIRCOMM_H_
#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <netinet/in.h>//网络库
#include <sys/socket.h>//socket类库
#include "tools.h"
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include "util.h"
#include <sys/wait.h>//unix类库

void createSocketpair();


#endif /* SOCKETPAIRCOMM_H_ */
