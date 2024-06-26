/*
 * tools.h
 *  Created on: 2023年1月8日
 *      Author: sandro
 */

#ifndef TOOLS_H_
#define TOOLS_H_

#include <time.h>
#include <string.h>

/**
 * 将当前时间转化为一个中文字符串
 */
void toDateTimeCh(
		char* timeStr, /*返回的字符串指针，建议长度为60*/
		long timeS /*秒数,0当前时间*/
);

#endif /* TOOLS_H_ */
