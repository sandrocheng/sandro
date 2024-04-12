/*
 * socketpaircomm.c
 *
 *  Created on: 2024年4月11日
 *      Author: sandro
 */
#include "socketpaircomm.h"

static void subProcesswork(int sockfd);
static void mainProcesswork(int sockfd);

void createSocketpair(){
	int sockfds[2];
	//使用UNIX域的流协议创建socket
	int ret = socketpair(PF_UNIX,SOCK_STREAM,0,&sockfds);
	if(ret < 0){
		perror("socketpair error");
		return;
	}
	printf("socketpair success ,sockfd1 is %d,sockfd2 is %d\n",sockfds[0],sockfds[1]);

	pid_t pid = fork();
	if(pid < 0){
		perror("fork error");
		return;
	}else if(pid == 0){
		close(sockfds[1]);//在子进程中不使用sockfds[1]，直接关闭
		subProcesswork(sockfds[0]);
		close(sockfds[0]);
		return;
	}else{
		close(sockfds[0]);//在主进程中不使用sockfds[0]，直接关闭
		mainProcesswork(sockfds[1]);
		close(sockfds[1]);
	}
	while(1){
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

static void subProcesswork(int sockfd){
	printf("[subProcesswork] sockfds is %d,pid is %d\n",sockfd,getpid());
	char recvbuf[1024];
	char sendbuf[1024];
	int count = 0;
	while(1){
		memset(recvbuf,0,sizeof(recvbuf));
		int ret = read(sockfd,recvbuf,sizeof(recvbuf));
		if(ret < 0){
			if(ret == EINTR){
				continue;
			}
			perror("[subProcesswork] read error");
			break;
		}else if(ret == 0){
			timelog("[subProcesswork] read EOF,client close");
			break;
		}else{
			printf("[subProcesswork] read msg : %s\n",recvbuf);
		}

		memset(sendbuf,0,sizeof(sendbuf));
		sprintf(sendbuf,"[subProcesswork] send back to server %d",count++);
		write(sockfd, sendbuf, strlen(sendbuf));
	}
}

static void mainProcesswork(int sockfd){
	printf("[mainProcesswork] sockfds is %d,pid is %d\n",sockfd,getpid());
	char sendbuf[1024];
	char recvbuf[1024];
	for(int i = 0;i<3;i++){
		memset(sendbuf,0,sizeof(sendbuf));
		sprintf(sendbuf,"message from server num is %d",i);
		write(sockfd, sendbuf, strlen(sendbuf));

		memset(recvbuf,0,sizeof(recvbuf));
		int ret = read(sockfd,recvbuf,sizeof(recvbuf));
		if(ret < 0){
			if(ret == EINTR){
				continue;
			}
			perror("[mainProcesswork] read error");
			break;
		}else if(ret == 0){
			timelog("[mainProcesswork] read EOF,client close");
			break;
		}else{
			printf("[mainProcesswork] read msg : %s\n",recvbuf);
		}
	}
}
