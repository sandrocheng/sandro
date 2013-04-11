package com.tencent.onesecurity;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

import com.tencent.onesecurity.common.ApplicationConfig;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.receiver.NewPackageReceiver;
import com.tencent.onesecurity.service.SecureService;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.usage.qq.ReportService;
import com.tencent.onesecurity.util.ConfigureLog4J;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.RQDExceptionUtil;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.ScriptHelper;

public final class MainApplication extends Application {

	public static Context mContext;
	private static Intent mStartApplicationIntent;
	
	private static NewPackageReceiver mReceiver = new NewPackageReceiver();

	@Override
	public void onCreate() {
//		long time = System.currentTimeMillis();
		super.onCreate();
		mContext = getApplicationContext();
		
		IntentFilter mIntentFilterForRoot = new IntentFilter();
		mIntentFilterForRoot.addAction(ScriptHelper.ROOT_GOT_ACTION);
		mContext.registerReceiver(mIntentReceiver, mIntentFilterForRoot);
		
		ApplicationConfig.initData();
		Log.d("MainApplication", "time is " + System.currentTimeMillis());
		DeviceUtil.initDensityStatus(MainApplication.this);
		Log.d("MainApplication", "time is " + System.currentTimeMillis());
		
//		Log.i("MainApplication", "application start use1 : " + (System.currentTimeMillis() - time));
        if (DaoCreator.createConfigDao().isLicenseAgreed()) {
//    		Log.i("MainApplication", "application start use2 : " + (System.currentTimeMillis() - time));
        	startTMS();
//        	Log.i("MainApplication", "application start use3 : " + (System.currentTimeMillis() - time));
        	new Thread(){  
        		public void run(){
        			startApplication();
        		}
        	}.start();
        }
//        Log.i("MainApplication", "application start use4 : " + (System.currentTimeMillis() - time));
        IntentFilter mIntentFilter = new IntentFilter();  
		mIntentFilter.addDataScheme("package");  
		mIntentFilter.addAction(Intent.ACTION_PACKAGE_ADDED);
		mIntentFilter.setPriority(2147483647); 
		mContext.registerReceiver(mReceiver, mIntentFilter);
	}

	/**
	 * 初始化tms
	 */
	public static void startTMS(){
		TMSApplication.init(mContext, SecureService.class, new ApplicationConfig());
	}
	
	
	public static void startApplication() {
		initIntent();
		SecureService.startOSService();
		ConfigureLog4J.configure(false);
		// 初始化RQD Crash异常上报SDK
		RQDExceptionUtil rqdExceptionUtil = new RQDExceptionUtil(mContext);
		rqdExceptionUtil.initRQDException();
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				
				try { // 为了等待渠道推广的参数保存完成后再上报这里稍等3秒
					Thread.sleep(3000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				
				// 安装上报and 上报feature
				Intent i = new Intent(mContext, ReportService.class);
				mContext.startService(i);
				
				// 加速用初始化
				int rootResult = ScriptHelper.canRunAtRoot();
				ConfigDao mConfigDao = DaoCreator.createConfigDao();
				if (rootResult == ScriptHelper.ROOT_GOT) {
					mConfigDao.setRootPermission(true);
				} else {
					mConfigDao.setRootPermission(false);
				}
			}
		}, "inMainApplication").start();
	}

	public static Context getContext() {
		return mContext;
	}

	private static void initIntent() {
	    ComponentName componentName = new ComponentName(
                mContext.getPackageName(), MainActivity.class.getName());
        mStartApplicationIntent = new Intent(Intent.ACTION_MAIN);
        mStartApplicationIntent.addCategory(Intent.CATEGORY_LAUNCHER);
        mStartApplicationIntent.setComponent(componentName);        
        mStartApplicationIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
	}

	public static Intent getStartApplicationIntent() {
		return mStartApplicationIntent;
	}
	
	// 2013.03.11 add by jackwang for record root permission start
	private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
	    
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals(ScriptHelper.ROOT_GOT_ACTION)) {  
				ConfigDao mConfigDao = DaoCreator.createConfigDao();
				mConfigDao.setRootPermission(true);
			}
		} 
	};
	// 2013.03.11 add by jackwang for record root permission end
}
