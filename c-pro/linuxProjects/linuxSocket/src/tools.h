/*
 * tools.h
 *  Created on: 2023年1月8日
 *      Author: sandro
 */

#ifndef TOOLS_H_
#define TOOLS_H_

#include <time.h>
#include <string.h>
#include <stdio.h> //常规c标准库

/**
 * 将当前时间转化为一个中文字符串
 */
void toDateTimeCh(
		char* timeStr, /*返回的字符串指针，建议长度为60*/
		long timeS /*秒数,0:当前时间*/
);

void toDateTime(
		char* timeStr, /*返回的字符串指针，建议长度为60*/
		long timeS, /*秒数,0:当前时间*/
		int type // 0,中文格式;1，简写
);

/**
 * 输出带事件的log 如：[2024 年 四月 2 日 ，周二,20 点 27 分 35 秒] xxxxxxx
 */
void timelog(char *buf);

#endif /* TOOLS_H_ */
