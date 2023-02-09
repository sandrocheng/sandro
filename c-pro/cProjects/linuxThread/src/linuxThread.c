/*
 ============================================================================
 Name        : linuxThread.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : linux线程
 ============================================================================
 */
#include "linuxThread.h"


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
	}else if(strcmp("ct",argv[1]) == 0){
		createThread();
	}else if(strcmp("ctarg",argv[1]) == 0){
		createArgThread();
	}else if(strcmp("ctargstruct",argv[1]) == 0){
		createStructArgThread();
	}else if(strcmp("create5Threads",argv[1]) == 0){
		create5Threads();
	}
	else if(strcmp("detach",argv[1]) == 0){
		detachThread();
	}else if(strcmp("cancel",argv[1]) == 0){
		cancelThread();
	}else if(strcmp("cdt",argv[1]) == 0){
		createDetachedThread();
	}else if(strcmp("synch",argv[1]) == 0){
		synchronizationTest(0);
		synchronizationTest(1);
	}else if(strcmp("rwlock",argv[1]) == 0){
		rwlockTest();
	}else if(strcmp("cond",argv[1]) == 0){
		condFunc();
	}
	return returnNO;
}

void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("synch ,使用多个线程对一个全局变量分别做加法，查看同步和不同步的计算结果是什么\n");
	printf("cdt ,使用线程属性，创加一个分离线程\n");
	printf("cancel ,创建一个线程，并尝试取消该线程\n");
	printf("detach ,创建一个线程，并使用pthread_detach设置线程分离\n");
	printf("ct ,创建线程\n");
	printf("ctarg ,创建带基础类型参数的线程\n");
	printf("ctargstruct ,创建带struct参数的线程\n");
	printf("create5Threads ,创建5个线程，并在每个线程内输出线程创建的序号,0号线程自动退出,通过pthread_join，保证线程结束后，主线程再退出\n");
	printf("rwlock ,使用读写锁对共享资源进行线程安全保护，7个读线程，3个写线程\n");
	printf("cond,使用条件变量实现一个生产者消费者模型\n");
	printf("=========================================================================================================================================================\n");
}
