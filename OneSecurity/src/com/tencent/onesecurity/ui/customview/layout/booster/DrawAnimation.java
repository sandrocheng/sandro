package com.tencent.onesecurity.ui.customview.layout.booster;

import java.util.ArrayList;

import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;

public class DrawAnimation {
	public ArrayList<DrawClass> mDrawArray = null;
	private DrawClass mCenterRect = null;
	private int mD;
	
	/**
	 * 不同密度的屏幕适配 由screen_config文件配置
	 * @param d
	 * @param offset_outside
	 * @param offset_inside
	 */
	public DrawAnimation(int d, int offset_outside, int offset_inside) {
		mD = d;
		mDrawArray = new ArrayList<DrawClass>();
		for (int i = 0; i < BoosterAnimationUtil.SECTOR_COUNT; i++) {
			DrawClass dc = new DrawClass();
			dc.init(offset_outside, offset_outside, d - offset_outside, d - offset_outside, i * BoosterAnimationUtil.POINT + 270, BoosterAnimationUtil.POINT - 1);
			dc.setColor(android.R.color.transparent);
			mDrawArray.add(dc);
		}
		
		mCenterRect = new DrawClass();
		mCenterRect.init(offset_inside, offset_inside , d - offset_inside, d - offset_inside, 0, 360);
		mCenterRect.setColor(0x00FFFFFF);
		mCenterRect.mPaints.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));		
	}
	
	public void onDraw(Canvas canvas) {
		canvas.saveLayer(0, 0, mD, mD, null, Canvas.ALL_SAVE_FLAG);
		for (DrawClass dc : mDrawArray) {
			dc.draw(canvas);
		}
		mCenterRect.draw(canvas);
		canvas.restore();
	}	
}
