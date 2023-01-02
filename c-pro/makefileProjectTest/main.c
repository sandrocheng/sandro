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
	fun1();
	fun2();
	printf("12 + 13 = %d\n",sum(12,13) );	
	return 0;
}
