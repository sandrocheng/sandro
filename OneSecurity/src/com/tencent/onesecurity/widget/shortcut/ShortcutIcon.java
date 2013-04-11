package com.tencent.onesecurity.widget.shortcut;

import com.tencent.onesecurity.R;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * widget快捷图标
 * 
 * @author joy
 */
public class ShortcutIcon extends LinearLayout implements OnTouchListener {

	private Drawable icon_on;
	private Drawable icon_off;
	private Drawable icon_press;
	private String iconText1;
	private String iconText2;

	private ImageView iconView;
	private TextView textView1;
	private TextView textView2;

	private boolean switchOn;

	private LinearLayout mainView;
	private Context mContext;

	private Drawable bgDrawable;

	public ShortcutIcon(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;

		mainView = (LinearLayout) LayoutInflater.from(context).inflate(
				R.layout.appwidget_layout_icon_item, null);
		iconView = (ImageView) mainView.findViewById(R.id.w_img);
		textView1 = (TextView) mainView.findViewById(R.id.w_txt1);
		textView2 = (TextView) mainView.findViewById(R.id.w_txt2);

		TypedArray typedArray = context.obtainStyledAttributes(attrs,
				R.styleable.ShortcutIcon);

		icon_on = typedArray.getDrawable(R.styleable.ShortcutIcon_icon_src_on);
		icon_off = typedArray
				.getDrawable(R.styleable.ShortcutIcon_icon_src_off);
		icon_press = typedArray
				.getDrawable(R.styleable.ShortcutIcon_icon_src_press);
		iconText1 = typedArray.getString(R.styleable.ShortcutIcon_icon_text1);
		iconText2 = typedArray.getString(R.styleable.ShortcutIcon_icon_text2);

		bgDrawable = mContext.getResources().getDrawable(
				R.drawable.img_widget_shortcut_icon_bg);

		WindowManager wm = (WindowManager) mContext
				.getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics metrics = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(metrics);

		int width = metrics.widthPixels - (int) (metrics.density * 1f + 0.5f)
				* 2;
		int sigW = (width - 5 * 6) / 4;

		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.FILL_PARENT);
		params.width = sigW;
		params.height = bgDrawable.getMinimumHeight();
		params.leftMargin = 6;
		params.topMargin = 6;

		addView(mainView, params);

		textView1.setText(iconText1);
		textView2.setText(iconText2);

		refreshIcon();

		this.setClickable(true);
	}

	public void setEditable(boolean editable) {
		if (editable) {
			mainView.setBackgroundDrawable(bgDrawable);
		} else {
			mainView.setBackgroundDrawable(null);
		}
	}

	public void notifyStateChanged(boolean switchOn) {
		this.switchOn = switchOn;
		refreshIcon();
	}

	public boolean isSwitchOn() {
		return switchOn;
	}

	private void refreshIcon() {
		if (switchOn) {
			iconView.setImageDrawable(icon_on);
			textView1.setTextColor(mContext.getResources().getColor(
					R.color.widget_blue));
			textView2.setTextColor(mContext.getResources().getColor(
					R.color.widget_blue));
		} else {
			iconView.setImageDrawable(icon_off);
			textView1.setTextColor(mContext.getResources().getColor(
					R.color.gray_4_666666));
			textView2.setTextColor(mContext.getResources().getColor(
					R.color.gray_4_666666));
		}
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
			iconView.setImageDrawable(icon_press);
			textView1.setTextColor(mContext.getResources().getColor(
					R.color.black));
			textView2.setTextColor(mContext.getResources().getColor(
					R.color.black));
			break;
		case MotionEvent.ACTION_CANCEL:
		case MotionEvent.ACTION_UP:
			switchOn = !switchOn;
			refreshIcon();
			break;
		default:
			break;
		}
		return false;
	}

	public String getIconText() {
		return iconText1!=null?iconText1:"" + " " + iconText2!=null?iconText2:"";
	}
}
