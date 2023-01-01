
/*
 * gcc静态库编译
 * 将.h文件放在include目录下，将.a库文件放在/lib下
 * 在项目根目录下执行
 * 	gcc -o ./bin/main main.c -I./include/ -L./lib/ -ltest -DMAX=100 -DPRINTSTR='"hello gcc"'
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


