package com.tencent.onesecurity.safebox.manager;

import android.content.Context;
import android.content.Intent;
import android.util.SparseBooleanArray;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.safebox.dao.EncryptVersionEnum;
import com.tencent.onesecurity.safebox.service.EncryptConvertService;
import com.tencent.onesecurity.safebox.util.EncryptCampHelper;

/**
 * 加密转换管理类
 * @author joycui
 */
public class EncryptConvertManager {
	
	private EncryptCampHelper helper = null;
	private static Object lock = new Object();
	private static EncryptConvertManager instance = null;
	private boolean isFirstVisit = true;
	
	private EncryptConvertManager() {
	}
	
	public static EncryptConvertManager getInstance() {
		synchronized (lock) {
			if (instance == null) {
				instance = new EncryptConvertManager();
			}
		}
		return instance;
	}
	
	private EncryptCampHelper getCampHelper() {
		if (helper == null) {
			helper = EncryptCampHelper.getInstance();
		}
		return helper;
	}
	
	private SparseBooleanArray mapHigher = new SparseBooleanArray();
	private SparseBooleanArray mapLower = new SparseBooleanArray();
	private SparseBooleanArray mapConverting = new SparseBooleanArray();
	private SparseBooleanArray isRead4Lower = new SparseBooleanArray();
	private SparseBooleanArray isRead4Higher= new SparseBooleanArray();
	
	public void startEncryptionVersionCheck(Context context) {
		if (isFirstVisit) {
			isFirstVisit = false;
			
			Intent intent = new Intent(MainApplication.getContext(), EncryptConvertService.class);
			context.startService(intent);
		}
	}
	
	public void resetVisitFlag() {
		isFirstVisit = true;
		isRead4Lower.clear();
		isRead4Higher.clear();
	}
	
	public void setConverting(int type, boolean isDoing){
		mapConverting.put(type, isDoing);
	}
	
	/**
	 * 是否正在转换加密算法？
	 * @param type
	 * @return
	 */
	public boolean isConverting(int type) {
		return mapConverting.get(type);
	}
	
	/**
	 * 是否是太低的版本？
	 * @param type
	 * @return
	 */
	public boolean isTooLowerVersion(int type) {
		boolean isTooLow = false;
		if (isRead4Lower.get(type) == false) {
			isRead4Lower.put(type, true);
			
			int curVer = getCampHelper().getCurrentVersion(type, true);
			if (EncryptVersionEnum.CURRENT_VERSION  - curVer > 2) {
				isTooLow = true;
			}
			mapLower.put(type, isTooLow);
		}
		return mapLower.get(type);
	}
	
	/**
	 * 是不是更新的版本？
	 * @param type
	 * @return
	 */
	public boolean isHigherVersion(int type) {
		boolean isHigher = false;
		
		if (isRead4Higher.get(type) == false) {
			isRead4Higher.put(type, true);
			
			int curVer = getCampHelper().getCurrentVersion(type, true);
			if (curVer > EncryptVersionEnum.CURRENT_VERSION) {
				isHigher = true;
			}
			
			mapHigher.put(type, isHigher);
		}
		return mapHigher.get(type);
	}
	
}
