/*
 * signalFunc.c
 *
 *  Created on: 2023年1月23日
 *      Author: sandro
 */
#include "signalFunc.h"

static void sighandler(int sigNO);
static void timerHandler(int sigNO);
static void sigSetTest_timeHandler(int sigNO);
static void setSigaction_timeHandler(int sigNO);
static int registSig();
static void ipcSigHandler(int sigNO);

#define MMAP_SIZE 4096

long global_count = 0;
int startCount = 0;
void *mmapAdd = NULL;
char mmap_buff[256];
int sonPid = 0;
int sonquit = 1;
int fatherQuit = 1;
void ipcBySignalMMap(){
	printf("----------[ipcBySignalMMap]------------\n");
	mmapAdd = mmap(NULL,MMAP_SIZE,PROT_READ|PROT_WRITE,MAP_SHARED|MAP_ANONYMOUS,-1,0);
	sigset_t set;
	int ret = sigemptyset(&set);
	if(ret != 0){
		perror("[ipcBySignalMMap] sigemptyset-1 error");
		return;
	}

	if(sigaddset(&set,SIGCHLD) != 0){
		perror("[ipcBySignalMMap] sigaddset SIGCHLD error");
		return;
	}
	if(sigaddset(&set,SIGUSR1) != 0){
		perror("[ipcBySignalMMap] sigaddset SIGUSR1 error");
		return;
	}
	if(sigaddset(&set,SIGUSR2) != 0){
		perror("[ipcBySignalMMap] sigaddset SIGUSR2 error");
		return;
	}
	//先阻塞住要监听的信号，避免信号遗漏
	ret =  sigprocmask(SIG_BLOCK, &set, NULL);

	int pid = fork();

	if(pid>0){
		sonPid = pid;
		ret = registSig(&set);
		printf("F registSig finish [%d]\n",ret);
		memset(mmapAdd,0,MMAP_SIZE);
		startCount = 5;
		sprintf(mmap_buff,"%d",startCount);
		memcpy(mmapAdd, mmap_buff, strlen(mmap_buff));
		ret = kill(sonPid, SIGUSR1);
		printf("F init finish send SIGUSR1 ret is %d\n",ret);
		while(fatherQuit){
			sleep(1);
		}
		printf("father finish\n");
	}else if(pid == 0){
		registSig(&set);

		while(sonquit){
			sleep(1);
		}
	}else{
		perror("[ipcBySignalMMap] fork error");
	}
}

void ipcSigHandler(int sigNO){
	if(sigNO == SIGUSR2){
		printf("[%d]get SIGUSR2\n",getpid());
		if(startCount>=0){
			startCount--;
			sprintf(mmap_buff,"%d",startCount);
			memcpy(mmapAdd, mmap_buff, strlen(mmap_buff));
			kill(sonPid, SIGUSR1);
		}
	}else if(sigNO == SIGUSR1){
		char buff[256];
		memset(buff,0x00,sizeof(buff));
		memcpy(buff,mmapAdd,sizeof(buff));
		printf("[%d]get SIGUSR1,data is: %s\n",getpid(),buff);
		kill(getppid(), SIGUSR2);
		if(strcmp("-1",buff) == 0){
			sonquit = 0;
		}
	}else if(sigNO == SIGCHLD){
		printf("[ipcSigHandler] get SIGCHLD\n");
		while(1){
			int wstatus;
			pid_t sid = waitpid(-1, &wstatus, WNOHANG);
			if (sid > 0) {
				if (WIFEXITED(wstatus)) {
					printf("son[%d] terminated normally,status is %d \n",
							sid, WEXITSTATUS(wstatus));
				} else if (WIFSIGNALED(wstatus)) {
					printf("son[%d] was terminated by a signal[%d] \n",
							sid, WTERMSIG(wstatus));
				} else {
					printf("son[%d] finished by other reason !", sid);
				}
			} else if (sid == -1) {
				perror("waitpid error");
				fatherQuit = 0;
				break;
			}else{
				break;
			}
		}
	}
}

