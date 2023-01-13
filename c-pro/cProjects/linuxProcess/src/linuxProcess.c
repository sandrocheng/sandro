/*
 ============================================================================
 Name        : linuxProcess.c
 Author      : sandrocheng
 Version     : 1.0
 Copyright   : sandrocheng
 Description : linux 进程操作, Ansi-style
 ============================================================================
 */

#include "linuxProcess.h"

int main(int argc ,char* argv[]) {
	checkArgs(argc,argv);
	return EXIT_SUCCESS;
}

void checkArgs(int argc,char* argv[]){
	printf("argc is %d\n",argc);
	for(int i=0;i<argc;i++){
		printf("argv[%d] is %s\n",i,argv[i]);
	}
	showHelp();
	if(argc <= 1){
		printf("请根据help选择命令参数");
		return;
	}
	else if(strcmp(argv[1],"fork")==0){
		if(argc>=3){
			int size = atol(argv[2]);
			if(size >0){
				forkNPorcess(size);
			}else{
				forkTest();
			}
		}else{
			forkTest();
		}
	}
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("fork ,使用fork，创建一个进程\n");
	printf("fork n,使用fork，创建n个进程, 例如: fork 3 \n");
	printf("=========================================================================================================================================================\n");
}
