package com.tencent.onesecurity.manager.scheduletask;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Timer;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.manager.serverdata.ServerDataFetchManager.ServerDataChangeListener;
import com.tencent.onesecurity.service.ScheduleTaskProcessService;

/**
 * 系统定时器管理类
 * @ClassName: SystemTimerManager
 * @Description:用于管理系统全局Timer。这个Timer为应用中的各种定时处理服务。
 * @author: Jess Yan
 * @date: 2012-11-8 下午01:57:24
 *
 */
public class SystemTimerManager implements ServerDataChangeListener{
	
	private static final int REQUEST_CODE = 1020;
	/** 系统alarm service发出的广播 */
	public static final String SYSTEM_TIMER_TRIGGER_ACTION = "SYSTEM_TIMER_TRIGGER_ACTION";
	/** 系统启动初始化标识*/
	public static boolean hasFirstStart = false;
	/** 单例 */
	private static SystemTimerManager instance = null;
	
	/** 系统计时器 */
	private Timer mSystemTimer = null;
	/** 计时状态表 */
	private ArrayList<RemindTask> mTimingStateTable = null;
	/** 计时器检测步长 */
	private long mTimingStep = 0;
	private long mTimingStepRunning = 0;
	
	private Object lock = new Object();
	
    /**
     * 私有构造方法
     */
    private SystemTimerManager() {
    	// 初始化定时器
    	initTimer();
    	
    	// 初始化状态表
    	initTimingStateTable();
    }
	
	/**
	 * 获得单例的MessageManager对象
	 * 
	 * @return
	 */
    public static SystemTimerManager getInstance() {
        if (instance == null) {
            synchronized (SystemTimerManager.class) {
                if (instance == null) {
                    instance = new SystemTimerManager();
                }
            }
        }
        return instance;
    }
    
    /**
     * 让Timer开始工作
     */
    public void startTimer() {
    	 AlarmManager am = (AlarmManager)MainApplication.getContext().getSystemService(MainApplication.ALARM_SERVICE);
         Intent sender = new Intent();
         sender.setAction(SYSTEM_TIMER_TRIGGER_ACTION);
         PendingIntent pendingIntent = PendingIntent.getBroadcast(MainApplication.getContext(), REQUEST_CODE, sender, PendingIntent.FLAG_UPDATE_CURRENT);
         am.setRepeating(AlarmManager.ELAPSED_REALTIME_WAKEUP, SystemClock.elapsedRealtime() + this.mTimingStep, this.mTimingStep, pendingIntent);
         mTimingStepRunning = mTimingStep;
         Log.d("TIMER", "Start timer...");
    }
    
    /**
     * 停止Timer
     */
    public void stopTimer() {
   	 	AlarmManager am = (AlarmManager)MainApplication.getContext().getSystemService(MainApplication.ALARM_SERVICE);
        Intent sender = new Intent();
        sender.setAction(SYSTEM_TIMER_TRIGGER_ACTION);
        PendingIntent pendingIntent = PendingIntent.getBroadcast(MainApplication.getContext(), REQUEST_CODE, sender, PendingIntent.FLAG_UPDATE_CURRENT);
        am.cancel(pendingIntent);
        mTimingStepRunning = 0;
        Log.d("TIMER", "Stop timer...");
    }
    
    /**
     * 触发
     */
    public void trigger() {
    	Log.d("TIMER", System.currentTimeMillis() + ":" + "Start check all task.");
		
		RemindTask remindTask;
		for (int i = 0; i < mTimingStateTable.size(); i++) {
			remindTask = mTimingStateTable.get(i);
			if (remindTask == null) continue;
			
			switch (remindTask.taskType) {
				case RemindTask.INTERVAL_TASK: {
					// 流逝时间
					remindTask.remainingTime = remindTask.remainingTime - mTimingStep;
					Log.d("TIMER", "name:" + remindTask.taskName + " " + System.currentTimeMillis() + ":" + "Remiand：" + remindTask.remainingTime + "   i:" + i);
					
					// 流逝之后，检查时间是否全部流逝到0
					if (remindTask.remainingTime <= 0) {
						remindTask.remainingTime = remindTask.interval;
						// 通知后台运行服务处理
						SystemTimerManager.this.sendIntent(remindTask.intent);
						Log.d("TIMER", "name:" + remindTask.taskName + " " + System.currentTimeMillis() + ":" + "[OK] Finish a loop.");
					}
					/*--Jess. Review from tony ----20130106-------S-*/
					// 这句代码多余。
//					// 更新剩余时间
//					mTimingStateTable.set(i, remindTask);
					/*--Jess. Review from tony ----20130106-------E-*/
					break;
				}
				case RemindTask.SPEC_DATE_TASK: {
					
					long now = System.currentTimeMillis();
					Log.d("TIMER", "SPEC:name:" + remindTask.taskName + "nowLong:" + now + " remindDate:" + remindTask.remindDate);
					if (now != 0 && now >= remindTask.remindDate) {
						Log.d("TIMER", "SPEC:name:" + remindTask.taskName + "OK.");
						
						// 发送广播
//						SystemTimerManager.this.sendBroadcast(remindTask.action, remindTask.data);
						SystemTimerManager.this.sendIntent(remindTask.intent);
						removeRemindTask(remindTask.taskName);
						Log.d("TIMER", "SPEC:name:" + remindTask.taskName + "REMOVED.");
					}
					break;
				}
			}
//			long start = System.currentTimeMillis();
//			Log.d("TIMER", "start:" + start);
//			// 保存所有运行中的任务
////			saveAllTask();
//			
//			
//			Log.d("TIMER", "cost:" + (System.currentTimeMillis() - start));
		}
		Log.d("TIMER", System.currentTimeMillis() + ":" + "End of this time.");
    }
    
