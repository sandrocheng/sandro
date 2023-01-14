/*
 * processFunc.c
 *  Created on: 2023年1月10日
 *      Author: sandro
 */
#include "processFunc.h"

int forkAndWaitpid(int n) {
	printf("-------forkAndWaitpid n:[%d] --------\n", n);
	char *ctstr = (char*) calloc(128, sizeof(char));
	for (int i = 0; i < n; i++) {
		pid_t id = fork();
		if (id == 0) {
			toDateTimeCh(ctstr, 0);
			printf("{%s} son[%d] created\n", ctstr, getpid());
			sleep(1 + i * 2);
			free(ctstr);
			return (1 + i * 2);
		} else if (id < 0) {
			perror("create process error");
		}
	}
	while (1) {
		int wstatus;
		pid_t sid = waitpid(-1, &wstatus, WNOHANG);
		if (sid > 0) {
			toDateTimeCh(ctstr, 0);
			if (WIFEXITED(wstatus)) {
				printf("{%s} son[%d] terminated normally,status is %d \n",
						ctstr, sid, WEXITSTATUS(wstatus));
			} else if (WIFSIGNALED(wstatus)) {
				printf("{%s} son[%d] was terminated by a signal[%d] \n", ctstr,
						sid, WTERMSIG(wstatus));
			} else {
				printf("{%s} son[%d] finished by other reason !", ctstr, sid);
			}
		} else if (sid == -1) {
			perror("waitpid error");
			break;
		}
		sleep(1);
	}
	toDateTimeCh(ctstr, 0);
	printf("[%s] all son process finished\n", ctstr);
	free(ctstr);
	return 0;
}

void forkAndWait(int n){
	printf("-------forkAndWait n:[%d] --------\n",n);
	for(int i = 0;i<n;i++){
		pid_t pid = fork();
		if(pid == 0){
			printf("son[%d] created\n",getpid());
			sleep(45);
			break;
		}else if(pid<0){
			perror("create process error");
		}
	}
	while(1){
		int status;
		pid_t id = wait(&status);
		if(id < 0){
			printf("all son process finished\n");
			return;
		}
		if(WIFEXITED(status)){
			printf("son[%d] terminated normally,status is %d \n",id,WEXITSTATUS(status));
		}else if(WIFSIGNALED(status)){
			printf("son[%d] was terminated by a signal[%d] \n",id,WTERMSIG(status));
		}else{
			printf("son[%d] finished by other reason !",id);
		}
	}
}
void execCMD(int argc ,char* argv[]){
	printf("-------execCMD [%s]--------\n",argv[2]);
	char* subargv[5] = {NULL,NULL,NULL,NULL,NULL};
	int len = argc > 8? 8 : argc;
	for(int i = 3;i<len;i++){
		subargv[i-3] = argv[i];
	}
	for(int i=0;i< 5;i++){
		if(subargv[i] != NULL){
			printf("[execCMD] sub arg :%d,%s\n",i,subargv[i]);
		}
	}

	pid_t pid = fork();
	if(pid == 0){
		sleep(1);
		printf("start cmd: %s %s %s %s %s %s \n",argv[2],subargv[0] ,subargv[1] ,subargv[2] ,subargv[3] ,subargv[4]);
		execlp(argv[2],argv[2],subargv[0] ,subargv[1] ,subargv[2] ,subargv[3] ,subargv[4] ,NULL );
		perror("[execCMD] execlp error");
	}else if(pid < 0){
		perror("[execCMD] fork error");
	}else if(pid > 0){
		printf("[execCMD] fork success \n");
	}
}

void execfile(int argc ,char* argv[]){
	printf("-------forkNPorcess [%s] [%s]--------\n",argv[2],argv[3]);
	char* subargv[5] = {NULL,NULL,NULL,NULL,NULL};
	int len = argc>9?9:argc;
	for(int i=4;i<len;i++){
		subargv[i-4] = argv[i];
	}
	for(int i=0;i< 5;i++){
		if(subargv[i] != NULL){
			printf("[forkNPorcess] sub arg :%d,%s\n",i,subargv[i]);
		}
	}

	pid_t pid = fork();
	if(pid==0){
		execl(argv[2],argv[3],argv[4],argv[5],argv[6],argv[7],argv[8],argv[9],NULL);
		perror("[forkNPorcess] execl error");//如果打印这句话，肯定是调用失败了
	}else if(pid < 0 ){
		perror("[forkNPorcess] fork error");
	} else{
		printf("[forkNPorcess]  fork success\n");
	}
}

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
		printf("this son process ，pid : %d,ppid is %d \n ",getpid(),getppid());
		sleep(2);
		//当父进程存活的时候，子进程的ppid不变，当父进程结束后，子进程是孤儿进程（父进程id是1，init进程,或者用户进程）
		printf("this son process ，pid : %d,ppid is %d \n ",getpid(),getppid());
	}else{
		//父进程的ppid是调用父进程的进程id,比如shell
		printf("this parent process,pid ：%d ,son pid is : %d ，ppid : %d\n",getpid(),pid,getppid());
	}
}
