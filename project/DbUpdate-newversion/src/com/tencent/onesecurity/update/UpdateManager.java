package com.tencent.onesecurity.update;

import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;

import com.tencent.onesecurity.dao.DBHelper;
import com.tencent.onesecurity.safebox.dao.SafeBoxDBHelper;
import com.tencent.onesecurity.service.UpdateService;


public class UpdateManager {

	private static UpdateManager instance;
	
	/**
	 * updateState状态
	 * 不需要更新
	 */
	private static final int NO_NEED_UPDATE = 0;
	
	/**
	 * updateState状态
	 * 需要更新
	 */
	private static final int NEED_UPDATE = 1;
	
	/**
	 * updateState状态
	 * 正在更新
	 */
	private static final int UPDATEING = 1;
	
	private int updateState = NO_NEED_UPDATE;
	
	/**
	 * 保存需要检查的组件
	 */
	private ArrayList<UpdateInterface> updateList= new ArrayList<UpdateInterface>();
	
	private UpdateManager(){
		DBHelper.getInstance().createDB();
		SafeBoxDBHelper.getInstance().createDB();
		updateList.add(DBHelper.getInstance());
		updateList.add(SafeBoxDBHelper.getInstance());
	};

	public static UpdateManager getInstance() {
		if (instance == null) {
			if (instance == null) {
				instance = new UpdateManager();
			}
		}
		return instance;
	}
	
	public boolean checkUpdate(){
		for(UpdateInterface update: this.updateList){
			if(update.isNeedUpdate()){
				updateState = NEED_UPDATE;
			}
		}
		return updateState==NEED_UPDATE;
	}
	
	/**
	 * 用于mainActivity跳转更新页面时判断service是否正在更新
	 * @return
	 */
	public boolean isNeedToUpdateShow(){
		if(updateState == NEED_UPDATE || updateState == UPDATEING){
			return true;
		}
		return false;
	}
	
	public void startUpdateService(Context context){
		Intent intent = new Intent(context,UpdateService.class);
		intent.setAction(UpdateService.START_UPDATE_ACTION);
		context.startService(intent);
	}
	
	/**
	 * 升级转移数据的总量，用于ui显示进度条
	 * @return
	 */
	public int getUpdateCounts(){
		int count = 0;
		for(UpdateInterface update: this.updateList){
			count +=update.updateCount();
		}
		return count;
	}
	
	/**
	 * 组件更新
	 * @param handler
	 */
	public void updateApp(Handler handler){
		updateState = UPDATEING;
		UpdateRefresh updateRefresh = new UpdateRefresh(handler);
		for(UpdateInterface update: this.updateList){
			update.update(updateRefresh);
		}
	}
	
	/**
	 * 更新结束后调用
	 */
	public void updateFinish(){
		updateState = NO_NEED_UPDATE;
		updateList.clear();
	}
	
	/**
	 * 用于刷新进度条的类
	 * @author sandrocheng
	 *
	 */
	public static class UpdateRefresh{
		private Handler mHandler;
		private int refreshCount;
		public UpdateRefresh(Handler handler){
			this.mHandler = handler;
			refreshCount = 0;
		}
		
		public void sendRefreshCommend(){
			if(this.mHandler != null){
				refreshCount ++;
				Message msg = this.mHandler.obtainMessage(UpdateService.RESRESH_COUNT);
				msg.arg1 = refreshCount;
				msg.sendToTarget();
			}
		}
	}
	
}
