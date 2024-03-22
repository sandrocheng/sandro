/*
 * socketFun.c
 *
 *  Created on: 2024年3月21日
 *      Author: sandro
 */

#include "socketFun.h"

void checkEdian(){
	unsigned int x = 0x12345678;
	unsigned char *p = (unsigned char*)&x;
	//p[0]是内存低位，p[3]内存高位，如果p[0]保存的是78(低有效位)，说明当前系统使用的是小端字节序
	//使用命令lscpu,看cpu架构，x86_64使用的是小端字节序
	printf("%04x(16进制) 字节序从低到高 ：%0x %0x %0x %0x\n",x,p[0],p[1],p[2],p[3]);

	unsigned int x_net = htonl(x);
	p=(unsigned char*)&x_net;
	printf("%04x(16进制) 使用htonl转换后 字节序从低到高 ：%0x %0x %0x %0x\n",x,p[0],p[1],p[2],p[3]);

}

void addrRevert(){
	char *addr = "192.168.0.100";
	unsigned long addrNum = inet_addr(addr);
	printf("%s 转换为整数后是 %04x(16进制网络字节序),%04x(16进制主机字节序)\n",addr,(int)addrNum,(int)ntohl(addrNum));

	struct in_addr addrStruct;
	addrStruct.s_addr = addrNum;
	printf("%04x(16进制网络字节序) 地址是 %s",(int)addrNum,inet_ntoa(addrStruct));
}


