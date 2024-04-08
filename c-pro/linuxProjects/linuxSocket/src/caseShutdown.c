/*
 * caseShutdown.c
 *
 *  Created on: 2024年4月2日
 *      Author: sandro
 */

#include "caseShutdown.h"

static void sigHandler(int sigNO){
	if(sigNO == SIGPIPE){
		timelog("get SIGPIPE signal");
	}
}

void shutdownServer() {
	int connfd;
	int sockfd = createServerSocketWithSingleClient(CASESHUTDOWN_PORT, &connfd);
	if (sockfd < 0) {
		return;
	}
//	signal(SIGPIPE,sigHandler);
	char recvbuf[1024];
	char sendbuf[1024];
	int count = 0;
	char time[64];
	while(1){
		memset(&recvbuf,0,sizeof(recvbuf));
		memset(&sendbuf,0,sizeof(sendbuf));
		int ret = read(connfd,recvbuf,sizeof(recvbuf));
		if(ret < 0){
			timelog("");
			perror("read error");
			break;
		}else if(ret == 0){
			timelog("read EOF,client quit");
			break;
		}
		memset(time,0,sizeof(time));
		toDateTimeCh(time,0);
		printf("[%s]read message : %s\n",time,recvbuf );
		sprintf(sendbuf,"server receive message[%d] success " ,count);

		sleep(5);
		ret = write(connfd,sendbuf,strlen(sendbuf));
		memset(time,0,sizeof(time));
		toDateTimeCh(time,0);
		printf("[%s] send msg[%d] ret is %d\n",time,count,ret);
		if(!strcmp(CASESHUTDOWN_MSG_OVER,recvbuf)){
			//客户端使用close来关闭，从log里可以看到在收到客户端关闭字符5秒后，依然可以写成功，但是此时TCP已经得到了RST段，
			//如果再次write则进程会收到SIGPIPE信号,并返回写错误。如果没有捕获/忽略SIGPIPE信号，进程会退出(在eclipse里执行server，进程不会退出，但是在shell终端运行，程序会退出)
			timelog("client is closed,process will get SIGPIPE signal!");
			ret = write(connfd,"1",1);
			printf("write ret is %d\n",ret);
			perror("write error");
		}
		if (!strcmp(CASESHUTDOWN_MSG_SHUTDOWN, recvbuf)) {
			//客户端使用shutdown来关闭连接，进程依然可以向socket写入数据，read会返回0
			timelog("client shutdown read pipe !");
			char *p = CASESHUTDOWN_MSG_SHUTDOWN;
			ret = write(connfd,p,sizeof(p));
			printf("last write ret is %d\n",ret);
		}

		count ++;

	}
	close(connfd);
	close(sockfd);
	timelog("process finish!");
}

void shutdownClient(int closeType) {
	int sockfd = createClientSocket(CASESHUTDOWN_PORT, "127.0.0.1");
	if (sockfd < 0) {
		return;
	}
	char time[64];
	char sendBuf[512];
	char recvBuf[512];
	for(int i=0;i<2;i++){
		memset(&sendBuf,0,sizeof(sendBuf));
		memset(&recvBuf,0,sizeof(recvBuf));

		sprintf(sendBuf,"message from client[%d] , sendNum is %d " ,getpid(),i);
		write(sockfd,sendBuf,strlen(sendBuf));

		int ret = read(sockfd,recvBuf,sizeof(recvBuf));
		if(ret<=0){
			perror("[shutdownClient] read error");
			break;
		}
		memset(time,0,sizeof(time));
		toDateTimeCh(time,0);
		printf("[%s] receive message from server : %s \n",time,recvBuf);
		sleep(1);
	}

	if(closeType == 0){
		char *last = CASESHUTDOWN_MSG_OVER;
		write(sockfd,last,strlen(last));
		close(sockfd);
		timelog("close socket!");
	}else{
		char *last = CASESHUTDOWN_MSG_SHUTDOWN;
		write(sockfd,last,strlen(last));
		shutdown(sockfd, SHUT_WR);
		timelog("shutdown socket write pipe,but can continue read !");
		while(1){
			memset(&recvBuf,0,sizeof(recvBuf));
			int ret = read(sockfd,recvBuf,sizeof(recvBuf));
			timelog(recvBuf);
			if(!strcmp(CASESHUTDOWN_MSG_SHUTDOWN, recvBuf)){
				break;
			}
			if(ret <=0){
				perror("shutdown read error");
				break;
			}
		}
	}
	sleep(10);//等一会儿再关闭，否则系统还是会用close来关闭所有的socket
	timelog("client quit!");

}