    /**
     * 追加一个提醒任务(间隔提醒)
     * @param taskName 任务名称，用于标识一个任务
     * @param interval 每次执行的时间间隔
     * @param intent 广播或者Activity，Activity的情况Intent中要设置NewInstancFlg
     */
    public boolean addIntervalRemindTask(String taskName, long interval, Intent intent) {
    	if (taskName == null || "".equals(taskName)) return false;
    	if (interval <= 0) return false;
    	
    	RemindTask task = new RemindTask();
    	
    	task.taskName = taskName;
    	task.taskType = RemindTask.INTERVAL_TASK;
    	task.interval = interval;
    	task.remainingTime = interval;
    	task.intent = intent;
    	
    	synchronized (lock) {
        	this.mTimingStateTable.add(task);
		}
    	return true;
    }

    /**
     * 追加一个提醒任务(指定日期提醒)
     * @param taskName 任务名称，用于标识一个任务
     * @param specDateTimestamp 触发日期 的时间戳
     * @param intent 广播或者Activity，Activity的情况Intent中要设置NewInstancFlg
     */
    public boolean addSpecDateRemindTask(String taskName, long specDateTimestamp, Intent intent) {
    	if (taskName == null || "".equals(taskName)) return false;
    	if (specDateTimestamp == 0 || specDateTimestamp <= System.currentTimeMillis()) return false;
    	
    	RemindTask task = new RemindTask();
    	
    	task.taskName = taskName;
    	task.taskType = RemindTask.SPEC_DATE_TASK;
    	task.remindDate = specDateTimestamp;
    	task.intent = intent;
    	
    	synchronized (lock) {
    		this.mTimingStateTable.add(task);	
    	}
    	
    	return true;
    }
    
    /**
     * 删除一个提醒任务
     * @param taskName
     */
    public synchronized void removeRemindTask(String taskName) {
    	RemindTask task = null;
    	for(int i = mTimingStateTable.size() - 1; i >= 0; i--) {
    		task = mTimingStateTable.get(i);
    		if (task.taskName.equals(taskName)) {
    			mTimingStateTable.remove(i);
    		}
    	}
    }
    
    /** 
     * 判断指定任务是否存在
     * @param taskName
     * @return
     */
    public synchronized boolean hasTask(String taskName) {
    	boolean hasTask = false;
    	if (taskName == null || "".equals(taskName)) return false;
    	for(RemindTask task : mTimingStateTable) {
    		if (task == null) continue;
    		if (task.taskName.equals(taskName)) {
    			hasTask = true;
    			break;
    		}
    	}
    	
    	return hasTask;
    }
    
    /**
     * 修改运行中的任务的interval
     * @param name
     * @param interval
     */
    public synchronized void modifyTaskIntervalValue(String taskName, long interval) {
    	if (taskName == null || "".equals(taskName)) return;
    	
    	for(RemindTask task : mTimingStateTable) {
    		if (task == null) continue;
    		if (task.taskName.equals(taskName)) {
    			task.interval = interval;
    			break;
    		}
    	}
    }
    
    /**
     * 管理类初始化
     */
    private void initTimer() {
    	if (mSystemTimer == null) {
    		mSystemTimer = new Timer();
    	} else {
    		mSystemTimer.cancel();
    	}
    	
    	// 通过SmartConfig 参数配置
    	mTimingStep = CoreConfigDao.getInstance().getLongValue(CoreConfigDao.SCHEDULE_TASK_TIMER_STEP); //1 * 60 * 60 * 1000l; // 计时器一小时
    }
    
