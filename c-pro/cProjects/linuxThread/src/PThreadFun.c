/*
 * PThreadFun.c
 *
 *  Created on: 2023年2月5日
 *      Author: sandro
 */
#include "PThreadFun.h"

static void* threadA(void *arg);
struct person{
	int age;
	char name[60];
};
static void * threadB(void *arg);
static void * threadC(void *arg);

void create5Threads(){
	printf("----------[create5Threads]------------\n");
	int ret;
	int n = 5;
	pthread_t thread[n];
	int num[5];
	for(int i=0;i<n;i++){
		num[i] = i;
		ret = pthread_create(&thread[i],NULL,threadC,&num[i]);
		if(ret!=0){
			printf("[create5Threads]pthread_create error,[%s]\n",strerror(ret));
			return ;
		}
	}

	sleep(2);
}

void * threadC(void *arg){
	int pos = *(int *)arg;
	printf("[threadC][threadID=%ld] ,createNO is %d\n",pthread_self(),pos);
	return NULL;
}
void createStructArgThread(){
	printf("----------[createStructArgThread]------------\n");
	pthread_t thread;
	struct person p;
	memset(&p,0x00,sizeof(struct person));
	p.age = 20;
	strcpy(p.name,"tony");
	int ret = pthread_create(&thread,NULL,threadB,&p);
	if(ret == 0){
		printf("[createStructArgThread][threadID=%ld] create a thread success\n",pthread_self());
	}else{
		printf("[createStructArgThread]pthread_create error,[%s]\n",strerror(ret));
		return ;
	}
	sleep(2);
}

void * threadB(void *arg){
	struct person *p = (struct person *)arg;
	printf("[threadB][threadID=%ld] age is [%d] ,name is [%s]\n",pthread_self(),p->age,p->name);
	return NULL;
}

void createArgThread(){
	printf("----------[createArgThread]------------\n");
	pthread_t thread;
	int arg = 10;
	int ret = pthread_create(&thread,NULL,threadA,&arg);
	if(ret == 0){
		printf("[createArgThread][threadID=%ld] create a thread success\n",pthread_self());
	}else{
		printf("[createArgThread]pthread_create error,[%s]\n",strerror(ret));
		return ;
	}
	sleep(2);
}


void createThread(){
	printf("----------[createThread]------------\n");
	pthread_t thread;
	int ret = pthread_create(&thread, NULL,threadA, NULL);
	if(ret == 0){
		printf("[createThread][threadID=%ld] create a thread success\n",pthread_self());
	}else{
		printf("pthread_create error,[%s]\n",strerror(ret));
		return ;
	}

	sleep(2);//目的是为了避免主线程退出，进程空间被回收，子线程还没有执行起来。
	printf("[createThread][threadID=%ld] main thread finish\n",pthread_self());
}

void* threadA(void *arg){//
	int intArg = -1;
	int *p = &intArg;
	if(arg != NULL){
		p = (int *) arg;
	}
	printf("[threadA][threadID=%ld] arg is [%d] start\n",pthread_self(),*p);
	return NULL;
}


