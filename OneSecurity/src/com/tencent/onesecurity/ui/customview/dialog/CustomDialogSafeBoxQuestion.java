package com.tencent.onesecurity.ui.customview.dialog;

import android.app.Dialog;
import android.content.Context;
import android.view.View;

/**
* @ClassName: CustomDialogSafeBoxQuestion
* @Description:TODO(专为私密空间密码问题列表而设的对话框类,合并的事再说)
* @author: Buck
* @date: 2012-11-28 下午2:41:50
*
*/
public class CustomDialogSafeBoxQuestion extends Dialog {

	public CustomDialogSafeBoxQuestion(Context context, int layout, int style) {
		super(context, style);
		setContentView(layout);
	}

	public CustomDialogSafeBoxQuestion(Context context, View customView, int style) {
		super(context, style);
		setContentView(customView);
	}
}
