package com.tencent.onesecurity.ui.customview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

/**
 * @ClassName: CustomButton  
 * @Description: 自定义-带Icon的按钮
 * @author Joy
 * @date: 2012-11-27 下午3:29:35
 */
public class CustomIconButton extends LinearLayout implements OnTouchListener {

	/** 按钮样式-Icon在左边 */
	public static final int TYPE_LEFT_ICON = 1;
	/** 按钮样式-Icon在右边 */
	public static final int TYPE_RIGTH_ICON = 2;
	
	public static final int TYPE_RIGTH_ICON_VIP = 4;
	
	public static final int TYPE_LEFT_ICON_VIP = 3;
	
	private static final int STATE_NORMAL = 1;
	private static final int STATE_PRESS = 2;
	private static final int STATE_DISABLED = 3;
	
	private Context mContext;

	private TextView buttonText;
	private ImageView icon;
	private RelativeLayout textLayout;
	
	/**
	 *  记录按钮样式
	 */
	private int mType;
	
	private Drawable iconResourceNor;
	private Drawable iconResourcePress; 
	private Drawable iconResourceDisabled; 
	
	private int textColorNor;
	private int textColorPress;
	
	private String textValue;
	private float textPadding;
	
	/**
	 * 正常状态下text的大小。与style：text_main_common_function_btn的size相同
	 */
	private float TEXT_SIZE_BASE = 15f;
	private float textSizeValue;
	
	public CustomIconButton(Context context, int type) {
		super(context);
		setOnTouchListener(this);

		mContext = context;
		mType = type;
		initView();
	}

	public CustomIconButton(Context context, AttributeSet attrs) {
		super(context, attrs);
		
		setOnTouchListener(this);

		mContext = context;
		
		TypedArray typedArray = 
				context.obtainStyledAttributes(attrs, R.styleable.CustomIconButton);
		int type =
				typedArray.getInteger(R.styleable.CustomIconButton_buttonType, TYPE_LEFT_ICON);
		
		mType = type;
		iconResourceNor = typedArray.getDrawable(R.styleable.CustomIconButton_buttonIcon);
		iconResourcePress = typedArray.getDrawable(R.styleable.CustomIconButton_buttonIconPress);
		iconResourceDisabled = typedArray.getDrawable(R.styleable.CustomIconButton_buttonIconDisabled);
		
		textColorNor = typedArray.getColor(R.styleable.CustomIconButton_buttonTextColor, 0);
		textColorPress = typedArray.getColor(R.styleable.CustomIconButton_buttonTextColorPress, 0);
		
		textValue = typedArray.getString((R.styleable.CustomIconButton_buttonText));
		textSizeValue = typedArray.getFloat(R.styleable.CustomIconButton_buttonTextSize, TEXT_SIZE_BASE);
		
		textPadding = typedArray.getFloat(R.styleable.CustomIconButton_buttonTextPadding, -1);
		
		initView();
		
		setEnabled(typedArray.getBoolean(R.styleable.CustomIconButton_buttonEnabled, true));
		
//		refreshUIState(STATE_NORMAL);
	}
	/**
	 * dip转换成px值
	 * @author aringbei.
	 * @param context
	 * @param dipValue
	 * @return
	 */
	public int dip2px(Context context, float dipValue) {

		final float scale = context.getResources().getDisplayMetrics().density;

		return (int) (dipValue * scale + 0.5f);
	}
	
