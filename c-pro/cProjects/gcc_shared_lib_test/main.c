
/*
 * gcc编译共享库
 * 将head.h文件放在include目录中,libtest.so放在lib目录中
 * 执行命令
 *	gcc -o ./bin/main main.c -I./include/ -L./lib/ -ltest -DMAX=100 -DPRINTSTR='"abcc"' 
 * 
 * 设置临时动态库路径，确保动态库可以被系统查找到，也可以修改 ~/.bashrc文件，永久设置动态库路径
 * export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/mywork/gitwork/sandro/c-pro/cProjects/gcc_shared_lib_test/lib
 *
 *
 */
#include <stdio.h>
#include "head.h"


int main(int argc,char *argv[])
{
	int x = 10;
	printf("Hello world! argc : %d \n",argc);
	
	int max = 0;
	
	#ifdef MAX
		max = MAX;
	#endif	
	printf("Max is %d \n",max);
	
	#ifdef PRINTSTR
		printf(PRINTSTR);
		printf("\n");
	#endif
	func1();
	func2();
	return 0;
}


