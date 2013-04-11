package com.tencent.onesecurity.manager.virus;

import java.util.List;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.virus.TimeoutManager.ITimeoutListener;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.update.CheckResult;
import com.tencent.tmsecure.module.update.ICheckListener;
import com.tencent.tmsecure.module.update.IUpdateListener;
import com.tencent.tmsecure.module.update.UpdateConfig;
import com.tencent.tmsecure.module.update.UpdateInfo;
import com.tencent.tmsecure.module.update.UpdateManager;

/**
 * 病毒库版本管理Manager
 * 
 * @ClassName: VirusLibraryManager
 * @Description:用来检查当前客户端的病毒库是否是最新版本；用来更新病毒库为最新版本
 * @author: Jess Yan
 * @date: 2012-10-19 下午02:23:43
 * 
 */
public class VirusLibraryManager implements ITimeoutListener {

	// 病毒库为最新标识
	public static final boolean CONST_FLG_VIRUS_LIB_LATEST = true;
	// 病毒库过期标识
	public static final boolean CONST_FLG_VIRUS_LIB_EXPIRED = false;
	// 病毒库检查结果无更新标识
	public static final int CONST_VIRUS_LIB_CHECK_FINISH_LAST = 0;
	// 病毒库检查结果需更新标识
	public static final int CONST_VIRUS_LIB_CHECK_FINISH_EXPIRED = 1;

	// UI通知标识
	// 开始检查病毒库版本
	public static final int HANDLER_CHECK_START = 9201;
	// 取消检查病毒库版本
	public static final int HANDLER_CHECK_CANCEL = 9202;
	// 检查病毒库版本结束
	public static final int HANDLER_CHECK_FINISH = 9203;
	// 检查病毒库版本返回错误
	public static final int HANDLER_CHECK_ERROR = 9204;
	// 开始更新缤纷毒库
	public static final int HANDLER_UPDATE_START = 9205;
	// 更新病毒库取消
	public static final int HANDLER_UPDATE_CANCEL = 9206;
	// 更新病毒库结束
	public static final int HANDLER_UPDATE_FINISH = 9207;
	// 更新病毒库错误返回
	public static final int HANDLER_UPDATE_ERROR = 9208;
	
	public static final int HANDLER_UPDATE_PROGRESS_FINISH = 9211;
	
	
	
	// 病毒库相关操作在进行中
	public static final int HANDLER_WORKING = 9210;

	// 扫描状态
	public static final int CHECK_STATUS_IDLE = 20;
	public static final int CHECK_STATUS_WORKING = 21;
	/** 检查病毒库版本的状态 默认是空闲状态 */
	public static int checkStatus = CHECK_STATUS_IDLE;

	/** 用户通知UI的Handler */
	private Handler mHandler = null;
	private UpdateManager mUpdateManager = null;
	private TimeoutManager timeoutManager = null;
	private boolean isTimeout = false;			
	
	/** 病毒库检查后的结果，用于更新病毒库 */
	private List<UpdateInfo> virusCheckResult;

	private boolean aotoUpdateLib = false;
	
	public static final String MSG_REFRESH_NEWS = "msg_refresh_news";

	public VirusLibraryManager(boolean aotoUpdateLib) {
		mUpdateManager = ManagerCreator.getManager(UpdateManager.class);
		this.aotoUpdateLib = aotoUpdateLib;
	}

	/**
	 * 设置UIHandler，Manager通过这个handler与上层交互 如果不设置，杀毒的过程和结果UI层无法感知。
	 * 
	 * @param _handler
	 */
	public void setUIHandler(Handler _handler) {
		this.mHandler = _handler;
	}

	/**
	 * 检查病毒库的最新版本，结果通过handler给UI
	 */
	public void checkVirusVersion() {
		
		// 如果扫描器运行中，通知UI并返回
		if (!isCheckManagerIdled()) {
			sendEmptyMessage(HANDLER_WORKING);
			return;
		}
		isTimeout = false;
		// if (isNetEnabled() == false) {
		// ToastUtil.ShowLongToast(MainApplication.getContext(),
		// "Netware is not enabled!");
		// }
		Thread checkVirusLibraryThread = new Thread(new Runnable() {
			@Override
			public void run() {
				// 打开超时检查器。
				if (timeoutManager == null) timeoutManager = new TimeoutManager();
				timeoutManager.setOnTimeoutListener(VirusLibraryManager.this);
				timeoutManager.startTimer(60 * 1500l);
				
				Log.d("VIRUS_BASE_UPDATE", "Start virus base update.");
				mUpdateManager.check(UpdateConfig.UPDATE_FLAG_VIRUS_BASE,
						new VirusCheckListener());
			}
		});
		checkVirusLibraryThread.setName("CheckVirusLibrary");
		checkVirusLibraryThread.start();
	}

