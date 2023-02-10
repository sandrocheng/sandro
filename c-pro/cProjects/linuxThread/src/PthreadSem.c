/*
 * PthreadSem.c
 *
 *  Created on: 2023年2月10日
 *      Author: sandro
 */
#include "PthreadSem.h"

static void* producer(void *arg);
static void* consumer(void *arg);
static void addsemNode(struct semNode *head,int d);
static void removeFirstNode(struct semNode *head);
static void initSemNode(struct semNode *node);

/**
 * 释放资源
 */
static void destroySrc(struct semNode *head );

/**
 * 信号量初始化
 */
static void initSem();

sem_t sem_pro;
sem_t sem_con;

int startWork = 0;

void semTest(){
	printf("----------[semTest]-----------\n");
	struct semNode *head = (struct semNode *)malloc(sizeof(struct semNode));
	if(head == NULL){
		printf("[initSemNode] malloc semNode error\n");
		exit(1);
	}
	initSemNode(head);
	initSem();
	pthread_t proThread;
	pthread_t conThread;

	startWork = 0;
	int ret = pthread_create(&proThread,NULL,producer,head);
	if(ret != 0){
		printf("[semTest] pthread_create proThread error : %s \n",strerror(ret));
		exit(-1);
	}

	ret = pthread_create(&conThread,NULL,consumer,head);
	if(ret != 0){
		printf("[semTest] pthread_create conThread error : %s \n",strerror(ret));
		exit(-1);
	}
	pthread_join(proThread,NULL);
	pthread_join(conThread,NULL);


	printf("main finish\n");
	destroySrc(head);
}

void destroySrc(struct semNode *head){
	sem_destroy(&sem_pro);
	sem_destroy(&sem_con);
	free(head);
}
void initSem(){
	sem_init(&sem_pro,0,20);//生产者开始生产，从20开始--，所以整个周期，生产者最多就能生产20个节点，超过5个节点必须等带消费者完成消费后才能继续生产
	sem_init(&sem_con,0,0);//此时没有节点，消费者应该等待，设置0个消费者，所有消费者线程等待
}

void initSemNode(struct semNode *node){
	node->next = NULL;
	node->data = -1;
}

void* producer(void *arg){
	struct semNode *head = (struct semNode *)arg;
	int i = 0;
	for(i = 0;i<3000;i++){
		sem_wait(&sem_pro);//等待生产者信号量，开始生产
		addsemNode(head,i);
		sem_post(&sem_con);//通知消费者，开始消费
	}
	startWork = 1;
	return NULL;
}
void* consumer(void *arg){
	struct semNode *head = (struct semNode *)arg;
	while (1){
		sem_wait(&sem_con);//等待消费者信号，开始消费
		removeFirstNode(head);
		if(head->next == NULL && startWork == 1){
			break;
		}
		sem_post(&sem_pro);//通知生产者可以生产了

	}
	return NULL;
}

void addsemNode(struct semNode *head,int d){
	struct semNode *node = (struct semNode *)malloc(sizeof(struct semNode));
	if(node == NULL){
		printf("[initSemNode] malloc semNode error\n");
		exit(1);
	}
	initSemNode(node);
	struct semNode *last = head;
	while(last->next!=NULL){
		last = last->next;
	}
	node->data = d;
	last->next = node;
	printf("addsemNode %d\n",d);
}
void removeFirstNode(struct semNode *head){
	struct semNode *node = head->next;
	if(node != NULL){
		printf("thread[%ld] pop node : [%d]\n",pthread_self(),node->data);
		head->next = node->next;
		free(node);
		node = NULL;
	}
}
