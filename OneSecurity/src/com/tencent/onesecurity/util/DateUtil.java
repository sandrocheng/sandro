package com.tencent.onesecurity.util;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import android.text.format.DateFormat;

//import com.tencent.qqdoctor.R;
//import com.tencent.qqdoctor.service.QQPimApplication;

/**
 *  日期相关操作工具
 * @author junmingluo
 *
 */
public class DateUtil {
	
	/**
	 * 获取某一个日期调整后的上一次月结日
	 * @param colsing_day
	 * @return
	 */
	public static Date getPreviewClosingDay(Date date, int closing_day){
		int DATE = GregorianCalendar.DATE;
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
	
		if(date.getDate() != closing_day){
			if(date.getDate() > closing_day){
				gc.set(DATE, closing_day);
			}else{
				gc.set(GregorianCalendar.DAY_OF_MONTH, 1);
				gc.add(GregorianCalendar.MONTH, -1);
				gc = setDateToMonth(gc, closing_day);
			}
		}
		return clearTime(gc).getTime();
	}
	
	
	/**
	 * 获取某个日期调整后的下一次月结日
	 * @param date
	 * @return
	 */
	public static Date getNextClosingDay(Date date, int closing_day){
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		
		if(date.getDate() != closing_day){
			if(date.getDate() < closing_day){
				gc = setDateToMonth(gc, closing_day);
			}else{
				gc.set(GregorianCalendar.DAY_OF_MONTH, 1);
				gc.add(GregorianCalendar.MONTH, 1);
				gc = setDateToMonth(gc, closing_day);
			}
		}else{
			gc.set(GregorianCalendar.DAY_OF_MONTH, 1);
			gc.add(GregorianCalendar.MONTH, 1);
			gc = setDateToMonth(gc, closing_day);
		}
		return  clearTime(gc).getTime();
	}
	
	/**
	 * 获取这个月到下一个月里中，两次月结日的所有日期
	 * @param closing_day
	 * @return
	 */
	public static List<Date> getAllDatebyClosingDay(int closing_day){
		Date start_date, end_date;
		start_date = getPreviewClosingDay(new Date(), closing_day);
		end_date = getNextClosingDay(new Date(), closing_day);
		
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(start_date);
		ArrayList<Date> days = new ArrayList<Date>(35);
		while(gc.getTime().before(end_date)){
			days.add(gc.getTime());
			gc.add(GregorianCalendar.DATE, 1);
		}
		return days;
	}
	
	/**
	 * 判断某一天，在一系列日期的位置
	 * @param dates
	 * @return
	 */
	public static int getPositionInDays(List<Date> dates, Date the_day){
		int count = 0;
		for(Date date : dates){
			if(the_day.after(date)){
				count++;
			}
		}
		return count;
	}
	
	/**
	 * 判断某一个日期，是否在一系统日期之内
	 * @param dates
	 * @param the_day
	 * @return
	 */
	public static boolean isDuringDays(List<Date> dates, Date the_day){
		long start_date = dates.get(0).getTime();
		long end_date = dates.get(dates.size() - 1).getTime();
		long current_date = the_day.getTime();
		return start_date <= current_date && current_date <= end_date;
	}
	
	/**
	 * 获取某个日期最早的时间
	 * @param date
	 * @return
	 */
	public static long getMin(Date date){
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc = clearTime(gc);
		return gc.getTime().getTime();
	}
	
	/**
	 * 获取某个日期最迟的时间
	 * @param date
	 * @return
	 */
	public static long getMax(Date date){
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		gc = clearTime(gc);
		gc.set(GregorianCalendar.HOUR_OF_DAY, 24);
		return gc.getTime().getTime();
	}
	
	/**
	 * 获取某一个日期所在月份中的天数
	 * @param date
	 * @return
	 */
	public static int getDaysByMonth(Date date){
		GregorianCalendar gc = new GregorianCalendar();
		gc.setTime(date);
		return gc.getActualMaximum(GregorianCalendar.DAY_OF_MONTH);
	}
	/**
	 * 设置某个月的日期，根据月结日来调整
	 */
	private static GregorianCalendar setDateToMonth(GregorianCalendar gc, int closing_day){
		int maximum_day = gc.getActualMaximum(GregorianCalendar.DAY_OF_MONTH);
		if(maximum_day >= closing_day){
			gc.set(GregorianCalendar.DAY_OF_MONTH, closing_day);
		}else{
			gc.set(GregorianCalendar.DAY_OF_MONTH, maximum_day);
		}
		return gc;
	}
	
	/**
	 * 清除某一个日期的时间字段
	 * @param gc
	 * @return
	 */
	private static GregorianCalendar clearTime(GregorianCalendar gc){
		gc.clear(GregorianCalendar.HOUR_OF_DAY);
		gc.clear(GregorianCalendar.HOUR);
		gc.clear(GregorianCalendar.MINUTE);
		gc.clear(GregorianCalendar.SECOND);
		gc.clear(GregorianCalendar.MILLISECOND);
		return gc;
	}


	/**
	 * 判断两个日期是否是同一天
	 * @param dateA
	 * @param dateB
	 * @return
	 */
	public static boolean compareByDateOfMonth(Date dateA, Date dateB) {
		GregorianCalendar gc1 = new GregorianCalendar();
		GregorianCalendar gc2 = new GregorianCalendar();
		
		gc1.setTime(dateA);
		gc1 = clearTime(gc1);
		
		gc2.setTime(dateB);
		gc2 = clearTime(gc2);
		
		return gc1.getTimeInMillis() == gc2.getTimeInMillis();
	}
	
