/**
 * FileName: VaultComponentMoveCarton.java
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Gordon Bi
 * @version V1.3
 * Createdate: 2012-11-21 下午3:41:09
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-21 One Security
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.ui.customview.customanimation;

import android.util.Log;
import android.view.View;
import android.widget.ImageView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine;
import com.tencent.onesecurity.ui.activity.commonComponent.CartonEngine.CartonCallBackLisener;
import com.tencent.onesecurity.util.DeviceUtil;

/**
 * @ClassName: VaultComponentMoveCarton
 * @Description:TODO
 * @author: Gordon Bi
 * @date: 2012-11-21 下午3:41:09
 * 
 */
public class VaultComponentMoveCarton implements CartonCallBackLisener {

	private final static int circleTime = 1;// 25ms回调一次

//	private final static int moveCount = 40;

	private CartonEngine cartonEngine;

	private ImageView im;

	private byte direction;

	private int right;

	private int left;

	private int top;

	private int buttom;

	private int alpha = 250;

	private int circleCentreX;
	private int circleCentreY;

	private int targetX;

	private float xMinus = 0.0f;
	private int yMinus;

	private int alphaMinus;

	private int targetY;

	private int radius;

	private int couter;

	private VaultComponentCartonLisener lisener;

	private static final byte RIGHT_DIRECTION = 0;

	private static final byte LEFT_DIRECTION = 1;

	/**
	 * 
	 * @param im
	 *            icon
	 * @param direction
	 *            方向
	 * @param yBoundary Y轴移动的边界
	 * @param xBoundary X轴移动的边界
	 * @param frameRadius
	 * @param cartonEngine
	 */
	public VaultComponentMoveCarton(ImageView im, byte direction,
			int yBoundary, int xBoundary,
			CartonEngine cartonEngine) {
		this.im = im;
		this.direction = direction;
		this.cartonEngine = cartonEngine;
		right = im.getRight();
		left = im.getLeft();
		top = im.getTop();
		buttom = im.getBottom();
		radius = (right - left) / 2;
		circleCentreX = right - radius;
		circleCentreY = buttom - radius;
		targetY = yBoundary;// 期望到达的边界Y坐标,(超过边界后沿直线运行)
		targetX = xBoundary;
//		xMinus = direction == RIGHT_DIRECTION ? getCommonDifference(targetX,
//				circleCentreX, moveCount) : getCommonDifference(circleCentreX,
//				targetX, moveCount);
//		yMinus = (circleCentreY - targetY) / (moveCount - 1);
		alphaMinus = 10;
		Log.d("VaultComponentMoveCarton",
				"height :" + DeviceUtil.getScreenHeight());

		Log.d("VaultComponentMoveCarton", "circleCentreX :" + circleCentreX);
		Log.d("VaultComponentMoveCarton", "circleCentreY :" + circleCentreY);
		Log.d("VaultComponentMoveCarton", "targetX :" + targetX);
		Log.d("VaultComponentMoveCarton", "targetY :" + targetY);

		im.setVisibility(View.VISIBLE);
		yMinus = 0;
		
		if (direction == RIGHT_DIRECTION) {
			xMinus =  MainApplication.mContext.getResources().getInteger(R.integer.main_valut_x_minus);
		} else {
			xMinus = - MainApplication.mContext.getResources().getInteger(R.integer.main_valut_x_minus);
		}

	}

	@Override
	public int getCircleMultiple() {
		return circleTime;
	}

	@Override
	public boolean isPause() {
		return false;
	}

	@Override
	public void onTime() {
		couter++;
		if (direction == LEFT_DIRECTION && couter <= 4) {
			return;
		}
		if (top <= targetY) {
			remove(cartonEngine);
			if (lisener != null) {
				lisener.onCartonEnd();
			}
			return;
		}
		if (direction == RIGHT_DIRECTION) {// 右移
			xMinus--;
			xMinus = xMinus < 0 ? 0 : xMinus;
		} else {// 左移
			xMinus++;
			xMinus = xMinus > 0 ? 0 : xMinus;
		}

		yMinus -= 1;
		left += xMinus;
		right += xMinus;
		top += yMinus;
		buttom += yMinus;
		if (alpha > 100) {
			alpha -= alphaMinus;
		}
		this.im.layout(left, top, right, buttom);
		this.im.setAlpha(alpha);

	}

	public void addLisener(VaultComponentCartonLisener lisener) {
		this.lisener = lisener;
	}

	public void removeLisener() {
		this.lisener = null;
	}

//	private float getCommonDifference(int an, int a1, int n) {
//		return (an - a1) / (n - 1);
//	}

	public void remove(CartonEngine cartonEngine) {
		cartonEngine.requestRemove(this);
	}

	/**
	 * 
	 * @ClassName: VaultComponentCartonLisener
	 * @Description:私密icon动画监听器
	 * 
	 */
	public interface VaultComponentCartonLisener {
		public void onCartonEnd();
	}

}
