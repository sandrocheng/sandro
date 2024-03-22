/*
 ============================================================================
 Name        : linuxSocket.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : linux socket in C, Ansi-style
 ============================================================================
 */

#include "linuxSocket.h"

int main(int argc,char* argv[]) {
	printf("argc is %d\n",argc);
	for(int i=0;i<argc;i++){
		printf("argv[%d] is %s\n",i,argv[i]);
	}

	if(argc <= 1 ){
		printf("请根据help选择需要的参数");
		showAppHelp();
		return 1;
	}else if(!strcmp("checkEndian",argv[1])){
		checkEdian();
	}else if(!strcmp("addrRevert",argv[1])){
		addrRevert();
	}else{
		printf("请根据help选择需要的参数");
		showAppHelp();
	}
	return 1;
}

void showAppHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("checkEndian ,查看当前系统的字节序\n");
	printf("addrRevert ip地址转换\n");
	printf("=========================================================================================================================================================\n");

}

