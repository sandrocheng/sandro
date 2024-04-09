/*
 * multiClientServer.c
 *
 *  Created on: 2024年3月24日
 *      Author: sandro
 */
#include "multiClientServerByFork.h"

/**
 * 注册SIGCHLD信号
 *
 * return : 0,成功; -1,失败
 */
static int regSignal();

/**
 * 信号回调函数
 */
static void sighandler(int sigNO);

void createMultiClientServerByFork() {
	int socketfd = createServerSocket(UTIL_H_COMMON_PORT);
	if (socketfd < 0) {
		return;
	}

	if (regSignal() < 0) {
		return;
	}
	//因为使用的是ipv4协议，所以用sockaddr_in结构体接受数据，方便使用，在appcet的时候需要强转一下
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	pid_t pid;
	while (1) {
		memset(&clientAddr, 0, sizeof(clientAddr));
		int acceptfd = accept(socketfd, (struct sockaddr*) &clientAddr,
				&clientAddrLen);
		if (acceptfd < 0) {
			if (errno == EINTR) { //因为注册了信号，当执行信号回调的时候主进程会中断，此时是会收到-1的。直接跳过就可以了。
				printf(
						"[createMultiClientServerByFork] accept EINTR error ,ignore");
				continue;
			}
			close(socketfd);
			printf(
					"[createMultiClientServerByFork-%d]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",
					getpid(), socketfd, clientAddrLen, acceptfd);
			perror("[createMultiClientServerByFork]accept socket failed");
			return;
		}
		char *clientIP = inet_ntoa(clientAddr.sin_addr);
		printf(
				"[createMultiClientServerByFork]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
				socketfd, acceptfd, clientIP, ntohs(clientAddr.sin_port));
		pid = fork();
		if (pid < 0) {
			close(socketfd);
			perror("[createMultiClientServerByFork] fork error");
			return;
		} else if (pid == 0) {
			printf("[createMultiClientServerByFork]fork successed ,pid is %d\n",
					getpid());
			//accept成功后，可以使用read阻塞读取acceptfd文件描述符中的数据
			char recvbuf[1024];
			char *backMessage = "server receive message success";
			while (1) {
				memset(&recvbuf, 0, sizeof(recvbuf));
				int ret = read(acceptfd, recvbuf, sizeof(recvbuf));
				if (ret <= 0) { //客户端关闭或者出错就退出循环
					printf(
							"[createMultiClientServerByFork-sub(%d)]client error ,read ret is %d\n",
							getpid(), ret);
					break;
				}
				printf(
						"[createMultiClientServerByFork-sub(%d)]read message form conn[%d] : %s\n",
						getpid(), acceptfd, recvbuf);

				if (!strcmp("over", recvbuf)) {
					break;
				}
				size_t msgSize = strlen(backMessage);
				write(acceptfd, backMessage, msgSize);
			}
			close(acceptfd);
			close(socketfd);
			printf("[createMultiClientServerByFork-sub(%d)] close\n", getpid());
			exit(EXIT_SUCCESS); //子进程退出
		} else {
			close(acceptfd); //子进程继承了acceptfd,父进程不需要处理,直接释放。
		}
	}
}

static void sighandler(int sigNO) {
	printf("[sighandler] get sigNO : %d \n", sigNO);
	if (sigNO == SIGCHLD) {
		printf("[sighandler] get SIGCHLD\n");
		while (1) {
			int wstatus;
			pid_t sid = waitpid(-1, &wstatus, WNOHANG);
			if (sid > 0) {
				if (WIFEXITED(wstatus)) {
					printf("son[%d] terminated normally,status is %d \n", sid,
							WEXITSTATUS(wstatus));
				} else if (WIFSIGNALED(wstatus)) {
					printf("son[%d] was terminated by a signal[%d] \n", sid,
							WTERMSIG(wstatus));
				} else {
					printf("son[%d] finished by other reason !", sid);
				}
			} else if (sid == -1) {
				perror("waitpid error");
				break;
			} else {
				break;
			}
		}
	}
}

static int regSignal() {
	sigset_t set;
	int ret = sigemptyset(&set);
	if (ret != 0) {
		perror("[regSignal] sigemptyset error");
		return -1;
	}
	ret = sigaddset(&set, SIGCHLD);
	if (ret != 0) {
		perror("[regSignal] sigaddset error");
		return -1;
	}

	struct sigaction act;
	act.sa_flags = 0;
	act.sa_handler = sighandler;
	ret = sigaction(SIGCHLD, &act, NULL);
	if (ret != 0) {
		perror("[regSignal] sigaction error");
		return -1;
	}
	return 0;
}

