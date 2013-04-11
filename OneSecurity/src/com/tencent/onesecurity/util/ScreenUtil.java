package com.tencent.onesecurity.util;

import android.app.Activity;
import android.graphics.Rect;
import android.util.DisplayMetrics;

import com.tencent.onesecurity.MainApplication;

/**
 * 屏幕相关属性的工具类
 * @author kandyguan
 *
 */
public final class ScreenUtil {
	
	public static float mScreenWidth = 0;
	public static float mScreenHeight = 0;
	private static float mScale = 0;
	
	private static final float SCALE_SMALL_SCREEN = 1.33f;
	private static final float SCALE_MIDDLE_SCREEN = 1.5f;
	private static final float SCALE_BIG_SCREEN = 1.66f;
	private static final float SCALE_X_BIG_SCREEN = 1.77f;
	
	private static float mCurrentScreen = SCALE_MIDDLE_SCREEN;
	
	public interface OnScreenCreateListener{
		/**
		 * 240 * 320
		 */
		public void onSmallScreenCreate();
		
		/**
		 * 320 * 480
		 */
		public void onMiddleScreenCreate();
		
		/**
		 * 480 * 800
		 */
		public void onBigScreenCreate();
		
		/**
		 * > 480 * 800
		 */
		public void onXBigScreenCreate();
	}
	
	static{
		getScreenParams();
	}
	
	/**
	 * 异步回调，可有效的减少if/else的使用
	 * @param context
	 * @param onScreenCreateListener
	 */
	public static void run(OnScreenCreateListener onScreenCreateListener){
		if(onScreenCreateListener == null){
			return;
		}
		if(mCurrentScreen == SCALE_SMALL_SCREEN){
			onScreenCreateListener.onSmallScreenCreate();
		}else if(mCurrentScreen == SCALE_MIDDLE_SCREEN){
			onScreenCreateListener.onMiddleScreenCreate();
		}else if(mCurrentScreen == SCALE_X_BIG_SCREEN){
			onScreenCreateListener.onXBigScreenCreate();
		}else if(mCurrentScreen == SCALE_BIG_SCREEN){
			onScreenCreateListener.onBigScreenCreate();
		}
	}
	
	/**
	 * 是否是240 * 320的分辨率
	 * @return
	 */
	public static boolean isSmallScreen(){
		return mCurrentScreen == SCALE_SMALL_SCREEN;
	}
	
	/**
	 * 是否是320 * 480的分辨率
	 * @return
	 */
	public static boolean isMiddleScreen(){
		return mCurrentScreen == SCALE_MIDDLE_SCREEN;
	}
	
	/**
	 * 是否是480 * 800的分辨率
	 * @return
	 */
	public static boolean isBigScreen(){
		return mCurrentScreen == SCALE_BIG_SCREEN;
	}
	
	/**
	 * 是否是480 * 854的分辨率
	 * @return
	 */
	public static boolean isXBigScreen(){
		return mCurrentScreen == SCALE_X_BIG_SCREEN;
	}
	
	/**
	 * 获取超大屏幕应该缩放图片的高度值
	 * @param resImageHeight
	 *     图片本来的高度
	 * @return
	 */
	public static int getXBigScreenHeight(int resImageHeight) {
		if (ScreenUtil.isXBigScreen()) {
			float per = PhoneInfoUtil.getScreenWidth(MainApplication.getContext()) / 480.0f;
			int height = (int) (per * resImageHeight);
			return height;
		} else {
			return resImageHeight;
		}
	}
	
	/**
	 * 获取屏幕的相关参数
	 * @param context
	 */
	private static void getScreenParams(){
		DisplayMetrics displayMetrics = MainApplication.getContext().getResources().getDisplayMetrics();
		mScreenWidth = displayMetrics.widthPixels;
		mScreenHeight = displayMetrics.heightPixels;
		
		mScale = mScreenHeight / mScreenWidth;
		
		if(mScale >= SCALE_SMALL_SCREEN && mScale < SCALE_MIDDLE_SCREEN){
			mCurrentScreen = SCALE_SMALL_SCREEN;
		}else if(mScale >= SCALE_MIDDLE_SCREEN && mScale < SCALE_BIG_SCREEN){
			mCurrentScreen = SCALE_MIDDLE_SCREEN;
		}else if(mScale >= SCALE_BIG_SCREEN && mScale < SCALE_X_BIG_SCREEN){
			mCurrentScreen = SCALE_BIG_SCREEN;
		}else if(mScale >= SCALE_X_BIG_SCREEN){
			mCurrentScreen = SCALE_X_BIG_SCREEN;
		}
	}
	
	/**
	 * 获取状态栏的高度
	 */
	public static int getNotificationBarHeight(Activity activity){
		Rect notificationBar = new Rect();
		activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(notificationBar);
		return notificationBar.top;
	}
}
