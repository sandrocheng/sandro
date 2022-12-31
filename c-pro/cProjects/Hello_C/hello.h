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
#include <time.h>

#define STR_LEN 50

struct Date{
	int day;
	int month;
	int year;
};

typedef struct familyMeta{
	struct Date dob;
	char name[STR_LEN];
	char pa_name[STR_LEN];
	char ma_name[STR_LEN];
}Family;

void c_date_time_test();

void addDate(char *pStr,int year,int month,int day);

void saveFile();

void readFile();

void get_parent_birthday(Family *pmember,char *pStr);

void get_person(int num,Family *pfamily);

void file_seek_test();

void file_byte_test();

void file_test();

void file_test2(void);

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
