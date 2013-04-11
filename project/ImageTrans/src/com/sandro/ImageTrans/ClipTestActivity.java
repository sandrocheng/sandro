package com.sandro.ImageTrans;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;

import com.sandro.custom.widget.ClipView;
import com.sandro.util.CartonEngine;

/**
 * 
* @ClassName: ClipTestActivity
* @Description:clip例子
* @author: Sandro
* @date: 2012-11-20 下午08:35:36
*
 */
public class ClipTestActivity extends Activity implements OnClickListener{

	private CartonEngine engine;
	
	private ClipView cartonView;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);  
		super.setContentView(R.layout.clip_test_layout);
		cartonView = (ClipView)this.findViewById(R.id.cartonView);
		engine = new CartonEngine();
		engine.addListener(cartonView);
		this.findViewById(R.id.btn_change).setOnClickListener(this);
		
	}

	@Override
	protected void onDestroy() {
		engine.requestRemove(cartonView);
		super.onDestroy();
	}

	@Override
	public void onClick(View arg0) {
		cartonView.change();
	}

}
