package com.tencent.onesecurity.widget.booster;

import java.util.ArrayList;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager.IBoosterListener;
import com.tencent.onesecurity.model.AppInfoModel;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.widget.LinearLayout;

/**
 * widget唤醒的加速弹出浮窗
 * 
 * @author gordonbi
 * 
 */
public class BoosterLayout extends LinearLayout implements OnKeyListener,
		OnTouchListener {

	private View mMainView;

	private BoosterWindowController.BoosterOperateLinstener mBoosterOperateLinstener;

	private BoosterManageListener mBoosterManageListener;

	private static final int MESSAGE_GET_RUNNING_PROGRESS = 1;
	private static final int MESSAGE_GET_RUNNING_END = 2;

	private static BoosterRunningAppsLayout mBoosterRunningAppsLayout;

	private static ArrayList<AppInfoModel> mModels;

	private static Handler mHandler = new Handler() {

		@Override
		public void handleMessage(Message msg) {
			super.handleMessage(msg);
			switch (msg.what) {
			case MESSAGE_GET_RUNNING_PROGRESS:
				if (mModels == null) {
					mModels = new ArrayList<AppInfoModel>();
				}
				Object obj = msg.obj;
				AppInfoModel appInfoModel = null;
				if (obj != null) {
					appInfoModel = (AppInfoModel) obj;
					mModels.add(appInfoModel);
				}

				break;
			case MESSAGE_GET_RUNNING_END:
				mBoosterRunningAppsLayout.refresh(mModels);
				break;
			default:
				break;
			}
		}
	};

	public BoosterLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public BoosterLayout(
			Context context,
			BoosterWindowController.BoosterOperateLinstener boosterOperateLinstener) {
		super(context);
		mBoosterOperateLinstener = boosterOperateLinstener;
		mMainView = LayoutInflater.from(context).inflate(
				R.layout.appwidget_layout_booster_frame, null);
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(
				LayoutParams.FILL_PARENT, LayoutParams.WRAP_CONTENT);
		mBoosterRunningAppsLayout = (BoosterRunningAppsLayout) mMainView
				.findViewById(R.id.widget_booster_custom_apps);
		addView(mMainView, params);
		setFocusableInTouchMode(true); // 设置后才会响应onKey事件 2013/03/27
		setOnKeyListener(this);
		setOnTouchListener(this);
	}

	public void init() {
		if (mBoosterManageListener == null) {
			mBoosterManageListener = new BoosterManageListener();
		}

		SystemBoosterManager.getInstance().registIBoosterListener(
				mBoosterManageListener);// 加载加速接入层
		SystemBoosterManager.getInstance().showRunningApps(false);
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		return false;
	}

	@Override
	public boolean onKey(View v, int keyCode, KeyEvent event) {
		// 屏蔽Home键
		if (keyCode == KeyEvent.KEYCODE_HOME) {
			return true;
		}
		// 返回键关闭快捷助手
		else if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (mModels != null) {
				mModels.clear();
			}
			if (mBoosterOperateLinstener != null) {
				mBoosterOperateLinstener.onClose();
			}
			return true;
		}
		return false;
	}

	private class BoosterManageListener implements IBoosterListener {

		@Override
		public void notifyGetRunningProcessCount(int countOfAllProcess) {

		}

		@Override
		public void notifyGetRunningProcess(AppInfoModel appInfoModel) {
			if (appInfoModel != null) {
				Message msg = new Message();
				msg.what = MESSAGE_GET_RUNNING_PROGRESS;
				msg.obj = appInfoModel;
				mHandler.sendMessage(msg);
			}
		}

		@Override
		public void notifyGetRunningEnd() {
			Message msg = new Message();
			msg.what = MESSAGE_GET_RUNNING_END;
			mHandler.sendMessage(msg);

		}

		@Override
		public void notifyManageProcess() {

		}

		@Override
		public void notifyCloseEnd(int countOfClosed, long totalRamSizeOfApps) {

		}

		@Override
		public void notifyCloseRunningAppEnd(int countOfClosed,
				long totalRamSizeOfApps) {

		}

		@Override
		public void notifyBoosterEnd() {

		}

	}
}
