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
	}else if(strcmp(argv[1],"execfile") == 0){
		if(argc <=3){
			printf("缺少  path filename ");
			return;
		}else{
			execfile(argc,argv);
		}
	}else if(strcmp("execCMD",argv[1]) == 0){
		if(argc <= 2){
			printf("缺少cmd");
		}else{
			execCMD(argc,argv);
		}
	}
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("fork ,使用fork，创建一个进程\n");
	printf("fork n,使用fork，创建n个进程, 例如: fork 3 \n");
	printf("execfile path filename arg1,arg2....arg5,使用exec执行一个程序 执行参数最多执行5个, 例如: execfile /home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/Debug/linuxIO ");
	printf("  linuxIO fcntl /home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp/log  \n");
	printf("execCMD cmd arg1 arg2...arg5 ,使用exec执行一个系统命令（命令需要PATH里有配置）； 执行参数最多执行5个, 例如: execCMD ls -al \n");
	printf("=========================================================================================================================================================\n");
}
