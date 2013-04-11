package com.tencent.onesecurity.util;

/**
 * 字符串工具类
 * 
 * @author LionLiu
 */
public class StringUtil {
	
	/**
	 * 把单个英文字母或者字符串转换成数字ASCII码
	 * 
	 * @param input
	 * @return
	 */
	public static int character2ASCII(String input) {
		if (null == input) {
			return -1;
		}
		char[] temp = input.toCharArray();
		StringBuilder builder = new StringBuilder();
		for (char each : temp) {
			builder.append((int) each);
		}
		String result = builder.toString();
		return Integer.parseInt(result);
	}
	
	/**
	 * 判断一个字符串是否为 英文字母(大写)
	 * @param input
	 * @return
	 */
	public static boolean isEnglishLetter(String input) {
		if (null == input || "".equals(input)) {
			return false;
		}
		
		int inputASCII = character2ASCII(input.toUpperCase());
		if (inputASCII < 65 || inputASCII > 90) {
			return false;
		} else {
			return true;
		}
	}
	
	public static boolean isASCLessThan65(String input) {
        if (null == input || "".equals(input)) {
            return false;
        }
        
        int inputASCII = character2ASCII(input.toUpperCase());
        if (inputASCII < 65 || inputASCII > 90) {
            return false;
        } else {
            return true;
        }
    }
	
	public static boolean isASCMoreThan96(String input) {
        if (null == input || "".equals(input)) {
            return false;
        }
        
        int inputASCII = character2ASCII(input.toUpperCase());
        if (inputASCII > 96) {
            return false;
        } else {
            return true;
        }
    }
	public static String[] getStringByStyle(String str){
		String pv = "";
		String cv = "";
		String hot = "";
		
		if(str == null || "".equals(str)){
			return new String[]{pv,cv,hot};
		}
		
        String as[] = str.trim().split("\\.");
        for(int i = 0; i< as.length;i++){
        	String s = as[i];
        	boolean isnum = isNum(s);
        	if(!isnum){
        		return new String[]{pv,cv,hot};
        	}
        }
        if(as.length >= 3){
        	pv = as[0];
        	cv = as[1];
        	hot = as[2];
        }else if(as.length == 2){
        	pv = as[0];
        	cv = as[1];
        	hot = "";
        }else if(as.length == 1){
        	pv = as[0];
        	cv = "";
        	hot = "";
        }
        return new String[]{pv,cv,hot};
}
		
	public static String emptyIfNull(String s) {
		return s == null ? "" : s;
	}
	
	/**
	 * 判断字符串是否为空，或者空串
	 * @Description 
	 * @version 1.0
	 * @author LionLiu
	 */
	public static boolean isEmpty(String s) {
	    if (null == s || "".equals(s)) {
	        return true;
	    }
	    
	    return false;
	}
	
	/**
	 * 判断一个String是否是纯数字
	 * @param ss
	 * @return
	 */
	public static boolean isNum(String ss) {
		for (int i = 0; i < ss.length(); i++) {
			char a = ss.charAt(i);
			if (a < '0' || a > '9') {
				return false;
			}
		}
		return true;
	}
}
