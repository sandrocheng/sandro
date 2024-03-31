/*
 * fixedMessage.c
 *
 *  Created on: 2024年3月26日
 *      Author: sandro
 */

#include "fixedMessage.h"

void fixedMsgClient(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[fixedMsgClient]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[fixedMsgClient]create socket successed ,socketfd is %d\n",socketfd);

	struct sockaddr_in addrSvr;
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(FIXEDMESSAGE_SERVER_PORT);
	addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");

	int connectResult = connect(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(connectResult < 0){
		close(socketfd);
		printf("[fixedMsgClient]connect socket failed ,socketfd is %d svrfd is %d\n",socketfd,connectResult);
		return;
	}
	printf("[fixedMsgClient]connect socket success ,socketfd is %d ,port is %d ,ip is %s ,connectResult is %d\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr),connectResult);

	char sendBuf[1024]={0};
	char recvBuf[1024]={0};
	for(int i=0;i<10;i++){
		memset(&sendBuf,0,sizeof(sendBuf));
		memset(&recvBuf,0,sizeof(recvBuf));

		sprintf(sendBuf,"message from client[%d] , sendNum is %d " ,getpid(),i);
		sendFixedData(socketfd,sendBuf,sizeof(sendBuf));
		int readsize = readFixedData(socketfd,recvBuf, sizeof(recvBuf));
		if(readsize <= 0){
			printf("[fixedMsgClient] read server msg error readsize is %d",readsize);
			break;
		}
		printf("[fixedMsgClient] receive message from server : %s \n",recvBuf);
		sleep(1);
	}
}

void fixedMsgServer(){
	int socketfd = socket(AF_INET,SOCK_STREAM,0);
	if(socketfd < 0){
		printf("[fixedMsgServer]create socket failed ,socketfd is %d\n",socketfd);
		return ;
	}
	printf("[fixedMsgServer]create socket successed ,socketfd is %d\n",socketfd);

	int on = 1;
	if(setsockopt(socketfd,SOL_SOCKET,SO_REUSEADDR,&on,sizeof(on))<0){
		close(socketfd);
		perror("[fixedMsgServer]setsockopt failed");
		return;
	}

	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(FIXEDMESSAGE_SERVER_PORT);//端口号需要设置为网络字节序
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY);//INADDR_ANY表示本机任意地址
	//addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");//也可以直接设置127.0.0.1，表示本机地址，如果是网络环境，需要设置当前网络地址
	//inet_aton("127.0.0.1",&addrSvr.sin_addr);//也可以这样赋值

	//绑定地址，因为参数是sockaddr所以这里强转一下，sockaddr_in是可以强转成sockaddr的
	int bindResult = bind(socketfd,(struct sockaddr*)&addrSvr,sizeof(addrSvr));
	if(bindResult < 0){
		close(socketfd);
		printf("[fixedMsgServer]bind socket failed ,socketfd is %d\n",socketfd);
		perror("[fixedMsgServer]bind socket failed");
		return;
	}
	printf("[fixedMsgServer]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
				socketfd,ntohs(addrSvr.sin_port),inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd,SOMAXCONN);
	if(listenResult < 0){
		close(socketfd);
		printf("[fixedMsgServer]listen socket failed ,socketfd is %d\n",socketfd);
		perror("[fixedMsgServer]listen socket failed");
		return;
	}
	printf("[fixedMsgServer]listen socket successed ,socketfd is %d\n",socketfd);

	//因为使用的是ipv4协议，所以用sockaddr_in结构体接受数据，方便使用，在appcet的时候需要强转一下
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	int acceptfd = accept(socketfd,(struct sockaddr*)&clientAddr,&clientAddrLen);
	if(acceptfd < 0){
		close(socketfd);
		printf("[fixedMsgServer]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",socketfd,clientAddrLen,acceptfd);
		perror("[fixedMsgServer]accept socket failed");
		return;
	}
	char *clientIP = inet_ntoa(clientAddr.sin_addr);
	printf("[fixedMsgServer]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
			socketfd,acceptfd,clientIP,ntohs(clientAddr.sin_port));
	//accept成功后，可以使用read阻塞读取acceptfd文件描述符中的数据
	char recvbuf[1024]={0};
	char time[60]={0};
	char backMessage[1024]={0};
	while(1){
		//这种写法，服务端只能从队列中拿到一个客户端连接，当客户端连接断开以后，服务器端也就结束了
		//实际上socket是可以获取多个客户端连接并发操作的
		memset(&recvbuf,0,sizeof(recvbuf));
		memset(&backMessage,0,sizeof(backMessage));
		int readsize = readFixedData(acceptfd,recvbuf,sizeof(recvbuf));
		if(readsize <=0){
			break;
		}
		printf("[fixedMsgServer]read message(%d bytes) : %s\n",readsize,recvbuf );
		toDateTimeCh(time,0);
		sprintf(backMessage,"[%s] received message from client " ,time);
		int sendsize = sendFixedData(acceptfd,backMessage,sizeof(backMessage));
		printf("[fixedMsgServer]send msg(%d bytes) success\n",sendsize);
	}
	close(acceptfd);
	close(socketfd);
	printf("[fixedMsgServer] close\n");
}

static size_t readFixedData(int fd,void *buf, size_t size){
	size_t leftSize = size;
	ssize_t readSize ;
	char *bufp = (char*)buf;

	while(leftSize>0){
		readSize = read(fd,bufp,leftSize);
		if(readSize < 0){
			if(errno == EINTR){
					//信号中断导致的返回值是-1，这种情况应该继续
					continue;
					printf("[readFixedData] get EINTR signal ,contiune ");
			}else{
				perror("[readFixedData] read erro ");
				return -1;
			}
		}
		else if(readSize == 0){
			printf("[readFixedData] readSize is 0 \n");
			return size - leftSize;
		}else{
			bufp +=readSize;//将数组指针偏移，下一次从新的位值开始赋值
			leftSize -= readSize;

		}
	}

	return size;
}

static int sendFixedData(int fd,void *buf,size_t size){
	size_t leftSize = size;
	int writtenSize;
	char* bufp = buf;
	while(leftSize > 0){
		writtenSize = write(fd,bufp,leftSize);
		if(writtenSize< 0){
			if(errno == EINTR){
				printf("[sendFixedData] get EINTR signal ,contiune");
				continue;
			}
			perror("[sendFixedData] read erro ");
			return -1;
		}else if(writtenSize == 0){
			printf("[sendFixedData] writtenSize is 0 ,contiune");
			continue;
		}else{
			leftSize -= writtenSize;
			bufp += writtenSize;
		}
	}
	return size;
}
