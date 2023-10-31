/*
 * linuxPIPE.c
 *
 *  Created on: 2023年1月15日
 *      Author: sandro
 */
#include "linuxPIPE.h"

int twoCMD(int argc,char* argv[]){
	printf("---------twoCMD----------\n");
	char* inputCMDAndArgs[10];
	char* outputCMDAndArgs[10];
	memset(inputCMDAndArgs,0,10*sizeof(char*));
	memset(outputCMDAndArgs,0,10*sizeof(char*));
	int returnNo = twoCMDArgsCheck(argc,argv,inputCMDAndArgs,outputCMDAndArgs);
	if(returnNo < 0){
		return returnNo;
	}
	printCMDStr("inputCMDAndArgs",inputCMDAndArgs,10);
	printCMDStr("outputCMDAndArgs",outputCMDAndArgs,10);

	int fd[2];
	int ret =  pipe(fd);
	if(ret < 0 ){
		return -3;
	}

	pid_t id = fork();
	if(id==0){
		returnNo = twoCMDSon(fd,outputCMDAndArgs);
		if(returnNo < 0){
			return returnNo;
		}
	}else if(id > 0){
		returnNo = twoCMDFather(fd,inputCMDAndArgs);
		if(returnNo < 0){
			return returnNo;
		}
	}else{
		perror("[twoCMD] fork error");
		return -4;
	}
	return returnNo;
}

int twoCMDSon(int fd[2],char* outputCMDAndArgs[10]){
	close(fd[1]);//关闭写管道，值保留读管道
	int ret = dup2(fd[0],STDIN_FILENO);//重定向STDIN_FILENO，这样管道只要有数据就会给到STDIN_FILENO
	printf("[twoCMDSon] dup2 finish ret is %d\n",ret);
	execlp( outputCMDAndArgs[0], outputCMDAndArgs[0], outputCMDAndArgs[1],
			outputCMDAndArgs[2], outputCMDAndArgs[3], outputCMDAndArgs[4],
			outputCMDAndArgs[5], outputCMDAndArgs[6], outputCMDAndArgs[7], outputCMDAndArgs[8], outputCMDAndArgs[9],NULL);

	close(fd[0]);
	perror("[twoCMDSon] execlp error");
	return 0;
}

int twoCMDFather(int fd[2],char* inputCMDAndArgs[10]){
	close(fd[0]);//关闭读管道，只保留写管道
	int ret = dup2(fd[1], STDOUT_FILENO);//重定向STDOUT_FILENO，让输出命令直接写入到管道中
	if(ret < 0){
		close(fd[1]);
		perror("[twoCMDFather] dup2 error");
		return -11;
	}
	execlp(inputCMDAndArgs[0], inputCMDAndArgs[0], inputCMDAndArgs[1],
			inputCMDAndArgs[2], inputCMDAndArgs[3], inputCMDAndArgs[4],
			inputCMDAndArgs[5], inputCMDAndArgs[6], inputCMDAndArgs[7],
			inputCMDAndArgs[8], inputCMDAndArgs[9], NULL);

	close(fd[1]);
	return -12;
}

void printCMDStr(char * title,char* cmd[],int len){
	char log[256];
	memset(log,0,256*sizeof(char));
	strcat(log,"[printCMDStr] ");
	strcat(log,title);
	strcat(log," : ");
	for(int i=0;i<len;i++){
		if(cmd[i]!=NULL){
			char str[20];
			sprintf(str,"[%d]%s " ,i,cmd[i]);
			strcat(log,str);
		}
	}
	printf("%s\n",log);
}

int twoCMDArgsCheck(int argc,char* argv[],char* inputCMDAndArgs[10],char* outputCMDAndArgs[10]){
	int pipeflags = 0;
	int inputArgs = 0;
	int outputArgs = 0;
	for(int i=2;i<argc;i++){
		if(strcmp("|",argv[i]) == 0){
			pipeflags ++;
			continue;
		}
		if(pipeflags>1){
			printf("[twoCMDArgsCheck] error 最多只能有一个管道符号");
			return -1;
		}else if(pipeflags==0 && inputArgs < 10){

			inputCMDAndArgs[inputArgs] = argv[i];
			inputArgs++;
		}else if(pipeflags==1 && outputArgs < 10){
			outputCMDAndArgs[outputArgs] = argv[i];
			outputArgs++;
		}
	}
	if(pipeflags == 0){
		printf("[twoCMDArgsCheck] error 至少要有一个管道符号");
		return -2;
	}

	return 0;
}
int ipcByPipe(){
	printf("---------ipcByPipe----------\n");
	char *timeStr = (char *)calloc(256,sizeof(char));
	int returnNo = 0;
	int fd[2];
	toDateTimeCh(timeStr,0);
	if(pipe(fd) < 0){
		char errorStr[512];
		sprintf(errorStr,"{%s}-FP [ipcByPipe] create pipe error",timeStr);
		perror(errorStr);
		returnNo = -1;
	}else{
		long readSize = fpathconf(fd[0],_PC_PIPE_BUF);
		long writeSize = fpathconf(fd[1],_PC_PIPE_BUF);
		printf("{%s}-FP-[ipcByPipe] create pipe success, readFD[%d] size is %ld,writeFD[%d] size is %ld\n",timeStr,fd[0],readSize,fd[1],writeSize);
		pid_t pid = fork();

		if(pid==0){
			toDateTimeCh(timeStr,0);
			printf("{%s}-SP-[ipcByPipe] create son process success ,son pid is %d\n",timeStr,getpid());
			close(fd[1]);
			char buf[1024];
			while(1){
				memset(buf,0,1024*sizeof(char));
				int ret = read(fd[0],buf,sizeof(buf));
				toDateTimeCh(timeStr,0);
				if(ret==0){
					printf("{%s}-SP-[ipcByPipe] pipe is closed\n",timeStr);
					break;
				}else{
					printf("{%s}-SP-[ipcByPipe] get msg from pipi :  %s\n",timeStr,buf);
				}
			}

			close(fd[0]);
		}else if(pid>0){
			toDateTimeCh(timeStr,0);
			printf("{%s}-FP-[ipcByPipe] create son process success\n",timeStr);
			sleep(2);
			close(fd[0]);
			char *buf = "this mesage from father process";
			int sendbits = write(fd[1],buf,strlen(buf));
			toDateTimeCh(timeStr,0);
			printf("{%s}-FP-[ipcByPipe] send message[%d bits] from father\n",timeStr,sendbits);
			sleep(10);
			close(fd[1]);
			while(1){
				int status;
				pid_t sID = waitpid(-1,&status,WNOHANG);
				if(sID == -1){
					toDateTimeCh(timeStr,0);
					printf("{%s}-FP-[ipcByPipe] all son finished \n",timeStr);
					break;
				}
				sleep(1);
			}
		}else{
			char errorStr[512];
			toDateTimeCh(timeStr,0);
			sprintf(errorStr,"{%s}-FP [ipcByPipe] fork error",timeStr);
			perror(errorStr);
			returnNo = -2;
		}
	}
	free(timeStr);
	return returnNo;
}

