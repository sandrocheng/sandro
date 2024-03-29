/*
 * util.c
 *
 *  Created on: 2024年3月28日
 *      Author: sandro
 */

#include "util.h"

int createServerSocket(int port){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[createServerSocket]create socket failed ,socketfd is %d\n",socketfd);
		return -1;
	}
	printf("[createServerSocket]create socket successed ,socketfd is %d\n",socketfd);

	int on = 1;
	if(setsockopt(socketfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on))<0){
		close(socketfd);
		perror("[createServerSocket]setsockopt failed");
		return -1;
	}

	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(port);//端口号需要设置为网络字节序
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY);//INADDR_ANY表示本机任意地址
	//addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");//也可以直接设置127.0.0.1，表示本机地址，如果是网络环境，需要设置当前网络地址
	//inet_aton("127.0.0.1",&addrSvr.sin_addr);//也可以这样赋值

	//绑定地址，因为参数是sockaddr所以这里强转一下，sockaddr_in是可以强转成sockaddr的
	int bindResult = bind(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(bindResult < 0){
		close(socketfd);
		printf("[createServerSocket]bind socket failed ,socketfd is %d\n",socketfd);
		perror("[createServerSocket]bind socket failed");
		return -1;
	}
	printf("[createServerSocket]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd,SOMAXCONN);
	if(listenResult < 0){
		close(socketfd);
		printf("[createServerSocket]listen socket failed ,socketfd is %d\n",socketfd);
		perror("[createServerSocket]listen socket failed");
		return -1;
	}
	printf("[createServerSocket]listen socket successed ,socketfd is %d\n",socketfd);

	return socketfd;
}

int createClientSocket(int port,char *ip){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
		if(socketfd < 0){
			printf("[createClientSocket]create socket failed ,socketfd is %d\n",socketfd);
			perror("[createClientSocket]create socket failed");
			return -1;
		}
		printf("[createClientSocket]create socket successed ,socketfd is %d\n",socketfd);

		struct sockaddr_in addrSvr;
		addrSvr.sin_family = AF_INET;
		addrSvr.sin_port = htons(port);
		addrSvr.sin_addr.s_addr = inet_addr(ip);

		int connectResult = connect(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
		if(connectResult < 0){
			close(socketfd);
			printf("[createClientSocket]connect socket failed ,socketfd is %d svrfd is %d\n",socketfd,connectResult);
			perror("[createClientSocket]connect socket failed");
			return -1;
		}
		printf("[createClientSocket]connect socket success ,socketfd is %d ,port is %d ,ip is %s ,connectResult is %d\n",
					socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr),connectResult);
		return socketfd;
}
