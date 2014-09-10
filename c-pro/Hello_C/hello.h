/*
 * hello.h
 *
 *  Created on: 2013-5-22
 *      Author: sandro
 */

#ifndef HELLO_H_
#define HELLO_H_
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stdlib.h>

void file_byte_test();

void file_test();

void file_test2();

void struct_test();

void say_hello();

void pointer_test();

void string_test();

void funArglistTest(double v1,double v2, ...);

int sum(int,int);

int bigerNum(int ,int);

void changePvalue(short *pValue);

int any_func(int(*pfun)(int,int),int x,int y);

#endif /* HELLO_H_ */
