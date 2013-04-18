package com.sandro.util;

import android.app.Dialog;
import android.content.Context;
import android.view.View;

/**
 * 
 * @author sandro
 *
 */
public class CustomDialog extends Dialog {

	public CustomDialog(Context context, int layout, int style) {
		super(context, style);
		setContentView(layout);
	}

	public CustomDialog(Context context, View customView, int style) {
		super(context, style);
		setContentView(customView);
	}
}
