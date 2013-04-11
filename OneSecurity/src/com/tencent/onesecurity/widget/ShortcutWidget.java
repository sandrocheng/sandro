package com.tencent.onesecurity.widget;

import java.util.Timer;
import java.util.TimerTask;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.widget.RemoteViews;

import com.tencent.one.battery.core.device.DeviceFacade;
import com.tencent.one.battery.core.device.DeviceManager;
import com.tencent.one.battery.core.device.ScreenBrightnessDevice;
import com.tencent.one.battery.core.device.ScreenSleepDevice;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.service.SecureService;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.util.Log;
import com.tencent.onesecurity.widget.shortcut.ShortcutIconUtil;

/**
 * 快捷方式桌面插件
 * 
 * @author gordonbi
 * 
 */
public class ShortcutWidget extends AppWidgetProvider {

	private final static String WIDGET_LOG_TAG = "widget_update_log";
	private static Context mContext;

	private AppWidgetManager mAppwiAppWidgetManager;

	/** 设备操作接入层 */
	private static DeviceFacade mDeviceFacade = null;

	public final static String UPDATE_BTN_ONE = "UPDATE_BTN_ONE";
	public final static String UPDATE_BTN_TWO = "UPDATE_BTN_TWO";
	public final static String UPDATE_BTN_THREE = "UPDATE_BTN_THREE";
	public final static String UPDATE_BTN_FOUR = "UPDATE_BTN_FOUR";
	
	public final static String UPDATE_ORDER = "UPDATE_ORDER";

	private static int[] mIconMarks = WidgetConstant.DEFAULT_MARK_ORDER;
	private static int[] mIconMarksStaus = WidgetConstant.DEFAULT_STATUS;

