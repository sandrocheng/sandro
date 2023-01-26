/*
 * signalFunc.c
 *
 *  Created on: 2023年1月23日
 *      Author: sandro
 */
#include "signalFunc.h"

static void sighandler(int sigNO);

int global_count = 0;
int startCount = 0;
void countByAlarm(){
	printf("----------[countByAlarm]------------\n");
	char timeSTR[70];
	signal(SIGALRM,sighandler);
	toDateTimeCh(timeSTR,0);
	int n = alarm(1);
	printf("[countByAlarm-%s],set alarm %d return\n",timeSTR,n);
	global_count=0;
	while(startCount == 0){
		global_count ++;
	}
	toDateTimeCh(timeSTR,0);
	double result = (double)global_count/100000000;
	printf("[countByAlarm-%s],count finish ,global_count is %f亿\n",timeSTR,result);
}
void raiseAndAbort(){
	printf("----------[raiseAndAbort]------------\n");
	signal(SIGUSR1,sighandler);
	raise(SIGUSR1);
	sleep(20);
}

void killChilden(){
	printf("----------[killChilden]------------\n");
	int i;
	int count = 3;
	int children[count];
	for(i = 0;i<count;i++){
		pid_t pid = fork();
		if(pid == 0){
			break;
		}else if(pid > 0){
			children[i] = pid;
		}else{
			perror("[killChilden] fork error :");
			return;
		}
	}
	if(i==count){//只有父进程才能把所有循环走完
		sleep(1);
		printf("[killChilden] ps[%d] start kill all childen [%d] , [%d], [%d]\n",getpid(),children[0],children[1],children[2]);
		for(int j = 0;j< count;j++){
			int ret = kill(children[j], SIGKILL);
			if(ret==0){
				printf("[killChilden] kill %d success\n" , children[j]);
			}else{
				perror("[killChilden] kill error :");
			}
		}
		while(1){
			int status;
			pid_t sid = wait( &status);
			if(sid < 0){
				printf("[killChilden] all children dead\n");
				break;
			}else{
				if(WIFEXITED(status)){
					printf("son[%d] terminated normally,status is %d \n",sid,WEXITSTATUS(status));
				}else if(WIFSIGNALED(status)){
					printf("son[%d] was terminated by a signal[%d] \n",sid,WTERMSIG(status));
				}else{
					printf("son[%d] finished by other reason !",sid);
				}
			}
		}

	}else{
		printf("[killChilden] fork child process %d,\n",getpid());
		sleep(11);
	}
}

void registSigPipeSignal(){
	printf("----------[registSigPipeSignal]------------\n");
	sleep(1);
	int fd[2];
	int ret = pipe(fd);
	if(ret<0){
		perror("[registSigPipeSignal] pipe error");
		return;
	}
	//注册SIGPIPE信号处理函数
	signal(SIGPIPE,sighandler);
	close(fd[0]);//关闭读端，用于触发管道信号SIGPIPE
	ret = write(fd[1],"123",strlen("123"));//读端关闭后往管道写数据，系统会设置errno并发送SIGPIPE信号给进程
	if(ret < 0){
		perror("[registSigPipeSignal] write pipe error");
	}
	close(fd[1]);
}

/**
 * 信号处理函数，用于内核信号发生时的回调
 */
void sighandler(int sigNO){
	printf("[sighandler] get sigNO : %d \n",sigNO);
	if(sigNO == SIGPIPE){
		printf("[sighandler] get SIGPIPE! \n");
	}else if(sigNO == SIGUSR1){
		printf("[sighandler] get SIGUSR1! \n");
		abort();
	}else if(sigNO == SIGALRM){
		char timeSTR[70];
		toDateTimeCh(timeSTR,0);
		printf("[sighandler-%s] get SIGALRM! \n",timeSTR);
		startCount = 1;
	}
}