    /**
     * 初始化所有计划任务的状态表
     * 暂时是个List
     */
    private void initTimingStateTable() {
    	
    	// 创建计划任务维护表
    	if (mTimingStateTable == null) {
    		mTimingStateTable = new ArrayList<RemindTask>();
    	} else {
    		mTimingStateTable.clear();
    	}
    }
    
    /** 
     * 当任务执行的时间到了时，发送一条自定义广播
     * @param action
     */
//    private void sendBroadcast(String action, String data) {
//    	Intent intent = new Intent();
//    	intent.setAction(action);
//    	intent.putExtra("DATA", data);
//    	MainApplication.getContext().sendBroadcast(intent);
//    }

    @SuppressWarnings("unchecked")
    private void sendIntent(Intent intent) {
    	if(intent == null) return;
    	Class cls = null;
		try {
			cls = Class.forName(intent.getComponent().getClassName());
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return;
		}
    	if (checkSuperClassName(cls, "android.app.Service")) {
    		MainApplication.getContext().startService(intent);
    		ScheduleTaskProcessService.processingCnt++;
    	} else if (checkSuperClassName(cls, "android.app.Activity")) {
    		MainApplication.getContext().startActivity(intent);
    	}
    }
    
    @SuppressWarnings("unchecked")
	private boolean checkSuperClassName(Class cls, String name) {
    	if (cls == null || name == null || "".equals(name)) return false;
    	if (cls.getName().equals(name)) {
    		return true;
    	} else {
    		Class superClass = cls.getSuperclass();
    		return checkSuperClassName(superClass, name);
    	}
    }

    /**
     * 后台数据变化监听
     */
	@Override
	public void dataChange() {
		// SmartConfig参数变了，会进入这里，并修改计划任务中的值。
		// 数据上报间隔；后台数据拉取间隔；病毒库自动检查间隔；
		changeInterval();
	}
	
	/**
	 * 修改以下定时任务的触发间隔
	 * 数据上报，后台数据拉取，病毒库检查
	 */
	private void changeInterval() {
		RemindTask task = null;
		for (int i = 0; i < mTimingStateTable.size(); i++) {
			task = mTimingStateTable.get(i);
			Log.d("TEST", "=" + ScheduleTaskProcessService.ACTION_PULL_SERVER_DATA + " " + task.taskName);
			if (ScheduleTaskProcessService.ACTION_DATA_REPORT.equals(task.taskName)) {
				// 数据上报
				task.interval = CoreConfigDao.getInstance().getLongValue(CoreConfigDao.FEATURE_REPORT_INTERVAL);
			} else if (ScheduleTaskProcessService.ACTION_PULL_SERVER_DATA.equals(task.taskName)) {
				// 后台数据拉取
				task.interval = CoreConfigDao.getInstance().getLongValue(CoreConfigDao.PULL_SERVER_DATA_INTERVAL);
			} else if (ScheduleTaskProcessService.ACTION_CHECK_VIRUS_BASE.equals(task.taskName)) {
				// 病毒库自动检查
				task.interval = CoreConfigDao.getInstance().getLongValue(CoreConfigDao.AUTO_VIRUS_BASE_CHECK_INTERVAL);
			}

			/*--Jess. Review from tony ----20130106-------S-*/
			// 这部分代码应该在循环里才对。
			// 更新定时任务的剩余时间
			if (task.remainingTime > task.interval) {
				task.remainingTime = task.interval;
			}

			/*--Jess. Review from tony ----20130106-------E-*/
		}
		
		// 检查TimerStep是否改变
		mTimingStep = CoreConfigDao.getInstance().getLongValue(CoreConfigDao.SCHEDULE_TASK_TIMER_STEP);
		if (mTimingStepRunning != 0 && mTimingStepRunning != mTimingStep) {
			Log.d("TIMER", "Update timer interval start...");
			stopTimer();
			startTimer();
			Log.d("TIMER", "Update timer interval end...");
		}
	}
}

class RemindTask implements Serializable{
	private static final long serialVersionUID = -622746172398851917L;
	
	public static final int INTERVAL_TASK = 1;
	public static final int SPEC_DATE_TASK = 2;
	
	/** 任务名称 */
	public String taskName = null;
	/** 任务类型 1:间隔提醒任务  2:指定日期提醒任务*/
	public int taskType = INTERVAL_TASK;
	/** 两次任务的间隔时间 */
	public long interval = 0l;
	/** 距下次执行的剩余时间（间隔提醒的场景）*/
	public long remainingTime = 0l;
	/** 下次提醒的日期 时间戳（指定日期提醒的场景）*/
	public long remindDate = 0l;
	/** 到时之后的处理Intent */
	public Intent intent = null;
}
