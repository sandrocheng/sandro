package com.tencent.one.battery.core.device;

import android.content.Context;
import android.media.AudioManager;

public class VibrateAndRingDevice implements DeviceGovernor {

	private AudioManager audio;

	/**
	 * 设置成不震动模式
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public void setVibrateSilentMode() {
		audio.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
	}

	/**
	 * 设置成震动模式
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public void setVibrateOnMode() {
		audio.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
		audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER, AudioManager.VIBRATE_SETTING_ON);
		audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION, AudioManager.VIBRATE_SETTING_ON);
	}

	/**
	 * 取得铃声震动模式
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public boolean getVibrateRingerMode() {
		boolean vibrateRingerMode = false;
		vibrateRingerMode = audio.getVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER) == AudioManager.VIBRATE_SETTING_ON;
		return vibrateRingerMode;

	}

	/**
	 * 取得振铃是否打开
	 * 
	 */
	public boolean getRingerSilentMode() {
		boolean ringerMode;
		ringerMode = audio.getRingerMode() == AudioManager.RINGER_MODE_NORMAL;
		return ringerMode;
	}

	/**
	 * 获得当前铃声音量
	 * 
	 * @return
	 */
	public int getCurrentVolumn() {
		return audio.getStreamVolume(AudioManager.STREAM_RING);
	}

	/**
	 * 调整铃声音量
	 * 
	 * @param direction
	 */
	public void adjustRingVolumn(int direction) {
		audio.adjustStreamVolume(AudioManager.STREAM_RING, direction, AudioManager.FLAG_SHOW_UI);
	}

	/**
	 * 设置铃声和震动方式
	 */
	public void setPhoneRingAndVibrate(Context context, int ringAndVibrate) {
		if (ringAndVibrate == DeviceManager.RING_AND_VIBRATE) {
			audio.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER, AudioManager.VIBRATE_SETTING_ON);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION, AudioManager.VIBRATE_SETTING_ON);
		} else if (ringAndVibrate == DeviceManager.ONLY_VIBRATE) {
			audio.setRingerMode(AudioManager.RINGER_MODE_VIBRATE);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER, AudioManager.VIBRATE_SETTING_ON);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION, AudioManager.VIBRATE_SETTING_ON);
		} else if (ringAndVibrate == DeviceManager.ONLY_RING) {
			audio.setRingerMode(AudioManager.RINGER_MODE_NORMAL);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER, AudioManager.VIBRATE_SETTING_OFF);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION, AudioManager.VIBRATE_SETTING_OFF);
		} else {
			audio.setRingerMode(AudioManager.RINGER_MODE_SILENT);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_RINGER, AudioManager.VIBRATE_SETTING_OFF);
			audio.setVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION, AudioManager.VIBRATE_SETTING_OFF);
		}
	}

	/**
	 * 取得消息震动模式
	 * 
	 * @param resolver
	 * @param brightness
	 */
	public boolean getVibrateNoticeMode() {
		boolean vibrateNoticeMode = false;
		vibrateNoticeMode = audio.getVibrateSetting(AudioManager.VIBRATE_TYPE_NOTIFICATION) == AudioManager.VIBRATE_SETTING_ON;
		return vibrateNoticeMode;

	}

	@Override
	public void switchOff() {
	}

	@Override
	public void switchOn() {
	}

	private Context context;

	private VibrateAndRingDevice(Context context) {
		this.context = context;
		audio = (AudioManager) context.getSystemService(Context.AUDIO_SERVICE);
	}

	private static DeviceGovernor mInstance = null;

	public static DeviceGovernor getInstance(Context context) {
		if (mInstance == null) {
			synchronized (VibrateAndRingDevice.class) {
				if (mInstance == null) {
					mInstance = new VibrateAndRingDevice(context);
				}
			}
		}
		return mInstance;
	}

	@Override
	public boolean getDeviceStatus() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int getValue() {
		boolean vibrate = getVibrateNoticeMode() && getVibrateRingerMode();
		boolean ring = getRingerSilentMode();
		if (vibrate && ring) {
			return DeviceManager.RING_AND_VIBRATE;
		} else if (vibrate && !ring) {
			return DeviceManager.ONLY_VIBRATE;
		} else if (!vibrate && ring) {
			return DeviceManager.ONLY_RING;
		} else if (!vibrate && !ring) {
			return DeviceManager.SILENT;
		}
		return 0;
	}

	@Override
	public void setValue(int value) {
		setPhoneRingAndVibrate(this.context, value);

	}
}
