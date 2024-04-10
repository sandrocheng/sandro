/*
 * udpsocket.c
 *
 *  Created on: 2024年4月10日
 *      Author: sandro
 */

#include "udpsocket.h"

static void subPorcessdo();

void createUDPSvr(){
	int socketfd = createAndBindSocket(UTIL_H_COMMON_PORT,SOCK_DGRAM);
	if(socketfd < 0){
		return;
	}
	receiveUDPClientData(socketfd);
	close(socketfd);
	timelog("createUDPSvr quit success");
}

void createUDPCli(){
	for (int i = 0; i < 3; i++) {
		pid_t id = fork();
		if (id == 0) {
			printf("[%d] subprocess created\n",getpid());
			subPorcessdo();
			return;
		} else if (id < 0) {
			perror("[createUDPCli]create process error\n");
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

static void subPorcessdo(){
	int socketfd = socket(AF_INET, SOCK_DGRAM, 0);
	if (socketfd < 0) {
		printf("[createUDPCli-%d]create socket failed ,socketfd is %d\n",
				getpid(),socketfd);
		return ;
	}
	struct sockaddr_in addrSvr;
	memset(&addrSvr,0,sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(UTIL_H_COMMON_PORT);
	addrSvr.sin_addr.s_addr = inet_addr(UTIL_H_COMMON_IP);
	//先connect之后，sendto可就可以不指定地址了，因为当前socket已经绑定了对方的地址。
	//有一种说法，是先connect,然后再recvfrom，如果对等方close了，recvfrom会返回错误，
	//这里没能够复现，先connect再recvfrom，即使对等方close,recvfrom也一直是阻塞的，可能和内核的版本有关。
	int ret = connect(socketfd, (struct sockaddr*) &addrSvr, sizeof(addrSvr));
	if (ret < 0) {
		perror("connect server error,quit");
		return;
	}
	printf("[createUDPCli-%d]connect socket success \n",getpid());
	char sendbuf[512] = {0};
	for(int i = 0;i< 3 ;i++){
		memset(sendbuf,0,sizeof(sendbuf));
		sprintf(sendbuf,"message [%d] from client[%d]",i,getpid());
		//先connect之后，sendto可就可以不指定地址了，因为当前socket已经绑定了对方的地址。
		int ret = sendUDPMsg(socketfd,0,NULL,sendbuf,strlen(sendbuf));
		if(ret < 0){
			break;
		}else{
			printf("[%d]send message[%d] success\n",getpid(),i);
			char recvbuf[1];
			ret = recvfrom(socketfd,recvbuf,1,0,NULL,NULL);
			if(ret == -1){
				if(errno == EINTR){
					continue;
				}
				perror("recvfrom error quit");
				return;
			}else{
				printf("[%d]get server response\n",getpid());
			}
		}
		sleep(2);
	}
	close(socketfd);
	char log[64];
	sprintf(log,"[%d] quit success",getpid());
	timelog(log);
}
