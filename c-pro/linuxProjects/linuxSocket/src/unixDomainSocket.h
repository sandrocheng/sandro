/*
 * unixDomainSocket.h
 *
 *  Created on: 2024年4月11日
 *      Author: sandro
 */

#ifndef UNIXDOMAINSOCKET_H_
#define UNIXDOMAINSOCKET_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/socket.h>//socket类库
#include <sys/un.h>//UNIX域 库
#include <sys/types.h>//OSIX Standard: 2.6 Primitive System Data Types
#include <unistd.h>
#include "tools.h"
#include "util.h"

void unixDomainSvr();

void unixDomainCli();
#endif /* UNIXDOMAINSOCKET_H_ */
