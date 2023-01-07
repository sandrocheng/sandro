/*
 ============================================================================
 Name        : linuxIO.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Linux IO 操作测试
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
		return;
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
	else if(strcmp(argv[1],"as")==0){
		if(argc <= 3){
			printf("请指定一个文件路径 和 需要扩容的字节数\n");
		}else{
			long size = atol(argv[3]);
			if(size <=0){
				printf("请输入一个大于0的整数 ,当前输入的值是 ：%s\n",argv[3]);
			}else{
				addFileSize(argv[2],size);
			}
		}
	}else if(strcmp(argv[1],"rd")==0){
		if(argc <= 2){
			readDevice(NULL);
		}else{
			readDevice(argv[2]);
		}
	}
	showHelp();
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	/*tty 设备输入，eclipse里执行读不了，可以到shell里手动执行，读的时候会阻塞，直到在shell里输入并回车后read才会读到，并输出
	 *
	 */
	printf("rd path 读取设备文件,如果不输入path，默认读取linux STDIN_FILENO,如: rd /dev/tty\n");

	printf("as filepath size,打开文件,如果文件不存在则创建一个文件,并扩容size个字节,如: as %s/log 100 \n",path);
	printf("wr filepath xxx,打开文件,如果文件不存在则创建一个文件,并追加字符串xxx,并读出内容,如: wr %s/log hello world\n",path);
	printf("read filepath,读取文件内容,如: read %s/log\n",path);
	printf("open filepath,打开文件,如果文件不存在则创建一个文件,如: open %s/log\n",path);
	printf("aw filepath xxx,打开文件,如果文件不存在则创建一个文件,并追加字符串xxx,如: aw %s/log hello world\n",path);
	printf("ow filepath xxx,打开文件,如果文件不存在则创建一个文件,如果存在文件开始位值覆盖写入xxx,如: ow %s/log hello world\n",path);
	printf("=========================================================================================================================================================\n");
}
