package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;

/**
 * 管家通用按钮，立体文字
 * 
 * @author junmingluo
 * 
 */
public class ButtonView extends LinearLayout implements OnTouchListener {

	/**
	 * 按钮样式-绿色
	 */
	public static final int TYPE_BUTTON_GREEN = 1;

	/**
	 * 按钮样式-白色
	 */
	public static final int TYPE_BUTTON_WHITE = 2;

	/**
	 * 按钮样式-蓝色
	 */
	public static final int TYPE_BUTTON_BLUE = 3;

	public static final int TYPE_BUTTON_WHITE_FILL_PARENT = 4;

	public static final int TYPE_BUTTON_WHITE_FILL_PARENT_WITH_ARROW = 5;

	/**
	 * 按钮样式-自定义背景
	 */
	public static final int TYPE_BUTTON_CUSTOM = 6;

	/**
	 * 带勾选框的按钮,默认为白色
	 */
	public static final int TYPE_BUTTON_WITH_CHECKBOX = 7;

	public static final int TYPE_BUTTON_GREEN_BLOD = 8;
	public static final int TYPE_BUTTON_WHITE_BLOD = 9;
	public static final int TYPE_BUTTON_CUSTOM_BLOD = 10;

	private Context mContext;

	private TextView mAboveText;
	private TextView mBelowText;
	// private ImageView mButtonContentImg;
	// private ImageView mArrowImage;
	private ImageView mButtonIcon;
	private FrameLayout textLayout;

	/**
	 * 记录按钮样式
	 */
	private int mType;

	/**
	 * 前置字符
	 */
	private TextView mPrepositionAbove;
	private TextView mPrepositionBelow;

	/**
	 * 按钮前段图标，默认为绿色圆点
	 */
	private ImageView mPreImage;

	/**
	 * 按钮右侧图标，默认为展开图标
	 */
	private ImageView mRightImage;

	// /**
	// * 勾选框图标
	// */
	// private ImageView mCheckbox_Image;

	public ButtonView(Context context, int type) {
		super(context);
		setOnTouchListener(this);

		mContext = context;
		mType = type;
		initView(type);
	}

	public ButtonView(Context context, AttributeSet attrs) {
		super(context, attrs);

		setOnTouchListener(this);

		mContext = context;

		TypedArray typedArray = context.obtainStyledAttributes(attrs,
				R.styleable.ButtonView);
		int type = typedArray.getInteger(R.styleable.ButtonView_bvbuttontype,
				TYPE_BUTTON_WHITE);
		String text = typedArray
				.getString((R.styleable.ButtonView_bvbuttontext));
		int textsize = typedArray.getInteger(R.styleable.ButtonView_bvtextsize,
				0);

		mType = type;
		initView(type);

		if (text != null) {
			setText(text);
		}
		if (textsize != 0) {
			setTextSize(textsize);
		}
	}

	/**
	 * dip转换成px值
	 * 
	 * @author aringbei.
	 * @param context
	 * @param dipValue
	 * @return
	 */
	public int dip2px(Context context, float dipValue) {

		final float scale = context.getResources().getDisplayMetrics().density;

		return (int) (dipValue * scale + 0.5f);
	}

	private void initView(int type) {
		setMinimumWidth(dip2px(mContext, 80));

		LayoutInflater layoutInflater = LayoutInflater.from(mContext);
		textLayout = (FrameLayout) layoutInflater.inflate(
				R.layout.framelayout_button_text, null);

		mAboveText = (TextView) textLayout.findViewById(R.id.text_above);
		mBelowText = (TextView) textLayout.findViewById(R.id.text_below);
		mBelowText.setVisibility(View.GONE);
		// mArrowImage = (ImageView) textLayout.findViewById(R.id.arrow_image);
		mRightImage = (ImageView) textLayout.findViewById(R.id.button_image);
		mPrepositionAbove = (TextView) textLayout
				.findViewById(R.id.preposition_above);
		mPrepositionBelow = (TextView) textLayout
				.findViewById(R.id.preposition_below);
		mPreImage = (ImageView) textLayout.findViewById(R.id.pre_image);
		// mCheckbox_Image = (ImageView)
		// textLayout.findViewById(R.id.check_box_image);

		setButtonByType(type);

		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
		addView(textLayout, params);
	}