	/**
	 * 获取目标日期和源日期之间的日期间隔, 可返回负值
	 * 
	 * @param targetDate
	 * @param sourceDate
	 * @return
	 */
	public static int getDayInterval(Date targetDate, Date sourceDate) {
		GregorianCalendar gc1 = new GregorianCalendar();
		GregorianCalendar gc2 = new GregorianCalendar();

		gc1.setTime(targetDate);
		gc1 = clearTime(gc1);

		gc2.setTime(sourceDate);
		gc2 = clearTime(gc2);
		return (int) ((gc1.getTimeInMillis() - gc2.getTimeInMillis()) / (24 * 60 * 60 * 1000));
	}
	
	private static final String DATA_FORMAT_STR = "yyyy-MM-dd";
	//for 2.** old UI
//	public static String getRelativeTimeSpanString(Date date) {			
//		String time_text = "";
//		long milliseconds = System.currentTimeMillis() - date.getTime();
//		if(milliseconds < 0){//调整时间产生负数，直接显示日期
//			long dateTaken = date.getTime();  
//		    if (dateTaken != 0) {  
//		    	time_text = DateFormat.format(DATA_FORMAT_STR, dateTaken).toString();  
//			}
//		}else{
//			if(milliseconds <= 1000*60){//小于等于1分钟
//				time_text = QQPimApplication.getContext().getString(R.string.soon_last);
//			}else if(milliseconds <= 1000*60*60){//小于等于1小时
//				time_text = milliseconds/(1000*60) + QQPimApplication.getContext().getString(R.string.minute_ago);
//			}else if(milliseconds <= 24*1000*60*60){//小于24小时
//				time_text = (milliseconds / (1000*60*60))  + QQPimApplication.getContext().getString(R.string.hour_ago);
//			}else if(milliseconds < 7*1000*60*60*24){//小于7天
//				time_text = milliseconds/(1000*60*60*24)  + QQPimApplication.getContext().getString(R.string.day_ago);
//			}else if(milliseconds >= 7*1000*60*60*24){//大于7天 显示日期
//				long dateTaken = date.getTime();  
//			    if (dateTaken != 0) {  
//			    	time_text = DateFormat.format(DATA_FORMAT_STR, dateTaken).toString();  
//				}
//			}
//		}
//		return time_text;
//    }
	
	public static String getRelativeTimeSpanStringForEng(Date date) {			
		String time_text = "";
		long milliseconds = System.currentTimeMillis() - date.getTime();
		if(milliseconds < 0){//调整时间产生负数，直接显示日期
			long dateTaken = date.getTime();  
		    if (dateTaken != 0) {  
		    	time_text = DateFormat.format(DATA_FORMAT_STR, dateTaken).toString();  
			}
		}else{
			if(milliseconds <= 1000*60){//小于等于1分钟
				time_text = milliseconds/1000 + "s";
			}else if(milliseconds <= 1000*60*60){//小于等于1小时
				time_text = milliseconds/(1000*60) + "m";
			}else if(milliseconds <= 24*1000*60*60){//小于24小时
				time_text = (milliseconds / (1000*60*60)) + "h";
			}else if(milliseconds < 7*1000*60*60*24){//小于7天
				time_text = milliseconds/(1000*60*60*24) + "days";
			}else if(milliseconds >= 7*1000*60*60*24){//大于7天 显示日期
				long dateTaken = date.getTime();  
			    if (dateTaken != 0) {  
			    	time_text = DateFormat.format(DATA_FORMAT_STR, dateTaken).toString();  
				}
			}
		}
		return time_text;
    }
	
	//for 3.0 UI
//	public static String getRelativeTimeSpanString2(Date date) {			
//		String time_text = "";
//		long milliseconds = System.currentTimeMillis() - date.getTime();
//		if(milliseconds < 0){//调整时间产生负数，直接显示日期
//			long dateTaken = date.getTime();
//		    if (dateTaken != 0) {  
//		    	time_text = DateFormat.format(DATA_FORMAT_STR, dateTaken).toString();  
//			}
//		}else{
//			if(milliseconds <= 1000*60){//小于等于1分钟
//				time_text = QQPimApplication.getContext().getString(R.string.soon_last);
//			}else if(milliseconds <= 1000*60*60){//小于等于1小时
//				time_text = milliseconds/(1000*60) + QQPimApplication.getContext().getString(R.string.minute_ago);
//			}else if(milliseconds <= 24*1000*60*60){//小于24小时
//				time_text = (milliseconds / (1000*60*60))  + QQPimApplication.getContext().getString(R.string.hour_ago);
//			}else if(milliseconds < 3*1000*60*60*24){//小于3天
//				time_text = milliseconds/(1000*60*60*24)  + QQPimApplication.getContext().getString(R.string.day_ago);
//			}else{//大于3天 显示多少天
//				time_text = milliseconds/(1000*60*60*24)  + QQPimApplication.getContext().getString(R.string.day);
//			}
//		}
//		return time_text;
//    }
	
	public static boolean isTheSameDay(Date dataA, Date dataB) {   
        Calendar c1 = Calendar.getInstance();
        Calendar c2 = Calendar.getInstance();
        c1.setTime(dataA);
        c2.setTime(dataB);
        return (c1.get(Calendar.YEAR) == c2.get(Calendar.YEAR))
                && (c1.get(Calendar.MONTH) == c2.get(Calendar.MONTH))
                && (c1.get(Calendar.DAY_OF_MONTH) == c2.get(Calendar.DAY_OF_MONTH));
    }  
	
	public static String date2String(Date date, String pattern) {
		if (date == null) {
			return null;
		}
		return DateFormat.format(pattern, date).toString();
	}
	public static String date2String(long timeStamp, String pattern) {
		return DateFormat.format(pattern, timeStamp).toString();
	}
	
}
