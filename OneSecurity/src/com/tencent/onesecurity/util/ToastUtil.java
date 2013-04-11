package com.tencent.onesecurity.util;

import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;

/**
 * Toast显示帮助类，不需要在UI线程调用也不会死
 * 
 * From 1.2
 * 
 * @author Jess Yan
 * 
 */
public class ToastUtil {

	private static long lastShowTime = -1;

	// private static void _showToast(final int textid,
	// final String text, final int delay, final boolean allowToastQueue) {
	// long currentTime = System.currentTimeMillis();
	// if (!allowToastQueue && currentTime - lastShowTime < 3000)
	// return;
	// else {
	// lastShowTime = currentTime;
	// }
	// new Handler(MainApplication.getContext().getMainLooper()).post(new
	// Runnable() {
	//
	// @Override
	// public void run() {
	// if (textid == -1) {
	// Toast.makeText(MainApplication.getContext(), text, delay).show();
	// } else {
	// Toast.makeText(MainApplication.getContext(), textid, delay).show();
	// }
	// }
	// });
	// }

	private static void _showToast(final int textid, final String text,
			final int delay, final boolean allowToastQueue, final int gravity,final int xOffset,final int yOffset,final int layoutid) {
		long currentTime = System.currentTimeMillis();

		if (delay == Toast.LENGTH_SHORT) {
			if (!allowToastQueue && currentTime - lastShowTime < 2000) {
				return;
			} else {
				lastShowTime = currentTime;
			}
		} else if (delay == Toast.LENGTH_LONG) {
			if (!allowToastQueue && currentTime - lastShowTime < 3000) {
				return;
			} else {
				lastShowTime = currentTime;
			}
		}
		
		final View layout;
		if (layoutid != -1) {
			layout = LayoutInflater.from(MainApplication.getContext()).inflate(layoutid, null);
		} else {
			layout = null;
		}
		
		new Handler(MainApplication.getContext().getMainLooper())
				.post(new Runnable() {
					@Override
					public void run() {
						Toast t;
						if (textid == -1) {
							t = Toast.makeText(MainApplication.getContext(), text, delay);
						} else {
							t = Toast.makeText(MainApplication.getContext(), textid, delay);
						}

						if (gravity != -1) {
							t.setGravity(gravity, xOffset, yOffset);
						} else {
							t.setMargin(0, 0.05f);
						}
						
						if (layoutid != -1){
							
							TextView textViewMessage = (TextView) layout.findViewById(R.id.textViewMessage);
							
							if (textid == -1) {
								textViewMessage.setText(text);
							} else {
								textViewMessage.setText(textid);
							}
							
							t.setView(layout);
						}
						t.show();
					}
				});
	}

	// /**
	// * 短消息 add by jackwang
	// * @param textid 资源id
	// * @param text 文字
	// * @param delay
	// * @param allowToastQueue
	// */
	// private static void _showToastShort(final int textid,
	// final String text, final int delay, final boolean allowToastQueue) {
	// long currentTime = System.currentTimeMillis();
	// if (!allowToastQueue && currentTime - lastShowTime < 2000)
	// return;
	// else {
	// lastShowTime = currentTime;
	// }
	// new Handler(MainApplication.getContext().getMainLooper()).post(new
	// Runnable() {
	//
	// @Override
	// public void run() {
	// if (textid == -1) {
	// Toast.makeText(MainApplication.getContext(), text, delay).show();
	// } else {
	// Toast.makeText(MainApplication.getContext(), textid, delay).show();
	// }
	// }
	// });
	// }

	/**
	 * 显示简单文字的toast
	 * 
	 * @param textid
	 *            资源id
	 */
	public static void ShowSimpleTextLongToast(final int textid, int gravity) {
		_showToast(textid, null, Toast.LENGTH_LONG, false, gravity,0,0,-1);
	}
	
	public static void ShowSimpleTextLongToast(final int textid, int gravity,int layoutid) {
		_showToast(textid, null, Toast.LENGTH_LONG, false, gravity,0,0,layoutid);
	}
	

