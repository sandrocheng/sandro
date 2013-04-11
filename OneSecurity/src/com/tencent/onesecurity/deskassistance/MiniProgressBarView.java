package com.tencent.onesecurity.deskassistance;



import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;

import com.tencent.onesecurity.R;

/**
 *  小型进度条
 * @author junmingluo
 *
 */
public class MiniProgressBarView extends LinearLayout{
	
	/**
	 *  进度条
	 */
	private MiniProgressBar mProgressBar;
	
	/**
	 *  进度条动画监听器
	 */
	private onAnimationFinishListener mOnAnimationFinishListener;
	
	/**
	 *  当前进度
	 */
	private int mCurrentProgress;
	
	/**
	 *  目标进度
	 */
	private int mTargetProgress;
	
	public static abstract class onAnimationFinishListener {
		public abstract void onAnimationFinish();
	}
	
	public MiniProgressBarView(Context context) {
		super(context);
		initView(context);
	}

	public MiniProgressBarView(Context context, AttributeSet attrs) {
		super(context, attrs);
		initView(context);
	}
	
	/**
	 *  实现进度的动画效果
	 */
	private static final int MSG_PROGRESS_ANIM = 0x01;
	
	private Handler mHandler = new Handler() {
		@Override
		public void handleMessage(android.os.Message msg) {
			synchronized (MiniProgressBarView.this) {
				switch(msg.what) {
				case MSG_PROGRESS_ANIM:
					int progress = mCurrentProgress;
					if(mTargetProgress == progress) {
						if(mOnAnimationFinishListener != null) {
							mOnAnimationFinishListener.onAnimationFinish();
						}
						return;
					} else if(mTargetProgress > progress) {
						progress += 2;
						if(progress > mTargetProgress) {
							progress = mTargetProgress;
						}
					} else {
						progress -= 2;
						if(progress < 0) {
							progress = 0;
						}
					}
					
					setProgress(progress);
					mHandler.sendEmptyMessage(MSG_PROGRESS_ANIM);
					
					break;
				}
			}
		}
	};

	/**
	 *  初始化进度条
	 * @param context
	 */
	private void initView(Context context) {
		
		LayoutInflater layoutInflater = LayoutInflater.from(context);
		
		View view = layoutInflater.inflate(R.layout.layout_progressbar_mini, null);
		LayoutParams params = new LayoutParams(LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		addView(view, params);
		
		mProgressBar = (MiniProgressBar)findViewById(R.id.progress_bar);
	}
	
	/**
	 *  设置进度
	 * @param progress
	 */
	public synchronized void setProgress(int progress) {
		if (mProgressBar == null) {
			return;
		}
		if(progress < 0) {
			progress = 0;
		}
		mProgressBar.setProgress(progress);
		mCurrentProgress = progress;
	}
	
	/**
	 *  设置进度，带动画
	 * @param progress
	 * @param listener
	 */
	public synchronized void setProgressWithAnim(int progress, onAnimationFinishListener listener) {
		mTargetProgress = progress;
		mOnAnimationFinishListener = listener;
		mHandler.sendEmptyMessage(MSG_PROGRESS_ANIM);
	}
	
	public synchronized void setProgressWithAnim(int progress) {
		mTargetProgress = progress;
		mHandler.sendEmptyMessage(MSG_PROGRESS_ANIM);
	}
}
