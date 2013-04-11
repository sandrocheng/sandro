package com.tencent.onesecurity.ui.customview.layout;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Animation;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

/**
 * 
* @ClassName: VirusUpdateLayout
* @Description:杀毒首页按钮布局文件
* @author: Sandro
* @date: 2012-12-1 上午10:58:11
*
 */
public class VirusUpdateLayout extends LinearLayout implements OnTouchListener{

	private Animation anim; //动效
	
	private ImageView updateArrorImg = null; //旋转的箭头
	
	/**
	 * 边框图片view
	 */
	private ImageView updateFrameImg = null;
	
	private TextView updateTV = null;
	
	private ImageView newIcon=null;
	
	/**
	 * vip过期状态
	 */
	public static final int VIP_EXPIRED_STATUS = 0;
	
	/**
	 * 非vip状态
	 */
	public static final int UN_VIP_STATUS = 1;
	
	/**
	 * vip状态
	 */
	public static final int VIP_STATUS = 2;
	
	/**
	 * 正常情况下文字大小13sp
	 */
	public static final float NORMAL_TEXT_SIZE = 15f;
	
	/**
	 * 按下时候 11sp
	 */
	public static final float PRESS_TEXT_SIZE = 13f;
	
	public VirusUpdateLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public VirusUpdateLayout(Context context){
		super(context);
		init(context);
	}
	
	/**
	 * 设置vip状态
	 * @param status
	 * @see VIP_EXPIRED_STATUS
	 * @see UN_VIP_STATUS
	 * @see VIP_STATUS
	 */
	public void setVipStatus(int status){
		if(updateFrameImg == null){
			updateFrameImg = (ImageView)findViewById(R.id.update_image_bg);
		}
		if(status == VIP_EXPIRED_STATUS){
			updateFrameImg.setBackgroundResource(R.drawable.sel_virus_update_vip_expired_bg);
		}else if(status == VIP_STATUS){
			updateFrameImg.setBackgroundResource(R.drawable.sel_virus_update_vip_bg);
		}else{
			updateFrameImg.setBackgroundResource(R.drawable.sel_virus_update_un_vip_bg);
		}
	}
	
	private void init(Context context){
		//动画
		anim = new RotateAnimation(0, 360,
				Animation.RELATIVE_TO_SELF, 0.5f, Animation.RELATIVE_TO_SELF,
				0.5f);
		anim.setRepeatCount(Animation.INFINITE);
		anim.setDuration(1000); 
		anim.setInterpolator(new LinearInterpolator());	
		this.setClickable(true);
		this.setOnTouchListener(this);
	}
	
	/**
	 * 是否显示new的icon
	 * @param newicon
	 */
	public void setNewIcon(boolean newicon){
		if(newIcon==null){
			newIcon = (ImageView)this.findViewById(R.id.update_new_icon);
		}
		if(newicon){
			newIcon.setVisibility(View.VISIBLE);
		}else{
			newIcon.setVisibility(View.GONE);
		}
	}
	
	public void startUpdating(){
		if(updateArrorImg==null){
			updateArrorImg = (ImageView)findViewById(R.id.update_image_core);
		}
		updateArrorImg.startAnimation(anim);
		//this.setClickable(false);
	}
	
	public void stopUpdating(){
		updateArrorImg.clearAnimation();
		//this.setClickable(true);
	}

	@Override
	public boolean onTouch(View view, MotionEvent me) {
		if (!isEnabled() || !isClickable()) {
			return false;
		}
		if(updateTV == null){
			updateTV = (TextView)this.findViewById(R.id.update_text_tv);
		}
		switch (me.getAction()) {
		case MotionEvent.ACTION_DOWN:
//			updateTV.setTextSize(TypedValue.COMPLEX_UNIT_SP, PRESS_TEXT_SIZE);
			updateTV.setTextColor(Color.argb(125, 255, 255, 255));
			if(updateArrorImg==null){
				updateArrorImg = (ImageView)findViewById(R.id.update_image_core);
			}
			updateArrorImg.setPressed(true);
			break;
		case MotionEvent.ACTION_UP:
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL:
//			updateTV.setTextSize(TypedValue.COMPLEX_UNIT_SP, NORMAL_TEXT_SIZE);
			updateTV.setTextColor(Color.argb(255, 255, 255, 255));
			if(updateArrorImg==null){
				updateArrorImg = (ImageView)findViewById(R.id.update_image_core);
			}
			updateArrorImg.setPressed(false);
			break;
		}
		return false;
	}
}
