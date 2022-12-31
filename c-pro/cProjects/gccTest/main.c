
/*
 * gcc编译测试
 *
 */
#include <stdio.h>



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
	return 0;
}