int registSig(sigset_t *set){
	struct sigaction act;
	act.sa_flags = 0;
	act.sa_handler = ipcSigHandler;
	int ret = sigemptyset(&act.sa_mask);
	if (ret != 0) {
		perror("[registSig] sigemptyset error");
		return -1;
	}
	if (sigaction(SIGCHLD, &act, NULL) != 0) {
		perror("[registSig] sigaction SIGCHLD error");
		return -1;
	}
	if (sigaction(SIGUSR1, &act, NULL) != 0) {
		perror("[registSig] sigaction SIGUSR1 error");
		return -1;
	}
	if (sigaction(SIGUSR2, &act, NULL) != 0) {
		perror("[registSig] sigaction SIGUSR2 error");
		return -1;
	}
	//注册完成，解除信号的阻塞
	ret = sigprocmask(SIG_UNBLOCK, set, NULL);
	return ret;
}

void sigChldTest(){
	printf("----------[sigChldTest]------------\n");
	startCount = 0;
	sigset_t set;
	int ret = sigemptyset(&set);
	if(ret != 0){
		perror("[setSigaction] sigemptyset-1 error");
		return;
	}
	ret = sigaddset(&set,SIGCHLD);
	if(ret != 0){
		perror("[setSigaction] sigaddset error");
		return;
	}

	//先阻塞住SIGCHLD信号，避免主线程注册前子进程就退出，导致僵尸进程的情况
	ret =  sigprocmask(SIG_BLOCK, &set, NULL);
	if(ret != 0){
		perror("[setSigaction] sigprocmask error");
		return;
	}

	int i=0;
	for(;i<3;i++){
		pid_t pid = fork();
		if(pid < 0){
			perror("fork error");
			return;
		}else if(pid == 0){
			break;
		}
	}
	if (i == 3) {
		//此时SIGCHLD被阻塞，此时子进程结束也没有关系，等到解除阻塞的时候，依然会收到SIGCHLD信号去回收子进程
		struct sigaction act;
		act.sa_flags = 0;
		act.sa_handler = sighandler;
		ret = sigemptyset(&act.sa_mask);
		if(ret != 0){
			perror("[setSigaction] sigemptyset error");
			return;
		}
		ret = sigaction(SIGCHLD, &act,NULL);
		if(ret !=0 ){
			perror("[setSigaction] sigaction error");
			return;
		}

		//注册完成，解除SIGCHLD信号的阻塞
		ret =  sigprocmask(SIG_UNBLOCK, &set, NULL);
		if(ret != 0){
			perror("[setSigaction] sigprocmask-2 error");
			return;
		}

		while(startCount == 0){
			sleep(1);
		}
		printf("[sigChldTest] fp finish\n");
	} else if (i < 3) {
		printf("[sigChldTest] sp(%d) finish\n", getpid());
	}
}

void setSigaction(){
	printf("----------[setSigaction]------------\n");
	struct sigaction act;
	startCount = 0;
	act.sa_flags = 0;
	act.sa_handler = setSigaction_timeHandler;
	int ret = sigemptyset(&act.sa_mask);
	if(ret != 0){
		perror("[setSigaction] sigemptyset error");
		return;
	}

	ret = sigaction(SIGALRM, &act,NULL);
	if(ret !=0 ){
		perror("[setSigaction] sigaction error");
		return;
	}
	struct itimerval tm;
	tm.it_interval.tv_sec = 1;
	tm.it_interval.tv_usec = 0;
	tm.it_value.tv_sec = 1;
	tm.it_value.tv_usec = 0;
	ret = setitimer(ITIMER_REAL, &tm,NULL);
	if(ret != 0){
		perror("[setSigaction] setitimer error");
	}
	while(startCount < 5){
		sleep(1);
	}
}

void setSigaction_timeHandler(int sigNO){
	if(SIGALRM == sigNO){
		startCount ++;
		char timeStr[100];
		toDateTimeCh(timeStr,0);
		printf("[setSigaction_timeHandler] - %s\n",timeStr);
	}
}

