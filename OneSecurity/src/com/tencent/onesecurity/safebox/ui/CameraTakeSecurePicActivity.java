package com.tencent.onesecurity.safebox.ui;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

import android.app.Activity;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
import android.provider.MediaStore.Images;
import android.provider.MediaStore.Images.Media;
import android.text.format.DateFormat;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.safebox.manager.SecureQueueManager;
import com.tencent.onesecurity.safebox.util.ImportUtil;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;

public class CameraTakeSecurePicActivity extends Activity {
	public static final int USER_TAKE_PHOTO = 101;
	private static final Uri STORAGE_URI = Images.Media.EXTERNAL_CONTENT_URI;
	private static final String EXPORT_PATH = "/DCIM/SecretAlbum/";
	//用于判断是不是快捷方式
	public static String WAS_SHORTCUT = "WAS_SHORTCUT";
	
	private String takeFileDir = null;
	private String fileNameTmp = null;
	
//	public boolean iskilled = false;
//	public boolean isResult = false;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
//		Log.i("通知", "onCreate" + isResult);
		setContentView(R.layout.layout_camera_take_secure_pic);
		
		takeFileDir = ConfigDao.getInstance().getTakeFilePath();
		
		if (SecureQueueManager.getInstance().isKilledCamera()) {
			ConfigDao.getInstance().setTakeFilePath("");
			finish();
			return;
		} else {
			if ("".equals(takeFileDir)) {
				startCamera();
				SecureQueueManager.getInstance().setNewCamera(false);
			} else {
					File getName = new File(takeFileDir);
					if(getName.exists()){
						startImport();
	//					SecureQueueManager.getInstance().setNewCamera(false);
						finish();
						return;
	//					startCamera();
					} else {
						if (SecureQueueManager.getInstance().isNewCamera()) {
							startCamera();
							SecureQueueManager.getInstance().setNewCamera(false);
						}
					}
				
				}
		}
		
	}

	private void startCamera(){
		
		Intent intent;
		{
			/**
			 * 这一段是为了oppo手机出现bug来修改的(Bug:拍照后返回的照片不是原来的图片，定制机，bull shit...)
			 */
			//文件夹路径
			takeFileDir = Environment.getExternalStorageDirectory()
					.toString() +EXPORT_PATH ;
			File file = new File(takeFileDir);
			if (!file.exists()) {
				file.mkdirs();
			}
			fileNameTmp =  DateFormat.format("yyyy_MM_dd_hh_mm_ss", new Date())+ ".jpg";
			//保存文件路径
			takeFileDir += fileNameTmp;
			
			ConfigDao.getInstance().setTakeFilePath(takeFileDir);

			intent = new Intent(MediaStore.ACTION_IMAGE_CAPTURE);
			intent.putExtra(MediaStore.Images.Media.ORIENTATION, 0);
			intent.putExtra(MediaStore.EXTRA_OUTPUT,
					Uri.fromFile(new File(takeFileDir)));
		}
//		Log.i("通知", "" + takefileUri);
		startActivityForResult(intent, USER_TAKE_PHOTO);
	}
	
	protected void onActivityResult(int requestCode, int resultCode, Intent data) {
		Log.i("通知", "onActivityResult" + requestCode + "----" + resultCode);
		SecureQueueManager.getInstance().setKilledCamera(true);
		
		if (requestCode == USER_TAKE_PHOTO) {
			if (resultCode == Activity.RESULT_OK) {
				startImport();
			} else {
				String tmpPath = ConfigDao.getInstance().getTakeFilePath();
				
				if (tmpPath !=null && tmpPath.length() > 0) {
					File getName = new File(tmpPath);
					if (getName.exists()) {
						startImport();
//						finish();
					}
				}
				
//				ConfigDao.getInstance().setTakeFilePath("ABC");
			}

		} else {
			ConfigDao.getInstance().setTakeFilePath("");
		}
		//MediaStore.Images.Media.getBitmap(arg0, arg1)
		finish();
//		isResult = true;
		super.onActivityResult(requestCode, resultCode, data);
		return;
	}
	
	private void startImport() {
		String[] selectMedia = { MediaStore.Images.Media._ID, Media.DATA, MediaStore.Images.Media.DATE_ADDED };

		//取比较路径
		String imgPath = "";
		//为了删除
		long imageId = -1;
		//取原图
		FileInputStream fileInputStream4User = null;
		//取图用来判断是否自动保存
		FileInputStream fileInputStream4Media = null;
		
		Cursor cursor = this.getContentResolver().query(STORAGE_URI, selectMedia, Media.DATE_ADDED + "<=" + (System.currentTimeMillis() / 1000) , null, Media.DATE_ADDED + " desc");
		if (cursor.moveToFirst()) {
				/**
				 *  _data：文件的绝对路径  Media.DATA='_data'
				 */
			imgPath = cursor.getString(cursor.getColumnIndex(Media.DATA));
			imageId = cursor.getInt(cursor.getColumnIndex(Media._ID));
		}
		
		cursor.close();
		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "通过照相机加密照片", "私密图片", 1L);
		if ((imgPath != null) && (imgPath.length() > 0)){ // TODO 这个地方有疑问？？？
			// 系统未生成图片，不用删除，直接导入
			File sysFile = new File(imgPath) ;
			if (!sysFile.exists()) {
				if (ImportUtil.import1Photo(takeFileDir,"image/jpeg")) {
					ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips),
							1),R.layout.custom_toast);
				} else {
					ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips),
							0),R.layout.custom_toast);
				}
				ConfigDao.getInstance().setTakeFilePath("");
				return;
			}
			
			byte[] userData = new byte[1024];
			byte[] mediaData = new byte[1024];
			try {
				fileInputStream4User = new FileInputStream(takeFileDir);
				fileInputStream4Media = new FileInputStream(imgPath);
				
				fileInputStream4User.read(userData);
				fileInputStream4Media.read(mediaData);
				if(Arrays.equals(userData, mediaData)){
					int finalDelete = ImportUtil.deleteImgFromMediaStore(imageId);
					if(finalDelete == -1){
						File file = new File(takeFileDir);
						file.delete();
						ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed),R.layout.custom_toast);
						ConfigDao.getInstance().setTakeFilePath("");
						return;
					}
				}
			} catch (IOException e) {
				// TODO daiding
				ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed),R.layout.custom_toast);
				ConfigDao.getInstance().setTakeFilePath("");
				return;
			} finally {
				if(fileInputStream4User != null){
					try {
						fileInputStream4User.close();
					} catch (IOException e) {
					}
				}
				if(fileInputStream4Media != null){
					try {
						fileInputStream4Media.close();
					} catch (IOException e) {
						}
				}					
			}
		}
		
