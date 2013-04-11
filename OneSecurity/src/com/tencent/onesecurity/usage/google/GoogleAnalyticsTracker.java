package com.tencent.onesecurity.usage.google;

import com.google.analytics.tracking.android.GAServiceManager;
import com.google.analytics.tracking.android.GoogleAnalytics;
import com.google.analytics.tracking.android.Tracker;
import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.PackageUtil;


/**
 * 
 * @ClassName: MyGAManager
 * @Description:谷歌数据上报
 * @author: Tony
 * @date: 2012-11-08 上午9:06:19
 * 
 */
public class GoogleAnalyticsTracker {
	//上报ID 在http://www.google.com/analytics/注册并创建应用后获取。
	//ID:onesec2012@gmail.com	password:2012onesec2012
	//申请后获得UA_ID 下面是例子
	//private static String UA_ID = "UA-3620XX78-1";
	//一xiaoshi上报一次（单位秒）
//	private final int dispatchPeriodInSeconds = 3600;
	private static GoogleAnalyticsTracker mInstance;
	private GoogleAnalytics googleAnalytics;
	private Tracker tracker;
	private GAServiceManager mGAServiceManager;
	private GoogleAnalyticsTracker() {
        googleAnalytics= GoogleAnalytics.getInstance(MainApplication.getContext());
        mGAServiceManager = GAServiceManager.getInstance();
//        googleAnalytics.setDebug(true);
        //设置间隔时间0小时
        mGAServiceManager.setDispatchPeriod(0);
      //设置UA_ID
        tracker = googleAnalytics.getTracker(MainApplication.getContext().getResources().getString(R.string.google_analytics_tracker));
        //设置appid
        tracker.setAppId(MainApplication.getContext().getResources().getString(R.string.app_id));
      //设置appName
        tracker.setAppName(MainApplication.getContext().getResources().getString(R.string.application_name));
      //设置版本号
        tracker.setAppVersion(PackageUtil.getVersionName());
//        tracker.setAppScreen(arg0);
//        tracker.setAppInstallerId(arg0);
	}

	public static GoogleAnalyticsTracker getInstance() {
		if (mInstance == null) {
			synchronized (GoogleAnalyticsTracker.class) {
				if (mInstance == null) {
					mInstance = new GoogleAnalyticsTracker();
				}
			}
		}
		return mInstance;
	}
	public void close(){
//		tracker.close();
	}
	
	/**
	 * google上报之屏幕浏览
	 * @param button 屏幕名称
	 */
	public void trackView(String View) {
		tracker.sendView(View);
//		Log.e("GA report", "View:" + View);
	}
	/**
	 * google上报,手动上报
	 */
	public void dispatch() {
		mGAServiceManager.dispatch();
	}
	/**
	 * google上报之按钮点击事件（也可以是其他自定义事件）
	 * @param Category   类别
	 * @param Action     操作
	 * @param Label      标签  modify by tony 此处无论填写什么 都会被imei号取代 标识手机的唯一身份
	 * @param Value      值（请使用 默认值1）
	 */
	private String imei = null;
	public void ClickButton(String Category,String Action,String Label,long Value) {
		if(imei == null){
			imei  = DeviceUtil.getIMEI();;
		}
		tracker.sendEvent(Category, Action, "imei = " + imei, Value);
//		Log.e("GA report", "Category:" + Category + ";Action:" + Action);

	}
	/**
	 * google上报之按钮点击事件（测试专用）
	 * @param Category   类别  3G_1
	 * @param Action     操作
	 * @param Label      标签 test_1
	 * @param Value      值（请使用 默认值1）
	 */
	public void ClickButton(String Action) {
//		tracker.trackEvent("test_Dio", Action, "test_Dio", 1l);

	}
}
