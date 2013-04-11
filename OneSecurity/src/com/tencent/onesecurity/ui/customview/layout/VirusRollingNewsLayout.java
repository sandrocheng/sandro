package com.tencent.onesecurity.ui.customview.layout;

import java.util.ArrayList;
import java.util.Random;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.util.DeviceUtil;

/**
 * @ClassName: VirusADLayout
 * @Description:病毒查杀过程中，滚动广告
 * @author: lee
 * @date: 2013-3-3 下午01:28:21
 */
public class VirusRollingNewsLayout extends LinearLayout implements OnClickListener {

	/** 广告刷新时间 */
	private final long mFlipInterval = 10000L;

	/** 广告内容 */
	private String[] mAdvertArray;

	private ArrayList<String> mAdvertList;

	private Context mContext;

	private ViewFlipper mViewFilipper;

	/** 动画是否进行中 */
	private boolean isAinmationOn = false;

	private Handler mHandler;

	private final int FLIP_MSG = 1;
	private boolean mRunning = false;
	private boolean mStarted = false;

	public VirusRollingNewsLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		this.mContext = context;
	}

	public VirusRollingNewsLayout(Context context) {
		super(context);
		this.mContext = context;
	}

	/**
	 * 初始化View
	 */
	private void init() {
		if (mViewFilipper == null) {

			LayoutInflater layoutInflater = LayoutInflater.from(mContext);
			mViewFilipper = (ViewFlipper) layoutInflater.inflate(R.layout.layout_virus_ad, null);

			mAdvertArray = mContext.getResources().getStringArray(R.array.virus_advert);

			mAdvertList = new ArrayList<String>(mAdvertArray.length);
			addView(mViewFilipper);

			setOnClickListener(this);
			
			// 随即获取一条记录
			ImageView iconTop = (ImageView) mViewFilipper.findViewById(R.id.virus_advert_icon_up);
			ImageView iconBottom = (ImageView) mViewFilipper.findViewById(R.id.virus_advert_icon_down);

			TextView contentTop = (TextView) mViewFilipper.findViewById(R.id.virus_advert_content);
			TextView contentBottom = (TextView) mViewFilipper.findViewById(R.id.virus_advert_content_down);

			// 初始化显示内容
			String[] up = getRandomAdvert();
			contentTop.setText(up[0]);

			String[] down = getRandomAdvert();
			contentBottom.setText(down[0]);
			// 设置显示图标
			setRollingIconByType(up[1], iconTop);
			setRollingIconByType(down[1], iconBottom);

		}

	}

	/**
	 * 加載广告内容
	 */
	private void initAdvertContent() {
		if (mAdvertArray == null)
			return;
		for (int i = 0, length = mAdvertArray.length; i < length; i++) {
			mAdvertList.add(mAdvertArray[i]);
		}
	}

	/**
	 * 随即获取一条新闻，显示后移除
	 * 
	 * @return
	 */
	private String[] getRandomAdvert() {

		if (mAdvertList.isEmpty()) {
			initAdvertContent();
		}

		int index = new Random().nextInt(mAdvertList.size());
		String listString = mAdvertList.get(index);
		String[] advert = listString.split("#");

		mAdvertList.remove(index);
		return advert;
	}

	/**
	 * 设置动画过程中的Icon
	 * 
	 * @param text
	 * @param imageView
	 */
	private void setAnimaRollIcon(String text, ImageView imageView) {
		if (mAdvertArray == null)
			return;
		for (int i = 0; i < mAdvertArray.length; i++) {
			String listString = mAdvertArray[i];
			String[] advert = listString.split("#");
			if (text.equals(advert[0])) {
				setRollingIconByType(advert[1], imageView);
				break;
			}

		}
	}

	/**
	 * 根据类型 0 普通 1病毒 设置Icon
	 * 
	 * @param type
	 * @param view
	 */
	private void setRollingIconByType(String type, ImageView view) {
		if (type.equals("0")) {
			view.setImageResource(R.drawable.icon_virus_advert_light);
		} else {
			view.setImageResource(R.drawable.icon_virus_advert_worm);
		}
	}

	/**
	 * 初始化handler
	 */
	public void initHandler() {
		init();
		mHandler = new UpdateHandler();
	}

	/**
	 * 是否是低分辨率
	 * 
	 * @return
	 */
	public boolean isLowDensity() {
		return DeviceUtil.isLowDensity();
	}

	@Override
	public void onClick(View v) {
		if (!isAinmationOn && mHandler != null) {
			// 停掉当前消息，重新开始
			mHandler.removeMessages(FLIP_MSG);
			Message msg = mHandler.obtainMessage(FLIP_MSG);
			mHandler.sendMessage(msg);
		}
	}

	/**
	 * 显示下一条
	 */
	private void showNext() {

		final LinearLayout currentView = (LinearLayout) mViewFilipper.getCurrentView();
		mViewFilipper.showNext();// 显示下一页
		Animation outAnimation = mViewFilipper.getOutAnimation();
		outAnimation.setAnimationListener(new AnimationListener() {
			@Override
			public void onAnimationStart(Animation animation) {
				isAinmationOn = true;
			}

			@Override
			public void onAnimationRepeat(Animation animation) {
			}

			@Override
			public void onAnimationEnd(Animation animation) {
				TextView tv = (TextView) currentView.getChildAt(1);
				String text = getRandomAdvert()[0];
				tv.setText(text);
				setAnimaRollIcon(text, (ImageView) currentView.getChildAt(0));
				isAinmationOn = false;
			}
		});
	}

	/**
	 * 开始播报
	 */
	public void startFlipping() {
		mStarted = true;
		updateRunning(false);
	}

	/**
	 * 停止播报
	 */
	public void stopFlipping() {
		mStarted = false;
		updateRunning(false);
		mViewFilipper.clearAnimation();
	}

	/**
	 * 循环播报
	 */
	private void updateRunning(boolean flipNow) {
		boolean running = mStarted;
		if (running != mRunning) {
			if (running) {
				// showOnly();
				Message msg = mHandler.obtainMessage(FLIP_MSG);
				mHandler.sendMessageDelayed(msg, mFlipInterval);
			} else {
				mHandler.removeMessages(FLIP_MSG);
			}
			mRunning = running;
		}
	}

	private class UpdateHandler extends Handler {
		@Override
		public void handleMessage(Message msg) {
			if (msg.what == FLIP_MSG) {
				if (mRunning) {
					showNext();
					msg = obtainMessage(FLIP_MSG);
					sendMessageDelayed(msg, mFlipInterval);
				}
			}
		}
	}

}
