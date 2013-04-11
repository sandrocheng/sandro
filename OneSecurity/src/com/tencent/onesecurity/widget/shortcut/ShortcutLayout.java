package com.tencent.onesecurity.widget.shortcut;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.widget.shortcut.ShortcutScreenBrightnessLayout.BrightnessChangeLinstener;

/**
 * 快捷方式展开页面
 * 
 * @author gordonbi
 * 
 */
public class ShortcutLayout extends LinearLayout implements OnKeyListener,
		OnTouchListener {

	private View mMainView;

	private ImageView mSettingIV;

	private ShortcutLinstener mShortcutLinstener;
	private BrightChangeeLinstener mBCListener = new BrightChangeeLinstener();
	private WindowManager mWindowManager;
	private ShortcutIconsLayout iconsLayout; 

	public ShortcutLayout(Context context, AttributeSet attrs) {
		super(context, attrs);

	}

	public ShortcutLayout(Context context) {
		super(context);
		mMainView = LayoutInflater.from(context).inflate(
				R.layout.appwidget_layout_shortcut_frame, null);
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		mSettingIV = (ImageView) mMainView
				.findViewById(R.id.widget_shortcut_setting);
		mSettingIV.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
//				if (mShortcutLinstener != null) {
//					mShortcutLinstener.onClose();
//				}
				if (iconsLayout != null)
					iconsLayout.notifyEditStateChanged();
			}
		});
		addView(mMainView, params);
		setFocusableInTouchMode(true); // 设置后才会响应onKey事件 2013/03/27
		setOnKeyListener(this);
		setOnTouchListener(this);
		
		//TODO 每次页面显示时,重新初始化icons页面   ps:将 下面3行代码 移动至相应的位置
//		initIcons();
	}
	
	public void initIcons(){
		iconsLayout = (ShortcutIconsLayout) mMainView
				.findViewById(R.id.appwidget_layout_shortcut_icons);
		iconsLayout.init();	
		
		ShortcutScreenBrightnessLayout brightnessLayout = (ShortcutScreenBrightnessLayout) mMainView.findViewById(R.id.widget_shortcut_brightness_layout);
		brightnessLayout.initView();
		brightnessLayout.registerBrightnessChangeLinstener(mBCListener);
		
		ShortcutVibrateLayout soundLayout = (ShortcutVibrateLayout) mMainView.findViewById(R.id.widget_shortcut_sound_layout);
		soundLayout.initView();
	}

	public interface ShortcutLinstener {
		void onClose();
		void onBrightnessChanged(int value);
	}

	public void registShortcutLinstener(WindowManager mManager, ShortcutLinstener shortcutLinstener) {
		mShortcutLinstener = shortcutLinstener;
		mWindowManager = mManager;
	}

	@Override
	public void onWindowFocusChanged(boolean hasWindowFocus) {
		super.onWindowFocusChanged(hasWindowFocus);
		if (!hasWindowFocus) {
			if (mShortcutLinstener != null) {
				mShortcutLinstener.onClose();
			}
		}
	}
	
	private class BrightChangeeLinstener implements BrightnessChangeLinstener {
		@Override
		public void onBrightnessChanged(int value) {
			mShortcutLinstener.onBrightnessChanged(value);
		}
	}
	

	@Override
	public boolean onKey(View v, int keyCode, KeyEvent event) {
		// 屏蔽Home键
		if (keyCode == KeyEvent.KEYCODE_HOME) {
			return true;
		}
		// 返回键关闭快捷助手
		else if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (mShortcutLinstener != null) {
				mShortcutLinstener.onClose();
			}
			
			return true;
		}
		return false;
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		return false;
	}

}
