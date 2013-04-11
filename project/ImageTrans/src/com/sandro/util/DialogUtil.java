package com.sandro.util;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;

import com.sandro.ImageTrans.R;

/**
 * Dialog工具类
 * 
 * @author gordon
 * 
 */
public class DialogUtil {

	/**
	 * 弹出默认弹出框，leftTitle/rightTitle为空即不绑定button文字及事件并隐藏按钮
	 * 
	 * @param context
	 *            上下文
	 * @param windowsTitle
	 *            窗体标题文字
	 * @param message
	 *            弹出框正文内容
	 * @param leftTitle
	 *            左button文字
	 * @param leftOnClickListener
	 *            左button事件响应
	 * @param rightTitle
	 *            右button文字
	 * @param rightOnClickListener
	 *            右button事件响应
	 * @param isCancelable
	 *            是否可以使用返回键取消Dialog
	 * @return Dialog实例
	 */
	public static Dialog showDefaultDialog(Context context,
			String windowsTitle, String message, String leftTitle,
			OnClickListener leftOnClickListener, String rightTitle,
			OnClickListener rightOnClickListener, boolean isCancelable) {
		final Dialog dialog = new CustomDialog(context, R.layout.lay_main_dialog,R.style.fancy_dialog_style);
		dialog.setCancelable(isCancelable);
		TextView messageTv = (TextView) dialog.findViewById(R.id.tv_message);
		messageTv.setText(message);
		TextView titleTv = (TextView) dialog.findViewById(R.id.tv_title);
		if(windowsTitle!=null){
			titleTv.setText(windowsTitle);
		}else{
			titleTv.setVisibility(View.GONE);
		}

		Button btnLeft = (Button) dialog
				.findViewById(R.id.main_dialog_left_btn);
		Button btnRight = (Button) dialog
				.findViewById(R.id.main_dialog_right_btn);

		bindDialogBtn(btnLeft, leftTitle, leftOnClickListener);
		bindDialogBtn(btnRight, rightTitle, rightOnClickListener);
		dialog.show();
		return dialog;
	}

	/**
	 * 左键是ok,右键是cannel 最简单的窗体
	 * 
	 * @param context
	 * @param windowsTitle
	 *            窗体标题
	 * @param message
	 *            窗口消息
	 * @param leftOnClickListener
	 *            左键监听
	 * @return
	 */
	public static Dialog showEasyDialog(Context context, String windowsTitle,
			String message, OnClickListener leftOnClickListener) {
		final Dialog dialog = new CustomDialog(context, R.layout.lay_main_dialog,R.style.fancy_dialog_style);
		TextView titleTv = (TextView) dialog.findViewById(R.id.tv_title);
		if(windowsTitle!=null){
			titleTv.setText(windowsTitle);
		}else{
			titleTv.setVisibility(View.GONE);
		}
		TextView messageTv = (TextView) dialog.findViewById(R.id.tv_message);
		messageTv.setText(message);
		dialog.setCancelable(true);
		Button btnLeft = (Button) dialog
				.findViewById(R.id.main_dialog_left_btn);
		Button btnRight = (Button) dialog
				.findViewById(R.id.main_dialog_right_btn);
		bindDialogBtn(btnLeft, context.getString(android.R.string.ok),
				leftOnClickListener);
		bindDialogBtn(btnRight, context.getString(android.R.string.cancel),
				new OnClickListener() {
					@Override
					public void onClick(View v) {
						dialog.dismiss();
					}
				});
		dialog.show();
		return dialog;
	}

	private static void bindDialogBtn(Button btn, String title,
			OnClickListener onClickListener) {
		if (title != null && !"".equals(title)) {
			btn.setText(title);
			btn.setOnClickListener(onClickListener);
		} else {
			btn.setVisibility(View.GONE);
		}
	}
	
	/**
	 * 系统默认的loading条
	 * @param context
	 * @param desc
	 * @author sandroCheng
	 * @return
	 */
	public static ProgressDialog createSimpleLoading(Context context,String desc){
		ProgressDialog mSpinner = new ProgressDialog(context);
		mSpinner.requestWindowFeature(Window.FEATURE_NO_TITLE);
		mSpinner.setMessage(desc); 
		mSpinner.setCancelable(false);
		mSpinner.setIndeterminate(false);   
		mSpinner.setProgressStyle(ProgressDialog.STYLE_SPINNER);
		return mSpinner;
	}
	
	/**
	 * 全屏loading页面
	 * @param context
	 * @param desc
	 * @author sandroCheng
	 * @return
	 */
	public static ProgressDialog createFullScreenLoading(Context context,String desc){
		CutstomProgressDialog mSpinner = new CutstomProgressDialog(context);
		mSpinner.setMessage(desc);
		mSpinner.setCancelable(false);
		return mSpinner;
	}
}
