package com.tencent.onesecurity.widget.shortcut;

import android.content.Context;
import android.view.WindowManager;

import com.tencent.onesecurity.widget.WidgetConstant;
import com.tencent.onesecurity.widget.shortcut.ShortcutLayout.ShortcutLinstener;

/**
 * 快捷方式widget展开窗体
 * 
 * @author gordonbi
 * 
 */
public class ShortcutWindowController {

	private Context mContext;

	private boolean mIsAddToWindow;

	private ShortcutLayout mShortcutLayout;

	private WindowManager mWindowManager;
	private WindowManager.LayoutParams shortcutLayoutParams = null;
	private int maxBrightness = 255;

	private ShortcutLinstener mShortcutLinstener = new ShortcutLinstener() {

		@Override
		public void onClose() {
			removeWindow();
		}

		@Override
		public void onBrightnessChanged(int value) {
			
			if(shortcutLayoutParams == null) {
				shortcutLayoutParams = new WindowManager.LayoutParams();
				shortcutLayoutParams.copyFrom(WidgetConstant.mBaseParams);
			}
//			Log.i("QQDOCTOR_TEST", "onBrightnessChanged value is " + value);
			
			if (mShortcutLayout == null) {
				mShortcutLayout = new ShortcutLayout(mContext);
				mShortcutLayout.registShortcutLinstener(mWindowManager, mShortcutLinstener);
				mShortcutLayout.initIcons();
			}
			
			if(isAddToWindow()) {
				WindowManager.LayoutParams lp = new WindowManager.LayoutParams();
				lp.copyFrom(WidgetConstant.mBaseParams);
				lp.screenBrightness = value / (float)maxBrightness;
				mWindowManager.updateViewLayout(mShortcutLayout, lp);
			}
			else {
				mWindowManager.addView(mShortcutLayout, shortcutLayoutParams);
				mIsAddToWindow = true;
			}
		}
	};

	public ShortcutWindowController(Context context) {
		mContext = context;
		mWindowManager = (WindowManager) context
				.getSystemService(Context.WINDOW_SERVICE);
	}

	public void showWindow() {
		if (mShortcutLayout == null) {
			mShortcutLayout = new ShortcutLayout(mContext);
			mShortcutLayout.registShortcutLinstener(mWindowManager, mShortcutLinstener);
		}
		mShortcutLayout.initIcons();
		if (!isAddToWindow()) { 
			if(shortcutLayoutParams == null) {
				shortcutLayoutParams = new WindowManager.LayoutParams();
				shortcutLayoutParams.copyFrom(WidgetConstant.mBaseParams);
			}
			mWindowManager.addView(mShortcutLayout, shortcutLayoutParams);
			mIsAddToWindow = true;
		}

	}

	public void removeWindow() {
		setAddToWindow(false);
		mWindowManager.removeView(mShortcutLayout);
	}

	public boolean isAddToWindow() {
		return mIsAddToWindow;
	}

	public void setAddToWindow(boolean mIsAddToWindow) {
		this.mIsAddToWindow = mIsAddToWindow;
	}

}
