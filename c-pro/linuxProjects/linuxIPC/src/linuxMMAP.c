/*
 * linuxMMAP.c
 *
 *  Created on: 2023年1月22日
 *      Author: sandro
 */
#include "linuxMMAP.h"

#define MMAP_FILE_SIZE 10240
/**
 * 创建一个mmap映射文件，成功返回0，失败返回-1
 */
static int createMMapFile(const char* filepath);

void MMAPIPCRClient(const char* filepath){
	printf("----------[MMAPIPCRClient]-----------\n");
	printf("[MMAPIPCRClient] filepath : %s\n",filepath);
	int fd = open(filepath,O_RDWR|O_CREAT,0664);
	int size = lseek(fd,0,SEEK_END);
	printf("[MMAPIPCRClient] mmap file size %d\n",size);
		if(size < MMAP_FILE_SIZE || size > 2*MMAP_FILE_SIZE){
			close(fd);
			printf("[MMAPIPCRClient] 文件大小错误，建议在10k～20k之间\n");
			return;
		}
	void * addr = mmap(NULL, size, PROT_READ|PROT_WRITE, MAP_SHARED,fd, 0);
	char buff[256];
	memset(buff,0x00,sizeof(buff));
	memcpy(buff,addr,sizeof(buff));
	printf("[[MMAPIPCRClient] read mmap : %s\n",buff);
	int ret =  munmap(addr, size);
	if(ret < 0){
		perror("[IPCinFS] munmap error");
	}else{
		printf("[IPCinFS] munmap success\n");
	}
	close(fd);
}

void MMAPIPCWriteClient(const char* filepath){
	printf("----------[MMAPIPCWriteClient]-----------\n");
	printf("[MMAPIPCWriteClient] filepath : %s\n",filepath);
	int fd = -1;
	if(access(filepath,F_OK) !=0 ){
		printf("[MMAPIPCWriteClient] 该路径文件不存在，在该路径上创建一个新的10k映射文件\n");
		fd = createMMapFile(filepath);
		if(fd < 0){
			return;
		}
	}else{
		fd = open(filepath,O_RDWR|O_CREAT,0664);
		printf("[MMAPIPCWriteClient] mmap 文件已存在，fd[%d]\n",fd);
	}
	lseek(fd, 0, SEEK_SET);
	int size = lseek(fd,0,SEEK_END);
	printf("[MMAPIPCWriteClient] mmap file size %d\n",size);
	if(size < MMAP_FILE_SIZE || size > 2*MMAP_FILE_SIZE){
		close(fd);
		printf("[MMAPIPCWriteClient] 文件大小错误，建议在10k～20k之间\n");
		return;
	}
	void * addr = mmap(NULL, size, PROT_READ|PROT_WRITE, MAP_SHARED,fd, 0);
	if(addr == MAP_FAILED){
		perror("[IPCinFS] mapped error ");
		return;
	}
	char timeStr[100];
	toDateTimeCh(timeStr,0);
	char buff[256];
	sprintf(buff,"[%s] - hello！",timeStr);
	memset(addr,0,size);
	memcpy(addr, buff, strlen(buff));
	int ret =  munmap(addr, size);
	if(ret < 0){
		perror("[IPCinFS] munmap error");
	}else{
		printf("[IPCinFS] munmap success\n");
	}
	close(fd);
}

void IPCinFS(const char* filepath){
	printf("----------[IPCinFS]-----------\n");
	printf("[IPCinFS] filepath : %s\n",filepath);
	int fd = -1;
	if(access(filepath,F_OK) !=0 ){
		printf("[IPCinFS] 该路径文件不存在，在该路径上创建一个新的10k映射文件\n");
		fd = createMMapFile(filepath);
		if(fd < 0){
			return;
		}
	}else{
		fd = open(filepath,O_RDWR|O_CREAT,0664);
		printf("[IPCinFS] mmap 文件已存在，fd[%d]\n",fd);
	}
	lseek(fd, 0, SEEK_SET);
	int size = lseek(fd,0,SEEK_END);
	printf("[IPCinFS] mmap file size %d\n",size);
	if(size < MMAP_FILE_SIZE || size > 2*MMAP_FILE_SIZE){
		close(fd);
		printf("[IPCinFS] 文件大小错误，建议在10k～20k之间\n");
		return;
	}

	void * addr = mmap(NULL, size, PROT_READ|PROT_WRITE, MAP_SHARED,fd, 0);
	if(addr == MAP_FAILED){
		perror("[IPCinFS] mapped error ");
		return;
	}

	pid_t sonID = fork();
	if (sonID == 0) {
		sleep(1);
		char *p = (char*) addr;
		printf("[IPCinFS] read mmap from sonProcess[%d] content is %s\n",
				getpid(), p);
		int ret =  munmap(addr, size);
		close(fd);
		if(ret < 0){
			perror("[IPCinFS] munmap error in sonProcess");
		}else{
			printf("[IPCinFS] munmap success in sonProcess\n");
		}
	} else if (sonID > 0) {
		char timeStr[100];
		toDateTimeCh(timeStr,0);
		char buff[256];
		sprintf(buff,"[%s] - hello！",timeStr);
		memset(addr,0,size);
		memcpy(addr, buff, strlen(buff));
		int ret =  munmap(addr, size);
		close(fd);
		if(ret < 0){
			perror("[IPCinFS] munmap error");
		}else{
			printf("[IPCinFS] munmap success\n");
		}
		while (1) {
			int status;
			pid_t id = wait(&status);
			if (id < 0) {
				printf("all son process finished\n");
				break;
			}
			if (WIFEXITED(status)) {
				printf("son[%d] terminated normally,status is %d \n", id,
						WEXITSTATUS(status));
			} else if (WIFSIGNALED(status)) {
				printf("son[%d] was terminated by a signal[%d] \n", id,
						WTERMSIG(status));
			} else {
				printf("son[%d] finished by other reason !", id);
			}

		}
	} else {
		perror("[IPCinFS] fork error");
	}
}

int createMMapFile(const char* filepath){
	int fd = open(filepath,O_RDWR|O_CREAT,0664);
	if(fd<0){
		perror("[createMMapFile] error");
		return -1;
	}else{
		int len = MMAP_FILE_SIZE - 1;
		int cap = lseek(fd, len, SEEK_END);//先通过移动指针，扩容n-1个字节
		printf("[createMMapFile] 扩容后，文件大小 %d 个字节\n",cap);
		int w = write(fd," ",1);//数据随便写，否则无法完成拓展
		printf("[createMMapFile] 写入展位符号 %d 个字节 ，此次扩容后文件大小 %d 个字节\n",w,(cap + w));
		printf("[createMMapFile] open file %s success,fd is %d\n",filepath,fd);
	}
	return fd;
}

