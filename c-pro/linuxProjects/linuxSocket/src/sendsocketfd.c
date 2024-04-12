/*
 * sendsocketfd.c
 *
 *  Created on: 2024年4月12日
 *      Author: sandro
 */
#include "sendsocketfd.h"

/**
 * 发送socket描述字
 * sock_fd：对等方的socket描述字
 * send_fd：要发送的socket描述字
 *
 * return 成功，发送的字节长度；失败 -1
 */
static ssize_t send_fd(int sock_fd, int send_fd);

/**
 * 从sock_fd中读取传递过来的 socket描述字
 *
 * return 成功，发送过来的socket，描述字；失败 -1
 */
static ssize_t recv_fd(const int sock_fd);

static void subProcesswork(int sockfd);
static void mainProcesswork(int sockfd);

void sendsocketfd() {
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

/**
 * 子进程打开一个文件，并把打开的文件的文件描述符传递给父进程
 */
static void subProcesswork(int sockfd){
	char *path = "/tmp/sendsocketfd_2024.txt";
	int flags = O_RDWR | O_CREAT;
	int fd = open(path, flags, 0666);
	if (fd < 0) {
		//perror会输出文件打开错误原因
		perror("[subProcesswork]openFileTest open error");
		printf("[subProcesswork]file path is %s", path);
		return;
	} else {
		printf("[subProcesswork]open success,and fd is %d\n", fd);
	}
	char buf[128]={0};
	char time[64]={0};
	toDateTime(time, 0, 0);
	sprintf(buf,"open at time %s",time);
	write(fd,buf,strlen(buf));
	write(fd,"\0" ,1);
	close(fd);

	fd = open(path, flags, 0666);
	if (fd < 0) {
		perror("[subProcesswork]openFileTest reopen error");
		printf("[subProcesswork]file path is %s", path);
		return;
	} else {
		printf("[subProcesswork]reopen success,and fd is %d\n", fd);
	}
	int ret = send_fd(sockfd, fd);
	if(ret < 0){
		perror("[subProcesswork] send_fd error");
	}
	close(fd);
}

/**
 * 从子进程中获取文件描述字，并读取文件内容
 */
static void mainProcesswork(int sockfd){
	int fd = recv_fd(sockfd);
	if(fd < 0){
		return;
	}
	char buf[128];
	memset(buf,0,sizeof(buf));
	while (1) {
		int count = read(fd, buf, sizeof(buf));
		if (count == 0) {
			break;
		} else if (count == -1) {
			perror("readFile error");
			return;
		} else {
			printf("[mainProcesswork] read from subProcess fd[%d] : %s\n", fd,buf); //这种方法只能显示ASCII码上的字符，遇到汉字就不行了，
		}
	}
}

ssize_t recv_fd(const int sock_fd) {
	struct msghdr msg;
	char recvchar;
	struct iovec vec;
	int recv_fd;
	char cmsgbuf[CMSG_SPACE(sizeof(recv_fd))];
	struct cmsghdr *p_cmsg;
	int *p_fd;

	vec.iov_base = &recvchar;
	vec.iov_len = sizeof(recvchar);
	msg.msg_name = NULL;
	msg.msg_namelen = 0;
	msg.msg_iov = &vec;
	msg.msg_iovlen = 1;
	msg.msg_control = cmsgbuf;
	msg.msg_controllen = sizeof(cmsgbuf);
	msg.msg_flags = 0;

	p_fd = (int *)CMSG_DATA(CMSG_FIRSTHDR(&msg));//得到msg中数据区的首地址
	*p_fd = -1;//初始化控制信息的值为-1

	int ret = recvmsg(sock_fd,&msg,0);
	if(ret < 0){
		perror("[recv_fd]recvmsg error");
		return -1;
	}
	if(ret != 1){
		//send_fd中只发送了一个字节的数据，所以接收应该也只有一个数据
		printf("recv wrong message");
		return -1;
	}
	printf("[recv_fd] get msg iov : %c\n",recvchar);
	p_cmsg = CMSG_FIRSTHDR(&msg);//数据接收成功后，p_cmsg重新指向控制信息的第一个消息体
	if(p_cmsg == NULL){
		printf("[recv_fd]no pass fd msg\n");
		return -1;
	}
	p_fd = (int *)CMSG_DATA(p_cmsg);//获取消息体中数据区的首地址
	if(*p_fd == -1){
		printf("[recv_fd]no pass fd value\n");
		return -1;
	}
	return *p_fd;
}

static ssize_t send_fd(int sock_fd, int send_fd) {
	struct msghdr msg;
	struct cmsghdr *p_cmsg;

	//使用CMSG_SPACE来计算每个cmsghdr元素的大小，如果要传递多个cmsghdr,大小就应该是 n * CMSG_SPACE(sizeof(send_fd))
	//send_fd是4字节的，通过CMSG_SPACE就能计算传递一个fd需要的cmsghdr结构体的总大小。
	char cmsgbuf[CMSG_SPACE(sizeof(send_fd))];
	int *p_fds;
	msg.msg_control = cmsgbuf;
	msg.msg_controllen = sizeof(cmsgbuf);

	//将p_cmsg指针 指向 msg中的第一个控制信息的首地。msg中的msg_control已经使用CMS_SPACE分配好了大小，所以可以通过CMSG_FIRSTHDR来寻址了
	p_cmsg = CMSG_FIRSTHDR(&msg);
	p_cmsg->cmsg_level = SOL_SOCKET;	//指定控制信息传递的数据是socket描述符
	p_cmsg->cmsg_type = SCM_RIGHTS;
	p_cmsg->cmsg_len = CMSG_LEN(sizeof(send_fd));//使用send_fd计算每个控制信息(p_cmsg)的实际大小
	p_fds = (int*) CMSG_DATA(p_cmsg);	//将p_fds指针指向p_cmsg的数据区首地址
	*p_fds = send_fd;	//数据区的数据赋值为要发送的socket描述符

	struct iovec vec;
	msg.msg_name = NULL;
	msg.msg_namelen = 0;
	msg.msg_iov = &vec;
	msg.msg_iovlen = 1;
	msg.msg_flags = 0;

	//主消息体只发送1个字节的测试数据
	char sendchar = 's';
	vec.iov_base = &sendchar;
	vec.iov_len = sizeof(sendchar);

	return sendmsg(sock_fd, &msg, 0);
}
