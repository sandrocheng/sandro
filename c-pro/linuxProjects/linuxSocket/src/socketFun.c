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

void createSocketClient(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[createSocketClient]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[createSocketClient]create socket successed ,socketfd is %d\n",socketfd);

	struct sockaddr_in addrSvr;
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(SOCKETFUN_SERVER_PORT);
	addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");

	int connectResult = connect(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(connectResult < 0){
		close(socketfd);
		printf("[createSocketClient]connect socket failed ,socketfd is %d svrfd is %d\n",socketfd,connectResult);
		return;
	}
	printf("[createSocketClient]connect socket success ,socketfd is %d ,port is %d ,ip is %s ,connectResult is %d\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr),connectResult);

	char sendBuf[512];
	char recvBuf[512];
	for(int i=0;i<10;i++){
		memset(&sendBuf,0,sizeof(sendBuf));
		memset(&recvBuf,0,sizeof(recvBuf));

		sprintf(sendBuf,"message from client[%d] , sendNum is %d " ,getpid(),i);
		write(socketfd,sendBuf,strlen(sendBuf));
		read(socketfd,recvBuf,512 * sizeof(char));

		printf("[createSocketClient] receive message from server : %s \n",recvBuf);
		sleep(1);
	}
	memset(&sendBuf,0,sizeof(sendBuf));
	sprintf(sendBuf,"%s" ,"over");
	write(socketfd,sendBuf,strlen(sendBuf));
	close(socketfd);
}

void createSocketServer(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[createSocketServer]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[createSocketServer]create socket successed ,socketfd is %d\n",socketfd);

	int on = 1;
	if(setsockopt(socketfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on))<0){
		close(socketfd);
		perror("[createSocketServer]setsockopt failed");
		return;
	}

	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(SOCKETFUN_SERVER_PORT);//端口号需要设置为网络字节序
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY);//INADDR_ANY表示本机任意地址
	//addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");//也可以直接设置127.0.0.1，表示本机地址，如果是网络环境，需要设置当前网络地址
	//inet_aton("127.0.0.1",&addrSvr.sin_addr);//也可以这样赋值

	//绑定地址，因为参数是sockaddr所以这里强转一下，sockaddr_in是可以强转成sockaddr的
	int bindResult = bind(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(bindResult < 0){
		close(socketfd);
		printf("[createSocketServer]bind socket failed ,socketfd is %d\n",socketfd);
		perror("[createSocketServer]bind socket failed");
		return;
	}
	printf("[createSocketServer]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd,SOMAXCONN);
	if(listenResult < 0){
		close(socketfd);
		printf("[createSocketServer]listen socket failed ,socketfd is %d\n",socketfd);
		perror("[createSocketServer]listen socket failed");
		return;
	}
	printf("[createSocketServer]listen socket successed ,socketfd is %d\n",socketfd);

	//因为使用的是ipv4协议，所以用sockaddr_in结构体接受数据，方便使用，在appcet的时候需要强转一下
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	int acceptfd = accept(socketfd,(struct sockaddr*)&clientAddr,&clientAddrLen);
	if(acceptfd < 0){
		close(socketfd);
		printf("[createSocketServer]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",socketfd,clientAddrLen,acceptfd);
		perror("[createSocketServer]accept socket failed");
		return;
	}
	char *clientIP = inet_ntoa(clientAddr.sin_addr);
	printf("[createSocketServer]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
			socketfd,acceptfd,clientIP,ntohs(clientAddr.sin_port));
	//accept成功后，可以使用read阻塞读取acceptfd文件描述符中的数据
	char recvbuf[1024];
	char *backMessage = "server receive message success";
	while(1){
		//这种写法，服务端只能从队列中拿到一个客户端连接，当客户端连接断开以后，服务器端也就结束了
		//实际上socket是可以获取多个客户端连接并发操作的
		memset(&recvbuf,0,sizeof(recvbuf));
		read(acceptfd,recvbuf,sizeof(recvbuf));
		printf("[createSocketServer]read message : %s\n",recvbuf );

		if(!strcmp("over",recvbuf)){
			break;
		}
		size_t msgSize = strlen(backMessage);
		write(acceptfd,backMessage,msgSize);
	}
	close(acceptfd);
	close(socketfd);
	printf("[createSocketServer] close\n");
}



