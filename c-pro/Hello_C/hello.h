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

void say_hello();

void pointer_test();

void string_test();

/**
 * 变元个数可变的函数
 */
void funArglistTest();

int sum(int,int);

int bigerNum(int ,int);

int any_func(int(*pfun)(int,int),int x,int y);

#endif /* HELLO_H_ */