	private int textW = 0;
	
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
	}

	private void initView() {
		
		if (textLayout == null) {
			setMinimumWidth(dip2px(mContext, 80));
			
			LayoutInflater layoutInflater = LayoutInflater.from(mContext);
			if (mType == TYPE_LEFT_ICON_VIP || mType == TYPE_RIGTH_ICON_VIP) {
				textLayout = (RelativeLayout) layoutInflater.inflate(R.layout.custom_btn_common_with_icon_vip, null);
			} else {
				textLayout = (RelativeLayout) layoutInflater.inflate(R.layout.custom_btn_common_with_icon, null);
			}
			
			if (mType%2 == 0) {
				textLayout.findViewById(R.id.cust_btn_icon_left).setVisibility(View.GONE);
				icon = (ImageView) textLayout.findViewById(R.id.cust_btn_icon_right);
				icon.setVisibility(View.VISIBLE);
				
				textLayout.findViewById(R.id.cust_btn_text_right).setVisibility(View.GONE);
				buttonText = (TextView) textLayout.findViewById(R.id.cust_btn_text_left);
				buttonText.setVisibility(View.VISIBLE);
				
			} else {
				icon = (ImageView) textLayout.findViewById(R.id.cust_btn_icon_left);
				buttonText = (TextView) textLayout.findViewById(R.id.cust_btn_text_right);
			}
			
			LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
					LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
			addView(textLayout, params);
		}
	}
	
	@Override
	public boolean onTouch(View view, MotionEvent event) {
		if(!isEnabled() || !isClickable()) {
			return false;
		}
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
			refreshUIState(STATE_PRESS);
			break;
		case MotionEvent.ACTION_UP:
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL: 
			refreshUIState(STATE_NORMAL);
			break;
		}
		
		return false;
	}
	
	private void refreshUIState(int state) {
		
		buttonText.setText(textValue);
		
		switch (state) {
		case STATE_NORMAL:
		{
			setClickable(true);
			
			if (buttonText != null) {
//				if (textColorNor != 0)
//					buttonText.setTextColor(textColorNor);				
//				else
//					buttonText.setTextColor(getResources().getColor(R.color.white_1_fafafa));
				
//				buttonText.setTextSize(TypedValue.COMPLEX_UNIT_SP, textSizeValue);
				buttonText.setTextColor(Color.argb(255, 255, 255, 255)); 
			}
			
			if (iconResourceNor != null && icon != null) {
				icon.setBackgroundDrawable(iconResourceNor);
			}
		}
			break;
		case STATE_PRESS:
		{
			if (buttonText != null) {
				if (textColorPress != 0) {
					buttonText.setTextColor(textColorPress);
				}
				
				if(textW ==0){
					textW = buttonText.getWidth();
					buttonText.setMinWidth(textW);
					buttonText.setGravity(Gravity.CENTER_HORIZONTAL);
				}
//				buttonText.setTextSize(TypedValue.COMPLEX_UNIT_SP, textSizeValue - 2);
				buttonText.setTextColor(Color.argb(50, 255, 255, 255));
			}
			
			if (iconResourcePress != null && icon != null) {
				icon.setBackgroundDrawable(iconResourcePress);
			}
		}	
			break;
		case STATE_DISABLED:
		{
			if (buttonText != null) {
//				buttonText.setTextColor(getResources().getColor(R.color.white_2_4cfafafa));
				
//				buttonText.setTextSize(TypedValue.COMPLEX_UNIT_SP, textSizeValue);
				buttonText.setTextColor(Color.argb(125, 255, 255, 255));
			}
			
			if (iconResourceDisabled != null && icon != null) {
				icon.setBackgroundDrawable(iconResourceDisabled);
			}
		}
			break;
		default:
			break;
		}
		
		if (buttonText != null && textPadding != -1) {
			int padding = dip2px(mContext, textPadding);
			// 右icon
			if (mType%2 == 0 && padding != buttonText.getPaddingRight()) {
				buttonText.setPadding(buttonText.getPaddingLeft(), buttonText.getPaddingTop(), padding, buttonText.getPaddingBottom());
			// 左icon
			} else if (padding != buttonText.getPaddingLeft()) {
				buttonText.setPadding(padding, buttonText.getPaddingTop(), buttonText.getPaddingRight(), buttonText.getPaddingBottom());
			}
		}
	}

	@Override
	public void setEnabled(boolean enabled) {
		super.setEnabled(enabled);
		
		if (enabled)
			refreshUIState(STATE_NORMAL);
		else
			refreshUIState(STATE_DISABLED);
	}
	
	/**
	 * 动态设置icon图片
	 * @param resourceId
	 */
	public void setIconResource(int resourceId) {
		iconResourceNor = getResources().getDrawable(resourceId);
		
		refreshUIState(isEnabled()?STATE_NORMAL:STATE_DISABLED);
	}
	
	/**
	 * 动态设置icon按下状态的图片
	 * @param resourceId
	 */
	public void setIconResourcePress(int resourceId) {
		iconResourcePress = getResources().getDrawable(resourceId);
		
		refreshUIState(isEnabled()?STATE_NORMAL:STATE_DISABLED);
	}
	
	/**
	 * 动态设置icon不可用状态的图片
	 * @param resourceId
	 */
	public void setIconResourceDisabled(int resourceId) {
		iconResourceDisabled = getResources().getDrawable(resourceId);
		
		refreshUIState(isEnabled()?STATE_NORMAL:STATE_DISABLED);
	}
	
	/**
	 * 动态设置按钮text
	 * @param text
	 */
	public void setButtonText(String text) {
		textValue = text;
		
		if (buttonText != null) {
			buttonText.setText(textValue);
		}
	}
	
	/**
	 * 设置文本大小。单位：sp
	 * @param size
	 */
	public void setButtonTextSize(float size) {
		this.textSizeValue = size;
		
		refreshUIState(isEnabled()?STATE_NORMAL:STATE_DISABLED);
	}
}