	private static Handler handler = new Handler() {
		public void handleMessage(Message msg) {
			if (msg.what == 0x1) {
				initUserOperation();
				int changeIndex = -1;
				for (int i = 0; i < mIconMarks.length; i++) {
					if (-1 < i && i < 4) {
						switch (mIconMarks[i]) {
						case WidgetConstant.AIRPLANE_MARK:
							int airplaneStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.AIRPLANE_KEY);
							if (mIconMarksStaus[i] != airplaneStatus) {
								mIconMarksStaus[i] = airplaneStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.WIFI_MARK:
							int wifiStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.WIFI_KEY);
							if (mIconMarksStaus[i] != wifiStatus) {
								mIconMarksStaus[i] = wifiStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.MOBILE_DATA_MARK:
							int mobileStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.MOBILEDATA_KEY);
							if (mIconMarksStaus[i] != mobileStatus) {
								mIconMarksStaus[i] = mobileStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.BLUE_THOOTH_MARK:
							int blueToothStatus = mDeviceFacade
									.getDeviceStatus(mContext,
											DeviceManager.BLUETOOTH_KEY);
							if (mIconMarksStaus[i] != blueToothStatus) {
								mIconMarksStaus[i] = blueToothStatus;
								changeIndex = i;
							}
							break;
//						case WidgetConstant.MOBILE_3G_2G_MARK:
//							mIconMarksStaus[i] = 0;// TODO
//							break;

						case WidgetConstant.VIBRATOR_MARK:
							int vibratorStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.RINGANDVIBRATE_KEY);
							switch (vibratorStatus) {
							case DeviceManager.SILENT:
								vibratorStatus = WidgetConstant.FLAG_STATUS_OFF;
								break;
							case DeviceManager.ONLY_RING:
								vibratorStatus = WidgetConstant.FLAG_STATUS_OFF;
								break;
							case DeviceManager.ONLY_VIBRATE:
								vibratorStatus = WidgetConstant.FLAG_STATUS_ON;
								break;
							case DeviceManager.RING_AND_VIBRATE:
								vibratorStatus = WidgetConstant.FLAG_STATUS_ON;
								break;
							default:
								break;
							}
							if (mIconMarksStaus[i] != vibratorStatus) {
								mIconMarksStaus[i] = vibratorStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.GPS_MARK:
							int gpsStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.GPS_KEY);
							if (mIconMarksStaus[i] != gpsStatus) {
								mIconMarksStaus[i] = gpsStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.AUTOMATIC_LIGHT_MARK:
							boolean autoBrightness = ScreenBrightnessDevice
									.isAutoBrightness(mContext);
							int autoBrightnessStatus = autoBrightness ? WidgetConstant.FLAG_STATUS_ON
									: WidgetConstant.FLAG_STATUS_OFF;
							if (mIconMarksStaus[i] != autoBrightnessStatus) {
								mIconMarksStaus[i] = autoBrightnessStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.ROTATE_SCREEN_MARK:
							int rotateStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.ROTATE_KEY);
							if (mIconMarksStaus[i] != rotateStatus) {
								mIconMarksStaus[i] = rotateStatus;
								changeIndex = i;
							}
							break;
						case WidgetConstant.AUTO_SYNC_MARK:
							int syncStatus = mDeviceFacade.getDeviceStatus(
									mContext, DeviceManager.SYNCINFO_KEY);
							if (mIconMarksStaus[i] != syncStatus) {
								mIconMarksStaus[i] = syncStatus;
								changeIndex = i;
							}

							break;
						case WidgetConstant.SD_MARK:
							mIconMarksStaus[i] = 0;

							break;
						case WidgetConstant.LOCK_SCREEN:
							mIconMarksStaus[i] = 0;
							break;
						default:
							break;
						}
					}
					if (changeIndex != -1) {
						ShortcutIconUtil.setIconStatus(mIconMarksStaus);// 存储变化的icon
						int mark = mIconMarks[changeIndex];
						int status = mIconMarksStaus[changeIndex];

						AppWidgetManager appwidgetManager = AppWidgetManager
								.getInstance(mContext);
						RemoteViews remoteViews = new RemoteViews(
								mContext.getPackageName(),
								R.layout.appwidget_shortcut);
						remoteViews.setImageViewResource(
								WidgetConstant.WIDGET_LAYOUT_ID[changeIndex],
								WidgetConstant.ICONS[mark][status]);
						ComponentName componentname = new ComponentName(
								mContext, ShortcutWidget.class);
						appwidgetManager.updateAppWidget(componentname,
								remoteViews);
					}
				}
			}
		}
	};

