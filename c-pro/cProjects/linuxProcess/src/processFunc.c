/*
 * processFunc.c
 *  Created on: 2023年1月10日
 *      Author: sandro
 */
#include "processFunc.h"

void forkNPorcess(int n){
	printf("-------forkNPorcess [%d]--------\n",n);
	for(int i = 0;i<n;i++){
		pid_t pid = fork();
		if(pid<0){
			perror("[forkNPorcess] fork error");
			return;
		}else if(pid==0){
			printf("[forkNPorcess] son(%d) process %d created\n",i,getpid());
			break;//如当前进程是子进程，则不继续创建下一代进程
		}else{
			printf("[forkNPorcess] cress process success\n");
		}
	}
}

void forkTest(){
	printf("-------forkTest--------\n");
	pid_t pid = fork();
	if(pid<0){
		perror("fork error");
		return;
	}else if(pid == 0 ){
		sleep(2);
		//当父进程存活的时候，子进程的ppid不变，当父进程结束后，子进程是孤儿进程（父进程id是1，init进程,或者用户进程）
		printf("this son process ，pid : %d,ppid is %d \n ",getpid(),getppid());
	}else{
		//父进程的ppid是调用父进程的进程id,比如shell
		printf("this parent process,pid ：%d ,son pid is : %d ，ppid : %d\n",getpid(),pid,getppid());
	}
}
