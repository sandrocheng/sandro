/**
* FileName: SharePictureActivity.java
* @Description: 用来分享图片用
* All rights Reserved, Designed By 21winmess
* Copyright: Copyright(C) 2010-2011 
* Company 21winmess DaLian LTD.
* @author: Allan Zhang
* @version V1.3
* Createdate: 2013-3-5 下午04:24:51
*
* Modification History:
* Date Author Version Discription
* -----------------------------------------------------------------------------------
* 2013-3-5 Qute_Android2.0
* Why & What is modified: <修改原因描述>
*/
package com.tencent.onesecurity.safebox.ui;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.dao.DaoConstant;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.util.ImportUtil;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.ui.activity.vip.VipUpgradeActivity;
import com.tencent.onesecurity.ui.customview.dialog.CustomDialog;
import com.tencent.onesecurity.ui.customview.dialog.CustomLoadingDialog;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.ToastUtil;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import android.app.Activity;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnKeyListener;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.MediaStore;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;

/**
 * @ClassName: SharePictureActivity
 * @Description:实现分享图片功能
 * @author: Allan
 * @date: 2013-3-5 下午04:24:51
 *
 */
public class SharePictureActivity extends Activity implements OnClickListener {
	private View mMainView;
	private RelativeLayout mLayoutSharePicture;
	private ImageView mImgPictureBg;
	private ImageView mImgShownPicture;
	private Button mBtnOk;
	private Button mBtnCancel;
	
	private boolean bShareMultiImg = false;
	private UserInfoDao mUserInfoDao = DaoCreator.createUserInfoDao();
	private CustomLoadingDialog mLoadingDlg;
	private int mCurrentProcessingIndex = 0;
	private int mTotelNumberToProcess = 0;
	private int mTotalSuccess = 0;
	private int mTotalFailed = 0;
	private int mSkippedNumber = 0;
	private Dialog mDlgVIPOut;
	private Bitmap bm;
	private ArrayList<Uri> uris;
	private Uri singleUri;
	
	private final int MSG_SHOW_PROGRESS_BAR = 201;
	private final int MSG_UPDATE_PROGRESS_BAR = 202;
	private final int MSG_UPDATE_HANDLED_IMG = 203;
	private final int MSG_SHOW_HANDLED_IMG = 204;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		if(DeviceUtil.isLowDensity()) {
			mMainView = LayoutInflater.from(this).inflate(
					R.layout.layout_share_picture_activity_low, null);
		}
		else {
			mMainView = LayoutInflater.from(this).inflate(
					R.layout.layout_share_picture_activity, null);
		}
		setContentView(mMainView);
		
		mLoadingDlg = new CustomLoadingDialog(this, false);
		initVipOutDlg();
		
