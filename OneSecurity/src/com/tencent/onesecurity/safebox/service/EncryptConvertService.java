package com.tencent.onesecurity.safebox.service;

import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.util.EncryptCampHelper;

import android.app.IntentService;
import android.content.Intent;

/**
 * 加密版本兼容处理Service
 * @author joycui
 *
 */
public class EncryptConvertService extends IntentService {
	
	private EncryptCampHelper helper;

	public EncryptConvertService() {
		super("EncryptConvertService");
//		helper = EncryptCampHelper.getInstance();
	}

	@Override
	public void onCreate() {
		super.onCreate();
		
		if (helper == null) {
			helper = EncryptCampHelper.getInstance();
		}
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		// pic
//		EncryptConvertManager.getInstance().setConverting(DaoConstant.MEDIA_TYPE_PIC, true);// TODO 算法变更后需要加此行
//		helper.ConvertData4Pic();
		helper.versionUpdate(DaoConstant.MEDIA_TYPE_PIC);
//		EncryptConvertManager.getInstance().setConverting(DaoConstant.MEDIA_TYPE_PIC, false);// TODO 算法变更后需要加此行
		
		// Note
//		EncryptConvertManager.getInstance().setConverting(DaoConstant.MEDIA_TYPE_NOTE, true);// TODO 算法变更后需要加此行
//		helper.ConvertData4Note();
		helper.versionUpdate(DaoConstant.MEDIA_TYPE_NOTE);
//		EncryptConvertManager.getInstance().setConverting(DaoConstant.MEDIA_TYPE_NOTE, false);// TODO 算法变更后需要加此行
	}

}