	/**
	 * 依据type来更改该按钮
	 * 
	 * @param type
	 *            TYPE_BUTTON_GREEN TYPE_BUTTON_WHITE
	 */
	public void setButtonByType(int type) {
		mType = type;
		switch (type) {
		case TYPE_BUTTON_GREEN: {
			setBackgroundResource(R.drawable.sel_btn_common_green_bg);
			mAboveText.setTextColor(getResources().getColor(
					R.color.button_green_abovetext_color));
			mBelowText.setTextColor(getResources().getColor(
					R.color.button_green_belowtext_color));
		}
			break;
		// case TYPE_BUTTON_GREEN_BLOD: {
		// setBackgroundResource(R.drawable.sel_btn_common_green_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_green_abovetext_color));
		// mAboveText.setTypeface(null, Typeface.BOLD);
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_green_belowtext_color));
		// mBelowText.setTypeface(null, Typeface.BOLD);
		// }
		// break;
		// case TYPE_BUTTON_WHITE: {
		// setBackgroundResource(R.drawable.sel_btn_common_write_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_white_abovetext_color));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// }
		// break;
		// case TYPE_BUTTON_WHITE_BLOD: {
		// setBackgroundResource(R.drawable.sel_btn_common_write_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_white_abovetext_color));
		// mAboveText.setTypeface(null, Typeface.BOLD);
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// mBelowText.setTypeface(null, Typeface.BOLD);
		// }
		// break;
		// case TYPE_BUTTON_BLUE: {
		// setBackgroundResource(R.drawable.sel_btn_common_red_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.standar_blue));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// }
		// break;
		// case TYPE_BUTTON_WHITE_FILL_PARENT: {
		// setBackgroundResource(R.drawable.sel_btn_common_white_fillparent_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_white_abovetext_color));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// }
		// break;
		// case TYPE_BUTTON_WHITE_FILL_PARENT_WITH_ARROW: {
		// setBackgroundResource(R.drawable.sel_btn_common_white_fillparent_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_white_abovetext_color));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// mArrowImage.setVisibility(View.VISIBLE);
		// }
		// break;
		// case TYPE_BUTTON_CUSTOM:
		// {
		// setBackgroundResource(R.drawable.button_open_vip_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_green_abovetext_color));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_green_belowtext_color));
		// break;
		// }
		// case TYPE_BUTTON_CUSTOM_BLOD:
		// {
		// setBackgroundResource(R.drawable.button_open_vip_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_green_abovetext_color));
		// mAboveText.setTypeface(null, Typeface.BOLD);
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_green_belowtext_color));
		// mBelowText.setTypeface(null, Typeface.BOLD);
		// break;
		// }
		// case TYPE_BUTTON_WITH_CHECKBOX: {
		// setBackgroundResource(R.drawable.sel_btn_common_write_bg);
		// mAboveText.setTextColor(getResources().getColor(
		// R.color.button_white_abovetext_color));
		// mBelowText.setTextColor(getResources().getColor(
		// R.color.button_white_belowtext_color));
		// mCheckbox_Image.setVisibility(View.VISIBLE);
		// }
		// break;
		}
	}

	/**
	 * 设置按钮是否可点击
	 */
	public void setButtonEnabled(boolean enable) {
		super.setEnabled(enable);
		if (enable) {
			setButtonByType(mType);
		} else {
			setBackgroundResource(R.drawable.btn_special_disable);
			mAboveText.setTextColor(getResources().getColor(
					R.color.button_disable_abovetext_color));
			mBelowText.setTextColor(getResources().getColor(
					R.color.button_disable_belowtext_color));
		}
	}

	// /**
	// * 设置勾选框是否选中
	// * @param isCheck
	// */
	// public void setCheckBoxState(boolean isCheck) {
	// if(isCheck) {
	// mCheckbox_Image.setImageResource(R.drawable.checkbox_focused_2);
	// } else {
	// mCheckbox_Image.setImageResource(R.drawable.checkbox_default_2);
	// }
	// }

	/**
	 * 设置按钮文字
	 * 
	 * @param text
	 */
	public void setText(String text) {
		if (text == null) {
			return;
		}

		mAboveText.setText(text);
		mBelowText.setText(text);
	}

	/**
	 * 设置文字大小,若在xml中配置文字大小 同样适用px为单位
	 * 
	 * @param size
	 *            单位：px
	 */
	public void setTextSize(float size) {
		mAboveText.setTextSize(size);
		mBelowText.setTextSize(size);
	}

	/**
	 * 获得按钮文字
	 * 
	 * @param text
	 */
	public String getText() {
		String mAbove = mAboveText.getText().toString();
		String mBelow = mBelowText.getText().toString();
		if (mAbove != null) {
			return mAbove;
		} else if (mBelow != null) {
			return mBelow;
		} else {
			return "";
		}
	}

	/**
	 * 设置按钮前置文字
	 * 
	 * @param text
	 */
	public void setPreposition(String text) {
		if (text == null) {
			mPrepositionAbove.setVisibility(View.GONE);
			mPrepositionBelow.setVisibility(View.GONE);
		} else {
			mPrepositionAbove.setVisibility(View.VISIBLE);
			mPrepositionBelow.setVisibility(View.VISIBLE);
			mPrepositionAbove.setText(text);
			mPrepositionBelow.setText(text);
		}
	}

	boolean isOutTouch = false;

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		if (!isEnabled() || !isClickable()) {
			return false;
		}
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN: {
			setBackgroundResource(R.drawable.btn_general_pressed);
			mAboveText.setTextColor(getResources().getColor(
					R.color.button_press_abovetext_color));
			mBelowText.setTextColor(getResources().getColor(
					R.color.button_press_belowtext_color));
			isOutTouch = false;
		}
			break;
		case MotionEvent.ACTION_MOVE: {
			final int x = (int) event.getX();
			final int y = (int) event.getY();
			if ((x < 0) || (x >= getWidth()) || (y < 0) || (y >= getHeight())) {
				isOutTouch = true;
			}
		}
			break;
		case MotionEvent.ACTION_UP:
			if (isOutTouch == false) {
				performClick();
			}
		case MotionEvent.ACTION_OUTSIDE:
		case MotionEvent.ACTION_CANCEL: {
			switch (mType) {
			case TYPE_BUTTON_GREEN: {
				setBackgroundResource(R.drawable.btn_special_default);
				mAboveText.setTextColor(getResources().getColor(
						R.color.button_green_abovetext_color));
				mBelowText.setTextColor(getResources().getColor(
						R.color.button_green_belowtext_color));

			}
				break;
			// case TYPE_BUTTON_GREEN_BLOD: {
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_green_abovetext_color));
			// mAboveText.setTypeface(null, Typeface.BOLD);
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_green_belowtext_color));
			// mBelowText.setTypeface(null, Typeface.BOLD);
			// }
			// break;
			// case TYPE_BUTTON_WITH_CHECKBOX:
			// case TYPE_BUTTON_WHITE: {
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_white_abovetext_color));
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_white_belowtext_color));
			// }
			// break;
			// case TYPE_BUTTON_WHITE_BLOD: {
			// setBackgroundResource(R.drawable.sel_btn_common_write_bg);
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_white_abovetext_color));
			// mAboveText.setTypeface(null, Typeface.BOLD);
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_white_belowtext_color));
			// mBelowText.setTypeface(null, Typeface.BOLD);
			// }
			// break;
			// case TYPE_BUTTON_BLUE: {
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.standar_blue));
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_white_belowtext_color));
			// }
			// break;
			// case TYPE_BUTTON_WHITE_FILL_PARENT: {
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_white_abovetext_color));
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_white_belowtext_color));
			// }
			// break;
			// case TYPE_BUTTON_WHITE_FILL_PARENT_WITH_ARROW: {
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_white_abovetext_color));
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_white_belowtext_color));
			// }
			// break;
			//
			// case TYPE_BUTTON_CUSTOM:
			// {
			// setBackgroundResource(R.drawable.button_open_vip_bg);
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_green_abovetext_color));
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_green_belowtext_color));
			// break;
			// }
			// case TYPE_BUTTON_CUSTOM_BLOD:
			// {
			// setBackgroundResource(R.drawable.button_open_vip_bg);
			// mAboveText.setTextColor(getResources().getColor(
			// R.color.button_green_abovetext_color));
			// mAboveText.setTypeface(null, Typeface.BOLD);
			// mBelowText.setTextColor(getResources().getColor(
			// R.color.button_green_belowtext_color));
			// mBelowText.setTypeface(null, Typeface.BOLD);
			// break;
			// }

			}
		}
			break;
		}

		return true;
	}

	/**
	 * 设置按钮的文字前面的icon图标,传null进来是隐藏该icon
	 * 
	 * @param drawable
	 */
	public void setButtonIcon(Drawable drawable) {
		if (mButtonIcon == null) {
			mButtonIcon = new ImageView(mContext);
		}
		if (drawable == null) {
			mButtonIcon.setVisibility(View.GONE);
			this.removeAllViews();
			LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
					LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
			addView(textLayout, params);
		} else {
			this.removeAllViews();
			LinearLayout.LayoutParams buttonParams = new LinearLayout.LayoutParams(
					30, 30);
			buttonParams.gravity = Gravity.LEFT | Gravity.CENTER_VERTICAL;
			buttonParams.leftMargin = 10;
			buttonParams.topMargin = 5;
			buttonParams.bottomMargin = 5;
			addView(mButtonIcon, buttonParams);
			mButtonIcon.setVisibility(View.VISIBLE);
			mButtonIcon.setImageDrawable(drawable);

			LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
					LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT);
			params.leftMargin = 10;
			params.gravity = Gravity.CENTER_VERTICAL;
			addView(textLayout, params);
		}
	}

	/**
	 * 设置按钮右侧图标
	 * 
	 * @param drawable
	 */
	public void setButtonRightImage(int resource) {
		if (resource == 0 || mRightImage == null) {
			return;
		}
		mRightImage.setImageResource(resource);
	}

	/**
	 * 设置按钮右侧图标是否可见
	 * 
	 * @param visible
	 */
	public void setRightImageVisible(boolean visible) {
		if (visible) {
			mRightImage.setVisibility(View.VISIBLE);
		} else {
			mRightImage.setVisibility(View.GONE);
		}
	}

	/**
	 * 设置前端图标是否可见
	 * 
	 * @param visible
	 */
	public void setPreImageVisible(boolean visible) {
		if (visible) {
			mPreImage.setVisibility(View.VISIBLE);
		} else {
			mPreImage.setVisibility(View.GONE);
		}
	}

	/**
	 * @author gordon 重新绘制按钮区域
	 */
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
		int height = getHeight();
		int width = getWidth();
		if (height != width) {
			setLayoutParams(new RelativeLayout.LayoutParams(height, height));
		}

	}
}
