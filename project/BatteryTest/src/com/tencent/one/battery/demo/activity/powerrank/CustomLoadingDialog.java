package com.tencent.one.battery.demo.activity.powerrank;


import com.tencent.one.battery.demo.R;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.TextView;


/**
 * @ClassName: CustomProgressDialog  
 * @Description: 自定义Progress Dialog
 * @author Joy
 * @date: 2012-11-27 上午11:45:52
 * 
 * Sample：
 *   <div>
 *   CustomLoadingDialog dialog = new CustomLoadingDialog(mContext);</br>
 *   dialog.show();</br>
 *   </div>
 */
public class CustomLoadingDialog extends ProgressDialog {

	private CharSequence message;
	
	private ImageView loadingImage;
	private TextView messageView;
	
	private Animation anim;
	
	private boolean mCancelAble;
	
	private boolean isLoading = false;
	
	public CustomLoadingDialog(Context context) {
		super(context);
	}

	public CustomLoadingDialog(Context context, int theme) {
		super(context, theme);
	}
	
	/**
	 * 增加是否可以取消参数, add by LionLiu 20121202
	 * 
	 * @param context
	 * @param cancelAble
	 */
	public CustomLoadingDialog(Context context, boolean cancelAble) {
	    super(context);
	    mCancelAble = cancelAble;
	}
	
	private void initView() {
		loadingImage = (ImageView) findViewById(R.id.img_progress_anim);
		messageView = (TextView) findViewById(R.id.tv_dialog_msg);
		
		refressUI();
	}

	private void setLoading( boolean loadingFlag ){
		isLoading = loadingFlag;
	}
	
	public boolean isLoading(){
		return isLoading;
	}
	private void refressUI() {
		if (messageView != null && message != null && message.length() > 0) {
			messageView.setText(message);
		}
	}
	
	
	@Override
	public void setMessage(CharSequence message) {
		this.message = message;
		
		refressUI();
	}
	
	@Override
	public void dismiss() {
		anim.cancel();
//		loadingImage.clearAnimation();
		setLoading(false);
		super.dismiss();
	}
	
	@Override
	public void show() {
		super.show();
		loadingImage.startAnimation(anim);
		setLoading(true);
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.custom_dialog_loading);
		
		initView();
		
		this.setCancelable(mCancelAble);
		
		anim = new RotateAnimation(0f, 360f,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		anim.setRepeatCount(Animation.INFINITE);
		anim.setDuration(1000); 
		anim.setInterpolator(new LinearInterpolator());
//		anim.setFillEnabled(true);
		anim.setFillAfter(true);
//		anim.setFillBefore(false);
	}
	
}
