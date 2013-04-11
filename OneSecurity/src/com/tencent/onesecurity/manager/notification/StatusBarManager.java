
package com.tencent.onesecurity.manager.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.RemoteViews;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.ui.activity.MainActivity;
import com.tencent.onesecurity.ui.activity.menu.AboutActivity;
import com.tencent.onesecurity.ui.activity.vip.VipZoneActivity;
import com.tencent.onesecurity.ui.activity.virus.VirusInstallSoftwareDialogActivity;
import com.tencent.onesecurity.ui.helper.UIConstants;
import com.tencent.tmsecure.module.qscanner.QScanConstants;

/**
 * 系统状态栏及默认Notification管理类
 * 
 * @version 1.0
 * @author LionLiu
 */
public class StatusBarManager {

    // 默认
    private final static int NOTICE_ID_STATUSBAR = 0;

    // 安装应用查杀
    private final static int NOTICE_ID_AUTO_SCAN = 1;
    /**安装应用查杀开始*/
    private final static int NOTICE_ID_AUTO_SCAN_BEFORE = 3;
    
    // VIP过期提醒
    private final static int NOTICE_ID_VIP_EXPIRED = 2;

    // WILL ADD 病毒库更新完毕提醒
    private final static int NOTICE_ID_VIRUS_UPDATED = 6;

     //UPDATA
    private final static int NOTICE_ID_UPDATA = 5;
    
    /** 周期性提醒杀毒*/
    private final static int NOTICE_ID_SCAN_VIRUS_REMIND= 4;
    

    private NotificationManager mNotificationManager;

    private Context mContext;

    private ConfigDao mConfigDao;

    // Content Title
    private String mContentTitle;

    // Content Text
    private String mContentText;

    // Pending Intent
    private PendingIntent mIntent;

    private Notification mNotification;

    private static StatusBarManager mStatusBarManager;

    private byte[] mLock = new byte[0];
    
    // 打开多个Notifacation时的区分（累加）
    private static int activityId = 1;

    /**
     * Singleton
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    public static StatusBarManager getInstance() {
        if (null == mStatusBarManager) {
            mStatusBarManager = new StatusBarManager();
        }

        return mStatusBarManager;
    }

    private StatusBarManager() {
        mContext = MainApplication.getContext();
        mNotificationManager = (NotificationManager)mContext
                .getSystemService(Context.NOTIFICATION_SERVICE);
        mConfigDao = DaoCreator.createConfigDao();
//
        mContentTitle = mContext.getString(R.string.application_name);
        mContentText = mContext.getString(R.string.phone_status_safe);

        mIntent = PendingIntent.getActivity(mContext, 0,
                MainApplication.getStartApplicationIntent(), PendingIntent.FLAG_UPDATE_CURRENT);
    }

    /**
     * 打开系统默认通知
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    public void openStatusNotification() {
        boolean isServiceShowIcon = mConfigDao.getIsServiceShowIcon();
        if (!isServiceShowIcon) {
            closeStatusNotification();
            return;
        }

        Notification notification = new Notification();
        notification.contentView = new RemoteViews(MainApplication.getContext().getPackageName(), R.layout.layout_status_bar);
        notification.when = 0l;
        notification.icon = R.drawable.icon_notification_logo_default;
        notification.flags = notification.flags | Notification.FLAG_ONGOING_EVENT;
        notification.contentIntent = mIntent;
//        notification.setLatestEventInfo(mContext, mContentTitle, mContentText, mIntent);
        mNotificationManager.notify(NOTICE_ID_STATUSBAR, notification);
        synchronized (mLock) {
            mNotification = notification;
        }
    }
    
    /**
     * 关闭系统默认通知
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    public void closeStatusNotification() {
        cancelNotification(NOTICE_ID_STATUSBAR);
    }
    
    /**
     * 关闭通知
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    public void cancelNotification(int id) {
        mNotificationManager.cancel(id);
    }

    /**
     * 安装应用 自动查杀通知
     * 
     * @Description
     * @param isSafe
     * @param appName
     * @version 1.0
     * @author LionLiu
     */
    public void showAutoScanNotification(boolean isSafe, String appName, Bundle result) {
    	
        Notification notification = new Notification();
        notification.when = System.currentTimeMillis();
        notification.flags = Notification.FLAG_AUTO_CANCEL;	// 单击自动cancel
        
        // 设置tickerText
        String tip = null;
        if (isSafe) {
            tip = mContext.getString(R.string.antivirus_safe);
            notification.icon = R.drawable.icon_notification_logo_antivirus_safe;
        } else {
        	
        	// 取出病毒类型
        	int type = result.getInt(UIConstants.VIRUS_MONITOR_TYPE_INTENT_KEY);
        	if (type == QScanConstants.TYPE_VIRUS) {			// 病毒
                tip = mContext.getString(R.string.antivirus_virus);
                notification.icon = R.drawable.icon_notification_logo_antivirus_virus;
        	} else {											// 风险（Risk or AD Block）
                tip = mContext.getString(R.string.antivirus_risk);
                notification.icon = R.drawable.icon_notification_logo_antivirus_caution;
        	}
        }
        tip = String.format(tip, appName);
        notification.tickerText = tip;
        
        // 设置PendingIntent
        Intent t = new Intent();
		t.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_MULTIPLE_TASK);
		t.setClass(MainApplication.getContext(), VirusInstallSoftwareDialogActivity.class);
		t.putExtra(UIConstants.VIRUS_MONITOR_RESULT_INTENT_KEY, result);
		t.putExtra("FROM_WHERE", "NOTIFICATION");	// 标示是从单击通知进入Pop，数据统计用
		