	@Override
	public void onReceive(Context context, Intent intent) {
		Log.d(WIDGET_LOG_TAG, "onReceive");
		mContext = context;
		if (mDeviceFacade == null) {
			mDeviceFacade = new DeviceManager();
		}
		// mDeviceFacade.registDataObserver(mOnSharedPreferenceChangeListener,
		// mContext);
		String action = intent.getAction();
		initUserOperation();
		if (UPDATE_BTN_ONE.equals(action)) {
			int mark0 = mIconMarks[0];
			int status0 = mIconMarksStaus[0];
			if (status0 == WidgetConstant.FLAG_STATUS_ON) {
				mIconMarksStaus[0] = WidgetConstant.FLAG_STATUS_OFF;
				status0 = WidgetConstant.FLAG_STATUS_OFF;
			} else {
				mIconMarksStaus[0] = WidgetConstant.FLAG_STATUS_ON;
				status0 = WidgetConstant.FLAG_STATUS_ON;
			}
			controllTrigger(mContext, mark0, status0);
			AppWidgetManager appwidgetManager = AppWidgetManager
					.getInstance(context);
			RemoteViews remoteViews = new RemoteViews(context.getPackageName(),
					R.layout.appwidget_shortcut);
			if (mark0 != WidgetConstant.LOCK_SCREEN ) {
//					&& mark0 != WidgetConstant.MOBILE_3G_2G_MARK) {
				remoteViews.setImageViewResource(R.id.widget_shortcut_icon_1,
						WidgetConstant.ICONS[mark0][status0]);
			}
			// 获得componentName。
			ComponentName componentname = new ComponentName(context,
					ShortcutWidget.class);
			// 更新：
			appwidgetManager.updateAppWidget(componentname, remoteViews);
		} else if (UPDATE_BTN_TWO.equals(action)) {
			int mark1 = mIconMarks[1];
			int status1 = mIconMarksStaus[1];
			if (status1 == WidgetConstant.FLAG_STATUS_ON) {
				mIconMarksStaus[1] = WidgetConstant.FLAG_STATUS_OFF;
				status1 = WidgetConstant.FLAG_STATUS_OFF;
			} else {
				mIconMarksStaus[1] = WidgetConstant.FLAG_STATUS_ON;
				status1 = WidgetConstant.FLAG_STATUS_ON;
			}

			controllTrigger(mContext, mark1, status1);
			AppWidgetManager appwidgetManager = AppWidgetManager
					.getInstance(context);
			RemoteViews remoteViews = new RemoteViews(context.getPackageName(),
					R.layout.appwidget_shortcut);
			if (mark1 != WidgetConstant.LOCK_SCREEN) {
//					&& mark1 != WidgetConstant.MOBILE_3G_2G_MARK) {
				remoteViews.setImageViewResource(R.id.widget_shortcut_icon_2,
						WidgetConstant.ICONS[mark1][status1]);
			}
			// 获得componentName。
			ComponentName componentname = new ComponentName(context,
					ShortcutWidget.class);
			// 更新：
			appwidgetManager.updateAppWidget(componentname, remoteViews);

		} else if (UPDATE_BTN_THREE.equals(action)) {
			int mark2 = mIconMarks[2];
			int status2 = mIconMarksStaus[2];
			if (status2 == WidgetConstant.FLAG_STATUS_ON) {
				mIconMarksStaus[2] = WidgetConstant.FLAG_STATUS_OFF;
				status2 = WidgetConstant.FLAG_STATUS_OFF;
			} else {
				mIconMarksStaus[2] = WidgetConstant.FLAG_STATUS_ON;
				status2 = WidgetConstant.FLAG_STATUS_ON;
			}
			controllTrigger(mContext, mark2, status2);
			AppWidgetManager appwidgetManager = AppWidgetManager
					.getInstance(context);
			RemoteViews remoteViews = new RemoteViews(context.getPackageName(),
					R.layout.appwidget_shortcut);
			if (mark2 != WidgetConstant.LOCK_SCREEN) {
//					&& mark2 != WidgetConstant.MOBILE_3G_2G_MARK) {
				remoteViews.setImageViewResource(R.id.widget_shortcut_icon_3,
						WidgetConstant.ICONS[mark2][status2]);
			}
			// 获得componentName。
			ComponentName componentname = new ComponentName(context,
					ShortcutWidget.class);
			// 更新：
			appwidgetManager.updateAppWidget(componentname, remoteViews);
		} else if (UPDATE_BTN_FOUR.equals(action)) {
			int mark3 = mIconMarks[3];
			int status3 = mIconMarksStaus[3];
			if (status3 == WidgetConstant.FLAG_STATUS_ON) {
				mIconMarksStaus[3] = WidgetConstant.FLAG_STATUS_OFF;
				status3 = WidgetConstant.FLAG_STATUS_OFF;
			} else {
				mIconMarksStaus[3] = WidgetConstant.FLAG_STATUS_ON;
				status3 = WidgetConstant.FLAG_STATUS_ON;
			}
			controllTrigger(mContext, mark3, status3);
			AppWidgetManager appwidgetManager = AppWidgetManager
					.getInstance(context);
			RemoteViews remoteViews = new RemoteViews(context.getPackageName(),
					R.layout.appwidget_shortcut);
			if (mark3 != WidgetConstant.LOCK_SCREEN) {
					//&& mark3 != WidgetConstant.MOBILE_3G_2G_MARK) {
				remoteViews.setImageViewResource(R.id.widget_shortcut_icon_4,
						WidgetConstant.ICONS[mark3][status3]);
			}
			// 获得componentName。
			ComponentName componentname = new ComponentName(context,
					ShortcutWidget.class);
			// 更新：
			appwidgetManager.updateAppWidget(componentname, remoteViews);
		} else if(UPDATE_ORDER.equals(action)){
			for(int i = 0;i<mIconMarks.length;i++){
				if(i>3){
					break;
				}
				int mark = mIconMarks[i];
				int status = mIconMarksStaus[i];
				AppWidgetManager appwidgetManager = AppWidgetManager
						.getInstance(mContext);
				RemoteViews remoteViews = new RemoteViews(
						mContext.getPackageName(),
						R.layout.appwidget_shortcut);
				remoteViews.setImageViewResource(
						WidgetConstant.WIDGET_LAYOUT_ID[i],
						WidgetConstant.ICONS[mark][status]);
				ComponentName componentname = new ComponentName(
						mContext, ShortcutWidget.class);
				appwidgetManager.updateAppWidget(componentname,
						remoteViews);
			}
			
		}else {
			super.onReceive(context, intent);
		}
		ShortcutIconUtil.setIconStatus(mIconMarksStaus);
	}

