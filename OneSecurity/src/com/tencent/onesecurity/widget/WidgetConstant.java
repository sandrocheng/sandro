package com.tencent.onesecurity.widget;

import com.tencent.onesecurity.R;

import android.content.Context;
import android.graphics.PixelFormat;
import android.view.Gravity;
import android.view.WindowManager;

/**
 * widget常量
 * 
 * @author gordonbi
 * 
 */
public class WidgetConstant {

	public static WindowManager.LayoutParams mBaseParams = new WindowManager.LayoutParams();

	public static final int AIRPLANE_MARK = 0;
	public static final int WIFI_MARK = 1;
	public static final int MOBILE_DATA_MARK = 2;
	public static final int BLUE_THOOTH_MARK = 3;
//	public static final int MOBILE_3G_2G_MARK = 4;
	public static final int VIBRATOR_MARK = 4;
	public static final int GPS_MARK = 5;
	public static final int AUTOMATIC_LIGHT_MARK = 6;
	public static final int ROTATE_SCREEN_MARK = 7;
	public static final int AUTO_SYNC_MARK = 8;
	public static final int SD_MARK = 9;
	public static final int LOCK_SCREEN = 10;

	public static final int FLAG_STATUS_ON = 1;
	public static final int FLAG_STATUS_OFF = 0;
	public static final int FLAG_STATUS_ERROR = -1;

	// public static final int[] DEFAULT_MARK_ORDER = { MOBILE_3G_2G_MARK,
	// VIBRATOR_MARK, GPS_MARK, SD_MARK, AUTOMATIC_LIGHT_MARK,
	// ROTATE_SCREEN_MARK, AUTO_SYNC_MARK, AIRPLANE_MARK, WIFI_MARK,
	// MOBILE_DATA_MARK, BLUE_THOOTH_MARK, LOCK_SCREEN };

	 public static final int[] DEFAULT_MARK_ORDER = { AIRPLANE_MARK,
	 WIFI_MARK,
	 MOBILE_DATA_MARK, BLUE_THOOTH_MARK,
	 VIBRATOR_MARK, GPS_MARK, AUTOMATIC_LIGHT_MARK, ROTATE_SCREEN_MARK,
	 AUTO_SYNC_MARK, SD_MARK, LOCK_SCREEN };

	public static final int[] WIDGET_LAYOUT_ID = { R.id.widget_shortcut_icon_1,
			R.id.widget_shortcut_icon_2, R.id.widget_shortcut_icon_3,
			R.id.widget_shortcut_icon_4 };
	public static final int[] DEFAULT_STATUS = { FLAG_STATUS_OFF,
			FLAG_STATUS_OFF, FLAG_STATUS_OFF, FLAG_STATUS_OFF, FLAG_STATUS_OFF,
			FLAG_STATUS_OFF, FLAG_STATUS_OFF, FLAG_STATUS_OFF, FLAG_STATUS_OFF,
			FLAG_STATUS_OFF, FLAG_STATUS_OFF };
	public static final int[][] ICONS = {
			{ R.drawable.img_widget_shortcut_icon_airplane_off,
					R.drawable.img_widget_shortcut_icon_airplane_on },
			{ R.drawable.img_widget_shortcut_icon_wifi_off,
					R.drawable.img_widget_shortcut_icon_wifi_on },
			{ R.drawable.img_widget_shortcut_icon_data_off,
					R.drawable.img_widget_shortcut_icon_data_on },
			{ R.drawable.img_widget_shortcut_icon_blue_tooth_off,
					R.drawable.img_widget_shortcut_icon_blue_tooth_on },
			{ R.drawable.img_widget_shortcut_icon_vibrator_off,
					R.drawable.img_widget_shortcut_icon_vibrator_on },
			{ R.drawable.img_widget_shortcut_icon_gps_off,
					R.drawable.img_widget_shortcut_icon_gps_on },
			{ R.drawable.img_widget_shortcut_icon_auto_light_off,
					R.drawable.img_widget_shortcut_icon_auto_light_on },
			{ R.drawable.img_widget_shortcut_icon_rotate_off,
					R.drawable.img_widget_shortcut_icon_rotate_on },
			{ R.drawable.img_widget_shortcut_icon_auto_sync_off,
					R.drawable.img_widget_shortcut_icon_auto_sync_on },
			{ R.drawable.img_widget_shortcut_icon_sd_off,
					R.drawable.img_widget_shortcut_icon_sd_on },
			{ R.drawable.img_widget_shortcut_icon_lock_off,
					R.drawable.img_widget_shortcut_icon_lock_on } };

	static {
		mBaseParams.gravity = Gravity.CENTER;
		mBaseParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
		mBaseParams.format = PixelFormat.RGBA_8888;
		mBaseParams.dimAmount = 1.0f;// 背景明暗度
		// mBaseParams.alpha = 1.0f;//透明度
		// mBaseParams.flags |=
		// WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;//不这样的话，仅仅他能够获得焦点，不管是不是遮住
		mBaseParams.width = WindowManager.LayoutParams.FILL_PARENT;
		mBaseParams.height = WindowManager.LayoutParams.WRAP_CONTENT;

	}
	public static final int[] SHADOWALPHA = { 0xaaffffff, 0xbbffffff,
			0xccffffff, 0xddffffff, 0xeeffffff, 0xffffffff };

	static public int dip2px(Context context, float dpValue) {
		final float scale = context.getResources().getDisplayMetrics().density;
		return (int) (dpValue * scale + 0.5f);
	}
}
