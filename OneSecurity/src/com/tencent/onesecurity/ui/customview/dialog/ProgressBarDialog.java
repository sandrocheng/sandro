package com.tencent.onesecurity.ui.customview.dialog;

import com.tencent.onesecurity.R;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;

/**
 * @ClassName: ProgressBarDialog
 * @Description:假进度条 80%停止,1S走 5%
 * @author: lee
 * @date: 2013-3-28 下午05:42:18
 */
public class ProgressBarDialog extends ProgressDialog {

	private ProgressBar mProgressBar;

	private android.view.View.OnClickListener mOnClickListener;

	private final int INCREMENT_MSG = 1;

	private boolean mRunning = false;

	private boolean mStarted = false;

	private int mProgress;

	
	// 自动增长进度
	private Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case INCREMENT_MSG:
				if (mRunning) {
					mProgress += 5 ;
					setUpdateProgress(mProgress);
					msg = obtainMessage(INCREMENT_MSG);
					sendMessageDelayed(msg, 800);
				}
				break;

			default:
				break;
			}
			super.handleMessage(msg);
		}

	};

	public void startIncrement() {
		mStarted = true;
		updateRunning();
	}

	public void stopIncrement() {
		mStarted = false;
		updateRunning();
		mProgress = 0 ;
	}

	private void updateRunning() {

		boolean running = mStarted;

		if (running != mRunning) {
			if (running) {
				setUpdateProgress(mProgress);
				Message msg = mHandler.obtainMessage(INCREMENT_MSG);
				mHandler.sendMessageDelayed(msg, 800);
			} else {
				mHandler.removeMessages(INCREMENT_MSG);
			}
			mRunning = running;
		}
	}

	public ProgressBarDialog(Context context, int theme) {
		super(context, theme);
	}

	public ProgressBarDialog(Context context) {
		super(context);
	}

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.custom_dialog_progress_bar);
		mProgressBar = (ProgressBar) findViewById(R.id.tv_progressbar);
		findViewById(R.id.BtnLayout).setOnClickListener(mOnClickListener);
	}

	public void setUpdateProgress(int progress) {
		if(mProgressBar == null) return ;
		
		if(mProgress > 80){
			stopIncrement() ;
		}
		if (mProgressBar.getProgress() < progress) {
			mProgressBar.setProgress(progress);
		}
	}

	public void initOnClickListener(android.view.View.OnClickListener mOnClickListener) {
		this.mOnClickListener = mOnClickListener;
	}
}
