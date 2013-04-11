package com.tencent.onesecurity.manager.virus;

import java.util.Timer;
import java.util.TimerTask;

public class TimeoutManager {
	 public static interface ITimeoutListener {
		 public void timeout();
	 }
	 
	 private Timer timer = null;
	 private ITimeoutListener listenner = null;
	 
	 /**
	  * 设置到时回调
	  * @param listener
	  */
	 public void setOnTimeoutListener(ITimeoutListener listener) {
		 if (listenner == null) {
			 listenner = listener;
		 }
	 }
	 
	 /**
	  * 根据指定时间设置定时器
	  * @param timeoutMillion
	  */
	 public void startTimer(long timeoutMillion) {
		 if (timer == null) timer = new Timer();
		 TimerTask task = new TimerTask() {
				@Override
				public void run() {
					if (listenner != null) {
						listenner.timeout();
					}
				}
			};
		 timer.schedule(task, timeoutMillion);
	 }
	 
	 /**
	  * 停掉定时器
	  */
	 public void stopTimer() {
		 // 去掉和监听器的关联
		 listenner = null;
		 
		 // 停掉Timer
		 if (timer != null) {
			 timer.cancel();
			 timer = null;
		 }
	 }
}
