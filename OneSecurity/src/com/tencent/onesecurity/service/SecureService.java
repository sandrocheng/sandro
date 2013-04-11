package com.tencent.onesecurity.service;

import java.util.Timer;
import java.util.TimerTask;

import android.content.Intent;
import android.os.Handler;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.CoreConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.deskassistance.DeskAssistanceWindow;
import com.tencent.onesecurity.manager.battery.BatteryManagerImpl;
import com.tencent.onesecurity.manager.notification.StatusBarManager;
import com.tencent.onesecurity.manager.scheduletask.SystemTimerManager;
import com.tencent.onesecurity.manager.serverdata.ServerDataFetchManager;
import com.tencent.onesecurity.manager.virus.VirusLibraryManager;
import com.tencent.onesecurity.manager.virus.VirusMonitorManager;
import com.tencent.onesecurity.receiver.NewPackageReceiver;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.util.SwitchBluetooth;
import com.tencent.onesecurity.util.SwitchMobileNetwork;
import com.tencent.onesecurity.util.SwitchScreenTimeout;
import com.tencent.onesecurity.util.SwitchWifi;
import com.tencent.onesecurity.widget.booster.BoosterWindowController;
import com.tencent.onesecurity.widget.shortcut.ShortcutWindowController;
import com.tencent.tmsecure.common.TMSService;

public class SecureService extends TMSService {

	/**
	 * 开启/关闭桌面助手
	 */
	public static final int SWITCH_DESK_ASSIS_WINDOW = 98;

	public static final int DO_APP_SCAN = 99;

	public static final int ROLLBACK_USER_MODE = 19;

	public static final int BOOST_SPLASH = 199;
	
	public static boolean isServiceOn;

	private static DeskAssistanceWindow mDeskTopView;
	
	@Override
	public void onCreate() {
		super.onCreate();
		if (DaoCreator.createConfigDao().isLicenseAgreed()) { // for widget 2013.03.29
			mDeskTopView = new DeskAssistanceWindow(getApplicationContext());
			mDeskTopView.showSuspendedWindow();
			
			BatteryManagerImpl.getSingleInstance().registerMonitorBattery(this);
		}
//		TMSApplication.init(this, SecureService.class, new ApplicationConfig());
	}

	public static void startOSService() {
		// 启动默认状态栏Notification
		StatusBarManager.getInstance().openStatusNotification();
	}

	/**
	 * 启动定时任务。这部分要在用户类型拉取过之后再调用
	 */
	public static void startSchedulTask() {
		// 开启定时任务的开关
		SystemTimerManager.getInstance().startTimer();

		// 数据上报
		AddReportTask();

		// 后台数据拉取
		AddPullServerData();

		// 病毒库检查
		AddVirusBaseCheckTask();
		
		// // 测试数据，新消息提醒
		// AddTestNewMsgTask();
		
		addVirusNotification() ;
	}
	/**
	 * 周期提醒病毒扫描 
	 */
	private static void addVirusNotification(){
		Intent intent = new Intent();
		intent.setClass(MainApplication.getContext(),
				ScheduleTaskProcessService.class);
		intent.setAction(ScheduleTaskProcessService.ACTION_VIRUS_NOTIFICATION);
		long reportInterval = 24 * 60 * 60000L ; //24H
		SystemTimerManager.getInstance().addIntervalRemindTask(
				ScheduleTaskProcessService.ACTION_VIRUS_NOTIFICATION, reportInterval,
				intent);	
	}
	private static void AddReportTask() {
		Intent intent = new Intent();
		intent.setClass(MainApplication.getContext(),
				ScheduleTaskProcessService.class);
		intent.setAction(ScheduleTaskProcessService.ACTION_DATA_REPORT);
		long reportInterval = CoreConfigDao.getInstance().getLongValue(
				CoreConfigDao.FEATURE_REPORT_INTERVAL);
		SystemTimerManager.getInstance().addIntervalRemindTask(
				ScheduleTaskProcessService.ACTION_DATA_REPORT, reportInterval,
				intent);
	}