		PendingIntent pendingIntent = PendingIntent.getActivity(mContext, ++activityId, t, PendingIntent.FLAG_UPDATE_CURRENT);
        notification.setLatestEventInfo(mContext, mContentTitle, tip, pendingIntent);
        
        // 发出通知
        // 灰度第二版本，新通知，覆盖前一个通知
        mNotificationManager.cancel(NOTICE_ID_AUTO_SCAN);
        mNotificationManager.notify(NOTICE_ID_AUTO_SCAN, notification);
        
        // 注释掉 2s后通知消失
//        new Handler(MainApplication.getContext().getMainLooper()).postDelayed(new Runnable() {
//            @Override
//            public void run() {
//                StatusBarManager.getInstance().cancelNotification(
//                        StatusBarManager.NOTICE_ID_AUTO_SCAN);
//            }
//        }, 2000);
    }
    
    /**
     * 安装开始通知
     * 
     * 	灰度版本合并
     * @param appName
     */
	public void showAutoScanStartNotification(String appName) {
		Notification notification = new Notification();
		notification.when = System.currentTimeMillis();
		notification.flags = Notification.FLAG_AUTO_CANCEL; // 单击自动cancel

		// 设置tickerText
		String tip = null;

		tip = String.format(mContext.getString(R.string.vvcl_auto_check_apk_start), appName) ;
		
		notification.icon = R.drawable.icon_notification_logo_default;
		
		notification.tickerText = tip;
		// 设置PendingIntent
		PendingIntent pendingIntent = PendingIntent.getActivity(mContext, 0, new Intent(),0);
		notification.setLatestEventInfo(mContext, mContentTitle, tip, pendingIntent);

		// 发出通知
		mNotificationManager.notify(appName, NOTICE_ID_AUTO_SCAN_BEFORE, notification);
		// 通知后消失
		mNotificationManager.cancel(appName, NOTICE_ID_AUTO_SCAN_BEFORE);
	}
	
	/**
	 * 周期性提醒杀毒
	 * @param days
	 */
	public void showVirusScanRemindNotification(int days) {
		
		Notification notification = new Notification();
		notification.when = System.currentTimeMillis();
		notification.flags = Notification.FLAG_AUTO_CANCEL; // 单击自动cancel

		notification.icon = R.drawable.icon_notification_logo_default;

		String tip = String.format(mContext.getString(R.string.vvcl_virus_scan_reminds), days);  
		
		notification.tickerText = tip;
		// 设置PendingIntent
//		Intent t = new Intent(mContext,MainActivity.class) ;
//		
//		PendingIntent pendingIntent = PendingIntent.getActivity(mContext, 0, t, 0);
		notification.setLatestEventInfo(mContext, mContentTitle, tip, mIntent);
		mNotificationManager.notify(NOTICE_ID_SCAN_VIRUS_REMIND, notification);
	}

    /**
     * 更新Notification里 手机的安全状态
     * 
     * @Description isSafe: true: 手机是安全的; false：手机有风险
     * @version 1.0
     * @author LionLiu
     */
    public void updateMobileStatus(boolean isSafe) {
        // 修改content Text
        if (isSafe) {
            mContentText = mContext.getString(R.string.phone_status_safe);
        } else {
            mContentText = mContext.getString(R.string.phone_status_risk);
        }

        // 如果notification开关为 开， 则更新
        if (mConfigDao.getIsServiceShowIcon() && null != mNotification) {
        	// lee 使用mNotification.contentView就不能重复使用mNotification.setLatestEventInfo，否则效果被覆盖
        	RemoteViews remoteViews = new RemoteViews(MainApplication.getContext().getPackageName(), R.layout.layout_status_bar);
        	remoteViews.setTextViewText(R.id.textView2, mContentText) ;
        	mNotification.contentView = remoteViews ;
        	//mNotification.setLatestEventInfo(mContext, mContentTitle, mContentText, mIntent);
            mNotificationManager.notify(NOTICE_ID_STATUSBAR, mNotification);
        }
    }

    /**
     * VIP过期提醒
     * 
     * @Description
     * @param isSafe
     * @param appName
     * @version 1.0
     * @author LionLiu
     */
    public void showVipExpiredNotification(int days) {
        Notification notification = new Notification();
        notification.when = System.currentTimeMillis();
        notification.flags = Notification.FLAG_ONLY_ALERT_ONCE | Notification.FLAG_SHOW_LIGHTS | Notification.FLAG_AUTO_CANCEL;        
        notification.icon = R.drawable.icon_notification_logo_antivirus_virus;
        String title = mContext.getString(R.string.vip_expire_notification_in_notificaitonbar_title);
        String content = mContext.getString(R.string.vip_expire_notification_in_notificaitonbar);

//        ComponentName componentName = new ComponentName(
//                mContext.getPackageName(), VipZoneActivity.class.getName());
        Intent intent = new Intent(mContext,  VipZoneActivity.class);
        //intent.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
        intent.putExtra("from_notification_bar", true);
        //intent.addCategory(Intent.CATEGORY_LAUNCHER);
        //intent.setComponent(componentName);
        //intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
        PendingIntent mIntent = PendingIntent.getActivity(mContext, 0, intent, 0);
        notification.setLatestEventInfo(mContext, title, content, mIntent);
        mNotificationManager.notify(NOTICE_ID_VIP_EXPIRED, notification);
    }
    
