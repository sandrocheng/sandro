/*
 * util.c
 *
 *  Created on: 2024年3月28日
 *      Author: sandro
 */

#include "util.h"

int createServerSocketWithSingleClient(int port, int *connfd) {
	int sockfd = createServerSocket(port);
	if (sockfd < 0) {
		return sockfd;
	}
	struct sockaddr_in clientAddr;
	socklen_t clientAddrLen = sizeof(struct sockaddr_in);
	int acceptfd = accept(sockfd, (struct sockaddr*) &clientAddr,
			&clientAddrLen);
	if (acceptfd < 0) {
		close(sockfd);
		printf(
				"[createServerSocketWithSingleClient]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",
				sockfd, clientAddrLen, acceptfd);
		perror("[createServerSocketWithSingleClient]accept socket failed");
		return -1;
	}
	char *clientIP = inet_ntoa(clientAddr.sin_addr);
	printf(
			"[createServerSocketWithSingleClient]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
			sockfd, acceptfd, clientIP, ntohs(clientAddr.sin_port));
	*connfd = acceptfd;
	return sockfd;
}

int createServerSocket(int port) {
	int socketfd = socket(AF_INET, SOCK_STREAM, 0);
	if (socketfd < 0) {
		printf("[createServerSocket]create socket failed ,socketfd is %d\n",
				socketfd);
		return -1;
	}
	printf("[createServerSocket]create socket successed ,socketfd is %d\n",
			socketfd);

	int on = 1;
	if (setsockopt(socketfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on)) < 0) {
		close(socketfd);
		perror("[createServerSocket]setsockopt failed");
		return -1;
	}

	struct sockaddr_in addrSvr;
	memset(&addrSvr, 0, sizeof(addrSvr));
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(port); //端口号需要设置为网络字节序
	addrSvr.sin_addr.s_addr = htonl(INADDR_ANY); //INADDR_ANY表示本机任意地址
	//addrSvr.sin_addr.s_addr = inet_addr("127.0.0.1");//也可以直接设置127.0.0.1，表示本机地址，如果是网络环境，需要设置当前网络地址
	//inet_aton("127.0.0.1",&addrSvr.sin_addr);//也可以这样赋值

	//绑定地址，因为参数是sockaddr所以这里强转一下，sockaddr_in是可以强转成sockaddr的
	int bindResult = bind(socketfd, (struct sockaddr*) &addrSvr,
			sizeof(addrSvr));
	if (bindResult < 0) {
		close(socketfd);
		printf("[createServerSocket]bind socket failed ,socketfd is %d\n",
				socketfd);
		perror("[createServerSocket]bind socket failed");
		return -1;
	}
	printf(
			"[createServerSocket]bind socket success ,socketfd is %d ,port is %d ,ip is %s\n",
			socketfd, ntohs(addrSvr.sin_port), inet_ntoa(addrSvr.sin_addr));

	int listenResult = listen(socketfd, SOMAXCONN);
	if (listenResult < 0) {
		close(socketfd);
		printf("[createServerSocket]listen socket failed ,socketfd is %d\n",
				socketfd);
		perror("[createServerSocket]listen socket failed");
		return -1;
	}
	printf("[createServerSocket]listen socket successed ,socketfd is %d\n",
			socketfd);

	return socketfd;
}

int createClientSocket(int port, char *ip) {
	int socketfd = socket(AF_INET, SOCK_STREAM, 0);
	if (socketfd < 0) {
		printf("[createClientSocket]create socket failed ,socketfd is %d\n",
				socketfd);
		perror("[createClientSocket]create socket failed");
		return -1;
	}
	printf("[createClientSocket]create socket successed ,socketfd is %d\n",
			socketfd);

	struct sockaddr_in addrSvr;
	addrSvr.sin_family = AF_INET;
	addrSvr.sin_port = htons(port);
	addrSvr.sin_addr.s_addr = inet_addr(ip);

	int connectResult = connect(socketfd, (struct sockaddr*) &addrSvr,
			sizeof(addrSvr));
	if (connectResult < 0) {
		close(socketfd);
		printf(
				"[createClientSocket]connect socket failed ,socketfd is %d svrfd is %d\n",
				socketfd, connectResult);
		perror("[createClientSocket]connect socket failed");
		return -1;
	}
	printf(
			"[createClientSocket]connect socket success ,socketfd is %d ,port is %d ,ip is %s ,connectResult is %d\n",
			socketfd, ntohs(addrSvr.sin_port), inet_ntoa(addrSvr.sin_addr),
			connectResult);
	return socketfd;
}