	@Override
	public void onUpdate(Context context, AppWidgetManager appWidgetManager,
			int[] appWidgetIds) {
		GoogleAnalyticsTracker.getInstance().ClickButton("桌面控件",
				"快捷开关控件拖拽到桌面", DeviceUtil.getIMEI(), 1l);
		Log.d(WIDGET_LOG_TAG, "onUpdate");
		mContext = context;
		mAppwiAppWidgetManager = appWidgetManager;

		new Timer().schedule(new TimerTask() {
			@Override
			public void run() {
				handler.sendEmptyMessage(0x1);
			}

		}, 0, 3000);
		initUserOperation();
		if (mDeviceFacade == null) {
			mDeviceFacade = new DeviceManager();
		}
		checkIconOrder();

		for (int i = 0; i < appWidgetIds.length; i++) {
			updateView(appWidgetIds[i]);
		}

		super.onUpdate(context, appWidgetManager, appWidgetIds);
	}

	private static void checkIconOrder() {
		ShortcutIconUtil.setIconMarks(mIconMarks);
		mIconMarksStaus = checkStatusByMarks(mContext, mIconMarks);
	}

	/**
	 * 获取widget上显示的开关的状态值
	 * 
	 * @param iconMarks
	 * @return iconStatus
	 */
	public static int[] checkStatusByMarks(Context context, int[] iconMarks) {
		if (mDeviceFacade == null) {
			mDeviceFacade = new DeviceManager();
		}
		int[] iconMarksStaus = new int[iconMarks.length];
		for (int i = 0; i < iconMarks.length; i++) {
			switch (iconMarks[i]) {
			case WidgetConstant.AIRPLANE_MARK:
				int airplaneStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.AIRPLANE_KEY);
				iconMarksStaus[i] = airplaneStatus;
				break;
			case WidgetConstant.WIFI_MARK:
				int wifiStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.WIFI_KEY);
				iconMarksStaus[i] = wifiStatus;
				break;
			case WidgetConstant.MOBILE_DATA_MARK:
				int mobileStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.MOBILEDATA_KEY);
				iconMarksStaus[i] = mobileStatus;
				break;
			case WidgetConstant.BLUE_THOOTH_MARK:
				int blueToothStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.BLUETOOTH_KEY);
				iconMarksStaus[i] = blueToothStatus;
				break;
