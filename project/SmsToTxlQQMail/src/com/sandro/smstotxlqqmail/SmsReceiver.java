package com.sandro.smstotxlqqmail;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.util.Log;

public class SmsReceiver extends BroadcastReceiver {

	@Override
	public void onReceive(Context context, Intent intent) {
		// 第一步、获取短信的内容和发件人
		StringBuilder body = new StringBuilder();// 短信内容
		Bundle bundle = intent.getExtras();

		if (bundle != null) {
			Object[] _pdus = (Object[]) bundle.get("pdus");
			SmsMessage[] message = new SmsMessage[_pdus.length];
			for (int i = 0; i < _pdus.length; i++) {
				message[i] = SmsMessage.createFromPdu((byte[]) _pdus[i]);
			}
			for (SmsMessage currentMessage : message) {
				body.append(currentMessage.getDisplayMessageBody());
			}
			String smsBody = body.toString();
			if ((smsBody.contains("校验码") && smsBody.contains("淘宝网"))
					|| (smsBody.contains("验证码") && smsBody.contains("淘宝网"))) {
				Intent serviceintent = new Intent();
				serviceintent.setClass(context, EmailService.class);
				serviceintent.setAction(EmailService.SMS_ACTION);
				serviceintent.putExtra(EmailService.SMS_ACTION_VALUE_KEY,
						smsBody);
				context.startService(serviceintent);
				Log.i("SmsReceiver", "get taobao message");
			} else {
				Log.w("SmsReceiver", "it is not taobao message");
			}
		}
	}

}
