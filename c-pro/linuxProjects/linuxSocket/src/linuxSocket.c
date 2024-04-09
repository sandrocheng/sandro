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

static void showAppHelp();

int main(int argc,char* argv[]) {
	char *buf[512]={0};
	sprintf(buf, "argc is %d",argc);
	timelog(buf);
	for(int i=0;i<argc;i++){
		memset(buf,0,sizeof(buf));
		sprintf(buf, "argv[%d] is %s",i,argv[i]);
		timelog(buf);
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
	}else if(!strcmp("shutdownServer",argv[1])){
		shutdownServer();
	}else if(!strcmp("shutdownClient",argv[1])){
		if(argc > 2 && !strcmp("shutdown",argv[2])){
			shutdownClient(1);
		}else{
			shutdownClient(0);
		}
	}else if(!strcmp("createtimeoutSvr",argv[1])){
		createtimeoutSvr();
	}else if(!strcmp("createtimeoutCli",argv[1])){
		createtimeoutCli();
	}else if(!strcmp("resourceTest",argv[1])){
		resourceTest();
	}else if(!strcmp("createPollSocketSvr",argv[1])){
		createPollSocketSvr();
	}else if(!strcmp("createPollSocketCli",argv[1])){
		createPollSocketCli();
	}else if(!strcmp("createEPollSocketSvr",argv[1])){
		createEPollSocketSvr();
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

	printf("createSelectSocketServer 创建服务端，使用select管理IO操作，只在主进程处理多个客户端的请求\n");
	printf("createSelectSocketClient 创建客户端，使用select管理 socket和标准输入的IO操作,向createSelectSocketServer发送数据\n");

	printf("shutdownServer 创建服务端，使用shutdown代替close，关闭socket连接\n");
	printf("shutdownClient [shutdown] 创建客户端,向shutdownServer发送数据\n");
	printf("                          默认客户端使用close关闭连接，此时服务端会收到SIGPIPE信号，同时write会返回错误\n");
	printf("                          使用 shutdown 参数，客户端会使用shutdown来关闭连接，不会收到SIGPIPE信号，write可以继续写入\n");

	printf("createtimeoutSvr 建立socket服务端，使用select在 accept, read,write 的时候判断超时\n");
	printf("createtimeoutCli 创建socket客户端 ,连接createtimeoutSvr服务端，使用select在 connect, read,write 的时候判断超时\n");

	printf("resourceTest 读取和设置系统资源\n");

	printf("createPollSocketSvr 创建服务端，使用poll管理IO操作，只在主进程处理多个客户端的请求\n");
	printf("createPollSocketCli 创建客户端，创建多个子进程，每个子进程向createPollSocketSvr发送5条数据\n");

	printf("createEPollSocketSvr 创建服务端，使用epoll管理IO操作，只在主进程处理多个客户端的请求,可以接收createPollSocketCli发送的数据\n");
	printf("=========================================================================================================================================================\n");

}

