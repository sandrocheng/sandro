/*
 * timeoutsocket.c
 *
 *  Created on: 2024年4月7日
 *      Author: sandro
 */

#include "timeoutsocket.h"

void createtimeoutSvr() {
	int connfd;
	//10秒中只内，没有客户端连接则退出
	int sockfd = createServerSocketWithSingleClientTimeout(TIMEOUTSOCKET_PORT,&connfd,10);
	if (sockfd < 0) {
		if(errno == ETIMEDOUT){
			timelog("[createtimeoutSvr] no client accept in 10 sec,process quit");
		}
		return;
	}
	char recvbuf[1024];
	while (1) {
		memset(&recvbuf, 0, sizeof(recvbuf));
		int ret = read_timeout_check(connfd, 5); //读操作最多等待5秒
		if (ret == 0) {
			ret = read(connfd, recvbuf, sizeof(recvbuf));
			if (ret == 0) {
				timelog("get EOF,client close");
				break;
			}
			if (ret < 0) {
				perror("[createtimeoutSvr] read error");
				break;
			}
		} else if (ret == -1 && errno == ETIMEDOUT) {
			timelog("[createtimeoutSvr]read timeout,continue");
			continue;
		} else if (ret < -1) {
			timelog("[createtimeoutSvr] read_timeout_check error");
			perror("[createtimeoutSvr] read_timeout_check return -1");
			break;
		}
		timelog(recvbuf);
	}
	close(connfd);
	close(sockfd);
	timelog("process finish!");
}

void createtimeoutCli() {
	int sockfd = createClientSocketinTime(TIMEOUTSOCKET_PORT, "127.0.0.1",5);
	if(sockfd < 0){
		timelog("createClientSocketinTime error ");
		return ;
	}
	char sendBuf[512];
	for (int i = 0; i < 4; i++) {
		sleep(3 + i);
		memset(&sendBuf, 0, sizeof(sendBuf));
		sprintf(sendBuf, "message from client[%d] , sendNum is %d ", getpid(),
				i);

		int ret = write_timeout_check(sockfd, 2); //读操作最多等待2秒,当写缓冲区有空间的时候就会返回，一般很难会阻塞住
		if (ret == 0) {
			ret = write(sockfd, sendBuf, strlen(sendBuf));
			if (ret < 0) {
				perror("[createtimeoutCli] write error");
				break;
			}
		} else if (ret == -1 && errno == ETIMEDOUT) {
			timelog("[createtimeoutCli]write timeout,continue");
			continue;
		} else if (ret < -1) {
			timelog("[createtimeoutCli] write_timeout_check error");
			perror("[createtimeoutCli] write_timeout_check return -1");
			break;
		}
		memset(&sendBuf, 0, sizeof(sendBuf));
		sprintf(sendBuf, "message[%d] send ,ret is %d", i, ret);
		timelog(sendBuf);
	}
	close(sockfd);
	timelog("all messages sent success,client colse");
}
