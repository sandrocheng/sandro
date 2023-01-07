/*
 * IOFunc.c
 *
 *  Created on: 2023年1月6日
 *      Author: sandro
 */

#include "IOFunc.h"

void writeAndRead(int argc,char* argv[]){
	printf("------writeAndRead \n");
	int flags = O_RDWR|O_CREAT|O_APPEND;
	int fd = open(argv[2],flags,0666);
	if(fd < 0){
		//perror会输出文件打开错误原因
		perror("openFileTest open error");
		printf("file path is %s",argv[2]);
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}

	for(int i=3;i<argc;i++){
		write(fd,argv[i],strlen(argv[i]));
		write(fd," ",1);
	}
	write(fd,"\n",2);

	//写完文件要想立刻读出，需要把文件指针重新指向开始的位值
	//因为写完以后文件指针指向的是最后的位值，此时在读是没有内容的
	lseek(fd,0,SEEK_SET);

	char buf[1024];
	memset(buf,0,sizeof(buf));

	int count = read(fd,buf,sizeof(buf));

	printf("read finish , count is %d\n",count ) ;
	printf("[%s]",buf);
	close(fd);
}

void readFile(char* pathName){
	printf("------readFile pathName %s\n",pathName);
	int fd = open(pathName,O_RDWR | O_CREAT,0666);
	if(fd < 0){
		//perror会输出文件打开错误原因
		perror("openFileTest open error");
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}
	char buf[16];
	memset(buf,0,sizeof(buf));
	while(1){
		int count = read(fd,buf,sizeof(buf));
		if(count == 0){
			break;
		}else if(count == -1){
			perror("readFile error");
			return;
		}else{
			printf("%s",buf);//这种方法只能显示ASCII码上的字符，遇到汉字就不行了，
		}
	}
}

void openFileTest(char* pathName){
	printf("------openFileTest pathName %s\n",pathName);

	//mode 使用8进制
	int fd = open(pathName,O_RDWR | O_CREAT,0666);
	if(fd < 0){
		//perror会输出文件打开错误原因
		perror("openFileTest open error");
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}

	int closeresult = close(fd);
	printf("close fd  %d , and result is %d\n",fd,closeresult);
}

/**
 * 写文件测试,在文件末尾添加内容
 * @param argc main argc参数
 * @param argv main argv参数
 */
void writeFileTestByAdd(int argc,char* argv[]){
	printf("------writeFileTestByAdd");
	int flags = O_RDWR | O_CREAT | O_APPEND;
	writeFileTest(argc,argv,flags);
}

void writeFileTestByOverride(int argc,char* argv[]){
	printf("------writeFileTestByOverride");
	int flags = O_RDWR | O_CREAT;
	writeFileTest(argc,argv,flags);
}

void writeFileTest(int argc,char* argv[],int flags){
	printf("-------openFileTest argc is %d\n",argc);
	int fd = open(argv[2],flags,0666);
	if(fd < 0){
		//perror会输出文件打开错误原因
		perror("openFileTest open error");
		printf("file path is %s",argv[2]);
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}
	for(int i=3;i<argc;i++){
		int result = write(fd,argv[i],strlen(argv[i]));
		printf("write str %s ,result is %d\n",argv[i],result);
		write(fd," ",1);
	}
	write(fd,"\n",2);

	close(fd);
}

