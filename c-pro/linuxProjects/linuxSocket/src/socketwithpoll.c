/*
 * socketwithpoll.c
 *
 *  Created on: 2024年4月9日
 *      Author: sandro
 */

#include "socketwithpoll.h"

/*
* 服务端处理新的连接，把新的连接放到clients数组中去并设置可读事件被监听
* clients:用于保存所有的accept连接描述符，数组种默认每个元素的fd都是-1(表示空闲)，如果所有描述符都不是-1，当前的socket连接将会被舍弃
* clientSize:clients数组的长度，
* return : 小于 0 失败；0 成功
*/
static int handleAcceptSocket(int sockfd, struct pollfd clients[], int clientSize);

void createPollSocketSvr(){
	int sockfd = createServerSocket(UTIL_H_COMMON_PORT);
	if (sockfd < 0) {
		return;
	}
	//定义一个数组保存所有accept返回的poll连接描述符，
	struct pollfd clients[SOCKETWITHPOLL_H_CLIENTSIZE];
	memset(&clients,0,sizeof(clients));
	for (int i = 0; i < SOCKETWITHPOLL_H_CLIENTSIZE; i++) {
		clients[i].fd = -1;//并初始化每个文件描述符都是-1，表示当前状态是空闲的
	}
	clients[0].fd = sockfd;//设置第一值是当前的sockfd
	clients[0].events = POLLIN;//设置监听的事件为可读事件
	int nready;

	//系统默认每个进程能打开1024个文件描述符，设置到2048，保证poll可以监控到所有的连接
	struct rlimit rl;
	rl.rlim_max = 2048;
	rl.rlim_cur = 2048;
	if(setrlimit(RLIMIT_NOFILE,&rl) < 0){
		perror("setrlimit error");
		return;
	}

	while (1) {
		nready = poll(clients, SOCKETWITHPOLL_H_CLIENTSIZE, -1);
		if (nready == -1) {
			if (errno == EINTR) {
				continue;
			} else {
				perror("[createPollSocketSvr]poll error");
				break;
			}
		} else if (nready == 0) {
			continue; //因为没有设置超时，实际上不会走到这里
		} else {
			if (clients[0].revents & POLLIN) {
				//第一个fd是监听socket的描述符,当它产生了可读事件，说明可以通过accept立刻得到连接了
				int acceptfd = handleAcceptSocket(clients[0].fd, clients,
				SOCKETWITHPOLL_H_CLIENTSIZE);
				if (acceptfd < 0) {
					break;
				}
				if (--nready <= 0) {
					continue;
				}
			}
			for (int i = 1; i < SOCKETWITHPOLL_H_CLIENTSIZE; i++) {
				if (clients[i].fd == -1) {
					continue;
				}
				if (clients[i].events & POLLIN) {
					char recvbuf[1024] = { 0 };
					int ret = read(clients[i].fd, recvbuf, sizeof(recvbuf));
					if (ret <= 0) {
						char log[64] = { 0 };
						if (ret < 0) {
							sprintf(log,
									"read error ret is %d,client fd is %d\n",
									ret, clients[i].fd);
							perror(log);
						} else {
							printf("read EOF,fd[%d] is closed\n",
									clients[i].fd);
						}
						close(clients[i].fd);
						clients[i].fd = -1;
					} else {
						char *log[128];
						sprintf(log, "[createPollSocketSvr] get message : %s",
								recvbuf);
						timelog(log);
					}
				}
			}
		}
	}
}

static int handleAcceptSocket(int sockfd, struct pollfd clients[], int clientSize){
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
		if (clients[i].fd < 0) {
			clients[i].fd = acceptfd;
			clients[i].events = POLLIN;
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

void createPollSocketCli(){
	for (int i = 0; i < 5; i++) {
		pid_t id = fork();
		if (id == 0) {
			printf("[%d] subprocess created\n",getpid());

			int sockfd = createClientSocket(UTIL_H_COMMON_PORT,
					UTIL_H_COMMON_IP);
			if (sockfd < 0) {
				return;
			}
			char sendbuf[128];
			for (int j = 0; j < 5; j++) {
				memset(&sendbuf, 0, sizeof(sendbuf));
				sprintf(sendbuf, "[%d] message num : %d", getpid(), j);
				int ret = write(sockfd, sendbuf, strlen(sendbuf));

				memset(&sendbuf, 0, sizeof(sendbuf));
				sprintf(sendbuf,"[%d] send message %d ,ret is %d",getpid(),j,ret);
				timelog(sendbuf);
				sleep(2);
			}
			close(sockfd);
			return;
		} else if (id < 0) {
			perror("[createPollSocketCli]create process error\n");
		}
	}

	while (1) {
		int wstatus;
		pid_t sid = waitpid(-1, &wstatus, WNOHANG);
		if (sid > 0) {
			printf("sub process[%d] finished\n",sid);
		} else if (sid == -1) {
			timelog("all sub process finished!");
			return;
		}
		sleep(1);
	}


}
