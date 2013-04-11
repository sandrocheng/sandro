package com.tencent.onesecurity.deskassistance;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.LinearLayout;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.deskassistance.ExpandedOptimizeWindow.onOptimizeFinishListener;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.qq.ActionStatsManager;
import com.tencent.onesecurity.usage.qq.EModelID;
import com.tencent.onesecurity.util.PhoneInfoUtil;

/**
 * 悬浮窗口 
 * @Description:
 * 
 */
public class DeskAssistanceExpandedWindow extends LinearLayout implements
		OnItemSelectedListener, OnTouchListener, OnKeyListener, OnClickListener {

	/**
	 * 桌面快捷助手框架的背景
	 */
	private LinearLayout mFrameWindowBackGround;

	/**
	 * logo按钮
	 */
//	private ImageButton mLogoButton;

	/**
	 * 设置按钮
	 */
	// private ImageButton mSettingButton;

	private onOptimizeFinishListener mOnOptimizeFinishListener;

	private int m_currentRamUsage = 0;

	private boolean isExpanedOptimizeWindowShowing() {
		return isShown() && isOptimizeWindowShowing();
	}

	private boolean isOptimizeWindowShowing() {
		boolean ret = false;
		if(mExpandedOptimizeWindow == null){
			ret = false;
		}else{
			ret = hasAddToWindow();
		}
		return ret;
	}

	public void updateOptimizeWindowRamUsage(int ramUsage) {
		m_currentRamUsage = ramUsage;
		if (!isExpanedOptimizeWindowShowing()
				|| mExpandedOptimizeWindow == null)
			return;
		mExpandedOptimizeWindow.updateOptimizeWindowRamUsage(ramUsage);
	}

	public DeskAssistanceExpandedWindow(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public DeskAssistanceExpandedWindow(Context context,
			onOptimizeFinishListener listener) {
		super(context);
		mScreenWidth = PhoneInfoUtil.getScreenWidth(context);
		mContext = context;
		mOnOptimizeFinishListener = listener;

		LayoutInflater inflater = LayoutInflater.from(mContext);
		addView(inflater.inflate(R.layout.layout_desk_assistance_frame_window,
				null));
		mMainView = (LinearLayout) findViewById(R.id.layout_gallery);

		mGallery = (SingleFlingGallery) mMainView
				.findViewById(R.id.item_gallery);
		mGallery.setSpacing(20);
		mGallery.disableDragSlip();
		mGallery.setOnItemSelectedListener(this);
		mGallery.setAdapter(mAdapter);

		// 设定背景的宽度，与屏幕同宽
		mFrameWindowBackGround = (LinearLayout) findViewById(R.id.layout_desktop_frame_window);
		LayoutParams params = (LayoutParams) mFrameWindowBackGround
				.getLayoutParams();
		final float scale = context.getResources().getDisplayMetrics().density;

		params.width = mScreenWidth - (int) (10 * scale + 0.5f);
		mFrameWindowBackGround.setLayoutParams(params);

//		mLogoButton = (ImageButton) findViewById(R.id.btn_desktop_logo);
//		mLogoButton.setOnClickListener(this);
		setFocusable(true);
		setFocusableInTouchMode(true);
		setOnKeyListener(this);
		setOnTouchListener(this);

		initSlideViewList();
		mGallery.setSelection(0);

		handler.postDelayed(mLoadRunningAppTask, 200);
	}

	private WindowManager.LayoutParams mLayoutParams;
	private int mScreenWidth = 0;
	private Context mContext;
	// private onOptimizeFinishListener mOnOptimizeFinishListener;
	private boolean mHasAddToWindow = false;

	private LinearLayout mMainView;
	private SingleFlingGallery mGallery;
	private DeskAssistanceAdapter mAdapter = new DeskAssistanceAdapter();
	private List<View> mDeskAssistanceViewList = new ArrayList<View>();
	private ExpandedOptimizeWindow mExpandedOptimizeWindow;

	// private ExpandedSettingWindow mExpandedSettingWindow;

	public boolean hasAddToWindow() {
		return mHasAddToWindow;
	}

	public void setHasAddToWindow(boolean hasAdd) {
		mHasAddToWindow = hasAdd;
		mExpandedOptimizeWindow.setIsDesplaying(hasAdd);
	}

	public void showWindow(WindowManager windowManager, int sideFrom, int x,
			int y) {
		initSlideViewList();
		mGallery.setSelection(0);

		handler.postDelayed(mLoadRunningAppTask, 300);
		// 显示页面
		windowManager.addView(DeskAssistanceExpandedWindow.this,
				getWindowLayoutParams());
		ActionStatsManager.getInstance().saveActionData(
				EModelID._EMID_Secure_Open_desktop_asistant);
//		GoogleAnalyticsTracker.getInstance().trackView("打开桌面助手");
		//add by kevin 20130312
		GoogleAnalyticsTracker.getInstance().ClickButton("桌面助手",
				"打开桌面助手", "指标", 1l);
		//add by tony 
        ActionStatsManager.getInstance().saveActionData(EModelID._EMID_Secure_INTO_QQPIMSECURE);//使用小火箭、点击浮窗、点击桌面图片进入UI
        GoogleAnalyticsTracker.getInstance().ClickButton("主动打开UI", "打开桌面助手、通过桌面图标进入OS、通过火箭加速", "指标", 1l);
		//end by tony
        mHasAddToWindow = true;
		mGallery.setSelected(true);

		// ActionStatsManager actionBlockStatsManager =
		// ActionStatsManager.getInstance();
		// actionBlockStatsManager.saveActionData(EModelID._EMID_Secure_ASSISTANT_OPEN);
	}

	public WindowManager.LayoutParams getWindowLayoutParams() {
		if (mLayoutParams == null) {
			mLayoutParams = new WindowManager.LayoutParams();
			mLayoutParams.gravity = Gravity.CENTER;
			mLayoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
			mLayoutParams.format = PixelFormat.RGBA_8888;
			mLayoutParams.width = WindowManager.LayoutParams.WRAP_CONTENT;
			mLayoutParams.height = WindowManager.LayoutParams.WRAP_CONTENT;
		}

		return mLayoutParams;
	}

	private void initSlideViewList() {
		mDeskAssistanceViewList.clear();
		mExpandedOptimizeWindow = new ExpandedOptimizeWindow(mContext,
				mOnOptimizeFinishListener);
		mExpandedOptimizeWindow.updateOptimizeWindowRamUsage(m_currentRamUsage);
		mDeskAssistanceViewList.add(mExpandedOptimizeWindow);
		// mExpandedSettingWindow = new ExpandedSettingWindow(mContext);
		// mDeskAssistanceViewList.add(mExpandedSettingWindow);
		mAdapter.notifyDataSetChanged();
	}

	@Override
	public void onItemSelected(AdapterView<?> parent, View view, int position,
			long id) {
		if (view == mExpandedOptimizeWindow) {
			mExpandedOptimizeWindow.resetUi();
			mExpandedOptimizeWindow
					.updateOptimizeWindowRamUsage(m_currentRamUsage);
			// mSettingButton.setImageResource(R.drawable.desktop_setting_button);
		}
		// } else if (view == mExpandedSettingWindow) {
		// mSettingButton.setImageResource(R.drawable.desktop_back_button);
		// }
	}

	@Override
	public void onNothingSelected(AdapterView<?> parent) {
	}

	class DeskAssistanceAdapter extends BaseAdapter {

		@Override
		public int getCount() {
			return mDeskAssistanceViewList.size();
		}

		@Override
		public Object getItem(int position) {
			return mDeskAssistanceViewList.get(position);
		}

		@Override
		public long getItemId(int position) {
			return position;
		}

		@Override
		public int getItemViewType(int position) {
			return position;
		}

		@Override
		public int getViewTypeCount() {
			return 2;
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			if (convertView == null) {
				convertView = mDeskAssistanceViewList.get(position);
				convertView.setLayoutParams(new Gallery.LayoutParams(
						Gallery.LayoutParams.FILL_PARENT,
						Gallery.LayoutParams.WRAP_CONTENT));
			}
			return convertView;
		}
	}

	public void checkAndShowDeskAssisSettingCloseTipMsg() {
		// ConfigDao configDao = DaoCreator.createConfigDao();
		// if (!configDao.isDeskAssisWindowOpen()) {
		// ToastUtil.ShowLongToast(mContext,
		// mContext.getString(R.string.DeskAssisCloseSettingTipMsg));
		// }
	}

	@Override
	public void onClick(View v) {
		// 点击logo按钮跳转到主页
		if (v.getId() == R.id.btn_desktop_logo) {
			// Intent intent = new Intent();
			// intent.setClass(mContext, SplashActivity.class);
			// intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			// mContext.startActivity(intent);
			GoogleAnalyticsTracker.getInstance().ClickButton("桌面助手", "通过桌面助手进入OS", "进入", 1l);
			
			ActionStatsManager.getInstance().saveActionData(
					EModelID._EMID_Secure_desktop_asistant_into_OS);
			// ComponentName componentName = new ComponentName(
			// mContext.getPackageName(), SplashActivity.class.getName());
			// Intent intent = new Intent();
			// intent = new Intent(Intent.ACTION_MAIN);
			// intent.addCategory(Intent.CATEGORY_LAUNCHER);
			// intent.setComponent(componentName);
			// intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK |
			// Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
			// mContext.startActivity(intent);
			mContext.startActivity(MainApplication.getStartApplicationIntent());
			checkAndShowDeskAssisSettingCloseTipMsg();

		}
		// } else if (v.getId() == R.id.btn_desktop_set) {
		// int currentItem = mGallery.getSelectedItemPosition();
		// if (currentItem >= mGallery.getCount() - 1) {
		// currentItem = 0;
		// } else
		// currentItem++;
		// mGallery.setSelection(currentItem);
		// // ActionStatsManager actionBlockStatsManager =
		// ActionStatsManager.getInstance();
		// //
		// actionBlockStatsManager.saveActionData(EModelID._EMID_Secure_ASSISTANT_SETTING);
		// }

	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		if (event.getAction() == MotionEvent.ACTION_DOWN) {
			Rect rect = new Rect(getLeft(), getTop(), getRight(), getBottom());
			if (!rect.contains((int) event.getX(), (int) event.getY())) {
				if (mOnOptimizeFinishListener instanceof DeskAssistanceWindow) {
					((DeskAssistanceWindow) mOnOptimizeFinishListener)
							.removeAssistanceViewAndAddMinDeskView();
					return true;
				}
			}
		}
		return false;
	}

	private Handler handler = new Handler();
	private Runnable mLoadRunningAppTask = new Runnable() {
		public void run() {
			// ProcessLoader.startLoadData(true, false);
		}
	};

	public void onWindowFocusChanged(boolean hasWindowFocus) {
		super.onWindowFocusChanged(hasWindowFocus);
		if (!hasWindowFocus) {
			View view = mGallery.getChildAt(0);
			if (view != null) {
				view.setSelected(true);
			}
		}
	}

	@Override
	public boolean onKey(View v, int keyCode, KeyEvent event) {
		// 屏蔽Home键
		if (keyCode == KeyEvent.KEYCODE_HOME) {
			return true;
		}
		// 返回键关闭快捷助手
		else if (keyCode == KeyEvent.KEYCODE_BACK) {
			if (mOnOptimizeFinishListener instanceof DeskAssistanceWindow) {
				((DeskAssistanceWindow) mOnOptimizeFinishListener)
						.removeAssistanceViewAndAddMinDeskView();
			}
			return true;
		}
		return false;
	}
}
