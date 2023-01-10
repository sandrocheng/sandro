/*
 * IOFunc.c
 *
 *  Created on: 2023年1月6日
 *      Author: sandro
 */

#include "IOFunc.h"

void dup2printf(const char *path){
	printf("-----------dup2printf-----------\n");
	int fd = open(path,O_RDWR | O_CREAT | O_APPEND ,0666);
	char* errorstr = (char *)calloc(256,sizeof(char));
	if(fd<0){
		sprintf(errorstr,"[dup2printf] open file %s error\n",path);
		perror(errorstr);
		return;
	}else{
		printf("[dup2printf] open %s success,fd is %d ,and printf redirect start\n",path,fd);
	}
	//重定向,STDOUT_FILENO将会指向文件的fd,进程后面的printf都将保存到文件中去，不会再输出
	dup2(fd,STDOUT_FILENO);
	char buff[60];
	toDateTimeCh(buff,0);
	printf("\n --------------%s---------------------- \n",buff);
	free(errorstr);
	close(fd);
}

void dup2File(const char *path1 ,const char *path2){
	printf("-----------dup2File-----------\n");
	char errorstr[200];
	memset(errorstr,'\0',sizeof(errorstr));
	int fd1 = open(path1,O_RDWR|O_CREAT,0666);
	if(fd1<0){
		sprintf(errorstr,"[dup2File] open file1 %s error\n",path1);
		perror(errorstr);
		return;
	}else{
		printf("[dup2File] open file1(fd:%d) %s  success\n",fd1,path1);
	}
	int fd2 = open(path2,O_RDWR|O_CREAT,0666);
	if(fd2 < 0){
		sprintf(errorstr,"[dup2File] open file2 %s error\n",path2);
		perror(errorstr);
		return;
	}else{
		printf("[dup2File] open file2(fd:%d) %s success\n",fd2,path2);
	}

	char buff[60];
	toDateTimeCh(buff,0);
	int count = write(fd1,buff,strlen(buff));
	if(count<0){
		sprintf(errorstr,"[dup2File] write fd1(%d) error",fd1);
		perror(errorstr);
		return;
	}else{
		printf("[dup2File] %d bits write to fd1(%d) success\n",count,fd1);
	}

	count = write(fd2,buff,strlen(buff));
	if(count<0){
		sprintf(errorstr,"[dup2File] write fd2(%d) error",fd2);
		perror(errorstr);
		return;
	}else{
		printf("[dup2File] %d bits write to fd2(%d) success\n",count,fd2);
	}
	dup2(fd1,fd2);//让fd2指向fd1的文件，此时fd2因为被占用，会先关闭当前文件(path2)
	lseek(fd1,0,SEEK_SET);
	strcat(buff,"\nhello");
	count = write(fd1,buff,strlen(buff));
	if(count<0){
		sprintf(errorstr,"[dup2File] write to fd1(%d) second time error",fd1);
		perror(errorstr);
		return;
	}else{
		printf("[dup2File] %d bits write to fd1(%d) second time success\n",count,fd1);
	}

	memset(buff,'\0',sizeof(buff));
	lseek(fd2,0,SEEK_SET);
	read(fd2,buff,sizeof(buff));
	printf("[dup2File] use fd2(%d) read str : %s",fd2,buff);

	close(fd1);
	close(fd2);

}

void dupFile(const char *path){
	printf("------dupFile path : %s\n",path);
	int fd = open(path,O_RDWR | O_CREAT,0666);
	if(fd < 0){
		perror("dupFile open error");
		return;
	}else{
		printf("open success,and fd is %d\n",fd);
	}


    //复制fd
    int newfd = dup(fd);
	if(newfd < 0){
		perror("dupFile dup error");
		return;
	}else{
		printf("dup success,and newfd is %d\n",newfd);
	}

	//使用旧的fd写如当前时间
    char datastr[100];
    toDateTimeCh(datastr,0);
    int count = write(fd,datastr,strlen(datastr));
    if(count <0){
    	perror("dupFile write error");
    }else{
    	printf("dupFile %d bits has been writen to fd(%d) success\n",count,fd);
    }

    //重新移动文件指针到开始处，否则读不到所有内容
    lseek(fd,0,SEEK_SET);

    //使用newfd读取文件内容，验证新旧fd是否指向同一个文件
    char buf[1024];
    memset(buf,0,sizeof(buf));
    int readbits = read(newfd,buf,sizeof(buf));
    if(readbits <0){
    	perror("dupFile read error");
    }else{
    	printf("fd(%d) read %d bites : %s \n",newfd,readbits,buf);
    }
    close(fd);
    close(newfd);
}

void dirIterate(const char * path){
	printf("------dirIterate path : %s\n",path);
	DIR *pDir = opendir(path);
	if(pDir == NULL){
		perror("dirIterate open error");
		return;
	}

	struct dirent *p = NULL;
	while((p=readdir(pDir))!=NULL){
		if(DT_DIR == p->d_type){
			if(strcmp(p->d_name,".")!=0 && strcmp(p->d_name,"..")){
				printf("dir : %s/%s\n" ,path,p->d_name);
				char dirpath[200];
				sprintf(dirpath,"%s/%s",path,p->d_name);
				dirIterate(dirpath);
			}
		}else{
			printf("file : %s/%s\n" ,path,p->d_name);
		}

	}

	closedir(pDir);
}

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

