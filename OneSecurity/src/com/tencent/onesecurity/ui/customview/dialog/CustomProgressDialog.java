package com.tencent.onesecurity.ui.customview.dialog;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;

/**
 * @ClassName: CustomProgressDialog  
 * @Description: 自定义Progress Dialog
 * @author Joy
 * @date: 2012-11-27 上午11:45:52
 * 
 * Sample：
 *   <div>
 *   CustomProgressDialog dialog = new CustomProgressDialog(mContext);</br>
 *   dialog.setMax(5);</br>
 *   dialog.setCancelOnClickListener(certainListenr);</br>
 *   dialog.show();</br>
 *   dialog.setProgress(3);</br>
 *   </div>
 */
public class CustomProgressDialog extends ProgressDialog {

	private CharSequence message;
	private int progressValue;
	private int maxValue;
	
	
	private ImageView loadingImage;
	private ImageView iconImage;
	private LinearLayout cancelButton;
	private TextView textUp;
	private TextView textDown;
	private TextView messageView;
	private View.OnClickListener cancelListener;
	
	private Animation anim;
	
	public CustomProgressDialog(Context context) {
		super(context);
	}

	public CustomProgressDialog(Context context, int theme) {
		super(context, theme);
	}
	
	private void initView() {
		loadingImage = (ImageView) findViewById(R.id.img_progress_anim);
		cancelButton = (LinearLayout) findViewById(R.id.btn_dialog_cancel);
		textUp = (TextView) findViewById(R.id.tv_progress_num_up);
		textDown = (TextView) findViewById(R.id.tv_progress_num_down);
		messageView = (TextView) findViewById(R.id.tv_dialog_msg);
		iconImage = (ImageView) findViewById(R.id.iv_dialog_icon);
		
		refressUI();
	}
	
	private void refressUI() {
		if (textUp != null && progressValue >= 0) {
			textUp.setText(String.valueOf(progressValue));
		}
		if (textDown != null && maxValue >= 0) {
			textDown.setText(String.valueOf(maxValue));
		}
		if (messageView != null && message != null && message.length() > 0) {
			messageView.setText(message);
			if (message.length() > 15) {
				int padding = MainApplication.mContext.getResources().getInteger(R.integer.custom_progress_dialog_padding);
				messageView.setPadding(padding, padding, padding, padding);
			}else{
				messageView.setPadding(0, 0, 0, 0);
			}
		}
		if (cancelButton != null) {
			if (cancelListener != null) {
				cancelButton.setOnClickListener(cancelListener);
			}
		}
	}
	
	public void clear() {
		progressValue = 0;
		maxValue = 0;
	}
	
	
	@Override
	public void setMessage(CharSequence message) {
		this.message = message;
		refressUI();
	}
	
	@Override
	public void dismiss() {
		if (loadingImage != null) {
			loadingImage.clearAnimation();
		}
		clear();
		
		super.dismiss();
	}
	
	@Override
	public void setProgress(int value) {
		this.progressValue = value;
		refressUI();
	}

	@Override
	public void setMax(int max) {
		this.maxValue = max;
		refressUI();
	}
	
	public void setCancelButton(String text, View.OnClickListener listener) {
		if (iconImage != null) {
			if (MainApplication.mContext.getString(R.string.common_cancel)
					.equals(text)) {
				iconImage.setBackgroundResource(R.drawable.sel_btn_vault_photos_pop_left);
			} else {
				iconImage.setBackgroundResource(R.drawable.btn_vault_pop_ok_nor);
			}
		}
		cancelListener = listener;
		refressUI();
	}

	@Override
	public void show() {
		super.show();
		if (loadingImage != null) {
			loadingImage.setVisibility(View.VISIBLE);
			loadingImage.startAnimation(anim);
		}
	}
	
	public void setCancelOnClickListener(View.OnClickListener listener) {
		cancelListener = listener;
		refressUI();
	}
	
	/**
	 * 停止：去掉旋转的菊花
	 */
	public void stop() {
		if (loadingImage != null) {
			loadingImage.clearAnimation();
			loadingImage.setVisibility(View.GONE);
		}
		if(iconImage != null){
			iconImage.setBackgroundResource(R.drawable.btn_vault_pop_ok_nor);
		}
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.custom_dialog_progress);
		
		initView();
		
		this.setCancelable(false);
		// 屏蔽菜单键长按
		this.setOnKeyListener(new OnKeyListener() {
			
			@Override
			public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
				return true;
			}
		});
		
		anim = new RotateAnimation(0, 360,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		anim.setRepeatCount(Animation.INFINITE);
		anim.setDuration(1000); 
		anim.setInterpolator(new LinearInterpolator());
	}
	
}
