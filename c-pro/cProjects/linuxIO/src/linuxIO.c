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
	}else if(strcmp(argv[1],"info")==0){
		if(argc <= 2){
			printf("请指定一个文件/目录/设备的路径\n");
		}else{
			readFileInfo(argv[2]);
		}
	}else if(strcmp(argv[1],"dir")==0){
		if(argc <= 2){
			printf("请指定一个目录的路径\n");
		}else{
			dirIterate(argv[2]);
		}
	}else if(strcmp(argv[1],"dup")==0){
		if(argc <= 2){
			printf("请指定一个文件的路径\n");
		}else{
			dupFile(argv[2]);
		}
	}else if(strcmp(argv[1],"dup2")==0){
		if(argc <= 3){
			printf("请指定两个文件的路径\n");
		}else{
			dup2File(argv[2],argv[3]);
		}
	}else if(strcmp("p2f",argv[1]) == 0){
		if(argc <= 2){
			printf("请指定一个文件的路径\n");
		}else{
			dup2printf(argv[2]);
		}
	}else if(strcmp("fcntl",argv[1]) ==0 ){
		if(argc <=2 ){
			printf("请指定一个文件的路径\n");
		}else{
			fcntlTest(argv[2]);
		}
	}
	showHelp();
}

char *path = "/home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO/tmp";
void showHelp(){
	printf("\n==help===================================================================================================================================================\n");
	printf("fcntl filepath ,打开文件,如果文件不存在则创建一个文件,使用fcntl复制文件描述符，修改属性等操作,如: fcntl %s/log  \n",path);
	printf("p2f filepath ,打开文件,如果文件不存在则创建一个文件,使用dup2重定向标准输出printf,将内容保存到一个文件里,如: p2f %s/log  \n",path);
	printf("dup2 filepath1 filepath2 ,打开文件,如果文件不存在则创建一个文件,使用dup2复制文件描述符，并进行操作,如: \ndup2 %s/log %s/log1 \n",path,path);
	printf("dup filepath ,打开文件,如果文件不存在则创建一个文件,使用dup复制文件描述符，并进行操作,如: dup %s/log \n",path);
	printf("dir dirpath ,遍历目录,如: dir /home/sandro/mywork/gitwork/sandro/c-pro/cProjects/linuxIO \n");
	printf("info ,读取文件/设备/目录等的信息,如: info /home/sandro/.bashrc  info /home/sandro/\n");
	/*
	 * tty 设备输入，eclipse里执行读不了，可以到shell里手动执行，读的时候会阻塞，直到在shell里输入并回车后read才会读到，并输出
	 * 默认STDIN_FILENO可以读到
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
