/*
 * socketwithepoll.c
 *
 *  Created on: 2024年4月9日
 *      Author: sandro
 */
#include "socketwithepoll.h"

/*
* 服务端处理新的连接，把新的连接放到clients数组中去并设置可读事件被监听
* return : 小于 0 失败；0 成功
*/
static int handleAcceptSocket(int sockfd, int epollfd);

void createEPollSocketSvr(){
	//系统默认每个进程能打开1024个文件描述符，设置到2048，保证epoll可以监控到所有的连接
	struct rlimit rl;
	rl.rlim_max = 2048;
	rl.rlim_cur = 2048;
	if(setrlimit(RLIMIT_NOFILE,&rl) < 0){
		perror("setrlimit error");
		return;
	}

	int sockfd = createServerSocket(UTIL_H_COMMON_PORT);
	if (sockfd < 0) {
		return;
	}

	//创建epll实例，得到epoll的文件描述符
	int epollfd = epoll_create(EPOLL_CLOEXEC);
	if(epollfd < 0){
		perror("epoll_create error");
		return;
	}

	//创建事件，设置要关心的事件和文件描述符
	struct epoll_event event;
	event.data.fd = sockfd;
	event.events = EPOLLIN ;//监听文件是否可读，事件类型是边缘触发
	epoll_ctl(epollfd,EPOLL_CTL_ADD,sockfd,&event);

	//创建接收事件的数组，长度是10，每次返回最多收10个
	struct epoll_event events[SOCKETWITHEPOLL_H_CLIENTSIZE];
	memset(&events,0,sizeof(events));
	for(int i = 0;i<SOCKETWITHEPOLL_H_CLIENTSIZE;i++){
		events[i].data.fd = -1;
	}
	int nready;
	while(1){
		nready = epoll_wait(epollfd,events,SOCKETWITHEPOLL_H_CLIENTSIZE,-1);
		if(nready == -1){
			if(errno == EINTR){
				continue;
			}else{
				perror("epoll_wait error");
				break;
			}
		}
		if(nready == 0){//设置没有超时，实际上走不到这里
			continue;
		}
		for(int i = 0;i< nready;i++){
			if(events[i].data.fd == sockfd){
				int acceptfd = handleAcceptSocket(sockfd,epollfd);
				if (acceptfd < 0) {
					break;
				}
				if (--nready <= 0) {
					continue;
				}
			}else if(events[i].events & EPOLLIN){
				int conn = events[i].data.fd;
				if(conn < 0){
					continue;
				}
				char recvbuf[1024]={0};
				int ret = read(conn,recvbuf,sizeof(recvbuf));
				if (ret <= 0) {
					char log[64] = { 0 };
					if (ret < 0) {
						sprintf(log, "read error ret is %d,client fd is %d\n",
								ret, conn);
						perror(log);
					} else {
						printf("read EOF,fd[%d] is closed\n", conn);
					}
					close(conn);
					epoll_ctl(epollfd,EPOLL_CTL_DEL,conn,&event);
				}else{
					char *log[128];
					sprintf(log,"[createEPollSocketSvr] get message : %s", recvbuf);
					timelog(log);
				}
			}
		}
	}
}

static int handleAcceptSocket(int sockfd, int epollfd){
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

	struct epoll_event event;
	event.data.fd = acceptfd;
	event.events = EPOLLIN ;//监听文件是否可读，事件类型是边缘触发
	epoll_ctl(epollfd,EPOLL_CTL_ADD,acceptfd,&event);
	return 0;
}

