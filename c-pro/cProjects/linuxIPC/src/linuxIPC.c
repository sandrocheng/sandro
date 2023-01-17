/*
 ============================================================================
 Name        : linuxIPC.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : linux IPC in C, Ansi-style
 ============================================================================
 */

#include "linuxIPC.h"


int main(int argc ,char* argv[]) {
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
	}else if(strcmp("pipe",argv[1]) == 0){
		returnNO = ipcByPipe();
	}else if(strcmp("twoCMD",argv[1]) == 0){
		if(argc < 5 ){
			printf("至少需要两个cmd和一个管道符号[|]");
			returnNO = 2;
		}else{
			returnNO = twoCMD(argc,argv);
		}
	}else{
		printf("%s\n",argv[1]);
	}
	return returnNO;
}

void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("pipe 使用管道完成一次父子进程间的通信\n");
	printf("twoCMD cmd1 arg1..| cmd2 arg2... 使用父子进程通过管道，将两个linux命令联合起来,每个命令最多接9个参数，并输出，如:twoCMD ps aux | grep --color=auto bash\n");
	printf("                                 如果使用的是.out执行程序，管道符前要加‘\\’，如:./linuxIPC twoCMD ps aux \\| grep --color=auto bash\n");

	printf("=========================================================================================================================================================\n");
}
