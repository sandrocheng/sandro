/*
 * tools.c
 *  Created on: 2023年1月8日
 *      Author: sandro
 */

#include "tools.h"

void timelog(char *buf) {
	char time[60] = { 0 };
	toDateTime(time, 0, 1);
	printf("==%s== %s \n", time, buf);

}

void toDateTime(char *timeStr, long timeS, int type) {
	time_t calendar_end;
	struct tm *time_data;
	if (timeS == 0) {
		calendar_end = time(NULL);
		time_data = localtime(&calendar_end);
	} else {
		calendar_end = timeS;
	}
	time_data = localtime(&calendar_end);
	if (type == 0) {
		const char *days[] = { "周日", "周一", "周二", "周三", "周四", "周五", "周六" };
		const char *months[] = { "一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月",
				"九月", "十月", "十一月", "十二月" };

		sprintf(timeStr, "%d 年 %s %d 日 ，%s,%d 点 %d 分 %d 秒",
				time_data->tm_year + 1900,
				months[time_data->tm_mon],
				time_data->tm_mday,
				days[time_data->tm_wday],
				time_data->tm_hour,
				time_data->tm_min,
				time_data->tm_sec);

	} else {
		sprintf(timeStr, "%d-%d-%d %d:%d:%d",
				time_data->tm_year + 1900,
				time_data->tm_mon + 1,
				time_data->tm_mday,
				time_data->tm_hour,
				time_data->tm_min,
				time_data->tm_sec);
	}
}

void toDateTimeCh(char *timeStr, long timeS) {
	toDateTime(timeStr, timeS, 0);
}

