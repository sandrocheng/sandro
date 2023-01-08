/*
 * linux 标准IO库,linux内核提供的函数，使用man 2 函数名 ，查看详细信息
 * 1、open
 * 		文件描述符
 * 		一个进程启动后，默认打开三个文件描述符
 * 			#define STDIN_FILENO    0
 *          #define STDOUT_FILEOUT  1
 *          #define STDERR_FILENO   2
 *      新打开文件返回文件描述符表中位使用的最小文件描述符，调用open函数可以打开或创建文件，并得到一个文件描述符。
 *
 *      linux open函数：
 * 		int open(const *pathname,int flags);
 * 		int open(const char *pathname,int flags,mode_t mode);
 * 		pathname参数是要打开或创建的文件名，和fopen一样，pathname既可以是相对路径，也可以是绝对路径
 * 		flags参数有一系列常数值可供选择，可以同时选择多个常数用按位或运算结合起来，所以这些常数都以O_开头，表示or。
 * 			必选项：选择以下三个常数，必须且仅允许指定一个。
 *          	a)O_RDONLY 只读打开
 * 				b)O_WRONLY 只写打开
 *              c)O_RDWR 可读可写打开
 *          可选项：可以选择多个或不选，和必选项按位或起来作为flags,可选项有很多，这里只介绍几个常用选项
 * 				a) O_APPEND 表示追加。在文件尾部追加，不覆盖。
 *              b) O_CREAT 若次文件不存在则创建他。使用此选项是需要提供第三个参数 mode，表示该文件的访问权限
 * 					文件最终权限 mode&~umask
 * 					umask是文件掩码，每个用户都有文件掩码，通过使用命令查看,如下
 * 						$umask
 * 						$0002
 * 					注意：第一个0代表8进制，如果要设置0666，那么最终权限是
 * 						666&~002 = 110 110 110 & 111 111 101 = 110 110 100  = 0664
 *              c)O_EXCL 如果同时指定了O_CREAT,并且文件已经存在，则出错返回。
 *              d)O_TRUNC 如果文件已存在，将其长度截断位0字节
 *              e)O_NONBLOCK 对于设备文件，以O_NONBLOCK方式打开可以做非阻塞IO操作
 *		函数返回值
 *			 成功：返回一个最小且未被占用的文件描述符
 *           失败：返回 -1，并设置errno值
 *
 *2、close函数
 *		函数描述：关闭文件
 *		函数原型：int close(int fd);
 *      函数参数：
 * 			fd,文件描述符
 *      函数返回值：
 * 			成功返回 0
 *          失败返回 -1，并设置errno值
 * 		需要说明的是，当一个进程终止的时候，内核对该进程所有尚未关闭的文件描述符调用close关闭，所以即使用户程序不调用close，在终止时，内核也会自动关闭
 *      它打开的所有文件。但是对于一个常年类月运行的程序（比如服务器），打开的文件描述符一定要记得关闭。否则随着打开的文件越来越多，会占用大量文件描述符
 *		和系统资源。
 *
 *3、read 函数
 * 		函数表述，从打开的设备或文件中读取数据
 * 		函数原型：ssize_t read(int fd, void *buf, size_t count);
 *      函数参数：
 *			fd 文件描述符
 * 			buf 读上来的数据保存在缓冲区buf中
 * 		    count buf缓冲区存放的最大字节数
 *		函数返回值：
 * 			>0 读取到的字节数
 *          =0 文件读取完毕
 *          -1 出错，并设置errno
 *
 * 4、write
 * 		函数描述：向打开的设备或文件中写数据
 * 		函数原型: ssize_t write(int fd, const void *buf, size_t count);
 *      函数参数：
 * 			fd ，文件描述符
 * 			buf ，缓冲区 要写入文件或设备的数据
 *          count ，buf中数据的长度
 *      函数返回值
 * 			成功：返回写入的字节数
 *          错误：返回-1，并设置errno
 *
 * 5、lseek
 * 		所有打开的文件都有一个当前文件偏移量-current file offset，以下简称cfo。 cfo 通常都是一个非负整数，用于表明文件开始处到当前位值的字节数。
 * 		读写操作通常开始于cfo，并且使cfo增大，增量为读写的字节数。文件打开时，cfo会被初始化为0，除非使用了O_APPEND。
 * 		使用lseek函数可以改变文件的cfo.
 *        	#include <sys/types.h>
 *        	#include <unistd.h>
 *        	off_t lseek(int fd, off_t offset, int whence);
 *       函数描述：移动文件指针
 *       函数参数：
 *			fd 文件描述符
 *          offset 它的含义取决于 whence
 * 				如果whence是 SEEK_SET，文件偏移量将设置为offset
 *              如果whence是 SEEK_CUR, 文件偏移量将被设置为 cfo + offset,offset可以是正也可以是负
 *              如果whence是 SEEK_END, 文件偏移量将被设置为文件长度加上 offset ,offset可以是正也可以是负
 * 		函数返回值
 * 			若lseek执行成功，则返回新的偏移量
 *
 *		lseek函数常用操作
 * 			文件指针移动到头部，lseek(fd,0,SEEK_SET);
 *          获取文件指针当前位置，int len = lseek(fd,0,SEEK_CUR);
 *          获取文件长度 ，int len = lseek(fd,0,SEEK_END);
 * 			lseek实现文件拓展：
 * 				off_t currpos;
 * 				currpos = lseek(fd,1000,SEEK_END);//从文件尾部开始向后拓展1000个字节
 *              write(fd,"a",1)//数据随便写，否则无法完成拓展
 *
 *6、perror 和 errno
 *		errno是一个全局变量，当系统调用后出错，会将errno进行设置，perror 可以将errno对ixng的描述信息打印出来。
 *		如： perror("open"); //如果报错的化打印open：（空格）错误信息
 *		errno是每个线程都有保存，所以perror是线程安全的
 *
 *7、阻塞和非阻塞
 *		read函数在读普通文件的时候是非阻塞的，读完立刻返回
 *		read函数在读设备文件的时候是阻塞的，读完buf之前会一直等待,除了设备文件，socket pipe文件也是阻塞的。
 *
 *8、文件操作相关函数:stat,lstat
 *		函数描述：获取文件属性
 *		int stat(const char *pathname, struct stat *statbuf);
 *		int lstat(const char *pathname, struct stat *statbuf);
 *		函数返回值：
 *				0：成功
 *             -1：失败
 * 		struct stat {
 *			dev_t     st_dev;          ID of device containing file ，文件设备号
 *          ino_t     st_ino;          Inode number ,inode节点编号
 *          mode_t    st_mode;         File type and mode ，文件的类型和存取权限
 *		    nlink_t   st_nlink;        Number of hard links 硬链接数量，刚建立文件值为1,如果是目录的化，代表当前目录下有多少个目录
 *          uid_t     st_uid;          User ID of owner
 *          gid_t     st_gid;          Group ID of owner
 *          dev_t     st_rdev;         Device ID (if special file)若此文件为设备文件，则为其设备编号
 *          off_t     st_size;         Total size, in bytes ，文件字节数（文件大小）
 *          blksize_t st_blksize;      Block size for filesystem I/O 文件占用的块的总大小，=512*st_blocks
 *          blkcnt_t  st_blocks;       Number of 512B blocks allocate 块数
 *
 *                 Since Linux 2.6, the kernel supports nanosecond
 *                 precision for the following timestamp fields.
 *                 For the details before Linux 2.6, see NOTES.
 *
 *           struct timespec st_atim;   Time of last access 上次访问时间
 *           struct timespec st_mtim;  Time of last modification 文件数据最后被修改的时间
 *           struct timespec st_ctim;  Time of last status change inode节点状态最后被修改的时间，
 *                                     比如：更改文件访问权限、更改文件属组、更改用户ID、更改链接数、重命名文件等等都会更改inode节点状态。
 *
 *          #define st_atime st_atim.tv_sec      Backward compatibility
 *          #define st_mtime st_mtim.tv_sec
 *          #define st_ctime st_ctim.tv_sec
 *		};
 *
 *		st_mode -- 16位整数
 *			0～2bit 其他人权限
 *				#define S_IROTH	(S_IRGRP >> 3)  // Read by others.  00004
 *				#define S_IWOTH	(S_IWGRP >> 3)  // Write by others. 00002
 *              #define S_IXOTH	(S_IXGRP >> 3)  // Execute by others.00001
 *              #define S_IRWXO	(S_IRWXG >> 3)  // 00007掩码，过滤st_mode中除其他人权限以外的信息
 *              st_mode & S_IRWXO 得到其他人权限（3位）权限，
 *          3～5bit 所属组信息
 *          	# define S_IRGRP	(S_IRUSR >> 3)  // Read by group.  00040
 * 				# define S_IWGRP	(S_IWUSR >> 3)  // Write by group. 00020
 *				# define S_IXGRP	(S_IXUSR >> 3)  // Execute by group.00010
 *				# define S_IRWXG	(S_IRWXU >> 3)  // 00070 掩码，过滤st_mode除所属组权限以外其他信息
 *				st_mode & S_IRWXO ，得到组权限（共6位，低三位已经被掩码归零）权限
 *          6～8--文件所有者权限
 *          	# define S_IRUSR	__S_IREAD       // Read by owner.  00400
 *				# define S_IWUSR	__S_IWRITE      // Write by owner. 00200
 * 				# define S_IXUSR	__S_IEXEC       // Execute by owne 00100
 *				# define S_IRWXU //00700 掩码
 *				st_mode & S_IRWXU ，得到组权限（共9位，低6位已经被掩码归零）权限
 *
 *			使用方法： 	st_mode & S_IRUSR > 0 用户有读权限
 *                      st_mode & S_IWGRP > 0 组用户有写权限
 *                      st_mode &  S_IXOTH > 0 其他人有执行权限
 *                      ...
 *
 *           12～15bit 文件类型,7种
 *				S_IFBLK    块设备
 *				S_IFCHR    字符设备
 *              S_IFDIR    目录文件
 *              S_IFIFO    管道文件
 *              S_IFLNK    符号链接（软链接）
 *              S_IFREG    普通文件
 *              S_IFSOCK   套接字 socket
 *
 *              S_IFMT 文件类型掩码
 *			使用方法
 *			 	1）statbuf.st_mode & S_IFMT  得到的结果和上边7个值对比。
 *				2) 使用对应的宏函数直接判断
 *					S_ISDIR(mode) , S_ISCHR(mode),S_ISBLK(mode),S_ISREG(mode) ,S_ISFIFO(mode) ,S_ISLNK(mode) ,S_ISSOCK(mode)
 *					如：if(S_ISDIR(mode))...
 *
 *		stat,lstat的区别
 *			对于普通文件，这两个函数没有区别，是一样的
 *			对于软链接文件，调用lstat函数获取的是软链接文件本身的属性信息，而stat获取的是软链接文件指向的文件的属性信息
 *
 *
 *
 *
 *
 *
 */

