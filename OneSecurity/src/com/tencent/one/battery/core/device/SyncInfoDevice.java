/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncAdapterType;
import android.os.Bundle;

/**
 * @author boone
 * 
 */
public class SyncInfoDevice implements DeviceGovernor {

	private Context context = null;
	
	public static boolean getSyncState(Context context) {
		return ContentResolver.getMasterSyncAutomatically();
	}
	
	public void setSyncState(Context context, boolean isopen) {
		ContentResolver.setMasterSyncAutomatically(isopen);
	}
	
	/**
	 * 设置自动同步，同时立即进行请求
	 * 
	 * @param context
	 * @param isopen
	 */
	public void setSyncStateAndRequest(Context context, boolean isopen) {
		ContentResolver.setMasterSyncAutomatically(isopen);
		// 请求同步
		if (isopen) {
			SyncAdapterType[] syncAdapterTypeList = ContentResolver.getSyncAdapterTypes();
			AccountManager accountManager = AccountManager.get(context);
			for (int j = 0; j < syncAdapterTypeList.length; ++j) {
				SyncAdapterType syncAdapterType = syncAdapterTypeList[j];
				for (Account account : accountManager.getAccountsByType(syncAdapterType.accountType)) {
					if (ContentResolver.getSyncAutomatically(account, syncAdapterType.authority))
						ContentResolver.requestSync(account, syncAdapterType.authority, new Bundle());
				}
			}
		}
	}

	@Override
	public void switchOff() {
		if (getSyncState(this.context)) {
			setSyncState(this.context, false);
		}

	}

	@Override
	public void switchOn() {
		if (!getSyncState(this.context)) {
			setSyncState(this.context, true);
		}

	}

	private SyncInfoDevice(Context context) {
		this.context = context;
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (SyncInfoDevice.class) {
				if (mInstance == null) {
					mInstance = new SyncInfoDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		return getSyncState(this.context);
	}

	@Override
	public int getValue() {
		return 0;
	}

	@Override
	public void setValue(int value) {
		// TODO Auto-generated method stub
		
	}
}
