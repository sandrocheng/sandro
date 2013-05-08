package com.tencent.onesecurity.update;

import java.util.ArrayList;

import android.content.Context;
import android.content.Intent;

import com.tencent.onesecurity.dao.DBHelper;
import com.tencent.onesecurity.safebox.dao.SafeBoxDBHelper;
import com.tencent.onesecurity.service.UpdateService;


public class UpdateManager {

	private static UpdateManager instance;
	
	private boolean needUpdate = false;
	
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
				needUpdate = true;
			}
		}
		return needUpdate;
	}
	
	public boolean isNeedUpdate(){
		return this.needUpdate;
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
	
}