#ifndef IOFUNC_H_
#define IOFUNC_H_

#include <stdio.h> //常规c标准库
#include <stdlib.h>//常规c标准库
#include <string.h>//常规c标准库
#include <sys/types.h>//Unix/Linux系统的基本系统数据类型的头文件
#include <unistd.h>//unix std的意思,是POSIX标准定义的unix类系统定义符号常量的头文件
#include <sys/stat.h>//是 unix/linux 系统定义文件状态所在的伪标准头文件
#include <fcntl.h>//unix标准中通用的头文件，其中包含的相关函数有 open，fcntl，shutdown，unlink，fclose等！
#include "tools.h"

/**
 * Description:读取文件的信息
 */
void readFileInfo(
		char * path /*文件/设备/目录等的路径*/
);

/**
 * 读取设备内容
 * read函数在读设备文件的时候是阻塞的，读完buf之前会一直等待
 */
void readDevice(
		char * path /*设备文件路径,NULL则读取 STDIN_FILENO*/
);
/**
 * 文件扩容
 */
void addFileSize(
		char * pathName,/*需要扩容的文件，如果文件不存在则创建一个新文件*/
		long size/*需要扩容的大小，单位字节*/
);

/**
 * open文件测试
 * @param pathName , 打开或创建的文件名
 */
void openFileTest(char* pathName);

/**
 * 写文件测试,在文件末尾添加内容
 * @param argc main argc参数
 * @param argv main argv参数
 */
void writeFileTestByAdd(int argc,char* argv[]);

/**
 * 写文件测试,新建文件写入字符串，如果文件存在，则在文件的开始位值重新写入新的字符串
 * @param argc main argc参数
 * @param argv main argv参数
 */
void writeFileTestByOverride(int argc,char* argv[]);

/**
 * 写文件测试
 */
static void writeFileTest(int argc,/*main argc参数*/
						  char* argv[],/**main argv参数*/
						  int flags /*linux write函数的flags参数*/);

/**
 * read文件测试
 */
void readFile(char* pathName /*文件名*/);

/**
 * 写入文件，并读出内容
 * @param argc main argc参数
 * @param argv main argv参数
 */
void writeAndRead(int argc,char* argv[]);



#endif /* IOFUNC_H_ */