	private static void AddVirusBaseCheckTask() {
		// 首次检查病毒库版本
		VirusLibraryManager virusLibraryManager = new VirusLibraryManager(false);
		virusLibraryManager.checkVirusVersionBlock();

		// 加入定时任务
		Intent intent = new Intent();
		intent.setClass(MainApplication.getContext(),
				ScheduleTaskProcessService.class);
		intent.setAction(ScheduleTaskProcessService.ACTION_CHECK_VIRUS_BASE);
		long checkVirusBase = CoreConfigDao.getInstance().getLongValue(
				CoreConfigDao.AUTO_VIRUS_BASE_CHECK_INTERVAL);
		SystemTimerManager.getInstance().addIntervalRemindTask(
				ScheduleTaskProcessService.ACTION_CHECK_VIRUS_BASE,
				checkVirusBase, intent);
	}

	private static void AddPullServerData() {
		// 设置数据变化监听
		ServerDataFetchManager.getInstance().setDataChangeListener(
				SystemTimerManager.getInstance());

		// 首次拉取, 全拉。
		ServerDataFetchManager.getInstance().getListFromServer(true);

		// 加入定时任务
		Intent intent = new Intent();
		intent.setClass(MainApplication.getContext(),
				ScheduleTaskProcessService.class);
		intent.setAction(ScheduleTaskProcessService.ACTION_PULL_SERVER_DATA);
		long pullSrvDataInterval = CoreConfigDao.getInstance().getLongValue(
				CoreConfigDao.PULL_SERVER_DATA_INTERVAL);
		SystemTimerManager.getInstance().addIntervalRemindTask(
				ScheduleTaskProcessService.ACTION_PULL_SERVER_DATA,
				pullSrvDataInterval, intent);
	}

	// private void AddTestNewMsgTask() {
	//
	// Intent intent = new Intent();
	// intent.setClass(MainApplication.getContext(),
	// ScheduleTaskProcessService.class);
	// intent.setAction(ScheduleTaskProcessService.ACTION_TEST);
	// long reportInterval = 10 * 60 * 1000;
	// SystemTimerManager.getInstance().addIntervalRemindTask(ScheduleTaskProcessService.ACTION_TEST,
	// reportInterval, intent);
	// }
	
