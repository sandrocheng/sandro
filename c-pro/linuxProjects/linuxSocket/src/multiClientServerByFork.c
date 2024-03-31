/*
 * multiClientServer.c
 *
 *  Created on: 2024年3月24日
 *      Author: sandro
 */
#include "multiClientServerByFork.h"

void createMultiClientServerByFork(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[createMultiClientServerByFork]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[createMultiClientServerByFork]create socket successed ,socketfd is %d\n",socketfd);

	int on = 1;
	if(setsockopt(socketfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on))<0){
		close(socketfd);
		perror("[createMultiClientServerByFork]setsockopt failed");
		return;
	}

	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(MULTICLIENTSERVERBYFORK_SERVER_PORT);//端口号需要设置为网络字节序
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY);//INADDR_ANY表示本机任意地址
	//addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");//也可以直接设置127.0.0.1，表示本机地址，如果是网络环境，需要设置当前网络地址
	//inet_aton("127.0.0.1",&addrSvr.sin_addr);//也可以这样赋值

	//绑定地址，因为参数是sockaddr所以这里强转一下，sockaddr_in是可以强转成sockaddr的
	int bindResult = bind(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(bindResult < 0){
		close(socketfd);
		printf("[createMultiClientServerByFork]bind socket failed ,socketfd is %d\n",socketfd);
		perror("[createMultiClientServerByFork]bind socket failed");
		return;
	}
	printf("[createMultiClientServerByFork]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd,SOMAXCONN);
	if(listenResult < 0){
		close(socketfd);
		printf("[createMultiClientServerByFork]listen socket failed ,socketfd is %d\n",socketfd);
		perror("[createMultiClientServerByFork]listen socket failed");
		return;
	}
	printf("[createMultiClientServerByFork]listen socket successed ,socketfd is %d\n",socketfd);

	//因为使用的是ipv4协议，所以用sockaddr_in结构体接受数据，方便使用，在appcet的时候需要强转一下
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	pid_t pid;
	while(1){
		int acceptfd = accept(socketfd,(struct sockaddr*)&clientAddr,&clientAddrLen);
		if(acceptfd < 0){
			close(socketfd);
			printf("[createMultiClientServerByFork]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",socketfd,clientAddrLen,acceptfd);
			perror("[createMultiClientServerByFork]accept socket failed");
			return;
		}
		char *clientIP = inet_ntoa(clientAddr.sin_addr);
		printf("[createMultiClientServerByFork]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
				socketfd,acceptfd,clientIP,ntohs(clientAddr.sin_port));
		pid = fork();
		if(pid < 0){
			close(socketfd);
			perror("[createMultiClientServerByFork] fork error");
			return;
		}
		else if(pid == 0){
			printf("[createMultiClientServerByFork]fork successed ,pid is %d\n",getpid());
			//accept成功后，可以使用read阻塞读取acceptfd文件描述符中的数据
			char recvbuf[1024];
			char *backMessage = "server receive message success";
			while(1){
				memset(&recvbuf,0,sizeof(recvbuf));
				int ret = read(acceptfd,recvbuf,sizeof(recvbuf));
				if(ret <= 0){//客户端关闭或者出错就退出循环
					printf("[createMultiClientServerByFork-sub(%d)]client error ,read ret is %d\n",getpid(),ret);
					break;
				}
				printf("[createMultiClientServerByFork-sub(%d)]read message form conn[%d] : %s\n",getpid(),acceptfd,recvbuf );

				if(!strcmp("over",recvbuf)){
					break;
				}
				size_t msgSize = strlen(backMessage);
				write(acceptfd,backMessage,msgSize);
			}
			close(acceptfd);
			close(socketfd);
			printf("[createMultiClientServerByFork-sub(%d)] close\n",getpid());
			exit(EXIT_SUCCESS);//子进程退出
		}else{
			close(acceptfd);//子进程继承了acceptfd,父进程不需要处理,直接释放。
		}
	}
}