//			case WidgetConstant.MOBILE_3G_2G_MARK:
//				iconMarksStaus[i] = 0;// TODO
//				break;

			case WidgetConstant.VIBRATOR_MARK:
				int vibratorStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.RINGANDVIBRATE_KEY);
				switch (vibratorStatus) {
				case DeviceManager.SILENT:
					iconMarksStaus[i] = WidgetConstant.FLAG_STATUS_OFF;
					break;
				case DeviceManager.ONLY_RING:
					iconMarksStaus[i] = WidgetConstant.FLAG_STATUS_OFF;
					break;
				case DeviceManager.ONLY_VIBRATE:
					iconMarksStaus[i] = WidgetConstant.FLAG_STATUS_ON;
					break;
				case DeviceManager.RING_AND_VIBRATE:
					iconMarksStaus[i] = WidgetConstant.FLAG_STATUS_ON;
					break;
				default:
					break;
				}
				break;
			case WidgetConstant.GPS_MARK:
				int gpsStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.GPS_KEY);
				iconMarksStaus[i] = gpsStatus;
				break;
			case WidgetConstant.AUTOMATIC_LIGHT_MARK:
				boolean autoBrightness = ScreenBrightnessDevice
						.isAutoBrightness(context);
				iconMarksStaus[i] = autoBrightness ? WidgetConstant.FLAG_STATUS_ON
						: WidgetConstant.FLAG_STATUS_OFF;
				break;
			case WidgetConstant.ROTATE_SCREEN_MARK:
				int rotateStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.ROTATE_KEY);
				iconMarksStaus[i] = rotateStatus;
				break;
			case WidgetConstant.AUTO_SYNC_MARK:
				int syncStatus = mDeviceFacade.getDeviceStatus(context,
						DeviceManager.SYNCINFO_KEY);
				iconMarksStaus[i] = syncStatus;
				break;
			case WidgetConstant.SD_MARK:
				break;
			case WidgetConstant.LOCK_SCREEN:
				break;
			default:
				break;
			}
		}
		ShortcutIconUtil.setIconStatus(iconMarksStaus);
		return iconMarksStaus;
	}

	private void updateView(int appWidgetId) {
		Intent btnOneIntent = new Intent();
		btnOneIntent.setAction(UPDATE_BTN_ONE);
		PendingIntent btnOnePendingIntent = PendingIntent.getBroadcast(
				mContext, 0, btnOneIntent, 0);
		RemoteViews btnOneRV = new RemoteViews(mContext.getPackageName(),
				R.layout.appwidget_shortcut);
		int mark0 = mIconMarks[0];
		int status0 = mIconMarksStaus[0];
		if (status0 != WidgetConstant.FLAG_STATUS_ERROR) {
			btnOneRV.setImageViewResource(R.id.widget_shortcut_icon_1,
					WidgetConstant.ICONS[mark0][status0]);
		}
		btnOneRV.setOnClickPendingIntent(R.id.widget_shortcut_icon_1,
				btnOnePendingIntent);
		mAppwiAppWidgetManager.updateAppWidget(appWidgetId, btnOneRV);

		Intent btnTwoIntent = new Intent();
		btnTwoIntent.setAction(UPDATE_BTN_TWO);
		PendingIntent btnTwoPendingIntent = PendingIntent.getBroadcast(
				mContext, 0, btnTwoIntent, 0);
		RemoteViews btnTwoRV = new RemoteViews(mContext.getPackageName(),
				R.layout.appwidget_shortcut);
		int mark1 = mIconMarks[1];
		int status1 = mIconMarksStaus[1];
		if (status1 != WidgetConstant.FLAG_STATUS_ERROR) {
			btnTwoRV.setImageViewResource(R.id.widget_shortcut_icon_2,
					WidgetConstant.ICONS[mark1][status1]);
		}
		btnTwoRV.setOnClickPendingIntent(R.id.widget_shortcut_icon_2,
				btnTwoPendingIntent);
		mAppwiAppWidgetManager.updateAppWidget(appWidgetId, btnTwoRV);

		Intent btnThreeIntent = new Intent();
		btnThreeIntent.setAction(UPDATE_BTN_THREE);
		PendingIntent btnThreePendingIntent = PendingIntent.getBroadcast(
				mContext, 0, btnThreeIntent, 0);
		RemoteViews btnThreeRV = new RemoteViews(mContext.getPackageName(),
				R.layout.appwidget_shortcut);
		int mark2 = mIconMarks[2];
		int status2 = mIconMarksStaus[2];
		if (status2 != WidgetConstant.FLAG_STATUS_ERROR) {
			btnThreeRV.setImageViewResource(R.id.widget_shortcut_icon_3,
					WidgetConstant.ICONS[mark2][status2]);
		}
		btnThreeRV.setOnClickPendingIntent(R.id.widget_shortcut_icon_3,
				btnThreePendingIntent);
		mAppwiAppWidgetManager.updateAppWidget(appWidgetId, btnThreeRV);

		Intent btnFourIntent = new Intent();
		btnFourIntent.setAction(UPDATE_BTN_FOUR);
		PendingIntent btnFourPendingIntent = PendingIntent.getBroadcast(
				mContext, 0, btnFourIntent, 0);
		RemoteViews btnFourRV = new RemoteViews(mContext.getPackageName(),
				R.layout.appwidget_shortcut);
		int mark3 = mIconMarks[3];
		int status3 = mIconMarksStaus[3];
		if (status3 != WidgetConstant.FLAG_STATUS_ERROR) {
			btnFourRV.setImageViewResource(R.id.widget_shortcut_icon_4,
					WidgetConstant.ICONS[mark3][status3]);
		}
		btnFourRV.setOnClickPendingIntent(R.id.widget_shortcut_icon_4,
				btnFourPendingIntent);
		mAppwiAppWidgetManager.updateAppWidget(appWidgetId, btnFourRV);

		Intent btnMoreIntent = new Intent(mContext, SecureService.class);
		btnMoreIntent.setAction(SecureService.SHORT_CUT_WINDOW_SHOW);
		PendingIntent btnMorePendingIntent = PendingIntent.getService(mContext,
				0, btnMoreIntent, 0);
		RemoteViews btnMoreRV = new RemoteViews(mContext.getPackageName(),
				R.layout.appwidget_shortcut);
		btnMoreRV.setOnClickPendingIntent(R.id.widget_shortcut_more,
				btnMorePendingIntent);
		mAppwiAppWidgetManager.updateAppWidget(appWidgetId, btnMoreRV);

	}

	@Override
	public void onDeleted(Context context, int[] appWidgetIds) {
		super.onDeleted(context, appWidgetIds);
	}

	@Override
	public void onDisabled(Context context) {
		super.onDisabled(context);
	}

	@Override
	public void onEnabled(Context context) {
		initUserOperation();
		super.onEnabled(context);
	}

	/**
	 * ICON功能控制
	 * 
	 * @param mark
	 *            每个功能的代号
	 * @param status
	 *            WidgetConstant.FLAG_STATUS_ON
	 * 
	 */
	public static void controllTrigger(Context context, int mark, int status) {
		boolean isOpen = false;
		if (status == WidgetConstant.FLAG_STATUS_ON) {
			isOpen = true;
		}
		switch (mark) {
		case WidgetConstant.AIRPLANE_MARK:
			mDeviceFacade.deviceControll(context, DeviceManager.AIRPLANE_KEY,
					isOpen, 0);
			break;
		case WidgetConstant.WIFI_MARK:
			mDeviceFacade.deviceControll(context, DeviceManager.WIFI_KEY,
					isOpen, 0);
			break;
		case WidgetConstant.MOBILE_DATA_MARK:
			mDeviceFacade.deviceControll(context,
					DeviceManager.MOBILEDATA_KEY, isOpen, 0);
			break;
		case WidgetConstant.BLUE_THOOTH_MARK:
			mDeviceFacade.deviceControll(context, DeviceManager.BLUETOOTH_KEY,
					isOpen, 0);
			break;
//		case WidgetConstant.MOBILE_3G_2G_MARK:
//			Intent mobile3G2GIntent = new Intent(
//					Settings.ACTION_WIRELESS_SETTINGS);
//			mobile3G2GIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
//			mContext.startActivity(mobile3G2GIntent);
//			break;
		case WidgetConstant.VIBRATOR_MARK:// 只调成震动
			int vibratorStatus = -1;
			if (isOpen) {
				vibratorStatus = DeviceManager.ONLY_VIBRATE;
			} else {
				vibratorStatus = DeviceManager.ONLY_RING;
			}
			mDeviceFacade.deviceControll(context,
					DeviceManager.RINGANDVIBRATE_KEY, isOpen, vibratorStatus);
			break;
		case WidgetConstant.GPS_MARK:
			Intent gpsIntent = new Intent(
					Settings.ACTION_LOCATION_SOURCE_SETTINGS);
			gpsIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			context.startActivity(gpsIntent);
			
			// 移除快捷窗口
			Intent hideIntent4gps = new Intent(context, SecureService.class);
			hideIntent4gps.setAction(SecureService.SHORT_CUT_WINDOW_HIDE);
			context.startService(hideIntent4gps);
			break;
		case WidgetConstant.AUTOMATIC_LIGHT_MARK:
			mDeviceFacade.deviceControll(context,
					DeviceManager.SCREENBRIGHTNESS_KEY, isOpen, 0);
			break;
		case WidgetConstant.ROTATE_SCREEN_MARK:
			mDeviceFacade.deviceControll(context, DeviceManager.ROTATE_KEY,
					isOpen, 0);
			break;
		case WidgetConstant.AUTO_SYNC_MARK:
			mDeviceFacade.deviceControll(context, DeviceManager.SYNCINFO_KEY,
					isOpen, 0);
			break;
		case WidgetConstant.SD_MARK:
			Intent sdIntent = new Intent(Settings.ACTION_MEMORY_CARD_SETTINGS);
			sdIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			context.startActivity(sdIntent);
			
			// 移除快捷窗口
			Intent hideIntent4sd = new Intent(context, SecureService.class);
			hideIntent4sd.setAction(SecureService.SHORT_CUT_WINDOW_HIDE);
			context.startService(hideIntent4sd);
			break;
		case WidgetConstant.LOCK_SCREEN:
			ScreenSleepDevice.lockScreen(context);
			break;
		default:
			break;
		}

	}

	// /**
	// * 判断某个事件是否属于当前的widget
	// *
	// * @param mark
	// * @return -1为不再当前widget上
	// */
	// private static int isInWidget(int mark) {
	// int widgetOrder = -1;
	// if (mIconMarks != null && mIconMarks.length > 1) {
	// } else {
	// initUserOperation();
	// for (int i = 0; i < mIconMarks.length; i++) {
	// if (i < 3) {
	// if (mIconMarks[i] == mark) {
	// widgetOrder = i;
	// }
	// } else {
	// break;
	// }
	// }
	// }
	// return widgetOrder;
	// }

	/**
	 * 加载用户的操作记录
	 */
	private static void initUserOperation() {
		int[] statusTemp = ShortcutIconUtil.getIconStatus();
		int[] markTemp = ShortcutIconUtil.getIconMarks();
		if (markTemp.length > 1) {// 数据库为空的场景
			mIconMarks = markTemp;
		} else {
			mIconMarks = WidgetConstant.DEFAULT_MARK_ORDER;
		}
		if (statusTemp.length > 1) {// 数据库为空的场景
			mIconMarksStaus = statusTemp;
		} else {
			mIconMarksStaus = WidgetConstant.DEFAULT_STATUS;
		}
	}

}
