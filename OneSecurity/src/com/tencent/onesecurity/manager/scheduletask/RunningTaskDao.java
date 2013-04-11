package com.tencent.onesecurity.manager.scheduletask;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

import com.tencent.onesecurity.MainApplication;

/**
 * 用于保存运行中的任务
 * @ClassName: RunningTaskDao
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Jess Yan
 * @date: 2012-11-19 下午04:27:45
 *
 */
public class RunningTaskDao {
	private final String PREF_RUNNING_TASK = "PREF_RUNNING_TASK";
	
	private SharedPreferences preferences;
	private Editor editor;
	
	/**
	 * 初始化
	 */
	RunningTaskDao() {
		preferences = MainApplication.getContext().getSharedPreferences(PREF_RUNNING_TASK, Context.MODE_PRIVATE);
		editor = preferences.edit();
	}
	
	/**
	 * 保存信息到首选项
	 * @param name
	 * @param value
	 */
	void saveTask(String name, RemindTask task) {
//		if (name == null || value == null) return;
//		if ("".equals(name) || "".equals(value)) return;
//		
//		editor.putString(name, value);
		editor.commit();
	}
	
	/**
	 * 删除一个任务
	 * @param name
	 */
	void removeTask(String name) {
		editor.remove(name);
		editor.commit();
	}

	
	/**
	 * 删除全部任务
	 * @param name
	 */
	void removeAllTask() {
		editor.clear();
	}
	/**
	 * 得到一个任务
	 * @param name
	 * @return
	 */
	String getTaskInfo(String name) {
		String taskBase64 = null;
		taskBase64 = preferences.getString(name, null);
		return taskBase64;
	}
	/**
	 * 得到所有任务
	 * @return
	 */
	@SuppressWarnings("unchecked")
	ArrayList<String> getAllTaskInfo() {
		ArrayList<String> allTask = null;
		Map<String, ?> maps = preferences.getAll();
		Iterator<String> iterator = (Iterator<String>) maps.values().iterator();
		String name = null;
		while(iterator.hasNext()) {
			if (allTask == null) allTask = new ArrayList<String>();
			
			name = iterator.next();
			allTask.add(name);
		}
		
		return allTask;
	}
	/**
	 * 得到所有任务
	 * @return
	 */
	@SuppressWarnings("unchecked")
	ArrayList<String> getAllTask() {
		ArrayList<String> allTask = null;
		Map<String, ?> maps = preferences.getAll();
		Iterator<String> iterator = (Iterator<String>) maps.values().iterator();
		String name = null;
		while(iterator.hasNext()) {
			if (allTask == null) allTask = new ArrayList<String>();
			
			name = iterator.next();
			allTask.add(name);
		}
		
		return allTask;
	}
	
	
//	private String getTextTask(RemindTask task) {
//		StringBuilder textTask = new StringBuilder();
//		textTask.append(task.taskName);
//		textTask.append("|");
//		textTask.append(task.interval);
//		textTask.append(task.remainingTime);
//		textTask.append(task.remindDate);
//		textTask.append(task.remindDate);
//		
//		return textTask.toString();
//	}
}
