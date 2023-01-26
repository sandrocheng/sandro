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
	}
	return returnNO;
}

void showHelp(){
	printf("\n==help===================================================================================================================================================\n");

	printf("mmap_r path,使用mmap进行多进程通信，读进程，如：mmap_r /home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIPC/tmp/Mulitmmapfile\n");

	printf("=========================================================================================================================================================\n");
}