// will add 病毒库更新完毕notification  ---s
    public void showVirusDBUpdatedNotification() {
        Notification notification = new Notification();
        notification.when = System.currentTimeMillis();
        notification.flags = Notification.FLAG_ONLY_ALERT_ONCE | Notification.FLAG_SHOW_LIGHTS | Notification.FLAG_AUTO_CANCEL;        
        notification.icon = R.drawable.icon_notification_logo_new_msg;
        String title = mContext.getString(R.string.vvcl_dialog_reporttitle);
        String content = mContext.getString(R.string.vvcl_dialog_reportdetail);
        
        Intent intent = new Intent(mContext, MainActivity.class);

        intent.putExtra("from_dbupdated_notification_bar", true);

        PendingIntent mIntent = PendingIntent.getActivity(mContext, 0, intent, 0);
        notification.setLatestEventInfo(mContext, title, content, mIntent);
        mNotificationManager.notify(NOTICE_ID_VIRUS_UPDATED, notification);
    }
 // will add 病毒库更新完毕notification  ---E
    public void cancelVipExpiredNotification() {
    	cancelNotification(NOTICE_ID_VIP_EXPIRED);
        DaoCreator.createUserInfoDao().setUserIsOutOfTime(0);
    }
    

    private Notification notificationUpdata;
    /**
     * updata通知
     * @param fileLength
     * @param downLoadLength
     */
    public void showUpdataNotification(int percent) {
    	if(percent == -1){
    		notificationUpdata = null;
    		mNotificationManager.cancel(NOTICE_ID_UPDATA);
    		return;
    	}else if(percent == 100 || percent == -2){
    		notificationUpdata = new Notification();
    		notificationUpdata.when = System.currentTimeMillis();
        	notificationUpdata.icon = R.drawable.icon_notification_logo_updata;
            Intent t = new Intent();
    		t.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
    		t.setClass(MainApplication.getContext(), AboutActivity.class);
    		String tips = null;
    		if(percent == 100){
    			tips = mContext.getString(R.string.update_download_finished);
        		t.putExtra("FROM_WHERE", "NOTIFICATION_INSTALL");	// 
    		}else{
    			tips = mContext.getString(R.string.update_download_failed);
    			notificationUpdata.flags = Notification.FLAG_AUTO_CANCEL; // 单击自动cancel
    		}
        	notificationUpdata.tickerText = tips;
    		PendingIntent pendingIntent = PendingIntent.getActivity(mContext, 0, t, PendingIntent.FLAG_UPDATE_CURRENT);
    		notificationUpdata.contentIntent = pendingIntent;
            // 发出通知
    		notificationUpdata.setLatestEventInfo(mContext, mContext.getString(R.string.application_name), 
    				tips, pendingIntent);
    		mNotificationManager.cancel(NOTICE_ID_UPDATA);
            mNotificationManager.notify(NOTICE_ID_UPDATA, notificationUpdata);
            notificationUpdata = null;
            return;
    	}
    	if(notificationUpdata == null){
    		notificationUpdata = new Notification();
    		notificationUpdata.when = System.currentTimeMillis();

    		notificationUpdata.flags =  notificationUpdata.flags | Notification.FLAG_ONGOING_EVENT;
        	notificationUpdata.icon = R.drawable.icon_notification_logo_updata;
        	notificationUpdata.contentView = new RemoteViews(MainApplication.getContext().getPackageName(), R.layout.layout_status_bar_updata);
        	notificationUpdata.contentView.setProgressBar(R.id.progressBar, 100, percent, false);
        	notificationUpdata.contentView.setTextViewText(R.id.textView2, percent + "%");
            Intent t = new Intent();
    		t.setFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP);
    		t.setClass(MainApplication.getContext(), AboutActivity.class);
    		t.putExtra("FROM_WHERE", "NOTIFICATION");

    		PendingIntent pendingIntent = PendingIntent.getActivity(mContext, 0, t, PendingIntent.FLAG_UPDATE_CURRENT);
    		notificationUpdata.contentIntent = pendingIntent;
            // 发出通知
            mNotificationManager.notify(NOTICE_ID_UPDATA, notificationUpdata);
    	}else{
    		
        	notificationUpdata.icon = R.drawable.icon_notification_logo_updata;
        	notificationUpdata.contentView = new RemoteViews(MainApplication.getContext().getPackageName(), R.layout.layout_status_bar_updata);
        	notificationUpdata.contentView.setProgressBar(R.id.progressBar, 100, percent, false);
        	notificationUpdata.contentView.setTextViewText(R.id.textView2, percent + "%");
    		mNotificationManager.notify(NOTICE_ID_UPDATA, notificationUpdata);
    	}
        
    }
}
