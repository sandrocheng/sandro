/*
 * packetMsg.c
 *
 *  Created on: 2024年3月28日
 *      Author: sandro
 */

#include "packetMsg.h"


void packetMsgServer(){
	int socketfd = createServerSocket(PCKETMSG_SERVER_PORT);
	if(socketfd < 0){
		return;
	}
	//因为使用的是ipv4协议，所以用sockaddr_in结构体接受数据，方便使用，在appcet的时候需要强转一下
		struct sockaddr_in clientAddr;
		socklen_t clientAddrLen = sizeof(struct sockaddr_in);
		int acceptfd = accept(socketfd,(struct sockaddr*)&clientAddr,&clientAddrLen);
		if(acceptfd < 0){
			close(socketfd);
			printf("[createServerSocket]accept socket failed:socketfd is %d ,clientAddrLen is %d,acceptfd is %d\n",socketfd,clientAddrLen,acceptfd);
			perror("[createServerSocket]accept socket failed");
			return;
		}
		char *clientIP = inet_ntoa(clientAddr.sin_addr);
		printf("[packetMsgServer]accept a client ,socketfd is %d , acceptfd is %d,clientIp is %s,clientPort is %d\n",
				socketfd,acceptfd,clientIP,clientAddr.sin_port);

		struct msgPacket receiveMsg;
		struct msgPacket sendMsg;
		int msgLen = 0;
		char timeStr[60] = {0};
		while(1){
			memset (&receiveMsg,0,sizeof(receiveMsg));
			int ret = read(acceptfd,&receiveMsg.len,sizeof(int));//先读取int(4个字节)消息体长度
			if(ret < sizeof(int)){
				if(errno == EINTR && ret ==-1){
						//信号中断导致的返回值是-1，这种情况应该继续
						printf("[packetMsgServer] get EINTR signal ,contiune \n");
						continue;
				}else{
					printf("[packetMsgServer] read head ret :%d\n ",ret);
					//如果不足4个字节，可能是中途中断了，直接退出
					perror("[packetMsgServer] read head error");
					break;
				}
			}
			uint32_t len = ntohl(receiveMsg.len);
			printf("[packetMsgServer] get msg len is %dl \n",len);
			if(len == 0){
				continue;
			}
			ret = read(acceptfd,&receiveMsg.buf,len);
			if(ret < len){
				perror("[packetMsgServer] read buf error");
				break;
			}
			printf("[packetMsgServer-receive msg] %s\n",receiveMsg.buf);

			memset (&sendMsg,0,sizeof(sendMsg));
			memset (&timeStr,0,sizeof(timeStr));
			toDateTimeCh(timeStr,0);
			sprintf((char *)sendMsg.buf,"[%s]message from server back" ,timeStr);
			msgLen = strlen(sendMsg.buf);
			sendMsg.len = htonl(msgLen);//这里注意要统一字节序为网络字节序
			ret = write(acceptfd,&sendMsg,sizeof(int) + msgLen);
			printf("[packetMsgServer] send %d bytes to client\n",ret);
		}
		close(acceptfd);
		close(socketfd);
}

void packetMsgClient(){
	int socketfd = createClientSocket(PCKETMSG_SERVER_PORT,"127.0.0.1");
	if(socketfd < 0){
		return;
	}
	struct msgPacket sendMsg;
	int msgLen = 0;
	char timeStr[60] = {0};
	struct msgPacket receiveMsg;
	for(int i=0;i<10;i++){
		memset (&sendMsg,0,sizeof(sendMsg));
		memset (&timeStr,0,sizeof(timeStr));
		toDateTimeCh(timeStr,0);
		sprintf((char *)sendMsg.buf,"[%s]message from client , sendNum is %d " ,timeStr,i);
		msgLen = strlen(sendMsg.buf);
		sendMsg.len = htonl(msgLen);//这里注意要统一字节序为网络字节序
		write(socketfd,&sendMsg,sizeof(int) + msgLen);//要发送的数据实际上是msgPacket.len(4个字节) + msgPacket.buf(实际字符的长度)

		memset (&receiveMsg,0,sizeof(receiveMsg));
		int ret = read(socketfd,&receiveMsg.len,sizeof(int));//先读取int(4个字节)消息体长度
		if(ret < sizeof(int)){
			printf("[packetMsgClient] read head ret is %d",ret);
			perror("[packetMsgClient] read head error");
			break;
		}
		uint32_t len = ntohl(receiveMsg.len);
		printf("[packetMsgClient] get msg len is %d \n",len);
		if(len == 0){
			continue;
		}
		ret = read(socketfd,&receiveMsg.buf,len);
		if(ret < len){
			perror("[packetMsgClient] read buf error");
			break;
		}
		printf("[packetMsgClient] msg : %s\n",receiveMsg.buf);
		sleep(1);
	}
}
