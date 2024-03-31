/*
 * readline.c
 *
 *  Created on: 2024年3月29日
 *      Author: sandro
 */

#include "readline.h"

char messages[][512] =
		{ "1\n", "12\n", "123\n", "1234\n", "1234567890abcdefg\n" };

void createReadlineServer() {
	int connfd = 0;
	int sockfd = createServerSocketWithSingleClient(READLINE_SERVER_PORT,
			&connfd);
	if (sockfd < 0) {
		return;
	}

	char recvbuf[512] = { 0 };
	while (1) {
		memset(&recvbuf, 0, sizeof(recvbuf));
		int readsize = readline(connfd, (char*) recvbuf, 128);
		if (readsize <= 0) {
			break;
		}
		printf("%s", recvbuf);
		write(connfd, recvbuf, strlen(recvbuf));
	}
	close(connfd);
	close(sockfd);
	sleep(1);
	printf("server close\n");
}

void createReadlineClient() {
	printf("gethostname--------------------------\n");
	//获取当前主机名称
	char hostname[64];
	int ret = gethostname(hostname,sizeof(hostname));
	if(ret < 0){
			perror("[createReadlineClient]gethostname error");
	}
	printf("[createReadlineClient]gethostname : %s \n",hostname);

	printf("gethostbyname--------------------------\n");
	//根据主机名获取ip
	struct hostent *host = gethostbyname(hostname);
	printhostent(host);

	printf("gethostbyaddr--------------------------\n");
	char ips[][64] = {"127.0.1.1","127.0.0.1","192.168.0.113"};
	int ipsLen = sizeof(ips) / sizeof(ips[0]);
	for(int i = 0;i<ipsLen;i++){
		char *ip = ips[i];
		printf("ip[%s] info : \n",ip);
		struct in_addr addr;
		inet_pton(AF_INET,ip,&addr);
		struct hostent *hostbyaddr  = gethostbyaddr((const char*)&addr,sizeof(addr),AF_INET);
		printhostent(hostbyaddr);
	}

	printf("start socket--------------------------\n");
	sleep(1);
	int sockfd = createClientSocket(READLINE_SERVER_PORT, "127.0.0.1");
	if (sockfd < 0) {
		return;
	}
	struct sockaddr_in localAddr;
	memset(&localAddr,0,sizeof(localAddr));
	socklen_t addrlen = sizeof(localAddr);

	//获取当前socket ip 和 port
	ret = getsockname(sockfd,(struct sockaddr *)&localAddr,&addrlen);
	if(ret < 0){
		perror("[createReadlineClient]getsocketname error");
	}
	char *clientIP = inet_ntoa(localAddr.sin_addr);
	printf("[createReadlineClient]getsocketname ip is %s ,port is %d\n",clientIP,ntohs(localAddr.sin_port));

	int msgcount = sizeof(messages) / sizeof(messages[0]);
	char recvbuf[512] = { 0 };
	for (int i = 0; i < msgcount; i++) {
		write(sockfd, messages[i], strlen(messages[i]));

		memset(&recvbuf, 0, sizeof(recvbuf));
		int readsize = readline(sockfd, (char*) recvbuf, 128);
		if (readsize <= 0) {
			break;
		}
		printf("%s", recvbuf);
		sleep(1);
	}
	close(sockfd);
}
