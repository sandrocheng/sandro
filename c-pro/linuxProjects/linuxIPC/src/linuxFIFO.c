/*
 * linuxFIFO.c
 *
 *  Created on: 2023年1月18日
 *      Author: sandro
 */
#include "linuxFIFO.h"

void useFIFO(const char* fifoPath){
	printf("-----------useFIFO------------\n");
	int fd;
	int fileExist = access(fifoPath,F_OK);//判断文件是否存在
	if(fileExist != 0){
		perror("[useFIFO] open fifo file error");
		int ret = mkfifo(fifoPath,0664);
		if(ret <0 ){
			perror("[useFIFO] create fifo error");
			return;
		}
		else{
			printf("fifo created , path is %s\n" ,fifoPath);
			fd = open(fifoPath,O_RDWR);
			if(fd < 0){
				perror("[useFIFO] open fifo file error after mkfifo");
				return;
			}
		}
	}else{
		fd = open(fifoPath,O_RDWR);
		if(fd < 0){
			perror("[useFIFO] open fifo file error after mkfifo");
			return;
		}
	}
	printf("[useFIFO] fifo fd is %d\n",fd);



	int ret = fork();
	if(ret == 0 ){
		printf("[useFIFO] sp open fifo file fd is %d\n",fd );
		char buf[1024];
		while(1){
			memset(buf,0x00,sizeof(buf));
			int n = read(fd,buf,sizeof(buf));
			printf("[useFIFO] sp %d char readed : %s\n",n,buf);
			if(strcmp("stop",buf) == 0){
				printf("[useFIFO] sp get stop word\n");
				break;
			}
		}
		close(fd);
	}else if(ret >0){
		printf("[useFIFO] start write to fifo\n");
		for(int i = 0;i<5;i++){
			char* p = "hello world";
			write(fd,p,strlen(p));
			sleep(1);
		}

		char* p = "stop";
		write(fd,p,strlen(p));
		close(fd);
		pid_t sonID = wait(NULL);
		printf("[useFIFO] sp  sonID[%d] over",sonID);
	}else{
		perror("[useFIFO] fork error");
	}

}
