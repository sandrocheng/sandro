/*
 * PThreadCond.c
 *
 *  Created on: 2023年2月9日
 *      Author: sandro
 */

#include "PThreadCond.h"

# define CONSUMER_SIZE 5
static void* producer(void *arg);
static void* consumer(void *arg);
static void addCnode(struct CNode *head,int data);
static void removeFirstNode(struct CNode *head);

pthread_mutex_t mutex;
pthread_cond_t cond;
int workStart = 0;
void condFunc(){
	printf("-------------[condFunc]------------\n");
	struct CNode *head = (struct CNode*)malloc(sizeof(struct CNode));
	head->data = -1;
	workStart = 0;
	pthread_mutex_init(&mutex,NULL);
	pthread_cond_init(&cond,NULL);
	pthread_t proThread;
	pthread_create(&proThread,NULL,producer,head);

	pthread_t conThread[CONSUMER_SIZE];
	for(int i = 0;i<CONSUMER_SIZE;i ++){
		pthread_create(&conThread[i],NULL,consumer,head);
	}

	pthread_join(proThread,NULL);
	for(int i = 0;i<CONSUMER_SIZE;i++){
		pthread_join(conThread[i],NULL);
	}

	sleep(1);
	printf("main finsh\n");
	pthread_mutex_destroy(&mutex);
	pthread_cond_destroy(&cond);
	free(head);
	head = NULL;
}

void* producer(void *arg){
	struct CNode *head = (struct CNode *)arg;
	int len = 3000;
	for(int i = 0;i<len;i++){
		pthread_mutex_lock(&mutex);
		addCnode(head,i);
		if(i == len - 1){
			workStart = 1;
		}
		pthread_cond_signal(&cond);
		pthread_mutex_unlock(&mutex);
	}
	printf("producer finish \n");
	return NULL;
}

void addCnode(struct CNode *head,int d){
	struct CNode *node = (struct CNode *)malloc(sizeof(struct CNode));
	if(node == NULL){
		perror("addCnode malloc error");
		exit(1);
	}
	struct CNode *last = head;
	while(last->next!=NULL){
		last = last->next;
	}
	node->data = d;
	node->next = NULL;
	last->next = node;
	printf("addCnode %d\n",d);
}

void* consumer(void *arg){
	struct CNode *head = (struct CNode*)arg;
	while(1){
		pthread_mutex_lock(&mutex);
		if(head->next == NULL){
			if(workStart == 1){
				pthread_mutex_unlock(&mutex);
				pthread_cond_signal(&cond);
				break;
			}
			pthread_cond_wait(&cond,&mutex);
		}
		removeFirstNode(head);
		pthread_mutex_unlock(&mutex);
	}
	printf("consumer[%ld] finish \n",pthread_self());
	return NULL;
}

void removeFirstNode(struct CNode *head){
	struct CNode *node = head->next;
	if(node != NULL){
		printf("thread[%ld] pop node : [%d]\n",pthread_self(),node->data);
		head->next = node->next;
		free(node);
		node = NULL;
	}
}
