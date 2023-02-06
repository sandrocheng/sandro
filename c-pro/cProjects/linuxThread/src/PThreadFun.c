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
static void * threadD(void *arg);
static void * threadE(void *arg);

int T_QUIT = 1;
int T_FINISH = 0;

void createDetachedThread(){
	printf("----------[createDetachedThread]------------\n");
	pthread_t thread;
	pthread_attr_t attr;
	int ret = pthread_attr_init(&attr);
	if(ret != 0){
		printf("[createDetachedThread] pthread_attr_init error : %s\n",strerror(ret));
		return;
	}
	ret = pthread_attr_setdetachstate(&attr,PTHREAD_CREATE_DETACHED);
	if(ret !=0){
		printf("[createDetachedThread] pthread_attr_init error : %s\n",strerror(ret));
		return;
	}
	ret = pthread_create(&thread,&attr,threadD,NULL);
	if(ret == 0){
		printf("[createDetachedThread] pthread_create success tid[%ld]\n",thread);
	}else{
		printf("[createDetachedThread] pthread_create error : %s \n",strerror(ret));
		return;
	}
	ret = pthread_attr_destroy(&attr);
	if(ret!=0){
		printf("[createDetachedThread] pthread_attr_destroy error : %s \n",strerror(ret));
	}
	ret = pthread_join(thread,NULL);
	if(ret!=0){//因为创建的是分离线程，所以join的时候一定是失败的
		printf("[createDetachedThread] pthread_join error : %s\n",strerror(ret));
	}
	sleep(1);
	printf("main thread finish\n");
}

void cancelThread(){
	printf("----------[cancelThread]------------\n");
	pthread_t thread;
	int ret = pthread_create(&thread,NULL,threadE,NULL);
	if(ret == 0){
		printf("[cancelThread] pthread_create success tid[%ld]\n",thread);
	}else{
		printf("[cancelThread] pthread_create error : %s \n",strerror(ret));
		return;
	}

	sleep(2);
	pthread_cancel(thread);

	void *p = NULL;
	ret = pthread_join(thread,&p);
	if(ret == 0){
		int result = T_QUIT;
		if(p == NULL){
			result = *(int *)p;
		}
		printf("[cancelThread] thread[%ld] quit ,result is %d \n",thread,result);
		printf("主线程ID和子线程ID使用pthread_equal判断是否相同： %d (0,不等，非0，相等)\n",pthread_equal(pthread_self(),thread));
	}else{
		printf("[cancelThread] pthread_join error : %s \n",strerror(ret));
	}
}

void * threadE(void *arg){
	printf("[threadE] work1..\n");//printf 底层调用了write，这句话实际上也相当于设置了取消点
	sleep(1);
	pthread_testcancel();
	printf("[threadE] work2..\n");
	sleep(1);
	pthread_testcancel();
	printf("[threadE] work3..\n");
	sleep(1);
	pthread_testcancel();
	printf("[threadE] work4..\n");
	sleep(1);
	pthread_testcancel();
	printf("[threadE] finish\n");
	return &T_FINISH;
}
void detachThread(){
	printf("----------[detachThread]------------\n");
	pthread_t thread;
	int ret = pthread_create(&thread,NULL,threadD,NULL);
	if(ret == 0){
		printf("[detachThread] child[%ld] create success \n",thread);
	}else{
		printf("[detachThread]pthread_create error,[%s]\n",strerror(ret));
		return;
	}
	ret = pthread_detach(thread);
	if(ret == 0){
		printf("[detachThread] child[%ld] pthread_detach success \n",thread);
	}else{
		printf("[detachThread]pthread_detach error,[%s]\n",strerror(ret));
		return;
	}
	ret = pthread_join(thread,NULL);
	if(ret != 0){//线程detach以后，再join，不会再阻塞，并且会返回错误
		printf("[detachThread]pthread_join error,[%s]\n",strerror(ret));
	}
	sleep(1);
}

void * threadD(void *arg){
	printf("[threadD] tid[%ld]\n",pthread_self());
	return NULL;
}

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
	for(int i=0;i<n;i++){
		void *p;
		ret = pthread_join(thread[i],&p);
		int n = *(int *)p;
		if(ret == 0){
			printf("[create5Threads] child[%ld] exit status:%d \n",thread[i],n);
		}else{
			printf("[create5Threads]pthread_join error,[%s]\n",strerror(ret));
		}
	}
	printf("[create5Threads] finish");
}

void * threadC(void *arg){
	int pos = *(int *)arg;
	printf("[threadC][threadID=%ld] ,createNO is %d\n",pthread_self(),pos);
	if(pos == 0){//如果是0号线程，默认自动退出线程
		pthread_exit(&T_QUIT);
	}else{
		sleep(1);
	}

	return &T_FINISH;
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


