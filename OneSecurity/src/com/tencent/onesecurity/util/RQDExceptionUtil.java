package com.tencent.onesecurity.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

import android.content.Context;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.eup.ExceptionUpload;
import com.tencent.feedback.upload.UploadHandler;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.util.PhoneInfoUtil;
import com.tencent.onesecurity.util.SendMailUtil;
import com.tencent.onesecurity.util.SendMailUtil.SendMailListener;

/**
 * RQD Crash异常上报
* @ClassName: RQDExceptionUtil
* @Description:RQD Crash异常上报
* @author: Jack Wang
* @date: 2012-11-12 下午3:19:22
*
 */
public class RQDExceptionUtil {
	private boolean isDebug;
	private Context mContext;
	
	public RQDExceptionUtil(Context context) {
		this.mContext = context;
		isDebug = MainApplication.getContext().getResources().getBoolean(R.bool.rqd_debug);
	}
	
	/**
	 * 初始化异常上报SDK
	 */
	public void initRQDException() {
		if (isDebug) { // 正式发布时记得要关闭
			Constants.IS_DEBUG = true; // 输出eup log
			Constants.IS_CORE_DEBUG = true; // 输出更详细的 eup log
			Constants.IS_USETESTSERVER = true; // 使用测试服务器，避免污染正式环境

			// 初始接入时SDK如果发现使用问题时，会抛出异常，SDK接入时建议开启，可以避免使用上的出错。
			Constants.Is_AutoCheckOpen = true;
		}
		
		// 唯一标识一个用户，如果 发生了一些异常，你希望 联系用户时 或者 确认用户时的 标识
//		String userId = PhoneInfoUtil.getLine1Number(mContext);//gordon 因隐私问题 去掉本机手机号码

		/*
		 * 初始化SDK时会进行一次策略查询，isStartAfterQuery==true，说明策略查询结束前SDK的所有功能处于关闭状态，
		 * 也就是这时发生的异常和记录的事件都不会被记录。但这样能换来如果由于sdk导致程序异常，可以通过后台关闭sdk的功能。
		 */
		boolean isStartAfterQuery = true;

		/*
		 * SDK上报时都是用UploadHandler中的doUpload方法，用户可以根据自己的需要实现自己的上报器进而监控或控制所有的SDK上报，
		 * SDK的默认实现可以通过Analytics.getDefaultUpload(this)获取。
		 */
		UploadHandler hanlder = ExceptionUpload.getDefaultUpload(mContext);

		// 监听每次上报结果的MonitorUploadHandler
		// hanlder = createMonitorUploadHandler(this);

		// APP使用了Eup 或 Eup_Gray的jar包：
		ExceptionUpload eup = ExceptionUpload.getInstance(mContext, "", isStartAfterQuery, hanlder);//gordon 因隐私问题 去掉本机手机号码

		// 配置异常上报，注意配置需要在开启前，否则可能无法及时生效
		setExceptionUpload();

		// 配置异常上报，注意配置需要在开启前，否则可能无法及时生效
		eup.setIsUseEup(true);
	}
	
	/**
	 * 开启异常上报功能
	 */
	protected void setExceptionUpload() {
		/* isDefaultEup true表示异常上报时不通知用户直接静默上报，false则会弹框提醒用户由用户选择是否上报。 */
		ExceptionUpload.setDefaultEUP(true);

		/* 有用户希望能在发生异常时，做一些处理，可以通过这个接口设置 */
		ExceptionUpload.setYourUncaughtExceptionHandler(new UncaughtExceptionHandler() {
			@Override
			public void uncaughtException(Thread thread, Throwable ex) {
				Writer info = new StringWriter();
				PrintWriter printWriter = new PrintWriter(info);
				ex.printStackTrace(printWriter);
				String errorInfo = info.toString();
				printWriter.close();

		        if(ApplicationConfig.EXCEPTIONUPLOAD) {
					SendMailUtil mail = new SendMailUtil(
							new SendMailListener() {

								@Override
								public void sendMailDone() {
									
								}
							});

					mail.Send("该Crash从未捕获的异常中获得，出错的代码段中未加入Try Catch。\r\n" + errorInfo, mContext);
		        }
			}
		});

		/*
		 * 有些用户希望能把异常发生的堆栈信息能存储在用户的sdcard中，方便对方投诉时直接向用户获取， 如果你有这个需求，只需要如下操作：
		 * isStoreEupLogSdcard = true,
		 * 并确保自己的应用具有此权限：android.permission.WRITE_EXTERNAL_STORAGE
		 * 异常的堆栈将会按日期顺序保存在sdcard中，并且设置了文件大小限制，不会导致文件不断增大。
		 */
		Constants.isStoreEupLogSdcard = true;
	}
}
