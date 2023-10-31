/*
 * linuxIPC.h
 *
 *  Created on: 2023年1月15日
 *      Author: sandro
 */

#ifndef LINUXIPC_H_
#define LINUXIPC_H_

#include "linuxPIPE.h"
#include "linuxFIFO.h"
#include "linuxMMAP.h"

static int checkArgs(int argc,char* argv[]);

static void showHelp();

#endif /* LINUXIPC_H_ */
