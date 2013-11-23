package com.tencent.livebackground;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.OvershootInterpolator;

import com.tencent.livebackground.animation.ProgressAnimation;
import com.tencent.livebackground.customview.ProgressView;

public class MainActivity extends Activity {
	private float angle = 0;
	ProgressView progressView;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
//		progressView = (ProgressView)this.findViewById(R.id.progressView1);
//		progressView.setOnClickListener(new OnClickListener() {
//
//			@Override
//			public void onClick(View v) {
//				// TODO Auto-generated method stub
//				ProgressAnimation anima = new ProgressAnimation(0, 1f);
//				anima.setInterpolator(new OvershootInterpolator(3));
//				anima.setDuration(500);
//				progressView.startAnimation(anima);
//			}
//			
//		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);

		return true;
	}

}