size_t readn(int fd, void *buf, size_t size) {
	size_t leftSize = size;
	ssize_t readSize;
	char *bufp = (char*) buf;

	while (leftSize > 0) {
		readSize = read(fd, bufp, leftSize);
		if (readSize < 0) {
			if (errno == EINTR) {
				//信号中断导致的返回值是-1，这种情况应该继续
				continue;
				printf("[readFixedData] get EINTR signal ,contiune ");
			} else {
				perror("[readFixedData] read erro ");
				return -1;
			}
		} else if (readSize == 0) {
			printf("[readFixedData] readSize is 0 \n");
			return size - leftSize;
		} else {
			bufp += readSize;	//将数组指针偏移，下一次从新的位值开始赋值
			leftSize -= readSize;
		}
	}

	return size;
}

ssize_t readline(int sockfd, void *buf, size_t maxLine) {
	int ret;
	int nread; //接收到的字节数
	char *bufp = buf;
	int nleft = maxLine;
	while (1) {
		ret = recvPeek(sockfd, bufp, nleft);
		if (ret < 0) {
			perror("[readline] recvPeek ret < 0");
			return ret;
		} else if (ret == 0) {
			perror("[readline] recvPeek ret = 0");
			return ret;
		} else {
			nread = ret;
			//判断接收到的字节中是否有 “\n”
			for (int i = 0; i < nread; i++) {
				if (bufp[i] == '\n') {
					ret = readn(sockfd, bufp, i + 1); //使用readn函数从缓冲区读i+1个数据(把‘\n’也读走)，读取后，缓冲区的数据就会被清除掉了。
					if (ret != i + 1) {
						perror("[readline] readn buf error");
						return -1;
					}
					return ret;
				}
			}
			//此时说明所有数据都没有\n
			if (nread > nleft) {
				//读取到的字节数不应该大于剩余的字节数
				printf("[readline] nread > nleft");
				return -1;
			}
			nleft -= nread;
			ret = readn(sockfd, bufp, nread); //先把数据读出来
			if (ret != nread) {
				printf("[readline] read buf error");
				return -1;
			}
			if (nleft == 0) { //如果都读完了还是没有'\n'，就返回所有数据
				return maxLine;
			}
			bufp += nread; //设置偏移量，下一次从新的位值开始判断是否有/n,之前数据已经保存到buffer中了。
		}
	}
	return -1;
}

ssize_t recvPeek(int sockfd, void *buf, size_t len) {
	while (1) {
		int ret = recv(sockfd, buf, len, MSG_PEEK);
		if (ret == -1 && errno == EINTR) {
			continue;
		}
		return ret;
	}
}

void printhostent(struct hostent *host) {
	if (host == NULL) {
		perror("[printhostent]host is NULL");
	} else {
		int i = 0;
		char allIP[1024] = { 0 };
		while (host->h_addr_list[i] != NULL) {
			struct in_addr addr = *(struct in_addr*) host->h_addr_list[i];
			strcat(allIP, inet_ntoa(addr));
			strcat(allIP, ",");
			i++;
		}
		//host->h_length是地址的字节数，可以用sizeof(host->h_addr_list)/host->h_length 得到以用有几个地址
		printf(
				"[printhostent] hostname is %s ,host->h_length is %d,all ip has %s \n",
				host->h_name, host->h_length, allIP);
		i = 0;
		char allalies[1024] = { 0 };
		if (host->h_aliases != NULL) {
			while (host->h_aliases[i] != NULL) {
				strcat(allalies, host->h_aliases[i]);
				strcat(allalies, ",");
				i++;
			}
		}
		if (i == 0) {
			printf("[printhostent] has no aliases \n");
		} else {
			printf("[printhostent] all aliases has %s \n", allalies);
		}
	}
}
