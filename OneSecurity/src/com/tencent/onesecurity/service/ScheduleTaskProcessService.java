/**
* FileName: ImportFileService.java
* @Description: TODO(用一句话描述该文件做什么)
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Matrix xu
* @version V2.0
* Createdate: 2012-10-30 下午3:55:46
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2012-10-30 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.service;

import android.app.IntentService;
import android.content.Intent;
import android.util.Log;

import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.manager.notification.MessageManager;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.scheduletask.SystemTimerManager;
import com.tencent.onesecurity.manager.serverdata.ServerDataFetchManager;
import com.tencent.onesecurity.manager.virus.VirusLibraryManager;
import com.tencent.onesecurity.receiver.SystemAlarmServiceReceiver;
import com.tencent.onesecurity.usage.qq.ReportService;

/**
 * 后台运行服务，用于处理待机状态下的逻辑
 * 注意：由于休眠状态的机器需要唤醒锁控制，这里不应该启动新线程。
 * @ClassName: ScheduleTaskProcessService
 * @Description:
 * @author: Jess Yan
 * @date: 2012-11-15 上午11:35:34
 *
 */
public class ScheduleTaskProcessService extends IntentService{

	/** 发出处理任务的Intent的个数计数，用于  */
	public static int processingCnt = 0;
	
	public static final int CMD_NOTICE_NEW_MESSAGE = 100;
	public static final int CMD_CHECK_VIRUS_BASE = 200;
	
	/** 计划任务管理器用 */
	public static final String ACTION_TIMER_TRIGGER = "ACTION_TIMER_TRIGGER";
	/** 计划任务管理器用 测试用假数据 */
	public static final String ACTION_TEST = "ACTION_TEST";
	
	/** 业务：后台数据拉取,节日闪屏 24H*/
	public static final String ACTION_PULL_SERVER_DATA = "ACTION_PULL_SERVER_DATA";
	/** 业务：新消息提醒 指定时间*/
	public static final String ACTION_NOTICE_NEW_MESSAGE = "ACTION_NOTICE_NEW_MESSAGE";
	/** 业务：检查病毒库 48H*/
	public static final String ACTION_CHECK_VIRUS_BASE = "ACTION_CHECK_VIRUS_BASE";
	/** 业务：数据上报 H*/
	public static final String ACTION_DATA_REPORT = "ACTION_DATA_REPORT";
	/** 业务：通知栏增加提醒多少天没有杀毒（第10、15、20、30天） 24H*/
	public static final String ACTION_VIRUS_NOTIFICATION = "ACTION_VIRUS_NOTIFICATION";
	
	public ScheduleTaskProcessService() {
		super("ScheduleTaskProcessService");
	}
	public ScheduleTaskProcessService(String name) {
		super(name);
	}
	
	@Override
	public void onCreate() {
		super.onCreate();
		processingCnt = 0;
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		
		String action = intent.getAction();
		if (action == null || "".equals(action)) return;
		
		if (ACTION_TIMER_TRIGGER.equals(action)) {				// 系统Timer触发后的处理

			SystemTimerManager.getInstance().trigger();
			Log.d("TASK_PROCESS", "Trigger. processingCnt:" + processingCnt);
		} else {												// 具体定时任务的处理逻辑
			if (ACTION_NOTICE_NEW_MESSAGE.equals(action)) {			// 新消息的处理

				int id = intent.getIntExtra("MSG_ID", 0);
				MessageManager.getInstance().noticeMessage(id);
				Log.d("TASK_PROCESS", "New Message. processingCnt:" + processingCnt);
			} else if (ACTION_CHECK_VIRUS_BASE.equals(action)) {	// 病毒定时更新
				
				VirusLibraryManager virusLibraryManager = new VirusLibraryManager(false);
				virusLibraryManager.checkVirusVersionBlock();
				
				Log.d("TASK_PROCESS", "Check virus base. processingCnt:" + processingCnt);
			} else if (ACTION_DATA_REPORT.equals(action)) { // 数据上报
				// add eddy -- 三报数据,成讯后台-->3G平台-->Google Analy
				com.tencent.onesecurity.util.Log.e("ReportService", "Data report. processingCnt:"+ processingCnt);
				Intent i = new Intent(ScheduleTaskProcessService.this, ReportService.class);
				startService(i);
			}  else if (ACTION_PULL_SERVER_DATA.equals(action)) {
				ServerDataFetchManager.getInstance().getListFromServer(false);
				Log.d("TASK_PROCESS", "Pull server data. processingCnt:" + processingCnt);
			}else if(ACTION_VIRUS_NOTIFICATION.equals(action)){	// 周期提醒杀毒
				
				long lastScanTime = DaoCreator.createConfigDao().getTSLastScanTime();
				// 从未杀过毒，不提醒
				if(lastScanTime != 0){
					
					long currentTime = System.currentTimeMillis();
					//  保存最近一次提醒是多少天 10,15,20,30
					int lastRemindDay = DaoCreator.createConfigDao().getLastRemindScanDays();
					// 相对于当前时间，多久没杀过毒了10,15,20,30
					int currentRemindDay = getLongTimeFromLastScan(currentTime - lastScanTime) ;
					// 在相同时间段，如果提醒过一次，不在提醒
					if(currentRemindDay != 0 && lastRemindDay != currentRemindDay){
						StatusBarManager.getInstance().showVirusScanRemindNotification(currentRemindDay) ;
						DaoCreator.createConfigDao().setLastRemindScanDays(currentRemindDay);
					}
				}
			}
			
			// 任务计数递减
			processingCnt--;
		}
		
		// 没有要处理的逻辑，关闭自己
		if (processingCnt == 0) {
			this.stopSelf();
		}
	}
	/**
	 * 获取提醒时间段 
	 * 				10~15 :  10天
	 * 				15~20 :  15
	 * 				20~30 :	 20
	 * 				  >30 :  30
	 * @param lastScanTime
	 * @return
	 */
	public int getLongTimeFromLastScan(long lastScanTime) {
		int currentRemindTime = 0;
		if (lastScanTime > 10 * 24 * 60 * 60000L && lastScanTime < 20 * 24 * 60 * 60000L) {
			currentRemindTime = 10;
		} /*else if (lastScanTime > 15 * 24 * 60 * 60000 && lastScanTime < 20 * 24 * 60 * 60000) {
			currentRemindTime = 15;
		} */else if (lastScanTime > 20 * 24 * 60 * 60000L && lastScanTime < 30 * 24 * 60 * 60000L) {
			currentRemindTime = 20;
		} else if (lastScanTime > 30 * 24 * 60 * 60000L) {
			currentRemindTime = 30;
		}
		return currentRemindTime;
	}

	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		
		try {
			SystemAlarmServiceReceiver.wakeLock.release();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