void sigSetTest(){
	printf("----------[sigSetTest]------------\n");
	startCount=0;
	signal(SIGALRM,sigSetTest_timeHandler);
	struct itimerval tm;
	tm.it_interval.tv_sec = 1;
	tm.it_interval.tv_usec = 0;
	tm.it_value.tv_sec = 1;
	tm.it_value.tv_usec = 0;
	int ret = setitimer(ITIMER_REAL, &tm,NULL);
	printf("setitimer ret is %d\n",ret);
	sigset_t set;
	sigemptyset(&set);
	int addret = sigaddset(&set,SIGALRM);

	while(1){
		startCount ++;
		sleep(1);
		if(startCount>10){
			printf("[sigSetTest] quit\n");
			return;
		}else if (startCount == 2){

			if(addret!=0){
				perror("[sigSetTest] sigaddset error\n");
				return;
			}
			int ret = sigprocmask(SIG_BLOCK, &set, NULL);
			if(ret != 0){
				perror("[sigSetTest] sigprocmask SIG_BLOCK error\n");
				return;
			}
			printf("[sigSetTest] 设置阻塞信号集SIGALRM为阻塞 持续3秒\n");

		}else if(startCount == 5){
			sigset_t pendingSet;
			sigemptyset(&pendingSet);
			int ret = sigpending(&pendingSet);
			if(ret != 0){
				perror("[sigSetTest] sigpending error\n");
				return;
			}
			ret = sigismember(&pendingSet,SIGALRM);
			if(ret == 1){
				printf("[sigSetTest] SIGALRM 在未决信号集当中\n");
			}else if(ret == 0){
				printf("[sigSetTest] SIGALRM 不在未决信号集当中\n");
			}else{
				perror("[sigSetTest] sigismember error\n");
				return;
			}

			printf("当前未决信号集：\n");
			for(int i = 1;i<32;i++){
				ret = sigismember(&pendingSet,i);
				printf("%d",ret);
			}
			printf("\n");

			printf("[sigSetTest] 设置阻塞信号集SIGALRM 不阻塞\n");
			ret = sigprocmask(SIG_UNBLOCK, &set, NULL);
			if(ret != 0){
				perror("[sigSetTest] sigprocmask SIG_UNBLOCK error\n");
				return;
			}
		}
	}
}

void sigSetTest_timeHandler(int sigNO){
	if(sigNO!=SIGALRM){
		return;
	}
	char timeStr[70];
	toDateTimeCh(timeStr,0);
	printf("[sigSetTest_timeHandler] -- %s \n",timeStr);
}

#define countBySetitimer_TOTAL_COUNT 10
int countBySetitimer_current = 0;
void countBySetitimer(){
	printf("----------[countBySetitimer]------------\n");
	global_count = 0;
	signal(SIGALRM,timerHandler);
	struct itimerval tm;
	tm.it_interval.tv_sec = 1;
	tm.it_interval.tv_usec = 0;
	tm.it_value.tv_sec = 1;
	tm.it_value.tv_usec = 0;
	int ret = setitimer(ITIMER_REAL, &tm,NULL);
	printf("setitimer ret is %d\n",ret);
	while(countBySetitimer_current<countBySetitimer_TOTAL_COUNT){
		global_count++;
	}
}

void timerHandler(int sigNO){
	if(SIGALRM != sigNO){
		return;
	}
	countBySetitimer_current ++;
	double savage = (double)global_count/countBySetitimer_current/100000000;
	printf("第%d次[%ld]，平均值：%lf亿\n",countBySetitimer_current,global_count,savage);
}

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
	}else if(sigNO == SIGCHLD){
		printf("[sighandler] get SIGCHLD\n");
		while(1){
			int wstatus;
			pid_t sid = waitpid(-1, &wstatus, WNOHANG);
			if (sid > 0) {
				if (WIFEXITED(wstatus)) {
					printf("son[%d] terminated normally,status is %d \n",
							sid, WEXITSTATUS(wstatus));
				} else if (WIFSIGNALED(wstatus)) {
					printf("son[%d] was terminated by a signal[%d] \n",
							sid, WTERMSIG(wstatus));
				} else {
					printf("son[%d] finished by other reason !", sid);
				}
			} else if (sid == -1) {
				startCount = 1;
				perror("waitpid error");
				break;
			}else{
				break;
			}
		}
	}
}
