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
	}else if(!strcmp("fixedMsgServer",argv[1])){
		fixedMsgServer();
	}else if(!strcmp("fixedMsgClient",argv[1])){
		fixedMsgClient();
	}else if(!strcmp("packetMsgServer",argv[1])){
		packetMsgServer();
	}else if(!strcmp("packetMsgClient",argv[1])){
		packetMsgClient();
	}else if(!strcmp("createReadlineServer",argv[1])){
		createReadlineServer();
	}else if(!strcmp("createReadlineClient",argv[1])){
		createReadlineClient();
	}else if(!strcmp("createSelectSocketServer",argv[1])){
		createSelectSocketServer();
	}else if(!strcmp("createSelectSocketClient",argv[1])){
		createSelectSocketClient();
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
	printf("fixedMsgServer 创建socket服务，使用定长包的方式接收和发送数据\n");
	printf("fixedMsgClient 向fixedMsgServer发送定长数据，并接收服务端的定长回执\n");
	printf("packetMsgServer 创建socket服务，使用自定义数据包格式接收和发送数据n");
	printf("packetMsgClient 向packetMsgServer发送自定义数据包格式的数据，并接收服务端的回执\n");
	printf("createReadlineServer 创建socket服务，使用readline的方式读取createReadlineClient发送的数据\n");
	printf("createReadlineClient 创建socket客户端，使用readline的方式读取createReadlineServer返回的数据\n");
	printf("createSelectSocketServer 创建服务端，使用select管理IO操作\n");
	printf("createSelectSocketClient 创建客户端，使用select管理IO操作,向createSelectSocketServer发送数据\n");
	printf("=========================================================================================================================================================\n");

}

