/*
 ============================================================================
 Name        : linuxIO.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include "linuxIO.h"

int main(int argc,char* argv[])
{
	checkArgs(argc,argv);
	return (0);
}

void checkArgs(int argc,char* argv[]){
	printf("argc is %d\n",argc);
	for(int i=0;i<argc;i++){
		printf("argv[%d] is %s\n",i,argv[i]);
	}
	if(argc <= 1){
		showHelp();
	}
	else if(strcmp(argv[1],"open")==0){
		if(argc <= 2){
			printf("请指定一个文件路径\n");
		}else{
			openFileTest(argv[2]);
		}
	}else if(strcmp(argv[1],"aw")==0){
		if(argc <= 3){
			printf("请指定要追加的字符串和一个文件路径\n");
		}else{
			writeFileTestByAdd(argc,argv);
		}
	}else if(strcmp(argv[1],"ow")==0){
		if(argc <= 3){
			printf("请指定要追加的字符串和一个文件路径\n");
		}else{
			writeFileTestByOverride(argc,argv);
		}
	}else if(strcmp(argv[1],"wr")==0){
		if(argc <= 3){
			printf("请指定要追加的字符串和一个文件路径\n");
		}else{
			writeAndRead(argc,argv);
		}
	}
	else if(strcmp(argv[1],"read")==0){
		if(argc <= 2){
			printf("请指定一个文件路径\n");
		}else{
			readFile(argv[2]);
		}
	}
	else{
		showHelp();
	}
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("==help==============================================================================\n");
	printf("wr filepath xxx,打开文件,如果文件不存在则创建一个文件,并追加字符串xxx,并读出内容,如: wr %s/log hello world\n",path);
	printf("read filepath,读取文件内容,如: %s/log\n",path);
	printf("open filepath,打开文件,如果文件不存在则创建一个文件,如: open %s/log\n",path);
	printf("aw filepath xxx,打开文件,如果文件不存在则创建一个文件,并追加字符串xxx,如: aw %s/log hello world\n",path);
	printf("ow filepath xxx,打开文件,如果文件不存在则创建一个文件,如果存在文件开始位值覆盖写入xxx,如: ow %s/log hello world\n",path);
	printf("====================================================================================\n");
}
