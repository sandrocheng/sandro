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
	if(argc <= 1){
		showHelp();
		return;
	}
	else if(strcmp(argv[1],"fork")==0){
		//todo fork
	}
	showHelp();
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("fork ,打开文件,如果文件不存在则创建一个文件,使用fcntl复制文件描述符，修改属性等操作,如: fcntl %s/log  \n",path);
	printf("=========================================================================================================================================================\n");
}
