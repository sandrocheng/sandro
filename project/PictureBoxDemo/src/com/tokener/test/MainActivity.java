package com.tokener.test;

import java.util.ArrayList;
import java.util.List;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.view.Menu;
import android.view.MenuItem;

import com.tokener.picturebox.AnimationDatas;
import com.tokener.picturebox.EndCallBack;
import com.tokener.picturebox.PicturePlayerViewGroup;
import com.tokener.picturebox.R;

/**
 * @author jackzong
 * @time 2014/5/8
 * @version 1.0
 * @content ≤‚ ‘”√activity
 */
@SuppressLint("HandlerLeak")
public class MainActivity extends Activity {

	private PicturePlayerViewGroup temp;

	private List<Bitmap> list;

	private static int[] pictures = { R.drawable.a, R.drawable.b, R.drawable.c,
			R.drawable.d, R.drawable.e, R.drawable.f };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		long startTime1 = System.nanoTime();
		setContentView(R.layout.activity_main);
		temp = (PicturePlayerViewGroup) findViewById(R.id.temp);
		long duration = System.nanoTime() - startTime1;
		System.out.println("duration:" + ((double) duration)
				/ (double) (1000000000));
		list = new ArrayList<Bitmap>();
		// long startTime = System.nanoTime();
		Resources resources = getResources();
		for (int i = 0; i < pictures.length; i++) {
			Bitmap bitmap = BitmapFactory
					.decodeResource(resources, pictures[i]);
			list.add(bitmap);
		}
		count = list.size();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		menu.add(0, 2014, 0, "ø™ º");
		return true;
	}

	private int index = 0;

	private int count;

	private int type = AnimationDatas.TYPE_ROTATION_SELF;

	@Override
	public boolean onOptionsItemSelected(MenuItem item) {

		switch (item.getItemId()) {
		case 2014:
			mHandler.removeMessages(100);
			mHandler.sendMessage(mHandler.obtainMessage(100));
			break;
		}
		return super.onOptionsItemSelected(item);
	}

	private Handler mHandler = new Handler() {
		public void handleMessage(android.os.Message msg) {
			if (type == AnimationDatas.TYPE_ROTATION_SELF) {
				type = AnimationDatas.ANIMATION_DURATION_TWOPIC;
			} else {
				type = AnimationDatas.TYPE_ROTATION_SELF;
			}
			if (index == (count - 1)) {
				temp.startPlay(list.get(index), list.get(0), type,
						new EndCallBack() {

							@Override
							public void AnimationEnd() {
								mHandler.sendMessageDelayed(
										mHandler.obtainMessage(100), 3000);
							}
						});
				index = 0;
			} else {
				temp.startPlay(list.get(index), list.get(++index), type,
						new EndCallBack() {

							@Override
							public void AnimationEnd() {
								mHandler.sendMessageDelayed(
										mHandler.obtainMessage(100), 3000);
							}
						});
			}
		};
	};

}
