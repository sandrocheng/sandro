/*
 ============================================================================
 Name        : linuxDaemon.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : 守护进程创建
 ============================================================================
 */

#include "linuxDaemon.h"
#include "tools.h"

char logdir[200];//守护进程工作目录路径
char logPath[200];
int logFD=-1;
int main(int argc, char *argv[]) {
	if (createDIR(logdir,sizeof(logdir)) != 0) {
		return -1;
	}
	int flags = O_RDWR|O_CREAT|O_APPEND;
	strcat(logPath,logdir);
	strcat(logPath,"/log.txt");
	logFD = open(logPath,flags,0666);
	printf("[%s] ,fd[%d]",logPath,logFD);
	if(logFD < 0){
		return -1;
	}
	pid_t pid = fork();
	if(pid<0 || pid >0){//创建子进程，然后父进程退出
		exit(1);
	}

	createDaemon();
	return EXIT_SUCCESS;
}

void createDaemon(){
	//子进程调用setsid函数创建会话
	setsid();

	//改变当前的工作目录
	chdir(logdir);

	//改变文件掩码
	umask(0022);//0000也可以，相当于所有权限都可以

	//关闭文件描述符
    close(STDIN_FILENO);
	close(STDOUT_FILENO);
	close(STDERR_FILENO);

	//核心操作
	if(working() !=0){
		exit(1);
	}

	int i = 10;
	while(i>0){
		i --;
		sleep(1);
	}
	filelog(logFD,"daemon quit");
	close(logFD);
}

int working(){
	struct sigaction act;
	act.sa_flags = 0;
	act.sa_handler = sigHandler;
	int ret = sigemptyset(&act.sa_mask);
	if(ret!=0){
		return -1;
	}
	if (sigaction(SIGALRM, &act, NULL) != 0) {
		return -1;
	}
	struct itimerval tm;
	tm.it_interval.tv_sec = 1;
	tm.it_interval.tv_usec = 0;
	tm.it_value.tv_sec = 1;
	tm.it_value.tv_usec = 0;
	ret = setitimer(ITIMER_REAL, &tm,NULL);
	if(ret != 0){
		return -1;
	}
	filelog(logFD,"create daemon success");
	return 0;
}

void filelog(int fd,char *logstr){
	char str[100];
	toDateTimeCh(str,0);
	char log[200];
	sprintf(log,"[%s] %s\n",str,logstr);
	write(fd,log,strlen(log));
}

void sigHandler(int sigNO){
	if(SIGALRM == sigNO){
		filelog(logFD,"daemon working");
	}
}

int createDIR(char *path, size_t size){
	memset(path, 0, size);
	getcwd(path, size);
	if (strlen(path) == 0) {
		perror("[createDIR] getcwd error ");
		return -1;
	}
	strcat(path, "/tmp");
	int fileExist = access(path, F_OK); //判断文件是否存在
	if (fileExist != 0) {
		umask(0022);
		int ret = mkdir(path, 0777);
		umask(0022);
		if (ret != 0) {
			perror("[createDIR] mkdir error");
			return -1;
		}
		printf("working dir[%s] create success\n", path);
	} else {
		printf("working dir[%s] exist\n", path);
	}
	return 0;
}
