package com.tencent.onesecurity.widget.booster;

import android.content.Context;
import android.view.WindowManager;

import com.tencent.onesecurity.widget.WidgetConstant;

/**
 * 加速窗体控制
 * 
 * @author gordonbi
 * 
 */
public class BoosterWindowController {

	private Context mContext;

	private boolean mIsAddToWindow;

	private BoosterLayout mBoosterLayout;

	private WindowManager mWindowManager;

	private WindowManager.LayoutParams mBoosterLayoutParams = null;
	
	private BoosterOperateLinstener mbBoosterOperatorLinstener = new BoosterOperateLinstener() {

		@Override
		public void onClose() {
			if (isAddToWindow()) {
				removeWindow();
			}
		}

	};

	public BoosterWindowController(Context context) {
		mContext = context;
		mWindowManager = (WindowManager) context
				.getSystemService(Context.WINDOW_SERVICE);
	}

	public void showWindow() {
		if (mBoosterLayout == null) {
			mBoosterLayout = new BoosterLayout(mContext,
					mbBoosterOperatorLinstener);
		}
		if (!isAddToWindow()) {
			if (mBoosterLayoutParams == null) {
				mBoosterLayoutParams = new WindowManager.LayoutParams();
				mBoosterLayoutParams.copyFrom(WidgetConstant.mBaseParams);
			}
			mWindowManager.addView(mBoosterLayout, mBoosterLayoutParams);
			mBoosterLayout.init();
			mIsAddToWindow = true;
		}
	}

	public void removeWindow() {
		if (isAddToWindow()) {
			mWindowManager.removeView(mBoosterLayout);
			mIsAddToWindow = false;
		}
	}

	public boolean isAddToWindow() {
		return mIsAddToWindow;
	}

	public void setAddToWindow(boolean mIsAddToWindow) {
		this.mIsAddToWindow = mIsAddToWindow;
	}

	public interface BoosterOperateLinstener {
		void onClose();
	}
}
