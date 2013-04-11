package com.tencent.onesecurity.usage.qq;

import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

import QQPIM.SUI;

import android.app.IntentService;
import android.content.Intent;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.dao.UserInfoDao;
import com.tencent.onesecurity.dao.UserInfoMode;
import com.tencent.onesecurity.safebox.dao.MultiMediaDao;
import com.tencent.onesecurity.safebox.dao.NoteDao;
import com.tencent.onesecurity.safebox.util.SdCardNotExistException;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.google.ReferralTracking;
import com.tencent.onesecurity.usage.winmess.WinmessAppReport;
import com.tencent.onesecurity.usage.winmess.WinmessDataReport;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.NetworkUtil;
import com.tencent.onesecurity.util.PaymentInformationUtil;
import com.tencent.tmsecure.common.ErrorCode;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;

/**
 * 上报渠道号、 客户端行为的服务
 * 每隔1小时上报一次
 * @author eddy
 *
 */
public class ReportService  extends IntentService{
	public ReportService() {
		super("ReportService");
	}
	public static final byte START_REPORT = 0;
	public static final byte START_REPORT_SECOND = 1;
	
	
	public static boolean isReportDataForWinmess = false;
	public static String reportDataForWinmessExceptions = "";
	private String report = "";
	/**
	 * 用于上报信息
	 * 
	 * @param context
	 */
	public void reportInfo(int state) {

		//检查网络
		byte networkType = NetworkUtil.getNetworkType();
		if(-1 == networkType){
			//Google Action
	        GoogleAnalyticsTracker.getInstance().ClickButton("数据上报", "没有可用网络", "imei", 1l);
			Log.e("数据上报 ", "没有可用网络");
	        return;
		}
		//上报成讯后台
		reportWinmess(state);
		//上报Tencent 3G平台
		report3G();
		//Google上报
		GAReport();
		
	}
	/**
	 * 3G上报
	 */
	private void report3G() {
		
		ActionStatsManager actionStatsManager = ActionStatsManager.getInstance();
		ArrayList<ActionStatsEntity> actions = actionStatsManager.readAllActionStantsData();//读取行为统计
		if(actions.size() <= 0){
			long dataReportTime = ConfigDao.getInstance().getDataReportTime();
			long time = System.currentTimeMillis();
			if(time - dataReportTime < WinmessDataReport.HOUR24){
				return;
			}
		}
		//add用户类型Feature
		addUserInfoMode(actions);
		ArrayList<SUI> suis = ActionStatsManager.toSUIArrayList(actions);
		int retCode = ManagerCreator.getManager(WupSessionManager.class).reportSoftUsageInfo(suis);
		Log.i("ReportService", "reportSoftUsageInfo retCode->"+ retCode);
		if (retCode == ErrorCode.ERR_NONE) {
			// 若上报成功则计数器清零
			actionStatsManager.cleanAllActionStantsData();
		}
	}
	/**
	 * add上报用户类型Feature
	 */
	private void addUserInfoMode(ArrayList<ActionStatsEntity> actions) {
		ActionStatsEntity actionStatsEntity = new ActionStatsEntity();
		actionStatsEntity.actionCount = 1;
		actionStatsEntity.actionTime = System.currentTimeMillis();
		//add by eddy - 上报用户类型Feature
		int userInfoMod = UserInfoDao.getInstance().getUserLevelInfo();
		if(userInfoMod == UserInfoMode.MEMBER_USER){//vip用户
			actionStatsEntity.actionType = EModelID._EMID_Secure_User_Status_VIP;
		}else if(userInfoMod == UserInfoMode.TRIAL_USER){//试用用户
			actionStatsEntity.actionType = EModelID._EMID_Secure_User_Status_Trial;
		}else { //其他类型均置为标准用户
			actionStatsEntity.actionType = EModelID._EMID_Secure_User_Status_Normal;
		}
		actions.add(actionStatsEntity);
	}
	/**
	 * GA上报
	 */
	private void GAReport() {
		//上报Google Analy
		int picsNum = -1;
		int notesNum = -1 ;
        try {
			picsNum = MultiMediaDao.getInstance().getSecurePicsNum();
			notesNum = NoteDao.getInstance().getSecureNotesNum() ;
		} catch (SdCardNotExistException e) {
			e.printStackTrace();
		}
		GoogleAnalyticsTracker.getInstance().ClickButton("图片总数统计", "图片总数 = " + picsNum, "imei", 1l);
		GoogleAnalyticsTracker.getInstance().ClickButton("文本总数统计", "文本总数 = " + notesNum, "imei", 1l);
		GoogleAnalyticsTracker.getInstance().dispatch();
	}
	/**
	 * 成讯后台上报
	 */
	private boolean reportWinmess(int state) {
		boolean resultCode = true;
		// Winmess安装上报
		winmessInstallReport();
		//病毒和白名单上报
		reportWinmessApp();
		
		report = "";
		isReportDataForWinmess = true;
		int result = new WinmessDataReport().reportDataForWinmess();   //报告成讯后台 result=1->success
		if(result == WinmessDataReport.FEATURE_NULL){
			Log.e("数据上报 ", " 成讯  Feature上报   空feature不上报");
			report += "空feature不上报";
		}else if(result > 0){
			Log.e("数据上报 ", " 成讯  Feature上报   一次成功");
			report += "成讯 一次成功;";
		}else{
			report += "成讯 一次失败;";
			report += reportDataForWinmessExceptions;
			try {
				Thread.sleep(500);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			result = new WinmessDataReport().reportDataForWinmess();   //报告成讯后台 result=1->success
			if(result > 0){
				Log.e("数据上报 ", " 成讯  Feature上报  二次成功");
				report += ";  成讯 二次成功;";
			}else{
				report += ";  成讯 二次失败;";
				report += reportDataForWinmessExceptions;
				Log.e("数据上报 ", " 成讯  Feature上报 "+report);
				AddReportTask(state);
				resultCode = false;
			}
		}
		GoogleAnalyticsTracker.getInstance().ClickButton("数据上报", "其他上报:" + report, "imei", 1l);
		reportDataForWinmessExceptions = "";
		report = "";
		isReportDataForWinmess = false;
		return resultCode;
	}
	
	/**
	 * 病毒和白名单上报
	 */
	private void reportWinmessApp() {
		new WinmessAppReport().reportDataForWinmess();
	}
	
	/**
	 * 安装上报未成功再次上报
	 */
	private void winmessInstallReport() {
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		if (!mConfigDao.isInstallReported()) {
			ReferralTracking googleTracking = new ReferralTracking();
			googleTracking.uploadReferralInfo();
			String country = PaymentInformationUtil.getInstance().getCountryNameDefaultXX();
			GoogleAnalyticsTracker.getInstance().ClickButton("国家统计",
					"国家=" + country, "", 1l);
		}
	}
	/**
	 * 上报失败5/20分钟后再次上报
	 */
    private void AddReportTask(final int state) {
    	long time = 0;
    	if(state == START_REPORT){
    		time = 300000;//5分钟
    	}else if(state == START_REPORT_SECOND){
    		time = 1200000;//20分钟
    	}else{
    		return;
    	}
    	Timer timer = new Timer(); // 设置定时器
		timer.schedule(new TimerTask() {
			@Override
			public void run() {
				Intent intent = new Intent(MainApplication.mContext, ReportService.class);
				intent.setFlags(state + 1);
				startService(intent);
			}
		}, time);//上报失败5/20分钟后再次上报
    }

    @Override
	public void onCreate() {
		super.onCreate();
		Log.e("数据上报 ", "onCreate SERVICE开启服务");
	}
    
    
	@Override
	public void onDestroy() {
		Log.e("数据上报 ", "onDestroy SERVICE已关闭");
		super.onDestroy();
	}
	@Override
	protected void onHandleIntent(Intent intent) {
		reportInfo(intent.getFlags());
	}
}
