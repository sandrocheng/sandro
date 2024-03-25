/*
 ============================================================================
 Name        : linuxSocket.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : linux socket in C, Ansi-style
 ============================================================================
 */

#include "linuxSocket.h"

int main(int argc,char* argv[]) {
	printf("argc is %d\n",argc);
	for(int i=0;i<argc;i++){
		printf("argv[%d] is %s\n",i,argv[i]);
	}

	if(argc <= 1 ){
		printf("请根据help选择需要的参数");
		showAppHelp();
		return 1;
	}else if(!strcmp("checkEndian",argv[1])){
		checkEdian();
	}else if(!strcmp("addrRevert",argv[1])){
		addrRevert();
	}else if(!strcmp("createSocketServer",argv[1])){
		createSocketServer();
	}else if(!strcmp("createSocketClient",argv[1])){
		createSocketClient();
	}else if(!strcmp("createMultiClientServerByFork",argv[1])){
		createMultiClientServerByFork();
	}else if(!strcmp("p2pChatA",argv[1])){
		startUserA();
	}else if(!strcmp("p2pChatB",argv[1])){
		startUserB();
	}else{
		printf("请根据help选择需要的参数");
		showAppHelp();
	}
	return 1;
}

void showAppHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("checkEndian ,查看当前系统的字节序\n");
	printf("addrRevert ip地址转换\n");
	printf("createSocketServer 创建socket回射服务\n");
	printf("createSocketClient 创建socket回射客户端\n");
	printf("createMultiClientServerByFork 创建socket服务器，使用子进程并发处理多个客户端的连接,对应的客户端还是createSocketClient\n");
	printf("p2pChatA 创建p2p聊天用户A\n");
	printf("p2pChatB 创建p2p聊天用户B，运行之前要先创建p2pChatA\n");
	printf("=========================================================================================================================================================\n");

}