	/**
	 * 检查病毒库的最新版本，结果通过handler给UI
	 */
	public void checkVirusVersionBlock() {
		
		// 如果扫描器运行中，通知UI并返回
		if (!isCheckManagerIdled()) {
			sendEmptyMessage(HANDLER_WORKING);
			return;
		}
		isTimeout = false;
		// if (isNetEnabled() == false) {
		// ToastUtil.ShowLongToast(MainApplication.getContext(),
		// "Netware is not enabled!");
		// }

		mUpdateManager.check(UpdateConfig.UPDATE_FLAG_VIRUS_BASE,
				new VirusCheckListener());
		Log.d("VIRUS_BASE_UPDATE", "Start virus base update.");
	}

	/**
	 * 病毒库更新.
	 */
	private void updateVirusBase(List<UpdateInfo> virusCheckResultlist) {

		if (null != virusCheckResultlist) {
			this.virusCheckResult = virusCheckResultlist;
		}

		if (this.virusCheckResult == null) {
			return;
		}

		Thread updateVirusLibraryThread = new Thread(new Runnable() {
			@Override
			public void run() {
				mUpdateManager.update(virusCheckResult,
						new VirusUpdateListener());
			}
		});
		updateVirusLibraryThread.setName("UpdateVirusLibrary");
		updateVirusLibraryThread.start();
	}

	/**
	 * 病毒库检查更新引擎是否是空闲状态。
	 * 
	 * @return
	 */
	public boolean isCheckManagerIdled() {
		if (checkStatus == CHECK_STATUS_IDLE) {
			return true;
		}
		return false;
	}

	/**
	 * 判断Manager里是否有设置了UI交互用的Handler
	 * 
	 * @return
	 */
	private boolean hasUIHandler() {
		return this.mHandler != null;
	}

	/**
	 * 发消息通知UI。
	 * 
	 * @param msg
	 *            Message
	 */
	private void sendMessage(Message msg) {
		if (hasUIHandler()) {
			this.mHandler.sendMessage(msg);
		}
	}

	/**
	 * 发送空消息通知UI。
	 * 
	 * @param what
	 */
	private void sendEmptyMessage(int what) {
		if (hasUIHandler()) {
			this.mHandler.sendEmptyMessage(what);
		}
	}

	/**
	 * 设置引擎的扫描状态
	 * 
	 * @param status
	 */
	private void setManagerStatus(int status) {
		checkStatus = status;
	}

	/**
	 * 病毒库检测监听器
	 * 
	 * @ClassName: VirusUpdateListener
	 * @Description:TODO检查更新的监听器，其中onCheckStarted和onCheckFinished一定会回调。 
	 *                                                                  如果检查过程中出现异常
	 *                                                                  （例如网络错误）
	 *                                                                  则通过onCheckEvent回调并返回
	 *                                                                  错误码，
	 *                                                                  同时立即执行onCheckFinished
	 * @author: Jess Yan
	 * @date: 2012-10-21 上午10:36:13
	 * 
	 */
	private class VirusCheckListener implements ICheckListener {

		public VirusCheckListener() {
		}

		/**
		 * 开始检查回调
		 */
		@Override
		public void onCheckStarted() {
			if (isTimeout) return;
			setManagerStatus(CHECK_STATUS_WORKING);
			sendEmptyMessage(HANDLER_CHECK_START);
		}

		/**
		 * 检查取消回调
		 */
		@Override
		public void onCheckCanceled() {
			if (isTimeout) return;
			sendEmptyMessage(HANDLER_CHECK_CANCEL);
			setManagerStatus(CHECK_STATUS_IDLE);
		}

