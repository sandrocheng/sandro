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

#endif /* TOOLS_H_ */
