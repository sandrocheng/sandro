package com.tencent.onesecurity.safebox.manager;

public class PopStackManager {
	// 设置密码
	public static final int POPSTACK_PASSWORD_CREATE_FIRST = 2;
	public static final int POPSTACK_PASSWORD_CREATE_FIRST_RESULT = 20;
	public static final int POPSTACK_PASSWORD_CREATE_SECOND = 3;
	public static final int POPSTACK_PASSWORD_CREATE_SECOND_RESULT = 30;
	public static final int POPSTACK_PASSWORD_CREATE_THIRD = 4;
	public static final int POPSTACK_PASSWORD_CREATE_THIRD_RESULT = 40;
	// 找回密码
	public static final int POPSTACK_PASSWORD_FORGOT_FIRST = 5;
	public static final int POPSTACK_PASSWORD_FORGOT_FIRST_RESULT = 50;
	public static final int POPSTACK_PASSWORD_FORGOT_SECOND = 6;
	public static final int POPSTACK_PASSWORD_FORGOT_SECOND_RESULT = 60;
	public static final int POPSTACK_PASSWORD_FORGOT_THIRD = 7;
	public static final int POPSTACK_PASSWORD_FORGOT_THIRD_RESULT = 70;
	// 重置密码
	public static final int POPSTACK_PASSWORD_RESET_FIRST = 8;
	public static final int POPSTACK_PASSWORD_RESET_FIRST_RESULT = 80;
	public static final int POPSTACK_PASSWORD_RESET_SECOND = 9;
	public static final int POPSTACK_PASSWORD_RESET_SECOND_RESULT = 90;
	public static final int POPSTACK_PASSWORD_RESET_THIRD = 10;
	public static final int POPSTACK_PASSWORD_RESET_THIRD_RESULT = 100;
	// 正常输入密码
	public static final int POPSTACK_PASSWORD_INPUT_FIRST = 11;
	public static final int POPSTACK_PASSWORD_INPUT_FIRST_RESULT = 110;
	public static final int POPSTACK_PASSWORD_INPUT_FIRST_RESULT_FORGOT = 111;
	// 解屏锁输入密码
	public static final int POPSTACK_PASSWORD_UNLOCK_FIRST = 12;
	public static final int POPSTACK_PASSWORD_UNLOCK_FIRST_RESULT = 120;
	// 补充设置密码问题答案
	public static final int POPSTACK_PASSWORD_Question_ADD = 13;
	public static final int POPSTACK_PASSWORD_Question_ADD_RESULT = 130;	
	
	public static final int POPSTACK_SETTING_TO_MAIN = 14;
	public static final int POPSTACK_SETTING_TO_MAIN_RESULT = 141;
	public static long timeLock;
	// 私密空间主界面业务内容变量及常量
	public static int idSecureSpaceContent;
	public static final int ID_CONTENT_ONE = 0;
	public static final int ID_CONTENT_TWO = 1;
	public static final int ID_CONTENT_THREE = 2;
	public static final int ID_CONTENT_FOUR = 3;
	public static final int ID_CONTENT_FIVE = 4;
	//
	public static final int LENGTH_PASSWORD_LESS = 4;// 密码最小长度
	public static final int LENGTH_PASSWORD_MORE = 16;// 密码最大长度
	public static final int LENGTH_ANSWER_MORE = 50;// 答案最大长度
	
	public static final String KEY_PASSWORD="KEY_PASSWORD";
}
