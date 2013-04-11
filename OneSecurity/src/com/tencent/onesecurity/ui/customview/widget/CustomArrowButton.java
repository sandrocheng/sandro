package com.tencent.onesecurity.ui.customview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

/**
 * @ClassName: CustomButton  
 * @Description: 自定义按钮
 * @author Joy
 * @date: 2012-11-27 下午3:29:35
 */
public class CustomArrowButton extends LinearLayout implements OnTouchListener {

	/**
	 *  按钮样式-白色
	 */
	public static final int TYPE_BUTTON_WHITE = 1;
	
	private static final int STATE_NORMAL = 1;
	private static final int STATE_PRESS = 2;
	private static final int STATE_DISABLED = 3;
	
	private Context mContext;

	private TextView buttonText;
	private ImageView arrowImg;
	private FrameLayout textLayout;
	
	/**
	 *  记录按钮样式
	 */
	private int mType;
	
	private String textValue;
	private String hintTextValue;
	
	public CustomArrowButton(Context context, int type) {
		super(context);
		setOnTouchListener(this);

		mContext = context;
		mType = type;
		initView();
	}

	public CustomArrowButton(Context context, AttributeSet attrs) {
		super(context, attrs);
		
		setOnTouchListener(this);

		mContext = context;
		
		TypedArray typedArray = context.obtainStyledAttributes(attrs, 
				R.styleable.CustomArrowButton);
		int type = typedArray.getInteger(R.styleable.CustomArrowButton_buttontype,
				TYPE_BUTTON_WHITE);
		
		mType = type;
		
		initView();

		textValue = typedArray.getString((R.styleable.CustomArrowButton_buttontext));
		buttonText.setText(textValue);
		
		hintTextValue = typedArray.getString((R.styleable.CustomArrowButton_buttonHintText));
		buttonText.setHint(hintTextValue);
		
		setEnabled(typedArray.getBoolean(R.styleable.CustomArrowButton_enabled, true));
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
	
	private void initView() {
		
		if (textLayout == null) {
			setMinimumWidth(dip2px(mContext, 80));
			
			LayoutInflater layoutInflater = LayoutInflater.from(mContext);
			textLayout = (FrameLayout) layoutInflater.inflate(R.layout.custom_btn_common_arrow, null);
			buttonText = (TextView) textLayout.findViewById(R.id.cust_btn_text);
			arrowImg = (ImageView) textLayout.findViewById(R.id.cust_btn_arrow);
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
		{
			refreshUIState(STATE_PRESS);
		}
			break;
		case MotionEvent.ACTION_UP:
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL: 
		{
			refreshUIState(STATE_NORMAL);
		}
			break;
		}
		
		return false;
	}
	
	private void refreshUIState(int state) {

		if (mType == TYPE_BUTTON_WHITE) {
			switch (state) {
			case STATE_NORMAL:
			{
				setClickable(true);
				
				textLayout.setBackgroundResource(R.drawable.btn_common_arrow_white_nor);
				buttonText.setTextColor(getResources().getColor(R.color.blue_1_205791));
				buttonText.setHintTextColor(getResources().getColor(R.color.blue_1_205791));
				arrowImg.setBackgroundResource(R.drawable.icon_common_arrows_default);
			}	
				break;
			case STATE_PRESS:
			{
				textLayout.setBackgroundResource(R.drawable.btn_common_arrow_white_press);
				buttonText.setTextColor(getResources().getColor(R.color.white_1_fafafa));
				buttonText.setHintTextColor(getResources().getColor(R.color.white_1_fafafa));
				arrowImg.setBackgroundResource(R.drawable.icon_common_arrows_press);
			}	
				break;
			case STATE_DISABLED:
			{
				setClickable(false);
				
				textLayout.setBackgroundResource(R.drawable.btn_common_arrow_white_disable);
				buttonText.setTextColor(getResources().getColor(R.color.gray_2_b2b2b2));
				arrowImg.setBackgroundResource(R.drawable.icon_common_arrows_disable);
			}
				break;
			default:
				break;
			}
		}
	}
	
	/**
	 * 设置button的text
	 * @param text
	 */
	public void setButtonText(String text) {
		this.textValue = text;
		
		if (buttonText != null) {
			buttonText.setText(textValue);
		}
	}
	
	/**
	 * 获取Button的text值
	 * @return
	 */
	public String getButtonText() {
		if (buttonText == null) {
			return null;
		}
		return buttonText.getText().toString();
	}
	
	/**
	 * 设置text hint
	 * @param hintText
	 */
	public void setButtonTextHint(String hintText) {
		this.hintTextValue = hintText;
		
		if (buttonText != null) {
			buttonText.setHint(hintTextValue);
		}
	}
	
	/**
	 * 获取text hint
	 * @param hintText
	 */
	public String getButtonTextHint() {
		if (buttonText == null) {
			return null;
		}
		return buttonText.getHint().toString();
	}

	/**
	 * 设置按钮是否可用
	 */
	@Override
	public void setEnabled(boolean enabled) {
		super.setEnabled(enabled);
		
		if (enabled)
			refreshUIState(STATE_NORMAL);
		else
			refreshUIState(STATE_DISABLED);
	}
}