//		String importStr = getString(R.string.safebox_photos_import_toast_tips);

		if (ImportUtil.import1Photo(takeFileDir,"image/jpeg")) {
			//成功
			ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips), 1),R.layout.custom_toast);
		} else {
			File file = new File(takeFileDir);
			file.delete();
			ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed),R.layout.custom_toast);
		}
		
		ConfigDao.getInstance().setTakeFilePath("");
	}
	
	
//	private void deleteImgFromMediaStore(long imgId) {
//		ContentResolver mResolver = MainApplication.getContext().getContentResolver();
//		
//		Uri uri = ContentUris.withAppendedId(STORAGE_URI, imgId);
//		mResolver.delete(uri, null, null);
//
//	}
//	
//	public boolean import1Photo(){
//		GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "通过照相机加密照片", "私密图片", 1L);
//		if(takeFileDir != null){
//			String resultForMove = FileWorker.importFile(takeFileDir, DaoConstant.MEDIA_TYPE_PIC);
//			if (resultForMove != null) {
//				// 移动成功开始加密
//				String forMovePath = FileWorker.getSecureFilePathByName(resultForMove, DaoConstant.MEDIA_TYPE_PIC);
//				byte[] resultForHead = EncryptWorker.encryptFile(forMovePath);
//				if (resultForHead != null) {
//					// 加密成功 暂时不管
////					boolean rename4Encrypt = FileWorker.rename4Encrypt(forMovePath);
//					if (intSertDaoResult(takeFileDir, resultForMove) == true) {	
//						return true;
//					}else {
//						//解密移动
//						fileRollback(resultForMove,resultForHead, takeFileDir);
//						return false;
//					}
//				}else {
//					//解密移动
//					fileRollback(resultForMove,null, takeFileDir);
//					return false;
//				}
//			}else {
////				fileRollback(null,null, takeFileDir);
//				
//			}
//		}
//		return false;
//	}
//		
//	public boolean intSertDaoResult(String path, String rename) {
//		MultiMediaEntity entityForEncrypt = new MultiMediaEntity();
//		entityForEncrypt.setType(DaoConstant.MEDIA_TYPE_PIC);
//		entityForEncrypt.setOriginFilename(fileNameTmp);
//		entityForEncrypt.setSecureFilename(rename);
//		entityForEncrypt.setOriginPath(path);
//		entityForEncrypt.setState(DaoConstant.MEDIA_STATE_DONE);
//		entityForEncrypt.setExtType("image/jpeg");
////		entityForEncrypt.setSize(data.getSize()); // 12.14 优化 
//		long idForEnity = -1;
//		try {
//			idForEnity = MultiMediaDao.getInstance().insertWhithoutClose(entityForEncrypt); // == JOY OPZ ==
//		} catch (Exception e) {
//			e.printStackTrace();
//			return false;
//		}
//		return idForEnity > 0;
//	}
//	
//	
//	public boolean fileRollback(String codeName, byte[] head, String orangePath) {
////		log.info("improt image Start reBack");
//		if (head != null) {
//			// 解密并移动
//			boolean retForRecover = FileWorker.recoverFile(codeName, head, DaoConstant.MEDIA_TYPE_PIC);
//			String retForExport = FileWorker.exportFile(codeName, orangePath, DaoConstant.MEDIA_TYPE_PIC);
//			if (retForExport !=null && retForRecover == true) {
//				return true;
//			} else {
//				return false;
//			}
//		} else {
//			// 仅移动
//			String retForExport = FileWorker.exportFile(codeName, orangePath, DaoConstant.MEDIA_TYPE_PIC);
//			if (retForExport != null) {
//				return true;
//			} else {
//				return false;
//			}
//		}
//	}
}
