/**
 * 
 */
package com.tencent.one.battery.core.device;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SyncStatusObserver;
import android.database.ContentObserver;
import android.provider.Settings;
import android.provider.Settings.SettingNotFoundException;

/**
 * @author matrixxu
 * 
 */
public class SystemSettingsHandler {
	private static SystemSettingsHandler mInstance = null;

	private Context context = null;

	public void systemSettingsObserver() {
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.AIRPLANE_MODE_ON), true, airplaneObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.HAPTIC_FEEDBACK_ENABLED), true,
				hapitFeedbackObserver);
		ContentResolver.addStatusChangeListener(ContentResolver.SYNC_OBSERVER_TYPE_SETTINGS, syncInfoObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.ACCELEROMETER_ROTATION), true,
				screenRotationObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.SCREEN_OFF_TIMEOUT), true,
				screenSleepTimeoutObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.SCREEN_BRIGHTNESS), true,
				screenBrightnessObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.SCREEN_BRIGHTNESS_MODE), true,
				screenBrightnessModeObserver);
		context.getContentResolver().registerContentObserver(Settings.System.getUriFor(Settings.System.LOCATION_PROVIDERS_ALLOWED), true,
				gpsObserver);
	}
	
	private ContentObserver gpsObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {

			if (GpsDevice.getInstance(context).getDeviceStatus()) {
				DeviceData.getInstance(context).saveDevice(DeviceData.GPS_KEY,
						DeviceData.OPEN_VALUE);
			} else {
				DeviceData.getInstance(context).saveDevice(DeviceData.GPS_KEY,
						DeviceData.CLOSE_VALUE);
			}
			super.onChange(selfChange);
		}
	};
	

	private ContentObserver screenBrightnessModeObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				int mode = Settings.System.getInt(context.getContentResolver(), Settings.System.SCREEN_BRIGHTNESS_MODE);
				if (mode == Settings.System.SCREEN_BRIGHTNESS_MODE_AUTOMATIC) {
					DeviceData.getInstance(context).saveDevice(DeviceData.SCREENBRIGHTNESS_KEY, 1);
				}
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}
	};

	private ContentObserver screenBrightnessObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				double brightness = Settings.System.getInt(context.getContentResolver(), Settings.System.SCREEN_BRIGHTNESS);
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENBRIGHTNESS_KEY,(int)(Math.ceil(brightness * 100d / 255d)));
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}
	};

	private ContentObserver screenSleepTimeoutObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				// 1 开 0 关
				int sleepTimeout = Settings.System.getInt(context.getContentResolver(), Settings.System.SCREEN_OFF_TIMEOUT);
				DeviceData.getInstance(context).saveDevice(DeviceData.SCREENTIMEOUT_KEY, sleepTimeout / 1000);
				System.out.println(sleepTimeout);
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}
	};

	private ContentObserver screenRotationObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				// 1 开 0 关
				int isRotationEnable = Settings.System.getInt(context.getContentResolver(), Settings.System.ACCELEROMETER_ROTATION);
				DeviceData.getInstance(context).saveDevice(DeviceData.ROTATE_KEY, isRotationEnable);
				System.out.println(isRotationEnable);
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}

	};

	private SyncStatusObserver syncInfoObserver = new SyncStatusObserver() {

		@Override
		public void onStatusChanged(int which) {
			if (SyncInfoDevice.getInstance(context).getDeviceStatus()) {
				DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, DeviceData.OPEN_VALUE);
			} else {
				DeviceData.getInstance(context).saveDevice(DeviceData.SYNCINFO_KEY, DeviceData.CLOSE_VALUE);
			}
		}
	};

	private ContentObserver hapitFeedbackObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				// 1 开 0 关
				int isHapitFeedbackEnable = Settings.System.getInt(context.getContentResolver(), Settings.System.HAPTIC_FEEDBACK_ENABLED);
				DeviceData.getInstance(context).saveDevice(DeviceData.HAPTICFEEDBACK_KEY, isHapitFeedbackEnable);
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}

	};

	private ContentObserver airplaneObserver = new ContentObserver(null) {
		/*
		 * (non-Javadoc)
		 * 
		 * @see android.database.ContentObserver#onChange(boolean)
		 */
		@Override
		public void onChange(boolean selfChange) {
			try {
				// 1 开 0 关
				int isAireplaneEnable = Settings.System.getInt(context.getContentResolver(), Settings.System.AIRPLANE_MODE_ON);
				DeviceData.getInstance(context).saveDevice(DeviceData.AIRPLANE_KEY, isAireplaneEnable);
			} catch (SettingNotFoundException e) {
			}
			super.onChange(selfChange);
		}

	};

	private SystemSettingsHandler(Context context) {
		this.context = context;
	}

	public static SystemSettingsHandler getInstance(Context context) {
		if (mInstance == null) {
			synchronized (SystemSettingsHandler.class) {
				if (mInstance == null) {
					mInstance = new SystemSettingsHandler(context);
				}
			}
		}
		return mInstance;
	}
}
