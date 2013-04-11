package com.tencent.onesecurity.deskassistance;

import java.io.File;
import java.util.Date;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.virus.VirusScanManager;
import com.tencent.onesecurity.util.SystemStateUtil;
import com.tencent.onesecurity.util.SystemStateUtil.SytemStateInfo;

public class DebugInfoWindow extends OnSuspendedViewTouch {
	private WindowManager.LayoutParams mLayoutParams;
	private final int MSG_UPDATE_DEBUG_INFO = 0;
	private final int MSG_UPDATE_DEBUG_DESPLAY = 1;
	private Context mContext;
	private View mMainLayout;
	private TextView mRamText;
	private StringBuffer mDebugString = new StringBuffer(50);
	private HandlerThread mThread = null;
	private Handler mThreadHandler = null;
	
	private String mApkInstallLastDate = new String();
	private int mApkSize;
	private int mTestVersionCode;
	//private String mApkDir = new String();
	
	
	public DebugInfoWindow(Context context) {
		super(context);
		
		mContext = context;
		//mConfigDao = DaoCreator.createConfigDao();
				
		try {
			
			ApplicationInfo applicationInfo = mContext.getApplicationInfo();
			
			//mApkDir = applicationInfo.sourceDir;
			
			PackageInfo packageInfo = mContext.getPackageManager().getPackageInfo(mContext.getPackageName(), 0);
			//Log.i("memoryInfo",packageInfo.versionName);
			//Log.i("memoryInfo",String.valueOf(packageInfo.versionCode));
			mTestVersionCode = packageInfo.versionCode;
			
			mApkSize = Integer.valueOf((int) new File(applicationInfo.sourceDir).length());
			java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
			mApkInstallLastDate = sdf.format(new Date(new File(applicationInfo.sourceDir).lastModified()));
			
			//Log.i("memoryInfo",String.valueOf(size));
			//Log.i("memoryInfo",String.valueOf(date));
			
			
		} catch (Exception e) { //这段代码会出现空指针异常，属于程序Bug，被 Exception捕获

            //CrashUtil.exceptionUpload(e);// 这句是必须写的，它会弹出程序崩溃信息，并让用户选择是否发mail上报Crash堆栈列表

        }
		
		
		
		
		

		LayoutInflater inflater = LayoutInflater.from(mContext);
		mMainLayout = inflater.inflate(R.layout.layout_desk_assistant_debug, null);
		mRamText = (TextView) (mMainLayout.findViewById(R.id.debuginfo));

		addView(mMainLayout);
		
		mThread = new HandlerThread("DebugInfoWindow-worker");
		mThread.start();
		mThreadHandler = new Handler(mThread.getLooper());
		//mhandler.sendEmptyMessageDelayed(MSG_UPDATE_DEBUG_INFO, 1000);
	}
	public void intiParams() {
		if (mLayoutParams == null) {
			mLayoutParams = new WindowManager.LayoutParams();
			mLayoutParams.gravity = Gravity.LEFT | Gravity.TOP;
			mLayoutParams.format = PixelFormat.RGBA_8888;
			mLayoutParams.flags |= WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
			mLayoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			mLayoutParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.alpha = (float) 1.0;
		}
		
	}
	
	public void close(){
		mThread.quit();
	}
	@Override
	public void changeViewSide(int side) {
		
	}

	@Override
	public android.view.WindowManager.LayoutParams getWindowLayoutParams(int x, int y) {
		mLayoutParams.x = x;
		mLayoutParams.y = y;
		return mLayoutParams;
	}

	@Override
	public void saveLocation(int left, int top) {
		
	}
	private Runnable mRunable = new Runnable(){

		@Override
		public void run() {
			SytemStateInfo info = SystemStateUtil.getInstance().GetSytemStateInfo();
			if(null != info){
				char c = '\n';
//				char n = '\0';
//				mDebugString = "dalvik memory:" + String.valueOf(info.dalvikPrivateDirty)+ "kb"+ c
//				+ "native memory: " + String.valueOf(info.nativePrivateDirty)+ "kb" + c
//				+ "other memory: " + String.valueOf(info.otherPrivateDirty) + "kb"+ c
//				+ "uss memory: " + String.valueOf(info.uss) + "kb" + c
//				+ "CPU info: " + String.valueOf((int)(info.usage)) + "%";
				int length = mDebugString.length();
				mDebugString.delete(0, length);
				
				mDebugString.append( "dalvik memory:");
				mDebugString.append(info.dalvikPrivateDirty);
				mDebugString.append("kb");
				mDebugString.append(c);


				mDebugString.append( "native memory: ");
				mDebugString.append(info.nativePrivateDirty);
				mDebugString.append("kb");
				mDebugString.append(c);
				
				mDebugString.append( "other memory: ");
				mDebugString.append(info.otherPrivateDirty);
				mDebugString.append("kb");
				mDebugString.append(c);				
	
				mDebugString.append( "uss memory: ");
				mDebugString.append(info.uss);
				mDebugString.append("kb");
				mDebugString.append(c);		
				
				mDebugString.append( "CPU info: ");
				mDebugString.append((int)(info.usage));
				mDebugString.append("%");
				mDebugString.append(c);	
				
				mDebugString.append( "Test VersionCode: ");
				mDebugString.append(mTestVersionCode);
				mDebugString.append(c);					
				
				mDebugString.append( "Apk Install Date: ");
				mDebugString.append(mApkInstallLastDate);
				mDebugString.append(c);	
				
				mDebugString.append( "Apk Size: ");
				mDebugString.append(mApkSize / 1024);
				mDebugString.append("kb");
				mDebugString.append(c);	
				
				mhandler.sendEmptyMessage(MSG_UPDATE_DEBUG_DESPLAY);
			}			
		}
		
	};
	private Handler mhandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch(msg.what){
			case MSG_UPDATE_DEBUG_INFO:
				mThreadHandler.post(mRunable);
				break;
			case MSG_UPDATE_DEBUG_DESPLAY:
				upDateInfo();
				//mhandler.sendEmptyMessageDelayed(MSG_UPDATE_DEBUG_INFO, 1000);
				break;
			default:
				break;
			}
			
			
		}
	};
	public void upDataDebugInfo(){
		mThreadHandler.post(mRunable);
	}
	public void upDateInfo(){
		if(null != mDebugString){
			mRamText.setText(mDebugString);
			mRamText.setTextColor(Color.RED);
		}
	}
	private boolean mHasAddToWindow = false;
	public synchronized void setHasAddToWindow(boolean hasAdd) {
		mHasAddToWindow = hasAdd;
	}


	public synchronized boolean hasAddToWindow() {
		return mHasAddToWindow;
	}	
}
