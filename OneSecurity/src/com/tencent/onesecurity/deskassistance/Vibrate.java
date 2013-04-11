package com.tencent.onesecurity.deskassistance;

import android.content.Context;
import android.os.Vibrator;

public class Vibrate {
	Vibrator vibrator;
	long[] pattern = { 0, 30, 0, 10 };

	public Vibrate(Context context) {
		vibrator = (Vibrator) context.getSystemService(Context.VIBRATOR_SERVICE);
	}

	// -1不重复，非-1为从pattern的指定下标开始重复
	public void playVibrate(int type) {
		vibrator.vibrate(pattern, type);
	}

	public void Stop() {
		vibrator.cancel();
	}
};
