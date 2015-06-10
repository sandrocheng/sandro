package com.sandro.smstotxlqqmail.service;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;

import com.sandro.smstotxlqqmail.dao.Dao;
import com.sandro.smstotxlqqmail.util.MailSender;
import com.sandro.smstotxlqqmail.util.MailSender.SendMailListener;

public class EmailService extends IntentService{
	
	public static final String SMS_ACTION = "com.sandro.action.receiveSMS";
	public static final String SMS_ACTION_VALUE_KEY = "SMS_MSG";

	public EmailService(String name) {
		super(name);
	}
	
	public EmailService() {
		super("EmailService");
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		if(intent == null) return;
		String action = intent.getAction();
		if (action == null || "".equals(action)) return;
		
		if(SMS_ACTION.equals(action)){
			String msg = intent.getStringExtra(SMS_ACTION_VALUE_KEY);
			if(msg!=null){
				MailSender sm = new MailSender(new SendMailListener(){

					@Override
					public void sendMailDone(boolean success, String result) {
					}
					
				},Dao.getInstance().getEmail(),Dao.getInstance().getPassword());
				sm.sendEmail("淘宝网 验证码 短信", msg);
				Log.i("EmailService", "start send mail");
			}else{
				Log.w("EmailService", "msg is null");
			}
		}else{
			Log.w("EmailService", "is not SMS_ACTION");
		}
	}
	
	@Override
	public void onCreate() {
		super.onCreate();
	}

}
