package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;

/**
 * 
* @ClassName: XferModeActivity
* @Description:PorterDuffXfermode实现一个遮罩层
* @author: Sandro
* @date: 2012-11-19 上午11:23:21
*
 */
public class XferModeActivity extends Activity{

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);  
		super.setContentView(R.layout.xfermode_lay);
	}

}
