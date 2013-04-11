package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

public class DeskAssistanceOptimizeResult extends LinearLayout {

	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
		int height = getHeight();
		int width = getWidth();
		if (height != width) {
			setLayoutParams(new RelativeLayout.LayoutParams(height, height));
		}
	}

	public DeskAssistanceOptimizeResult(Context context, AttributeSet attrs) {
		super(context, attrs);

	}

}
