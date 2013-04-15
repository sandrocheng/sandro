package com.tinyscreen.mail;

import java.util.Date;

import android.content.Context;
import android.os.Build;

import com.tinyscreen.quteWatcher.log.Util;

public class MailInfoUtil {
	
	public static MailSenderInfo getMailInfo(Context context){
		MailSenderInfo mailInfo = new MailSenderInfo();
		mailInfo.setMailServerHost("smtp.exmail.qq.com");
		mailInfo.setMailServerPort("25");
		mailInfo.setValidate(true);
		mailInfo.setUserName("qute_robots@21winmess.com");
		mailInfo.setPassword("qute#DLws1");// 邮箱密码
		mailInfo.setFromAddress("qute_robots@21winmess.com");
		mailInfo.setSubject("quterWatcher数据上报" +
				":IMEI-" + Util.getIMEI(context) +
				",机型-" + Build.DEVICE + 
				",时间-" + Util.getDate(new Date()));
		return mailInfo;
	}

}
