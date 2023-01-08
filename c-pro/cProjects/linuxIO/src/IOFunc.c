/*
 * IOFunc.c
 *
 *  Created on: 2023年1月6日
 *      Author: sandro
 */

#include "IOFunc.h"

void readFileInfo(char * path){
	printf("------readFileInfo path : %s\n",path);
	struct stat statbuf;
	if(stat(path, &statbuf) == 0){
		printf("dev_t : %ld \n" ,statbuf.st_dev);
		printf("st_ino : %ld \n" ,statbuf.st_ino);
		printf("file type is ");
        switch (statbuf.st_mode & S_IFMT) {
         	 case S_IFBLK:  printf("block device\n");            break;
         	 case S_IFCHR:  printf("character device\n");        break;
         	 case S_IFDIR:  printf("directory\n");               break;
         	 case S_IFIFO:  printf("FIFO/pipe\n");               break;
         	 case S_IFLNK:  printf("symlink\n");                 break;
         	 case S_IFREG:  printf("regular file\n");            break;
         	 case S_IFSOCK: printf("socket\n");                  break;
         	 default:       printf("unknown?\n");                break;
        }
        //权限在低位9位
        int low9 = 0777;
        int mode = statbuf.st_mode & low9;
        printf("Mode:%o (octal)\n",mode);
		printf("st_nlink : %ld \n" ,statbuf.st_nlink);
		printf("st_uid : %d \n" ,statbuf.st_uid);
		printf("st_gid : %d \n" ,statbuf.st_gid);
        printf("Preferred I/O block size: %ld bytes\n",(long) statbuf.st_blksize);
        printf("File size: %lld bytes\n",(long long) statbuf.st_size);
        printf("Blocks allocated:%lld\n",(long long) statbuf.st_blocks);

        char datastr[50];
        toDateTimeCh(datastr,statbuf.st_ctim.tv_sec);
        printf("最近状态修改时间 ：%s %ld纳秒 \n",datastr,statbuf.st_ctim.tv_nsec);

        toDateTimeCh(datastr,statbuf.st_mtim.tv_sec);
        printf("最近修改时间 ：%s %ld纳秒 \n",datastr,statbuf.st_mtim.tv_nsec);

        toDateTimeCh(datastr,statbuf.st_atim.tv_sec);
        printf("最近访问时间 ：%s %ld纳秒 \n",datastr,statbuf.st_atim.tv_nsec);

	}else{
		perror("get stat error");
	}
}

void readDevice(char * path){
	printf("------readDevice path : %s\n",path);
	int fd = STDIN_FILENO;
	if(path != NULL){
		fd = open(path,O_RDWR);
	}

	if(fd < 0){
		perror("readDevice open error");
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}

	char buf[1024];
	memset(buf,0,sizeof(buf));

	int count = read(fd,buf,sizeof(buf));

	printf("read finish , count is %d\n",count ) ;
	printf("[%s]",buf);

	close(fd);
}

void addFileSize(char* pathName,long size){
	printf("------addFileSize size : %ld , path : %s\n",size,pathName);
	int flags = O_RDWR|O_CREAT; //使用seek方法扩容不能使用O_APPEND flags
	int fd = open(pathName,flags,0666);
	if(fd < 0){
		perror("openFileTest open error");
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}
	//扩容n-1个字节，最后一个字节需要写入一个内容，否则无法扩容
	int len = size - 1;
	int fileLen = lseek(fd,0,SEEK_END);
	printf("cur filelen is : %d\n" ,fileLen);
	int cap = lseek(fd, len, SEEK_END);//先通过移动指针，扩容n-1个字节
	printf("扩容后，文件大小 %d 个字节\n",cap);
	int w = write(fd," ",1);//数据随便写，否则无法完成拓展
	printf("写入展位符号 %d 个字节 ，此次扩容后文件大小 %d 个字节\n",w,(cap + w));
	close(fd);
}

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

	//通过将文件指针移动到末尾的返回值，得到文件的大小,ls -al 可以验证文件大小
	long int size = lseek(fd, 0, SEEK_END);
	printf("file size is %ld\n",size);

	//文件指针移动到最后，再读取就读不到内容了，所以要重新设置文件指针为0，就可以从头读数据了
	lseek(fd, 0, SEEK_SET);
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

