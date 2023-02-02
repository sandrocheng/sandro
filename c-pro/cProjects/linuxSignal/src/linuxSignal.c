/*
 ============================================================================
 Name        : linuxSignal.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : linux 信号
 ============================================================================
 */

#include "linuxSignal.h"

int main(int argc,char* argv[]) {
	return checkArgs(argc,argv);
}


int checkArgs(int argc,char* argv[]){
	int returnNO = 0;
	printf("argc is %d\n",argc);
	for(int i=0;i<argc;i++){
		printf("argv[%d] is %s\n",i,argv[i]);
	}
	showHelp();
	if(argc <= 1){
		printf("请根据help选择命令参数");
		return 1;
	}else if(strcmp("rePS",argv[1])==0){
		registSigPipeSignal();
	}else if(strcmp("kill",argv[1]) == 0){
		killChilden();
	}else if(strcmp("RB",argv[1]) == 0){
		raiseAndAbort();
	}else if(strcmp("count",argv[1]) == 0){
		countByAlarm();
	}else if(strcmp("multiCount",argv[1]) == 0){
		countBySetitimer();
	}else if(strcmp("ss",argv[1]) == 0){
		sigSetTest();
	}else if(strcmp("sa",argv[1]) == 0){
		setSigaction();
	}
	return returnNO;
}

void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("sa ,使用sigaction函数注册一个定时信号\n");
	printf("ss,设置阻塞信号集，并读取阻塞信号集和未决信号集合\n");
	printf("rePS , 注册SIGPIPE信号，通过管道写入错误触发 SIGPIPE 信号\n");
	printf("kill ,fork出子进程，并使用kill函数发送信号，杀死所有子进程 \n");
	printf("RB ,注册SIGUSR1信号，并使用raise给自己发送，收到SIGUSR1后，使用abort终止当前进程 \n");
	printf("count ,使用alarm函数计时，检测1秒中内，可以作多少次+1运算\n");
	printf("=========================================================================================================================================================\n");
}
