package com.tencent.onesecurity.util;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.Date;

import org.apache.http.util.EncodingUtils;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.telephony.TelephonyManager;
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
	//String MAIL_FROM = "garyyuan@21winmess.com";
	String MAIL_FROM = "qute_robots@21winmess.com";
	String RCPT_TO = "<gordon@21kunpeng.com>;<garyyuan@21kunpeng.com>;<owen@21kunpeng.com>;<jess@21kunpeng.com>;<jackwang@21kunpeng.com>;<joy@21kunpeng.com>;<kevin@21kunpeng.com>;<sandro@21kunpeng.com>;<lynna@21kunpeng.com>;<will@21kunpeng.com>;<allan@21kunpeng.com>;<hunt@21kunpeng.com>;<tony@21kunpeng.com>;<july@21kunpeng.com>;<eleven@21kunpeng.com>;<mandy@21kunpeng.com>;<kaka@21kunpeng.com>;<summer@21kunpeng.com>;<bonnie@21kunpeng.com>;<wendy@21kunpeng.com>";
	//String RCPT_TO = "<garyyuan@21winmess.com>";
	String[] mailArray;
	int index = 0;
	
	private SendMailListener listener = null;
	public interface SendMailListener
	{
		void sendMailDone();
	}
	public SendMailUtil(SendMailListener l) {
		listener = l;
	}

	public void Send(final String data,final Context context) {

		try {
			//client = new Socket("smtp.qq.com", 25);
			client = new Socket("smtp.exmail.qq.com", 25);
			dout = new DataOutputStream(client.getOutputStream());
			din = new DataInputStream(client.getInputStream());

			mailArray = RCPT_TO.split(";");

		} catch (UnknownHostException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
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
							
							if (tag == 0 && cmd.contains("220")) {
								//dout.writeBytes("EHLO pop.qq.com\r\n");
								dout.writeBytes("EHLO pop.exmail.qq.com\r\n");
							} else if (tag == 1) {
								dout.writeBytes("AUTH LOGIN\r\n");

							} else if (tag == 2 && cmd.contains("334")) { // cmd=
																		// 334
																		// dXNlcm5hbWU6
								dout.writeBytes("cXV0ZV9yb2JvdHNAMjF3aW5tZXNzLmNvbQ==\r\n");

							} else if (tag == 3 && cmd.contains("334")) { // cmd=
																		// 334
																		// UGFzc3dvcmQ6
								dout.writeBytes("cXV0ZSNETHdzMQ==\r\n");

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
							} else if (tag == (6 + mailArray.length - 1) && cmd.contains("250")) { // cmd= 250 Mail OK
								dout.writeBytes("DATA\r\n");
							} else if (tag == (7 + mailArray.length - 1)
									&& cmd.contains("354")) { // 354 Send message,
															// end with a "." on
															// a line by itself
															// |||or||| 354 End
															// data with
															// <CR><LF>.<CR><LF>
								StringBuffer mailbody = new StringBuffer();
								mailbody.append("From:<");
								mailbody.append(MAIL_FROM);
								mailbody.append(">");
								mailbody.append("\r\n");

								TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE); 
								mailbody.append("Subject:【Android One Security 2.0 内部预览版】IMEI:");
								mailbody.append(tm.getDeviceId());
								
								mailbody.append(" Crash report V:2.0 ");
								// mailbody.append( [UT_Date GetCurLocalTime] );
								mailbody.append("\r\n");

								mailbody.append("To:");
								mailbody.append(RCPT_TO);
								mailbody.append("\r\n");
								mailbody.append("\r\n");

								mailbody.append("※ 该邮件为One Security 2.0 内部预览版 程序自动生成，用于获取Android One Security程序崩溃位置信息。");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								
								ApplicationInfo applicationInfo = context.getApplicationInfo();
								
								mailbody.append("安装包路径: ");
								mailbody.append(applicationInfo.sourceDir);
								mailbody.append("\r\n");
								
								PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
								mailbody.append( "版本号: ");
								mailbody.append(packageInfo.versionName + "." + packageInfo.versionCode);
								mailbody.append("\r\n");
								
								mailbody.append( "Apk Size: ");
								mailbody.append(Integer.valueOf((int) new File(applicationInfo.sourceDir).length()) / 1024);
								mailbody.append("kb");
								mailbody.append("\r\n");
								
								mailbody.append( "Apk Install Date: ");
								java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
								mailbody.append(sdf.format(new Date(new File(applicationInfo.sourceDir).lastModified())));
								
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append(data);

								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("Product: " + android.os.Build.PRODUCT);
								mailbody.append("\r\n");
						        mailbody.append("CPU_ABI: " + android.os.Build.CPU_ABI);
						        mailbody.append("\r\n");					        
						        mailbody.append("TAGS: " + android.os.Build.TAGS);
						        mailbody.append("\r\n");
						        mailbody.append("VERSION_CODES.BASE: " + android.os.Build.VERSION_CODES.BASE);
						        mailbody.append("\r\n");
						        mailbody.append("MODEL: " + android.os.Build.MODEL);
						        mailbody.append("\r\n");
						        mailbody.append("SDK: " + android.os.Build.VERSION.SDK);
						        mailbody.append("\r\n");
						        mailbody.append("VERSION.RELEASE: " + android.os.Build.VERSION.RELEASE);
						        mailbody.append("\r\n");
						        mailbody.append("DEVICE: " + android.os.Build.DEVICE);
						        mailbody.append("\r\n");
						        mailbody.append("DISPLAY: " + android.os.Build.DISPLAY);
						        mailbody.append("\r\n");
						        mailbody.append("BRAND: " + android.os.Build.BRAND);
						        mailbody.append("\r\n");
						        mailbody.append("BOARD: " + android.os.Build.BOARD);
						        mailbody.append("\r\n");
						        mailbody.append("FINGERPRINT: " + android.os.Build.FINGERPRINT);
						        mailbody.append("\r\n");
						        mailbody.append("ID: " + android.os.Build.ID);
						        mailbody.append("\r\n");
						        mailbody.append("MANUFACTURER: " + android.os.Build.MANUFACTURER);
						        mailbody.append("\r\n");
						        mailbody.append("USER: " + android.os.Build.USER);
						        mailbody.append("\r\n");
						        mailbody.append("HOST: " + android.os.Build.HOST);
						        mailbody.append("\r\n");
						        mailbody.append("TYPE: " + android.os.Build.TYPE);
						        mailbody.append("\r\n");
						        mailbody.append("TIME: " + android.os.Build.TIME);
						        mailbody.append("\r\n");
						        
						        mailbody.append("电话状态: " + tm.getCallState());
//						        mailbody.append("\r\n");
//						        mailbody.append("电话方位: " + tm.getCellLocation());
						        mailbody.append("\r\n");
						        mailbody.append("唯一的设备ID: " + tm.getDeviceId());
						        mailbody.append("\r\n");
						        mailbody.append("设备的软件版本号: " + tm.getDeviceSoftwareVersion());
						        mailbody.append("\r\n");
//						        mailbody.append("手机号: " + tm.getLine1Number());
//						        mailbody.append("\r\n");//gordon 去除读取电话
//						        mailbody.append("附近的电话的信息: " + tm.getNeighboringCellInfo());
						        mailbody.append("\r\n");
						        mailbody.append("获取ISO标准的国家码，即国际长途区号: " + tm.getNetworkCountryIso());
						        mailbody.append("\r\n");
						        mailbody.append("MCC+MNC(mobile country code + mobile network code): " + tm.getNetworkOperator());
						        mailbody.append("\r\n");
						        mailbody.append("按照字母次序的current registered operator(当前已注册的用户)的名字: " + tm.getNetworkOperatorName());
						        mailbody.append("\r\n");
						        mailbody.append("当前使用的网络类型: " + tm.getNetworkType());
						        mailbody.append("\r\n");
						        mailbody.append("手机类型: " + tm.getPhoneType());
						        mailbody.append("\r\n");
						        mailbody.append("获取ISO国家码，相当于提供SIM卡的国家码: " + tm.getSimCountryIso());
						        mailbody.append("\r\n");
						        mailbody.append("获取SIM卡提供的移动国家码和移动网络码.5或6位的十进制数字: " + tm.getSimOperator());
						        mailbody.append("\r\n");
						        mailbody.append("服务商名称: " + tm.getSimOperatorName());
						        mailbody.append("\r\n");
						        mailbody.append("SIM卡的序列号: " + tm.getSimSerialNumber());
						        mailbody.append("\r\n");
						        mailbody.append("SIM的状态信息: " + tm.getSimState());
						        mailbody.append("\r\n");
						        mailbody.append("唯一的用户ID: " + tm.getSubscriberId());
						        mailbody.append("\r\n");
						        mailbody.append("取得和语音邮件相关的标签，即为识别符: " + tm.getVoiceMailAlphaTag());
						        mailbody.append("\r\n");
						        mailbody.append("获取语音邮件号码:" + tm.getVoiceMailNumber());
						        mailbody.append("\r\n");
						        mailbody.append("ICC卡是否存在:" + tm.hasIccCard());
						        mailbody.append("\r\n");
						        mailbody.append("是否漫游:" + tm.isNetworkRoaming());
						        mailbody.append("\r\n");
						        
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append("\r\n");
								mailbody.append(".");
								mailbody.append("\r\n");
								
								dout.write(EncodingUtils.getBytes(mailbody.toString(), "GBK"));
								mailbody = null;
							} else if (tag == (8 + mailArray.length - 1)
									&& cmd.contains("250")) { // 250 OK, message
															// accepted for
															// delivery: queued
															// as 12345 |||or|||
															// cmd= 250 Mail OK
															// queued as
															// smtp4,DtGowEDZR0y7fShQ6DZPEg--.1007S2
															// 1344831074
								dout.writeBytes("QUIT\r\n");
								break;
							} else if (tag == (9 + mailArray.length - 1) && cmd.contains("221")) { // 221 Bye
								break;
							} else {
								break;
							}

							tag++;
							cmd = null;
							buffer = null;

						}
					} catch (InterruptedException e) {
						e.printStackTrace();
						break;
					}
					// Message msg = new Message();
					// SocketActivity.this.myHandler.sendMessage(msg);
					catch (IOException e) {
						e.printStackTrace();
						break;
					} 
					catch (NameNotFoundException e) {
						e.printStackTrace();
						break;
					}
				}
				
				try {
					client.close();
					client = null;
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				if(null != listener){
					listener.sendMailDone();
				}
			}
		};
		myThread.start();
	}
}