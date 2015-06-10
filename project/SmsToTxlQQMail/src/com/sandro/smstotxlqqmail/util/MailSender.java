package com.sandro.smstotxlqqmail.util;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

import android.util.Log;

/**
 * 邮件crash上报
 * @author sandrocheng
 *
 */
public class MailSender {
	private Socket client = null;
	private DataOutputStream dout;
	private DataInputStream din;
	private int tag = 0;
	String RCPT_TO = "<35192280@qq.com>;<382667954@qq.com>";
	private String[] mailArray;
	private int index = 0;
	private SendMailListener listener = null;
	private String eMail;
	private String password;
	

	public interface SendMailListener {
		/**
		 * 
		 * @param success ture 成功，false 失败
		 * @param result 成功，失败的描述结果
		 */
		void sendMailDone(boolean success,String result);
	}

	public MailSender(SendMailListener l,String eMail,String password) {
		listener = l;
		this.eMail = eMail;
		this.password = password;
	}

	private boolean initNet(){
		try {
			client = new Socket("smtp.qq.com", 25);
			dout = new DataOutputStream(client.getOutputStream());
			din = new DataInputStream(client.getInputStream());
			mailArray = RCPT_TO.split(";");

		} catch (UnknownHostException e) {
			Log.e("MailSender",
					"initNet,UnknownHostException : " + e.toString());
			return false;
		} catch (IOException e) {
			Log.e("MailSender", "initNet,create socket IOException : "
					+ e.toString());
			return false;
		}
		return true;
	}
	
	/**
	 * 邮件发送 耗时操作，外部需要开启线程
	 * @param title
	 * @param body
	 */
	public void sendEmail(String title,String body) {
		boolean success = false;
		String result = "email is not setting!";
		boolean initNet = initNet();
		if(!initNet){
			success = false;
			result = "net error";
		}
		while (true && eMail!=null && password!=null&&initNet) {
			try {
				if (!client.isConnected()) {
					Thread.sleep(100);
				} else {
					byte[] buffer = new byte[300];
					din.read(buffer);

					result= new String(buffer);
					buffer = null;
					Log.i("MailSender", "stmp recive tag : " + tag
							+ " ,cmd -> " + result);
					if (tag == 0 && result.contains("220")) {
						dout.writeBytes("EHLO pop.qq.com\r\n");
						Log.d("MailSender", "tag : " + 0 + " ,cmd : " + 220);
					} else if (tag == 1) {
						dout.writeBytes("AUTH LOGIN\r\n");
						Log.d("MailSender", "tag : " + 1);
					} else if (tag == 2 && result.contains("334")) {
						
						dout.writeBytes(BASE64Coding.encode(eMail) + "\r\n");// 邮箱用户名加密如：MzgyNKDICnxedxLmNvbQ==\r\n
						Log.d("MailSender", "tag : " + 2 + " ,cmd :  334");
					} else if (tag == 3 && result.contains("334")) {
						dout.writeBytes(BASE64Coding.encode(password) + "\r\n");// 邮箱密码加密
																	// 如：veFergSMpIw==\r\n
						Log.d("MailSender", "tag : " + 3 + " ,cmd : " + 334);

					} else if (tag == 4 && result.contains("235")) { // 235
																	// Authentication
																	// successful
						StringBuffer mailFrom = new StringBuffer();
						mailFrom.append("MAIL FROM:<");
						mailFrom.append(eMail);
						mailFrom.append(">");
						mailFrom.append("\r\n");

						dout.writeBytes(mailFrom.toString());
						mailFrom = null;
						Log.d("MailSender", "tag : " + 4 + " ,cmd : " + 235);
					} else if (tag >= 5 && tag <= (5 + mailArray.length - 1)
							&& result.contains("250")) { // 250 Mail OK
						StringBuffer mailTo = new StringBuffer();
						mailTo.append("RCPT TO:");
						mailTo.append(mailArray[index]);
						mailTo.append("\r\n");

						dout.writeBytes(mailTo.toString());

						mailTo = null;
						++index;
						Log.d("MailSender", "tag : " + 5 + " ,cmd : " + 250);
					} else if (tag == (6 + mailArray.length - 1)
							&& result.contains("250")) { // cmd= 250 Mail
														// OK
						dout.writeBytes("DATA\r\n");
						Log.d("MailSender", "tag : " + 6 + " ,cmd : " + 250);
					} else if (tag == (7 + mailArray.length - 1)
							&& result.contains("354")) { // 354 Send
														// message,
														// end with a
														// "." on
														// a line by
														// itself
														// |||or||| 354
														// End
														// data with
														// <CR><LF>.<CR><LF>
						StringBuffer mailbody = getMailBody(title,body,eMail);
						dout.write(mailbody.toString().getBytes());
						mailbody = null;
						Log.i("SendMailUtil", "tag : " + 7 + " ,cmd : " + 354);
					} else if (tag == (8 + mailArray.length - 1)
							&& result.contains("250")) { // 250 OK, message
														// accepted for
														// delivery:
														// queued
														// as 12345
														// |||or|||
														// cmd= 250 Mail
														// OK
														// queued as
														// smtp4,DtGowEDZR0y7fShQ6DZPEg--.1007S2
														// 1344831074
						dout.writeBytes("QUIT\r\n");
						success = true;
						result = "success ";
						Log.d("MailSender", "tag : " + 8 + " ,cmd : " + 250);
						break;
					} else if (tag == (9 + mailArray.length - 1)
							&& result.contains("221")) { // 221 Bye
						Log.w("MailSender", "tag : " + 9 + " ,cmd : " + 221);
						break;
					} else {
						Log.w("MailSender", "break");
						break;
					}

					tag++;
					result = null;
					buffer = null;

				}
			} catch (InterruptedException e) {
				success = false;
				result = "InterruptedException  ";
				Log.e("MailSender", "InterruptedException  " + e.toString());
				break;
			} catch (IOException e) {
				success = false;
				result = "IOException123";
				Log.e("MailSender", "IOException123  " + e.toString());
				break;
			}
		}

		if(client!=null){
			try {
				client.close();
				client = null;
			} catch (IOException e) {
				Log.e("MailSender", "end IOException  " + e.toString());
			}
		}

		Log.i("MailSender", "send done!!  ");
		if (null != listener) {
			listener.sendMailDone(success,result);
		}
	}

	private StringBuffer getMailBody(String title,String body,String mailFrom) {
		StringBuffer mailbody = new StringBuffer();
		mailbody.append("From:<");
		mailbody.append(mailFrom);
		mailbody.append(">");
		mailbody.append("\r\n");
		mailbody.append("Subject: " + title);
		mailbody.append("\r\n");
		mailbody.append("To:");
		mailbody.append(RCPT_TO);
		mailbody.append("\r\n");
		mailbody.append("\r\n");
		mailbody.append(body);
		mailbody.append("\r\n");
		mailbody.append(".");
		mailbody.append("\r\n");
		return mailbody;
	}

}
