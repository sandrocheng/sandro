/*
 * p2pChat.c
 *
 *  Created on: 2024年3月24日
 *      Author: sandro
 */
#include "p2pChat.h"

void startUserA(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[startUserA]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[startUserA]create socket success ,socketfd is %d\n",socketfd);

	int on = 1;
	if(setsockopt(socketfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on))<0){
		close(socketfd);
		printf("[startUserA]setsockopt failed ,socketfd is %d\n",socketfd);
		perror("[startUserA]setsockopt failed");
		return;
	}
	printf("[startUserA]setsockopt success ,socketfd is %d\n",socketfd);

	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(P2PCHAT_USER_A_PORT);
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY);
	int bindResult = bind(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(bindResult < 0){
		close(socketfd);
		printf("[startUserA]bind failed ,socketfd is %d\n",socketfd);
		perror("[startUserA]bind failed");
		return;
	}
	printf("[startUserA]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd,SOMAXCONN);
	if(listenResult < 0){
		close(socketfd);
		printf("[startUserA]listen socket failed ,socketfd is %d\n",socketfd);
		perror("[startUserA]listen socket failed");
		return;
	}
	printf("[startUserA]listen socket success ,socketfd is %d\n",socketfd);

	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(clientAddr);
	int connfd = accept(socketfd,(struct sockaddr*)&clientAddr,&clientAddrLen);
	if(connfd < 0){
		close(socketfd);
		printf("[startUserA]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",socketfd,clientAddrLen,connfd);
		perror("[startUserA]accept socket failed");
		return;
	}
	char *clientIP = inet_ntoa(clientAddr.sin_addr);
	printf("[startUserA]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
			socketfd,connfd,clientIP,clientAddr.sin_port);

	pid_t pid = fork();
	if(pid<0){
		close(socketfd);
		perror("[startUserA] fork error");
		return;
	}else if(pid == 0){
		//发送进程
		char buf[512]={0};
		char sendbuf[1024]={0};
		char time[60]={0};
		while(fgets(buf,sizeof(buf),stdin)!=NULL){
			toDateTimeCh(time,0);
			sprintf(sendbuf,"[%s receive message from USER_A] : %s" ,time,buf);
			write(connfd,sendbuf,strlen(sendbuf));
			memset(&buf,0,sizeof(buf));
			memset(&sendbuf,0,sizeof(sendbuf));
		}
		perror("[startUserA] subProcess quit");
	}else{
		//主进程用来获取数据
		char recvbuf[1024];
		while(1){
			memset(&recvbuf,0,sizeof(recvbuf));
			int ret = read(connfd,recvbuf,sizeof(recvbuf));
			if(ret<=0){
				printf("[startUserA]client error main process quit!,read ret is %d\n",ret);
				exit(0);
			}
			printf("%s\n",recvbuf );
		}
	}
	close(connfd);
	close(socketfd);
}

void startUserB(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[startUserB]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[startUserB]create socket successed ,socketfd is %d\n",socketfd);

	struct sockaddr_in addrSvr;
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(P2PCHAT_USER_A_PORT);
	addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");

	int connectResult = connect(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(connectResult < 0){
		close(socketfd);
		printf("[startUserB]connect socket failed ,socketfd is %d svrfd is %d\n",socketfd,connectResult);
		return;
	}
	printf("[startUserB]connect socket success ,socketfd is %d ,port is %d ,ip is %s ,connectResult is %d\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr),connectResult);

	pid_t pid = fork();

	if(pid<0){
		close(socketfd);
		perror("[startUserA] fork error");
		return;
	}else if(pid == 0){
		//子进程接收数据
		char recvBuf[1024];
		while(1){
			memset(&recvBuf,0,sizeof(recvBuf));
			int ret = read(socketfd,recvBuf,sizeof(recvBuf));
			if(ret<=0){
				printf("[startUserB]client error , quit chat!,read ret is %d\n",ret);
				exit(0);
			}
			printf("%s\n",recvBuf );
		}
	}else{
		//主进程发送数据
		char buf[512]={0};
		char sendbuf[1024]={0};
		char time[60]={0};
		while(fgets(buf,sizeof(buf),stdin)!=NULL){
			toDateTimeCh(time,0);
			sprintf(sendbuf,"[%s receive message from USER_B] : %s" ,time,buf);
			write(socketfd,sendbuf,strlen(sendbuf));
			memset(buf,0,sizeof(buf));
			memset(sendbuf,0,sizeof(sendbuf));
		}
		printf("[startUserB] main process quit!\n");
	}
}


