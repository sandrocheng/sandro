/*
 ============================================================================
 Name        : cAll.c
 Author      : sandrocheng
 Version     :
 Copyright   : sandrocheng
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include "hello.h"

int main(int argc,char *argv[])
{
	say_hello();

	pointer_test();

//	string_test();

//	printf("argc in main is %d \n" ,argc);
//	for(int i= 0;i<argc;i++){
//		printf("argv[%d] : %s \n",i,argv[i]);
//	}

//	funArglistTest((double)3,(double)3,(double)5,(double)9,(double)0);
//	struct_test();

//	file_test();
//	file_test2();
//	file_byte_test();
//	file_seek_test();
	c_date_time_test();
	return 0;
}
