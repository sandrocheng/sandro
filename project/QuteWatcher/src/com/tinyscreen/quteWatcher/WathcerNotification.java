package com.tinyscreen.quteWatcher;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.widget.RemoteViews;

public class WathcerNotification {
	
	private final static int NOTICE_ID_STATUSBAR = 0;
	
	private final static String STATUS_BAR_COVER_CLICK_ACTION = "com.tinyscreen.quterWatcher.notification.broadcast";
	
	private Notification notification;
	
	private NotificationManager mNotificationManager;
	
	private RemoteViews mRemoteView;

	private static int newMsgNum = 0;
	
	public WathcerNotification() {
		notification = new Notification(R.drawable.icon,"wathcer",System.currentTimeMillis());
		mNotificationManager = (NotificationManager) MainApp.getContext()
				.getSystemService(Activity.NOTIFICATION_SERVICE);
		mRemoteView = new RemoteViews(MainApp.getContext().getPackageName(),
				R.layout.layout_notification);
		ComponentName componentName = new ComponentName(MainApp.getContext()
				.getPackageName(), QuteWatcherActivity.class.getName());
		Intent startIntent = new Intent();
		startIntent.setComponent(componentName);
		startIntent.setFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP
				| Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
		PendingIntent mIntent = PendingIntent.getActivity(MainApp.getContext(),
				0, startIntent, PendingIntent.FLAG_UPDATE_CURRENT);
//		notification.when = 0l;
//		notification.flags = notification.flags
//				| Notification.FLAG_ONGOING_EVENT;
		notification.contentIntent = mIntent;
		
		Intent buttonIntent = new Intent(STATUS_BAR_COVER_CLICK_ACTION);         
		PendingIntent pendButtonIntent = PendingIntent.getBroadcast(MainApp.getContext(), 0, buttonIntent, PendingIntent.FLAG_UPDATE_CURRENT);       
		mRemoteView.setOnClickPendingIntent(R.id.refresh_num, pendButtonIntent);
	}
	
	public void cancel(){
		
	}
	
	public void showNewMsg(){
		newMsgNum ++;
		push();
	}
	
	private void push(){
		mRemoteView.setTextViewText(R.id.msg_num_value, newMsgNum+"");
		notification.contentView = mRemoteView;
		mNotificationManager.notify(NOTICE_ID_STATUSBAR, notification);
	}
	
	public void clean(){
		newMsgNum = 0;
		push();
	}
}