	@Override
	public void onStart(Intent intent, int startId) {
		super.onStart(intent, startId);
		Log.d("TEST", "Secure Service: start of onStart.");
		isServiceOn = true;
		if (intent == null)
			return;
		
		// == widget start
		String action = intent.getAction();
		if (SHORT_CUT_WINDOW_SHOW.equals(action)) {
			showShortcutWindow();
			return ;
		} else if (SHORT_CUT_WINDOW_HIDE.equals(action)) {
			hideShortcutWindow();
			return ;
		} else if (BOOSTER_WINDOW_SHOW.equals(action)) {
			MainApplication.startTMS(); // 初始化tms
			showBoosterWindow();
        	return ;
		} else if (BOOSTER_WINDOW_HIDE.equals(action)) {
			hideBoosterWindow();
			return ;
		}
		// == widget end
		
		switch (intent.getFlags()) {
		// 启动桌面助手
		case SWITCH_DESK_ASSIS_WINDOW:
			mDeskTopView.showSuspendedWindow();
			break;
		// 软件安装病毒监控
		case DO_APP_SCAN:
			Log.d("TEST", "Secure Service: do scan.");
			VirusMonitorManager manager = new VirusMonitorManager();
			manager.doAppScan(intent
					.getStringExtra(NewPackageReceiver.CONST_SCAN_APP_NAME_INTENT_KEY));
			Log.d("TEST", "Secure Service: end of onStart.");
			break;
		case ROLLBACK_USER_MODE:
			// 恢复到省电模式之前的设置
			ConfigDao.getInstance().setSavePowerMode(false);

			String savedMode = ConfigDao.getInstance().getUserPowerMode();
			String[] allModes = savedMode.split(";");
			if (allModes != null) {
				int all = allModes.length;
				for (int i = 0; i < all; i++) {
					String[] oneMode = allModes[i].split(":");
					String modeName = oneMode[0];
					if (modeName.equalsIgnoreCase("wifi")) {
						// 恢复wifi开关状态
						SwitchWifi switchWifi = new SwitchWifi(
								MainApplication.getContext());
						switchWifi.setWifiStatus(oneMode[1]
								.equalsIgnoreCase("true") ? true : false);
					} else if (modeName.equalsIgnoreCase("mobilenetwork")) {
						// 恢复手机网络开关状态
						SwitchMobileNetwork switchMobileNetwork = new SwitchMobileNetwork(
								MainApplication.getContext());
						switchMobileNetwork.setMobileDataStatus(oneMode[1]
								.equalsIgnoreCase("true") ? true : false);
					} else if (modeName.equalsIgnoreCase("bluetooth")) {
						// 恢复蓝牙开关状态
						SwitchBluetooth switchBluetooth = new SwitchBluetooth(
								MainApplication.getContext());
						switchBluetooth.setBluetoothStatus(oneMode[1]
								.equalsIgnoreCase("true") ? true : false);
					} else if (modeName.equalsIgnoreCase("screen")) {
						// 恢复自动锁屏时间
						SwitchScreenTimeout switchScreenTimeout = new SwitchScreenTimeout(
								MainApplication.getContext());
						switchScreenTimeout.setScreenOffTime(Integer
								.parseInt(oneMode[1]));
					}
				}
			}
			break;
		case BOOST_SPLASH:
			if (!ConfigDao.getInstance().getHavePlayBoostSplash()) {
				new Handler().postDelayed(new Runnable() {
					public void run() {
						ConfigDao.getInstance().setHavePlayBoostSplash(true);// 播放过萌版小火箭闪屏
						mDeskTopView.showRocketSplash();// 打开小火箭蒙版

						Timer timer = new Timer();
						TimerTask timerTask = new TimerTask() {
							@Override
							public void run() {
								mDeskTopView.removeRocketSplash();
							}
						};
						timer.schedule(timerTask, 4000);//gordon 蒙版小火箭闪屏 3秒钟后消失

					}
				}, 1000);// 延迟200毫秒
			}
			break;
		default:
			break;
		}

	}
	
	// ====== fun 4 widget ====== start
	public static final String SHORT_CUT_WINDOW_SHOW = "SHORT_CUT_WINDOW_SHOW";
	public static final String SHORT_CUT_WINDOW_HIDE = "SHORT_CUT_WINDOW_HIDE";
	public static final String BOOSTER_WINDOW_SHOW = "BOOSTER_WINDOW_SHOW";
	public static final String BOOSTER_WINDOW_HIDE = "BOOSTER_WINDOW_HIDE";
	
	public static final String FROM_KEY_WIDGET = "FROM_KEY_WIDGET";
	public static final int FROM_VAL_SHORTCUT_WIDGET = 1011;
	public static final int FROM_VAL_BOOSTER_WIDGET = 1012;
	
	/**
	 * 快捷方式弹出页 控制器
	 */
	private ShortcutWindowController mShortcutWindowController;
	
	/**
	 * 加速弹出页 控制器
	 */
	private BoosterWindowController mBoosterWindowController;
	
	private ShortcutWindowController getShortcutController() {
		if(mShortcutWindowController==null){
			mShortcutWindowController = new ShortcutWindowController(getApplicationContext());	
		}
		return mShortcutWindowController;
	}
	
	private BoosterWindowController getBoosterController(){
		if(mBoosterWindowController==null){
			mBoosterWindowController = new BoosterWindowController(getApplicationContext());
		}
		return mBoosterWindowController;
	}
	
	private void showBoosterWindow(){
		getBoosterController().showWindow();
	}
	
	private void hideBoosterWindow(){
		getBoosterController().removeWindow();
	}
	private void showShortcutWindow() {
		getShortcutController().showWindow();
	}
	
	private void hideShortcutWindow() {
		getShortcutController().removeWindow();
	}
	
	// ====== fun 4 widget ====== start

	@Override
	public void onDestroy() {
		isServiceOn = false;
		BatteryManagerImpl.getSingleInstance().unregisterMonitorBattery(this);
		super.onDestroy();
	}
}
