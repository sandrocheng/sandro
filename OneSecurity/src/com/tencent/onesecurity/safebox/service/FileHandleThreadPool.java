/**
 * FileName: FileHandleThreadPool.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-28 下午5:58:14
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-28 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * @ClassName: FileHandleThreadPool
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-11-28 下午5:58:14
 * 
 */
public class FileHandleThreadPool<T extends Runnable> {
	private static int CPU_NUM = Runtime.getRuntime().availableProcessors();

	private static int POOL_SIZE = 3;

	private HandleThreadObserver mhanHandleThreadObserver;

	
	private int taskTotal = 0;
	
	public void setHandlerThreadObserver(HandleThreadObserver hanHandleThreadObserver) {
		mhanHandleThreadObserver = hanHandleThreadObserver;
	}

	public static synchronized int setSuccessTaskNum() {
		return 0;
	}

	public static synchronized int setFailedTaskNum() {
		return 0;
	}

	private List<T> taskList = new ArrayList<T>();

	public void setTaskList(T task) {
		taskList.add(task);
		taskTotal = taskList.size();
	}

	private ExecutorService threadPool = Executors.newFixedThreadPool(CPU_NUM * POOL_SIZE);

	public void start() {
		if (mhanHandleThreadObserver != null) {
			mhanHandleThreadObserver.onAllTaskStart(taskTotal);
		}
		for (T task : taskList) {
			threadPool.execute(task);
		}
	}

	private static FileHandleThreadPool<Runnable> mInstance = null;

	public static FileHandleThreadPool<Runnable> getInstance() {
		if (mInstance == null) {
			synchronized (FileHandleThreadPool.class) {
				if (mInstance == null) {
					mInstance = new FileHandleThreadPool<Runnable>();
				}
			}
		}
		return mInstance;
	}

	/**
	 * @ClassName: HandlerObserver
	 * @Description:文件处理器观察者
	 * @author: Matrix
	 * @date: 2012-11-28 下午6:31:56
	 * 
	 */
	public interface TaskThreadObserver {

		public void onCurrentTaskSuccess();// 有某个线程成功执行

		public void onCurrentTaskFailed();// 有某个线程执行失败

	}

	/**
	 * @ClassName: HandleThreadObserver
	 * @Description:主控制线程池观察者
	 * @author: Matrix
	 * @date: 2012-11-28 下午6:35:05
	 * 
	 */
	public interface HandleThreadObserver {
		public void onAllTaskStart(int totalTask);// 当任务开始执行

		public void onAllTaskEnd();// 当所有任务执行完毕
	}
}
