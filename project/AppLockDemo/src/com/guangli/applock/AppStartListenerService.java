package com.guangli.applock;

import java.util.List;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Notification;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;

public class AppStartListenerService extends ForegroundService{
	/**
	 * 
	 * @author lance.liang
	 * ����һ��һֱ�ں�̨���еķ���
	 * ������һ���̣߳�ÿ��һ���ѯһ��λ�ڶ���Ӧ�ó�����ʲô����������˱仯
	 * ˵���µ�Ӧ�ñ������ˣ���ʱ����һ���㲥֪ͨ�㲥���������ڹ㲥����������
	 * �ж�Ӧ���Ƿ����
	 */
	final static String TAG = "MyService";
	boolean isRunning = false;
	ActivityManager am;
	List<RunningTaskInfo> rtinfos;
	List<RunningAppProcessInfo> rapinfos;
	MyThread myThread;
	String passApp;
	boolean create = false;
	static Object syncObject = new Object();
	@Override
	public void onCreate() {
		
		am = (ActivityManager) this.getSystemService(Activity.ACTIVITY_SERVICE);
		myThread = new MyThread();
		Log.i(TAG, "onCreate");
		create = true;
		super.onCreate();
	}

	@Override
	public void onStart(Intent intent, int startId) {
		// TODO Auto-generated method stub
		super.onStart(intent, startId);
		passApp = intent.getStringExtra("passApp");
		if (passApp==null) {
			passApp="";
		}
		
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		Log.i(TAG, "onStartCommand");
		
		 return super.onStartCommand(intent, flags, startId);
		
	}
   @Override
   void startForegroundCompat(int id, Notification notification) {
	  
	   if(!isRunning&&create){
			isRunning = true;
			create = false;
		    myThread.start();
		    Log.i(TAG, "startForegroundCompat");
		}
	super.startForegroundCompat(id, notification);
   }
	@Override
	public IBinder onBind(Intent arg0) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void onDestroy() {
		Log.i(TAG, "onDestroy");
		isRunning = false;
		super.onDestroy();
	}
	
    class MyThread extends Thread {
    	String name;
    	String name1;
    	String name2;
    	int count;
    	@Override
    	public void run() {
    		
    		synchronized (syncObject) {
    		 while(isRunning){
    			
    				try {
      
    					this.sleep(200);
    					
    				} catch (InterruptedException e) {
    					e.printStackTrace();
    				}
    				if(passApp==null)continue;
        			rtinfos = am.getRunningTasks(1);
        			// Log.e(TAG,"name:"+am);
        			if(rtinfos.size()>0){
        				RunningTaskInfo info = rtinfos.get(0);
        				String tempName = info.baseActivity.getPackageName();
        				if(!tempName.equals("com.guangli.applock")&&name!=null && !name.equals(tempName) && !tempName.equals(passApp)){
        					//isRunning = false;
        					//catch a new process on the top,send a broadcast
        					Log.i(TAG, "send a broadcast");
        					Intent intent = new Intent();
        					intent.putExtra("name", tempName);
        					intent.putExtra("id",info.id);
        					intent.setAction(Meta.APP_START_RECEIVER);
        					intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        					AppStartListenerService.this.sendBroadcast(intent);
        					//break;
        				}
        				name = tempName;
        				
        			}
        			
        		}
    		 
        		//isRunning = false;
        		AppStartListenerService.this.stopSelf();
			 }
    			
    	}
    	
    
    }
}
