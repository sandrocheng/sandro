package com.sandro.smstotxlqqmail.dao;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

import com.sandro.smstotxlqqmail.MainApp;



public class Dao {

	private static Dao instance = null;
	
	private SharedPreferences setting;
	
	private final String SETTING_INFOS = "SettingInfo";
	
	private final class KEYS{
		private static final String PASSWORD_KEY = "password_key";
		private static final String EMAIL_KEY = "email_key";
	}
	
	private Editor editor;
	
	private Dao(){
		setting = MainApp.getAppContext().getSharedPreferences(SETTING_INFOS, Context.MODE_PRIVATE);
		editor = setting.edit();
	}
	
	// 使用单例模式
	public static Dao getInstance() {
		if (instance == null) {
			synchronized (Dao.class) {
				if (instance == null) {
					instance = new Dao();
				}
			}
		}
		return instance;
	}
	
	/**
	 * 保存密码
	 * @param password
	 */
	public void setPassword(String password){
		this.editor.putString(KEYS.PASSWORD_KEY, password).commit();
	}
	
	public String getPassword(){
		return this.setting.getString(KEYS.PASSWORD_KEY, null);
	}
	
	public void setEmail(String eMail){
		this.editor.putString(KEYS.EMAIL_KEY, eMail).commit();
	}
	
	public String getEmail(){
		return this.setting.getString(KEYS.EMAIL_KEY, null);
	}
}
