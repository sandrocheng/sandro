package com.tencent.onesecurity.deskassistance;

public interface OnRocketMoveListener {
	void onStandUp();
	void onMove();
	boolean onPutDown();
	void onAnimationDone();
}
