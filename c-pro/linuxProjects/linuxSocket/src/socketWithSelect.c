/*
 * socketWithSelect.c
 *
 *  Created on: 2024年4月1日
 *      Author: sandro
 */
#include "socketWithSelect.h"
/**
 * 读取socket中的数据
 * return -1,流读取失败;0，成功
 */
static int readSocket(int socketfd, char *buf, int buflen);

/**
 * 从标准输入流中获取数据并发送给服务器
 */
static int writeSocketFromStdin(int socketfd, char *buf, int buflen);

/**
 * 服务段处理连接
 * clients:用于保存所有的accept连接描述符，数组种默认每个元素都是-1(表示空闲)，如果所有描述符都不是-1，当前的socket连接将会被舍弃
 * clientSize:clients数组的长度，
 * return : 小于 0 失败；0 成功
 */
static int handleAcceptSocket(int socketfd, int clients[], int clientSize);

/**
 * 向socket中读写数据
 */
static int readAndWriteMessage(int socketfd);

void createSelectSocketServer() {
	int sockfd = createServerSocket(UTIL_H_COMMON_PORT);
	if (sockfd < 0) {
		return;
	}

	//定义一个数组保存所有accept返回的socket连接描述符，
	//大小是select最大值-4(因为select中已经保存了一个当前的socket描述符,并且 0 1 2是固定给标准输入、输出、错误描述符的),
	//并初始化每个元素都是-1；
	int clientsize = FD_SETSIZE - 4;
	int clients[clientsize];
	for (int i = 0; i < clientsize; i++) {
		clients[i] = -1;
	}
	int nready;
	fd_set rset; //监听读集合
	fd_set allset;//因为select中会对rset做修改，所以用allset做临时变量，每次select之前都重新给rset赋值。
	FD_ZERO(&rset);
	FD_ZERO(&allset);
	FD_SET(sockfd, &allset);
	int maxfd = sockfd;
	while (1) {
		//fd_set是一个struct结构体，可以通过"="进行赋值
		rset = allset;

		//重新计算maxfd的值
		maxfd = sockfd;
		for (int i = 0; i < clientsize; i++) {
			if (clients[i] > maxfd) {
				maxfd = clients[i];
			}
		}
		printf("[createSelectSocketServer]wait for select and maxfd is %d\n", maxfd);

		nready = select(maxfd + 1, &rset, NULL, NULL, NULL);
		if (nready < 0) {
			if (errno == EINTR) { //被信号中断导致解除阻塞，可以继续执行
				continue;
			}
			perror("select error");
			break;
		} else {
			//没有设置超时，所以不可能返回0
			//sockfd现在是监听套接口，当监听套接口发生可读事件，说明有连接完成了，此时调用accept方法将不再阻塞
			if (FD_ISSET(sockfd, &rset)) {
				int acceptfd = handleAcceptSocket(sockfd, clients, clientsize);
				if (acceptfd < 0) {
					break;
				} else if (acceptfd > 0) {
					FD_SET(acceptfd, &allset);			//将连接描述符添加到allset集合中去
				}
				if (--nready <= 0) {
					continue;
				}
			}
			for (int i = 0; i < clientsize; i++) {
				if (clients[i] > 0) {
					if(FD_ISSET(clients[i],&rset)){
						if(readAndWriteMessage(clients[i])<0){
							FD_CLR(clients[i], &allset);
							close(clients[i]);
							clients[i] = -1;
						}
						if(--nready <=0){
							break;
						}
					}
				}
			}
		}
	}
}

static int readAndWriteMessage(int socketfd){
	char recvbuf[1024]={0};
	char *sendbuf = "server get message success";
	int ret = read(socketfd,recvbuf,sizeof(recvbuf));
	if (ret <= 0) {
		printf("[readAndWriteMessage]read error ret is %d\n", ret);
		perror("[readAndWriteMessage]read error");
		return -1;
	}
	printf("[readSocket] get message : %s\n", recvbuf);
	write(socketfd,sendbuf,strlen(sendbuf));
	return 0;
}

static int handleAcceptSocket(int sockfd, int clients[], int clientSize) {
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	int acceptfd = accept(sockfd, (struct sockaddr*) &clientAddr,
			&clientAddrLen);
	if (acceptfd < 0) {
		close(sockfd);
		printf(
				"[handleAcceptSocket]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",
				sockfd, clientAddrLen, acceptfd);
		perror("[handleAcceptSocket]accept socket failed");
		return -1;
	}
	char *clientIP = inet_ntoa(clientAddr.sin_addr);
	printf(
			"[handleAcceptSocket]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
			sockfd, acceptfd, clientIP, ntohs(clientAddr.sin_port));
	int i;
	for (i = 0; i < clientSize; i++) {
		if (clients[i] < 0) {
			clients[i] = acceptfd;
			break;
		}
	}
	if (i >= clientSize) {
		//说明都遍历完了，没有位值了，舍弃当前socket描述符
		close(acceptfd);
		fprintf(stderr, "too many clients\n");
		return 0;
	}
	return acceptfd;
}

void createSelectSocketClient() {
	int sockfd = createClientSocket(UTIL_H_COMMON_PORT, UTIL_H_COMMON_IP);
	if (sockfd < 0) {
		return;
	}

	fd_set set; // 定义集合
	FD_ZERO(&set); //清空集合
	int nready = 0; //定义检测到的个数

	//获取标准输入流的文件描述符，STD_FILENO是默认的标准输入描述符(0),但是标准输入描述符可能会被重定向，所以直接从输入流中获取更合理
	int fd_stdin = fileno(stdin);
	int maxfd = (fd_stdin > sockfd) ? fd_stdin : sockfd;
	printf("[createSelectSocketClient] maxfd : %d \n", maxfd);
	char recvBuf[1024];
	char sendBuf[1024];
	while (1) {
		//往集合中添加标准输入描述符和socket文件描述符
		//因为集合中的数据是会改变的所以每次都添加一下
		FD_SET(fd_stdin, &set);
		FD_SET(sockfd, &set);
		nready = select(maxfd + 1, &set, NULL, NULL, NULL);	//忽略 读集合，异常集合 ，超时
		if (nready < 0) {
			perror("[createSelectSocketClient]select error");
			break;
		} else {
			//因为没有设置超时，nready就不会为0,如果设置了超时，就需要处理超时的返回业务
			if (FD_ISSET(sockfd, &set)) {
				//检测到了套接口的可读事件
				memset(&recvBuf, 0, sizeof(recvBuf));
				if (readSocket(sockfd, recvBuf, sizeof(recvBuf)) < 0) {
					break;
				}
			} else if (FD_ISSET(fd_stdin, &set)) {
				//检测到了标准输入的可读事件
				memset(&sendBuf, 0, sizeof(sendBuf));
				if (writeSocketFromStdin(sockfd, sendBuf, sizeof(sendBuf))
						< 0) {
					break;
				}
			}
		}
	}
	close(sockfd);
	sleep(1);
	printf("[createSelectSocketClient] over!!!\n");
}

static int readSocket(int socketfd, char *buf, int buflen) {
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
	char sendBuf[1024];
	sprintf(sendBuf, "[%d] : %s", getpid(), buf);
	int ret = write(socketfd, sendBuf, strlen(sendBuf));
	if (ret < 0) {
		perror("[writeSocketFromStdin] write error");
		return -1;
	}
	return 0;
}