		Intent intent = getIntent();
		if(intent != null) {
			processIntent(intent);
		}
		InitView();
	}
	
	/**
	 * @param intent
	 */
	private void processIntent(Intent intent) {
		String action = intent.getAction();
		if((action.equals(Intent.ACTION_SEND) || action.equals(Intent.ACTION_SEND_MULTIPLE))) {
			mCurrentProcessingIndex = 0;
			mTotelNumberToProcess = 0;
			mTotalSuccess = 0;
			mTotalFailed = 0;
			if (action.equals(Intent.ACTION_SEND)) {
                String type = intent.getType();
                Uri stream = (Uri)intent.getParcelableExtra(Intent.EXTRA_STREAM);
                if (stream != null && type != null) {
                	bShareMultiImg = false;
                    singleUri = stream;
                } else {
                	Log.i("QQDOCTOR_TEST", "type is null; or sending file URI is null");
                }
            } else if (action.equals(Intent.ACTION_SEND_MULTIPLE)) {
            	ArrayList<Uri> urisTemp = new ArrayList<Uri>();
            	urisTemp = intent.getParcelableArrayListExtra(Intent.EXTRA_STREAM);
        		mTotelNumberToProcess = urisTemp.size();
            	uris = new ArrayList<Uri>();
                String mimeType = intent.getType();
                if(mimeType.toLowerCase().startsWith("image/") == false) {
                	for(int i = 0; i < urisTemp.size(); i++) {
                		Uri uriTemp = urisTemp.get(i);
                		String strTemp = getFilePathFromUri(uriTemp);
                		if(isImageFormat(strTemp)) {
                			uris.add(uriTemp);
                		}
                		else {
                			mSkippedNumber++;
                		}
                	}
                }
                else {
                	uris = urisTemp;
                	mSkippedNumber = 0;
                }
                if (mimeType != null && uris != null) {
                	bShareMultiImg = true;
                	Log.i("QQDOCTOR_TEST", "Get ACTION_SHARE_MULTIPLE intent: uris " + urisTemp + "\n Type= " + mimeType);
                } else {
                	Log.i("QQDOCTOR_TEST", "type is null; or sending files URIs are null");
                }
            }
		}
	}

	/**
	 * 
	 */
	private void InitView() {
		mLayoutSharePicture = (RelativeLayout)mMainView.findViewById(R.id.LayoutSharePictureActivity);
		mImgPictureBg = (ImageView)mMainView.findViewById(R.id.ImgPictureBackground);
		mImgShownPicture = (ImageView)mMainView.findViewById(R.id.ImgShownPictures);
		mBtnOk = (Button)mMainView.findViewById(R.id.BtnOk);
		mBtnOk.setOnClickListener(this);
		mBtnCancel = (Button)mMainView.findViewById(R.id.BtnCancel);
		mBtnCancel.setOnClickListener(this);
		
		if(isAllowToShare() == false) {
    		mLayoutSharePicture.setVisibility(View.INVISIBLE);
    		mDlgVIPOut.show();
    	}
		else {
			mLayoutSharePicture.setVisibility(View.VISIBLE);
		}
		
		Uri shownUri = null;
		if(bShareMultiImg) {
			mImgPictureBg.setImageDrawable(this.getResources().getDrawable(R.drawable.img_bg_share_multi_picture));
			if(uris.size() > 0) {
				shownUri = uris.get(mCurrentProcessingIndex);
			}
			else {
				Log.i("QQDOCTOR_TEST", "the uri list is empty");
			}
		}
		else {
			mImgPictureBg.setImageDrawable(this.getResources().getDrawable(R.drawable.img_bg_share_single_picture));
			shownUri = singleUri;
		}
		Log.i("QQDOCTOR_TEST", "shownUri = " + shownUri);
		String path = getFilePathFromUri(shownUri);
		showImportedImg(path, false);
	}

	/**
	 * @param shownUri
	 * @return
	 */
	private String getFilePathFromUri(Uri shownUri) {
		String imgPath = null;
		if(shownUri != null) {
			if(isFileImageUri(shownUri)) {
				String uriStr = shownUri.toString();
				imgPath = uriStr.substring(uriStr.indexOf("file://") + "file://".length());
				return imgPath;
			}
			String[] proj = { MediaStore.Images.Media.DATA };
			
			try {
				Cursor cursor = this.getContentResolver().query(shownUri, proj, null, null, null);
		        if (cursor != null && cursor.moveToFirst()) {
		    		int actual_image_column_index = cursor.getColumnIndex(MediaStore.Images.Media.DATA);
					imgPath = cursor.getString(actual_image_column_index);
				}
		        cursor.close();
			} catch (Exception e) {
			}
		}
		return imgPath;
	}

	/**
	 * @return
	 */
	private boolean isFileImageUri(Uri shownUri) {
		String uriStr = shownUri.toString().toLowerCase();
		if(uriStr.startsWith("file://")) {
			if(isImageFormat(uriStr)) {
				return true;
			}
		}
		return false;
	}
	
	private boolean isImageFormat(String fileName) {
		fileName = fileName.toLowerCase();
		if(fileName.endsWith(".jpg")
				|| fileName.endsWith(".jpeg")
				|| fileName.endsWith(".png")
				|| fileName.endsWith(".bmp")
				|| fileName.endsWith(".jpe")
				|| fileName.endsWith(".gif")
				|| fileName.endsWith(".wbmp")) {
			return true;
		}
		Log.i("QQDOCTOR_TEST", fileName + "is not image fiel");
		return false;
	}

	@Override
	protected void onNewIntent(Intent intent) {
		mLoadingDlg = new CustomLoadingDialog(this, false);
		initVipOutDlg();
		
		if(intent != null) {
			processIntent(intent);
		}
		InitView();
	}
	
	/* (non-Javadoc)
	 * @see android.app.Activity#onDestroy()
	 */
	@Override
	protected void onDestroy() {
		super.onDestroy();
		if(bm != null) {
			mImgShownPicture.setImageDrawable(null);
			bm.recycle();
			bm = null;
		}
		System.gc();
		
		if (mDlgVIPOut != null && mDlgVIPOut.isShowing()) {
			mDlgVIPOut.dismiss();
		}
		
		if (mLoadingDlg != null && mLoadingDlg.isShowing()) {
			mLoadingDlg.dismiss();
		}
	}
	
	/**
	 * 
	 */
	private void startImportSingleImgThread(final Uri uri) {
		Thread testRunnable = new Thread() {
			@Override
			public void run() {
				startImport(uri);
			}
		};
		testRunnable.start();
	}
	
	private void startImport(Uri uri) {
		//取比较路径
		String imgPath = getFilePathFromUri(uri);
		//为了删除
//		long imageId = -1;
		
		if(imgPath == null || imgPath.equals("") || isImageFormat(imgPath) == false) {
			mHandler.sendEmptyMessage(MSG_UPDATE_PROGRESS_BAR);
			mTotalFailed++;
			return;
		}
		
		if (ImportUtil.import1Photo(imgPath,"image/jpeg")) {
			//成功
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "通过分享加密成功", "", 1l);
			File file = new File(imgPath);
			try {
				file.delete();
			} catch( SecurityException e) {
				Log.i("QQDOCTOR_TEST", "SecurityException");
				e.printStackTrace();
			} catch (Exception e) {
				Log.i("QQDOCTOR_TEST", "Exception");
				e.printStackTrace();
			}
			
//			bDeleted = FileUtil.delete(imgPath);
			if(isFileImageUri(uri) == false) {
				ContentResolver mResolver = MainApplication.getContext().getContentResolver();
				int finalDelete = mResolver.delete(uri, null, null);
				if(finalDelete == -1){
					ToastUtil.ShowSimpleTextLongToast("Delete Img " + imgPath + " from media store failed",R.layout.custom_toast);
					Log.i("QQDOCTOR_TEST", "Delete Img " + imgPath + " from media store failed");
					mHandler.sendEmptyMessage(MSG_UPDATE_PROGRESS_BAR);
					mTotalFailed++;
					return;
				}
			}
//			GoogleAnalyticsTracker.getInstance().ClickButton("私密", "通过分享成功后删除源文件", "", 1l);
			mTotalSuccess++;
			ConfigDao.getInstance().setImportImgByShareFlag(true);
//			ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips), 1));
		} else {
//			ToastUtil.ShowSimpleTextLongToast(getString(R.string.safebox_camera_operate_failed));
			mTotalFailed++;
		}
		mHandler.sendEmptyMessage(MSG_UPDATE_PROGRESS_BAR);
	}

	private Handler mHandler = new Handler() {
		@Override
		public void handleMessage(Message msg) 
		{
			super.handleMessage(msg);
			switch( msg.what )
			{
				case MSG_SHOW_PROGRESS_BAR: 
				{
					Log.i("QQDOCTOR_TEST", "MSG_SHOW_PROGRESS_BAR");
					if(!bShareMultiImg) {
						mLoadingDlg.setMessage("Importing...");
					}
					else {
						mLoadingDlg.setMessage("Importing   " + mCurrentProcessingIndex + "/" + mTotelNumberToProcess);
					}
					if(mLoadingDlg != null && mLoadingDlg.isShowing() == false) 
						mLoadingDlg.show();
					break;
				}
				case MSG_UPDATE_PROGRESS_BAR:
				{
					Log.i("QQDOCTOR_TEST", "MSG_UPDATE_PROGRESS_BAR");
					if(!bShareMultiImg) {
						if(mLoadingDlg != null && mLoadingDlg.isShowing()) {
							mLoadingDlg.dismiss();
						}
						ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips), mTotalSuccess),R.layout.custom_toast);
						SharePictureActivity.this.finish();
					}
					else {
						mCurrentProcessingIndex++;
						if(mCurrentProcessingIndex < mTotelNumberToProcess - mSkippedNumber) {
							Uri uri = uris.get(mCurrentProcessingIndex);
							final String path = getFilePathFromUri(uri);
							Thread mRunnable = new Thread() {
								@Override
								public void run() {
									showImportedImg(path, true);
								};
							};
							mRunnable.start();
						}
						else {
							if(mLoadingDlg != null && mLoadingDlg.isShowing()) 
								mLoadingDlg.dismiss();
							if(mTotalSuccess == 0 || mTotalSuccess == 1) {
								if(mTotalSuccess == mTotelNumberToProcess) {
									ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photo_import_toast_tips), mTotalSuccess),R.layout.custom_toast);
								}
								else {
									ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_share_photo_toast_tips_1), mTotalSuccess) 
											+ String.format(getString(R.string.safebox_share_photo_toast_tips_failed), mTotalFailed + mSkippedNumber),R.layout.custom_toast);
								}
							}
							else {
								if(mTotalSuccess == mTotelNumberToProcess) {
									ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_photos_import_toast_tips), mTotalSuccess),R.layout.custom_toast);
								}
								else {
									ToastUtil.ShowSimpleTextShortToast(String.format(getString(R.string.safebox_share_photo_toast_tips_2), mTotalSuccess) 
										+ String.format(getString(R.string.safebox_share_photo_toast_tips_failed), mTotalFailed + mSkippedNumber),R.layout.custom_toast);
								}
							}
							SharePictureActivity.this.finish();
						}
					}
					break;
				}
				case MSG_SHOW_HANDLED_IMG: {
					Log.i("QQDOCTOR_TEST", "MSG_SHOW_HANDLED_IMG");
					mLoadingDlg.setMessage("Importing   " + mCurrentProcessingIndex + "/" + mTotelNumberToProcess);
					Log.i("QQDOCTOR_TEST", "Importing   " + mCurrentProcessingIndex + "/" + mTotelNumberToProcess);
					Bitmap bitm = (Bitmap) msg.obj;
					if (bitm != null) {
						mImgShownPicture.setImageBitmap(bitm);
					}
					this.sendEmptyMessage(MSG_UPDATE_HANDLED_IMG);
					break;
				}
				case MSG_UPDATE_HANDLED_IMG: {
					Log.i("QQDOCTOR_TEST", "MSG_UPDATE_HANDLED_IMG");
					if(mCurrentProcessingIndex < mTotelNumberToProcess) {
						Uri uri = uris.get(mCurrentProcessingIndex);
						startImportSingleImgThread(uri);
					}
					break;
				}
				default:
					break;
			}
		}
	};
	
	/*
	 * 缩略图缩小比例计算函数
	 */      
    private int computeInitialSampleSize(BitmapFactory.Options options, 
            int minSideLength, int maxNumOfPixels) { 
        double w = options.outWidth; 
        double h = options.outHeight; 
      
        int lowerBound = (maxNumOfPixels == -1) ? 1 : 
                (int) Math.ceil(Math.sqrt(w * h / maxNumOfPixels)); 
        int upperBound = (minSideLength == -1) ? 128 : 
                (int) Math.min(Math.floor(w / minSideLength), 
                Math.floor(h / minSideLength)); 
      
        if (upperBound < lowerBound) { 
            // return the larger one when there is no overlapping zone. 
            return lowerBound; 
        } 
      
        if ((maxNumOfPixels == -1) && 
                (minSideLength == -1)) { 
            return 1; 
        } else if (minSideLength == -1) { 
            return lowerBound; 
        } else { 
            return upperBound; 
        } 
    }
    
    /*
	 * 缩略图缩小比例计算函数
	 */
	private int computeSampleSize(BitmapFactory.Options options, 
            int minSideLength, int maxNumOfPixels) { 
        int initialSize = computeInitialSampleSize(options, minSideLength, 
                maxNumOfPixels); 
      
        int roundedSize; 
        if (initialSize <= 8) { 
            roundedSize = 1; 
            while (roundedSize < initialSize) { 
                roundedSize <<= 1; 
            } 
        } else { 
            roundedSize = (initialSize + 7) / 8 * 8; 
        } 
      
        return roundedSize; 
    }
	
	private void showImportedImg(String path, boolean bSendMessage) {
		if(path != null && path.equals("") == false) {
			Log.i("QQDOCTOR_TEST", "path is " + path);
			BitmapFactory.Options option = new BitmapFactory.Options();
			option.inJustDecodeBounds = true;
			try {
				bm = BitmapFactory.decodeFile(path, option);
			}catch (OutOfMemoryError e) {
				Log.i("QQDOCTOR_TEST", "Out of Memery (bm) Error");
			} catch (Exception e) {
			}
			int picBGImgHeight = 184; 
			
			BitmapFactory.Options optionRead = new BitmapFactory.Options();
			optionRead.inPurgeable = true;
			optionRead.inSampleSize = computeSampleSize(option, -1, picBGImgHeight*picBGImgHeight);
//			Log.i("QQDOCTOR_TEST", "scale is " + optionRead.inSampleSize);
			
			try {
				bm = BitmapFactory.decodeFile(path, optionRead);
			}catch (OutOfMemoryError e) {
				Log.i("QQDOCTOR_TEST", "Out of Memery (bm) Error");
			} catch (Exception e) {
			}
			if(bm != null) {
				int oldWidth = bm.getWidth();
				int oldHeight = bm.getHeight();
				int maxNum = 0;
				if(oldWidth > oldHeight)
					maxNum = oldWidth;
				else 
					maxNum = oldHeight;
				float scaleNum = picBGImgHeight / (float)maxNum;
				
				try {
					ExifInterface exifInterface = new ExifInterface(path);
					int tag = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
					int degree = 0;
					if (tag == ExifInterface.ORIENTATION_ROTATE_90) {
						degree = 90;
					} else if (tag == ExifInterface.ORIENTATION_ROTATE_180) {
						degree = 180;
					} else if (tag == ExifInterface.ORIENTATION_ROTATE_270) {
						degree = 270;
					}
//					Log.i("QQDOCTOR_TEST", "degree is " + degree);
					if (bm != null) {
						Log.i("QQDOCTOR_TEST", "bm != null");
						Matrix m = new Matrix();
						if(degree != 0) {
							m.setRotate(degree, (float) oldWidth / 2, (float) oldHeight / 2);
						}
						m.postScale(scaleNum, scaleNum);
						try{
							bm = Bitmap.createBitmap(bm, 0, 0, oldWidth, oldHeight, m, true);
						}
						catch (OutOfMemoryError e) {
							Log.i("QQDOCTOR_TEST", "Out of Memery Error");
						}
//						Log.i("QQDOCTOR_TEST", "Width is " + bm.getWidth() + ", Height is " + bm.getHeight());
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				if(!bSendMessage) {
					mImgShownPicture.setImageBitmap(bm);
				}
			}
			else {
				Log.i("QQDOCTOR_TEST", "bitmap is null");
			}
		}
		
		if(bSendMessage) {
			Message msgNew = new Message();
			msgNew.what = MSG_SHOW_HANDLED_IMG;
			msgNew.obj = bm;
			mHandler.sendMessageAtFrontOfQueue(msgNew);
			Log.i("QQDOCTOR_TEST", "send MSG_SHOW_HANDLED_IMG");
		}
	}
	
	private void initVipOutDlg() {
		mDlgVIPOut = CustomDialog.createCustomDialogCommonBlack(this,
				getString(R.string.safebox_photo_dlg_not_vip_member_tips_forPhoto),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_left),
				getString(R.string.safebox_photo_dlg_vip_out_of_date_right), new DialogInterface.OnClickListener() {
					
					@Override
					public void onClick(DialogInterface dialog, int which) {
						if (dialog.equals(mDlgVIPOut)) {
							switch (which) {
							case CustomDialog.LEFT_BUTTON_CLICK:
								// Cancel
								mDlgVIPOut.dismiss();
								SharePictureActivity.this.finish();
								break;
							case CustomDialog.RIGHT_BUTTON_CLICK:
								// OK
								mDlgVIPOut.dismiss();
								Intent vipIntent = new Intent(SharePictureActivity.this, VipUpgradeActivity.class);
								vipIntent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
								vipIntent.addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP);
								startActivity(vipIntent);
								SharePictureActivity.this.finish();
								break;
							}	
					}
				}
		});
		mDlgVIPOut.setCanceledOnTouchOutside(true);
		mDlgVIPOut.setOnCancelListener(new OnCancelListener() {
			@Override
			public void onCancel(DialogInterface dialog) {
				SharePictureActivity.this.finish();
			}
		});
		mDlgVIPOut.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				if (keyCode == KeyEvent.KEYCODE_BACK) {
					mDlgVIPOut.dismiss();
					SharePictureActivity.this.finish();
					return true;
				}
				return false;
			}
		});
		mDlgVIPOut.dismiss();
	}
	
	/*
	 * 是否允许非VIP用户分享图片到私密箱。
	 */
	private boolean isAllowToShare() {
		int userLevel = mUserInfoDao.getUserLevelInfo();
		int sharedNumber = 1;
		int nowSecurityPhotoCount = 0;
		if (userLevel == UserInfoMode.MEMBER_OUT_OF_DATE_USER 
				|| userLevel == UserInfoMode.TRIAL_OUT_OF_DATE_USER 
				|| userLevel == UserInfoMode.STANDARD_USER ) {
			try {
				nowSecurityPhotoCount = MultiMediaDao.getInstance().getCountByType(DaoConstant.MEDIA_TYPE_PIC);
			} catch (SdCardNotExistException e) {
				e.printStackTrace();
			}
			
			if(bShareMultiImg) {
				sharedNumber = mTotelNumberToProcess;
			}
		}
		else {
			return true;
		}
		return ((nowSecurityPhotoCount + sharedNumber) <= 10);
	}

	/* (non-Javadoc)
	 * @see android.view.View.OnClickListener#onClick(android.view.View)
	 */
	@Override
	public void onClick(View v) {
		if(v.getId() == R.id.BtnCancel) {
			this.finish();
		}
		else if(v.getId() == R.id.BtnOk) {
        	mHandler.sendEmptyMessage(MSG_SHOW_PROGRESS_BAR);
			GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "通过分享后选择OK", "", 1l);
			if(!bShareMultiImg) {
				startImportSingleImgThread(singleUri);
			}
			else {
				mHandler.sendEmptyMessage(MSG_SHOW_PROGRESS_BAR);
				mCurrentProcessingIndex = 0;
				if(uris.size() > 0) {
					Uri uri = uris.get(mCurrentProcessingIndex);
					startImportSingleImgThread(uri);
				}
			}
		}
	}
}
