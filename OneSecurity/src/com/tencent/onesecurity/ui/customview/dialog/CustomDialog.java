package com.tencent.onesecurity.ui.customview.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

/**
 * 
 * @ClassName: CustomDialog
 * @Description:TODO 自定义dialog
 * @author: tony
 * @date: 2012-11-27 上午11:12:48
 * 
 */
public class CustomDialog {

	public static final int LEFT_BUTTON_CLICK = 12345;

	public static final int RIGHT_BUTTON_CLICK = 54321;
	
	public static final int UP_BUTTON_CLICK = 2001;
	public static final int DOWN_BUTTON_CLICK = 2002;

	public static Dialog createCustomDialogCommonBlack(int layoutId,
			Context context, String title, String leftString,
			String rightString, final DialogInterface.OnClickListener listener) {
		final Dialog dialog = new Dialog(context, R.style.dialog_common);
		LayoutInflater inflater = (LayoutInflater) LayoutInflater.from(context);
		View contentView = null;

		contentView = inflater.inflate(layoutId, null);

		final LinearLayout leftButton = (LinearLayout) contentView
				.findViewById(R.id.btn_left);
		LinearLayout rightButton = (LinearLayout) contentView
				.findViewById(R.id.btn_right);
		TextView tvLeft = (TextView) contentView.findViewById(R.id.tv_left);
		TextView tvRight = (TextView) contentView.findViewById(R.id.tv_right);
		final TextView titleText = (TextView) contentView
				.findViewById(R.id.tv_title);
		titleText.setText(title);
		if (leftString != null) {
			tvLeft.setText(leftString);
		} else {
			leftButton.setVisibility(View.GONE);
		}
		if (rightString != null) {
			tvRight.setText(rightString);
		} else {
			rightButton.setVisibility(View.GONE);
		}
		View.OnClickListener btnOnClickListener = new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				if (listener != null) {
					switch (v.getId()) {
					case R.id.btn_left:
						listener.onClick(dialog, LEFT_BUTTON_CLICK);
						break;
					case R.id.btn_right:
						listener.onClick(dialog, RIGHT_BUTTON_CLICK);
						break;
					}
				}
			}

		};
		leftButton.setOnClickListener(btnOnClickListener);
		rightButton.setOnClickListener(btnOnClickListener);
		dialog.setContentView(contentView);
		dialog.setCanceledOnTouchOutside(true);
		dialog.setOnKeyListener(new OnKeyListener() {
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode,
					KeyEvent event) {
				if (keyCode == 84) {// HTC的搜索实体键
					return true;
				}
				return false;
			}
		});
		return dialog;
	}

	/**
	 * dialog 黑色背景 白色字 2个按钮
	 * 
	 * @param context
	 * @param title
	 *            内容
	 * @param leftString
	 *            左文字
	 * @param rightString
	 *            右文字
	 * @param listener
	 *            按钮监听器
	 * @return
	 */
	public static Dialog createCustomDialogCommonBlack(Context context,
			String title, String leftString, String rightString,
			final DialogInterface.OnClickListener listener) {
		return createCustomDialogCommonBlack(
				R.layout.custom_dialog_common_black, context, title,
				leftString, rightString, listener);
	}

	public static void setDialogTitle(Dialog dialog, String title) {
		if (dialog == null) {
			return;
		}
		final TextView titleText = (TextView) dialog
				.findViewById(R.id.tv_title);
		if (titleText != null) {
			titleText.setText(title);
		}
	}
	
	/**
	 * 创建列表式Dialog。这个目前是写死的，还没有做成共通，第二个和第三个参数目前无效
	 * @param context
	 * @param item1
	 * @param item2
	 * @param listener
	 * @return
	 */
	public static Dialog createItemCustomDialog(Context context, String item1, String item2, final DialogInterface.OnClickListener listener) {
		final Dialog dialog = new Dialog(context, R.style.dialog_common);
		LayoutInflater inflater = (LayoutInflater) LayoutInflater.from(context);
		View contentView = inflater.inflate(R.layout.custom_dialog_common_item, null);
		dialog.setContentView(contentView);
		dialog.setCanceledOnTouchOutside(true);
		
		View.OnClickListener btnOnClickListener = new View.OnClickListener() {
			@Override
			public void onClick(View v) {
				if (listener != null) {
					switch (v.getId()) {
					case R.id.ll_up:
						listener.onClick(dialog,
								UP_BUTTON_CLICK);
						break;
					case R.id.ll_down:
						listener.onClick(dialog,
								DOWN_BUTTON_CLICK);
						break;
					}
				}
			}

		};
		contentView.findViewById(R.id.ll_up).setOnClickListener(btnOnClickListener);
		contentView.findViewById(R.id.ll_down).setOnClickListener(btnOnClickListener);
		return dialog;
	}
}
