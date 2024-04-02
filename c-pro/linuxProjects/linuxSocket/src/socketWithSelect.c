/*
 * socketWithSelect.c
 *
 *  Created on: 2024年4月1日
 *      Author: sandro
 */
#include "socketWithSelect.h"

void createSelectSocketServer(){
	int connfd = -1;
	int sockfd =  createServerSocketWithSingleClient(SOCKETWITHSELECT_PORT,&connfd);
	if(sockfd < 0){
		return;
	}
	char recvbuf[1024]={0};
	while(1){
		memset(&recvbuf,0,sizeof(recvbuf));
		int readsize = read(connfd,recvbuf,sizeof(recvbuf));
		if(readsize <=0 ){
			perror("[createSelectSocketServer] read error");
			break;
		}
		printf("get message from client : %s",recvbuf);
	}
	close(connfd);
	close(sockfd);
	printf("[createSelectSocketServer] over");
}

void createSelectSocketClient(){
	int sockfd = createClientSocket(SOCKETWITHSELECT_PORT, "127.0.0.1");
	if(sockfd < 0){
		return;
	}

	fd_set set; // 定义集合
	FD_ZERO(&set); //清空集合
	int nready = 0;//定义检测到的个数

	//获取标准输入流的文件描述符，STD_FILENO是默认的标准输入描述符(0),但是标准输入描述符可能会被重定向，所以直接从输入流中获取更合理
	int fd_stdin = fileno(stdin);
	int maxfd = (fd_stdin > sockfd)?fd_stdin : sockfd;
	printf("[createSelectSocketClient] maxfd : %d \n",maxfd);
	char recvBuf[1024];
	char sendBuf[1024];
	while(1){
		//往集合中添加标准输入描述符和socket文件描述符
		//因为集合中的数据是会改变的所以每次都添加一下
		FD_SET(fd_stdin,&set);
		FD_SET(sockfd,&set);
		nready = select(maxfd + 1,&set,NULL,NULL,NULL);//忽略 读集合，异常集合 ，超时
		if(nready < 0){
			perror("[createSelectSocketClient]select error");
			break;
		}else{
			//因为没有设置超时，nready就不会为0,如果设置了超时，就需要处理超时的返回业务
			if(FD_ISSET(sockfd,&set)){
				//检测到了套接口的可读事件
				memset(&recvBuf,0,sizeof(recvBuf));
				if (readSocket(sockfd, recvBuf, sizeof(recvBuf)) < 0) {
					break;
				}
			} else if (FD_ISSET(fd_stdin, &set)) {
				//检测到了标准输入的可读事件
				memset(&sendBuf, 0, sizeof(sendBuf));
				if (writeSocketFromStdin(sockfd, sendBuf, sizeof(sendBuf)) < 0) {
					break;
				}
			}
		}
	}
	close(sockfd);
	sleep(1);
	printf("[createSelectSocketClient] over!!!\n");
}

static int readSocket(int socketfd,char *buf,int buflen) {
	int ret = read(socketfd, buf, buflen);
	if (ret <= 0) {
		printf("[readSocket]read error ret is %d\n", ret);
		perror("[readSocket]read error");
		return -1;
	}
	printf("[readSocket] get message : %s\n", buf);
	return 0;
}

static int writeSocketFromStdin(int socketfd, char *buf, int buflen) {
	if (fgets(buf, buflen, stdin) == NULL) {
		return -1;
	}
	int ret = write(socketfd, buf, strlen(buf));
	if (ret < 0) {
		perror("[writeSocketFromStdin] write error");
		return -1;
	}
	return 0;
}


