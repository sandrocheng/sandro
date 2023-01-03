/*
 * main.c
 *
 *  Created on: 2023-1-2
 *      Author: sandro
 */

#include <stdio.h>
#include "head.h"

int main(int argc,char *argv[])
{
	printf("argc is %d\n",argc);
	
	for(int i = 0;i<argc ;i++){
		printf("argv[%d] is %s \n",i,argv[i]);
	}
	
	fun1();
	fun2();
	printf("12 + 13 = %d\n",sum(12,13) );	
	return 0;
}
