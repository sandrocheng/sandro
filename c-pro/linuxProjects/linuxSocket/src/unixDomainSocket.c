/*
 * unixDomainSocket.c
 *
 *  Created on: 2024年4月11日
 *      Author: sandro
 */

#include "unixDomainSocket.h"

void unixDomainSvr(){
	int connfd = 0;
	int sockfd = createUNIXDOMServerWithSingleClient(&connfd,UTIL_H_COMMON_UNIX_DOMAIN_PATH);
	if(sockfd < 0){
		unlink(UTIL_H_COMMON_UNIX_DOMAIN_PATH);
		return;
	}
	char buf[1024];
	while(1){
		memset(&buf,0,sizeof(buf));
		int ret = read(connfd,buf,sizeof(buf));
		if(ret < 0){
			if(ret == EINTR){
				continue;
			}
			perror("[unixDomainSvr] read error");
			break;
		}else if(ret == 0){
			timelog("[unixDomainSvr] read EOF,client close");
			break;
		}else{
			printf("[unixDomainSvr] read msg : %s\n",buf);
		}
	}
	close(connfd);
	close(sockfd);
	unlink(UTIL_H_COMMON_UNIX_DOMAIN_PATH);
	timelog("server quit success");
}

void unixDomainCli(){
	int socketfd = socket(PF_UNIX,SOCK_STREAM, 0);
	if (socketfd < 0) {
		perror("[createUNIXDOMServerWithSingleClient]create socket failed");
		return ;
	}
	struct sockaddr_un servaddr;
	memset(&servaddr,0,sizeof(servaddr));
	servaddr.sun_family = AF_UNIX;
	strcpy(servaddr.sun_path,UTIL_H_COMMON_UNIX_DOMAIN_PATH);

	int ret = connect(socketfd,(struct sockaddr*)&servaddr,sizeof(servaddr));
	if(ret < 0){
		perror("[unixDomainCli]connect socket failed");
		return ;
	}
	char sendBuf[512];
	for(int i = 0;i<3;i++){
		memset(&sendBuf,0,sizeof(sendBuf));
		sprintf(sendBuf,"message from client[%d] , sendNum is %d " ,getpid(),i);
		write(socketfd,sendBuf,strlen(sendBuf));
		sleep(1);
	}
	close(socketfd);
	timelog("[unixDomainCli] quit ");
}