		/**
		 * 完成检查回调，不管扫描是否出错或者被取消，这个接口都会回调
		 */
		@Override
		public void onCheckFinished(CheckResult result) {
			if (isTimeout) return;

			setManagerStatus(CHECK_STATUS_IDLE);

			// 检查病毒库的结果
			if (result != null && result.mUpdateInfoList != null
					&& result.mUpdateInfoList.size() > 0) {

				// 病毒库需要更新
				DaoCreator.createConfigDao().setVirusLibLatestState(
						VirusLibraryManager.CONST_FLG_VIRUS_LIB_EXPIRED);

				if (aotoUpdateLib) {
					// 自动更新，有更新，发通知给UI
					if (hasUIHandler()) {
						Message msg = new Message();
						msg.what = VirusLibraryManager.HANDLER_CHECK_FINISH;
						msg.arg1 = VirusLibraryManager.CONST_VIRUS_LIB_CHECK_FINISH_EXPIRED;
						mHandler.sendMessage(msg);
					}
					setManagerStatus(CHECK_STATUS_WORKING);
					// 病毒库有更新 直接开始更新病毒库
					VirusLibraryManager.this
							.updateVirusBase(result.mUpdateInfoList);
				} else {
					// 不自动更新，检查完成，发广播通知New标示
					Intent intent = new Intent(MSG_REFRESH_NEWS);
					MainApplication.getContext().sendBroadcast(intent) ;
					// 不自动更新的情况，检查完成，关闭超时检查器
					stopTimeoutChecker();
				}

			} else {

				// 检查完成，关闭超时检查器
				stopTimeoutChecker();
				
				if (hasUIHandler()) {
					// 病毒库无更新 [Handler 合入主线程]
					Message msg = mHandler.obtainMessage();
					msg.what = VirusLibraryManager.HANDLER_CHECK_FINISH;
					msg.arg1 = VirusLibraryManager.CONST_VIRUS_LIB_CHECK_FINISH_LAST;
					mHandler.sendMessage(msg);
				}
			}
		}

		/**
		 * 检查过程中出现异常时的回调
		 */
		@Override
		public void onCheckEvent(int errCode) {
			if (isTimeout) return;
			setManagerStatus(CHECK_STATUS_IDLE);
			
			// 出现错误，关闭超时检查器
			stopTimeoutChecker();
			
			if (hasUIHandler()) {
				Message msg = mHandler.obtainMessage();
				msg.what = HANDLER_CHECK_ERROR;
				msg.arg1 = errCode;
				sendMessage(msg);
			}
		}
	}

	/**
	 * @ClassName: VirusUpdateListener
	 * @Description:病毒库更新
	 * @author: Jess Yan
	 * @date: 2012-10-21 下午01:46:28
	 * 
	 */
	private class VirusUpdateListener implements IUpdateListener {

		public VirusUpdateListener() {
		}

		@Override
		public void onUpdateStarted() {
			if (isTimeout) return;
			sendEmptyMessage(HANDLER_UPDATE_START);
		}

		@Override
		public void onProgressChanged(UpdateInfo updateInfo, int progress) {
//			if (isTimeout) return;
//			if (hasUIHandler()) {
//				// 病毒库更新错误 [Handler 合入主线程]
//				Message msg = mHandler.obtainMessage();
//				msg.what = VirusLibraryManager.HANDLER_UPDATE_PROGRESS;
//				msg.arg1 = progress ;
//				mHandler.sendMessage(msg);
//			}
		}

		@Override
		public void onUpdateCanceled() {
			if (isTimeout) return;

			// 用户取消操作，结束操作，关闭超时检查器
			stopTimeoutChecker();
			sendEmptyMessage(HANDLER_UPDATE_CANCEL);
		}

		@Override
		public void onUpdateEvent(UpdateInfo updateInfo, int errCode) {
			if (isTimeout) return;

			// 更新出现问题，结束操作，关闭超时检查器
			stopTimeoutChecker();

			if (hasUIHandler()) {
				// 病毒库更新错误 [Handler 合入主线程]
				Message msg = mHandler.obtainMessage();
				msg.what = VirusLibraryManager.HANDLER_UPDATE_ERROR;
				msg.arg1 = errCode;
				mHandler.sendMessage(msg);
			}
		}

		@Override
		public void onUpdateFinished() {
			if (isTimeout) return;
			
			// 更新完成，结束操作，关闭超时检查器
			stopTimeoutChecker();
			
			if (hasUIHandler()) {
				Message msg = mHandler.obtainMessage();
				msg.what = VirusLibraryManager.HANDLER_UPDATE_FINISH;
				mHandler.sendMessage(msg);
			}
			setManagerStatus(CHECK_STATUS_IDLE);
		}
	}

	/**
	 * 停止超时检查器
	 */
	private void stopTimeoutChecker() {
		if(timeoutManager != null) timeoutManager.stopTimer();
	}
	
	/**
	 * 超时回调
	 */
	@Override
	public void timeout() {
		isTimeout = true;
		setManagerStatus(CHECK_STATUS_IDLE);
		
		if (timeoutManager != null) {
			stopTimeoutChecker();
		}
		
		if (hasUIHandler()) {
			Message msg = mHandler.obtainMessage();
			msg.what = HANDLER_CHECK_ERROR;
			msg.arg1 = -2055; 	// ERR_POST + ERR_SOCKET_TIMEOUT 这个值暂时不用
			sendMessage(msg);
		}
	}
}
