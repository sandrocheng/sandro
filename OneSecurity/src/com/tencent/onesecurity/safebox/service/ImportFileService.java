package com.tencent.onesecurity.safebox.service;

import java.util.LinkedList;

import android.app.IntentService;
import android.content.Intent;
import android.os.IBinder;

import com.tencent.onesecurity.safebox.manager.SecurePicManager;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager;
import com.tencent.onesecurity.safebox.model.ImageForQueueEntity;

/**
 * @ClassName: ImportFileService
 * @Description:导入文件后台服务
 * @author: Rabbiy
 * @date: 2012-10-30 下午3:55:46
 *
 */
public class ImportFileService extends IntentService{
//	private static final String TAG = "ImportFileService";
	LinkedList<ImageForQueueEntity> linkedList;
	
	public static final int FLAG_EXPORT_IMAGE = 1;
	public static final int FLAG_DELETE_IMAGE = 2;
	public static final int FLAG_IMPROT_IMAGE = 3; // 导入 image
	
	public static final int FLAG_SDCARD_SCAN = 101; 
	
	

	public static final String INTENT_EXTRA_NAME = "intent_extra_name" ;

	public ImportFileService() {
		super("ImportFileService");  
	}
	
	
	@Override
	public IBinder onBind(Intent intent) {
		return super.onBind(intent);
	}

	public ImportFileService(String name) {
		super(name);
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		switch (intent.getFlags()) {
		case FLAG_EXPORT_IMAGE:
			long[] eImageIds = intent.getLongArrayExtra(INTENT_EXTRA_NAME);
			SecurePicManager.getInstance().batchRecoverySecurePics(eImageIds);
			break;
		case FLAG_DELETE_IMAGE:
			long[] dImageIds = intent.getLongArrayExtra(INTENT_EXTRA_NAME);
			SecurePicManager.getInstance().batchRemoveSecurePics(dImageIds);
			break;
		case FLAG_IMPROT_IMAGE:
			SecureQueueManager.getInstance().startImport() ;
			break ;
		default:
			break;
		}
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		return super.onStartCommand(intent, flags, startId);
		
	}

	@Override
	public void onCreate() {
		super.onCreate();
		
	}
	

	@Override
	public void onDestroy() {
android.util.Log.i("SecurePicGridActivity", "service onDestroy") ;
		SecureQueueManager.getInstance().dismissSecureQueue();
		SecureQueueManager.getInstance().stopSecureQueue();
		super.onDestroy();
	}

	@Override
	public void onStart(Intent intent, int startId) {
		super.onStart(intent, startId);
	}
}