	/**
	 * 显示简单文字的toast
	 * 
	 * @param textid
	 *            资源id
	 */
	public static void ShowSimpleTextLongToast(final int textid) {
		_showToast(textid, null, Toast.LENGTH_LONG, false, -1,0,0,-1);
	}
	
	public static void ShowSimpleTextLongToast2(final int textid,int layoutid) {
		_showToast(textid, null, Toast.LENGTH_LONG, false, -1,0,0,layoutid);
	}

	public static void ShowSimpleTextLongToast(final int textid,int gravity,int xOffset,int yOffset,int layoutid){ 
		_showToast(textid, null, Toast.LENGTH_LONG, false, gravity,xOffset,yOffset,layoutid);
	}
	
	
	/**
	 * 显示简单文字的toast
	 * 
	 * @param text
	 *            文字
	 */
	public static void ShowSimpleTextLongToast(final String text) {
		_showToast(-1, text, Toast.LENGTH_LONG, false, -1,0,0,-1);
	}
	
	public static void ShowSimpleTextLongToast(final String text,int layoutid) {
		_showToast(-1, text, Toast.LENGTH_LONG, false, -1,0,0,layoutid);
	}

	/**
	 * 显示简单文字的toast
	 * 
	 * @param text
	 *            文字
	 * @param allowToastQueue
	 *            是否允许Toast等待显示, 如果不允许, 3秒内的第二条Toast将不被显示
	 */
	public static void ShowSimpleTextLongToast(final String text,
			boolean allowToastQueue) {
		_showToast(-1, text, Toast.LENGTH_LONG, allowToastQueue, -1,0,0,-1);
	}
	
	public static void ShowSimpleTextLongToast(final String text,
			boolean allowToastQueue,int layoutid) {
		_showToast(-1, text, Toast.LENGTH_LONG, allowToastQueue, -1,0,0,layoutid);
	}
	
	public static void ShowSimpleTextLongToast(final String text,
			boolean allowToastQueue,int gravity,int xOffset,int yOffset,int layoutid) {
		_showToast(-1, text, Toast.LENGTH_LONG, allowToastQueue, gravity,xOffset,yOffset,layoutid);
	}

	/**
	 * 显示简单文字的toast
	 * 
	 * @param text
	 *            文字
	 */
	public static void ShowSimpleTextShortToast(final String text) {
		_showToast(-1, text, Toast.LENGTH_SHORT, false, -1,0,0,-1);
	}
	public static void ShowSimpleTextShortToast(final String text,int layoutid) {
		_showToast(-1, text, Toast.LENGTH_SHORT, false, -1,0,0,layoutid);
	}

	/**
	 * 显示简单文字的toast， 短消息，add by jackwang
	 * 
	 * @param text
	 *            文字
	 * @param allowToastQueue
	 *            是否允许Toast等待显示, 如果不允许, 3秒内的第二条Toast将不被显示
	 */
	public static void ShowSimpleTextShortToast(final String text,
			boolean allowToastQueue) {
		_showToast(-1, text, Toast.LENGTH_SHORT, allowToastQueue, -1,0,0,-1);
	}
	public static void ShowSimpleTextShortToast(final String text,
			boolean allowToastQueue,int layoutid) {
		_showToast(-1, text, Toast.LENGTH_SHORT, allowToastQueue, -1,0,0,layoutid);
	}

	/**
	 * 入队列，长显示
	 * 
	 * @param text
	 * @param layoutid
	 */
	public static void showLongToast(final int id) {
		_showToast(id, null, Toast.LENGTH_LONG, true, -1, 0, 0, R.layout.custom_toast);
	}
	/**
	 * 入队列，短显示
	 * 	
	 * @param text
	 * @param layoutid
	 */
	public static void showShortToast(final int id) {
		_showToast(id, null, Toast.LENGTH_SHORT, true, -1, 0, 0, R.layout.custom_toast);
	}
}
