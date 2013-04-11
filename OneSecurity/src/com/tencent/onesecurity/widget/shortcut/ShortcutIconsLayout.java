package com.tencent.onesecurity.widget.shortcut;

import java.util.LinkedList;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.util.DeviceUtil;
import com.tencent.onesecurity.widget.ShortcutWidget;
import com.tencent.onesecurity.widget.WidgetConstant;

import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.RelativeLayout;

/**
 * 快捷方式icon区域
 * 
 * @author gordonbi
 * 
 */
public class ShortcutIconsLayout extends RelativeLayout implements
		OnTouchListener, View.OnClickListener {
	
	public static int SIZE_COLS= 4; // icon分布：列数
	public static int SIZE_ROWS = 3; // icon分布：行数

	private LinkedList<ShortcutIcon> viewList = new LinkedList<ShortcutIcon>();
	private int viewXY[][] = new int[12][2];
	private int viewWidth;
	private int viewHeight;
	private int selectedIndex = -1;
	private int width;
	private int height;
	private int lastX;
	private int lastY;
	private int offsetX;
	private int offsetY;
	private int newIndex = -1;
	
	private boolean isEditable = false; // 编辑状态
	private int[] allStatus; // 临时保存所有状态
	
	private Context mContext;

	public ShortcutIconsLayout(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		mContext = context;
	}

	public ShortcutIconsLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	public ShortcutIconsLayout(Context context) {
		super(context);
		mContext = context;
	}
	
	@Override
	protected void onLayout(boolean changed, int l, int t, int r, int b) {
		super.onLayout(changed, l, t, r, b);
		initCoordinates();
		refreshAllViews();
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		int action = event.getAction();
		switch (action) {
		case MotionEvent.ACTION_DOWN:
			getSelectView(v, event);
			break;
		case MotionEvent.ACTION_MOVE:
			moveSelectView(v, event);
			break;
		case MotionEvent.ACTION_UP:
			refreshViews();
			break;
		}
		return false;
	}

	/**
	 * 刷新页面
	 */
	private void refreshViews() {
		if (newIndex == selectedIndex || newIndex == -1|| newIndex == 11) {
			refreshView(selectedIndex);
		} else {
			ShortcutIcon view = viewList.get(selectedIndex);
			viewList.set(selectedIndex, viewList.get(newIndex));
			viewList.set(newIndex, view);
			refreshView(newIndex);
			refreshView(selectedIndex);
		}
		newIndex = -1;
	}
	
	/**
	 * 刷新所有页面
	 */
	private void refreshAllViews() {
		for (int i=0;i<viewList.size();i++) {
			refreshView(i);
		}
	}

	/**
	 * 刷新指定view
	 * 
	 * @param index
	 *            指定view
	 */
	private void refreshView(int index) {
		int mleft = viewXY[index][0];
		int mright = viewXY[index][0] + viewWidth;
		int mtop = viewXY[index][1];
		int mbottom = viewXY[index][1] + viewHeight;
		viewList.get(index).layout(mleft, mtop, mright, mbottom);
	}

	/**
	 * 拖动view
	 * 
	 * @param v
	 *            拖动的view
	 * @param event
	 */
	private void moveSelectView(View v, MotionEvent event) {
		int rawX = (int) event.getRawX();
		int rawY = (int) event.getRawY();
		int dx = rawX - lastX;
		int dy = rawY - lastY;
		int left = v.getLeft() + dx;
		int top = v.getTop() + dy;
		int right = v.getRight() + dx;
		int bottom = v.getBottom() + dy;
		v.layout(left, top, right, bottom);
		lastX = (int) event.getRawX();
		lastY = (int) event.getRawY();
		getNewIndex(rawX, rawY);
	}

	/**
	 * 获取 新的位置点
	 * 
	 * @param rawX
	 *            坐标
	 * @param rawY
	 *            坐标
	 */
	private void getNewIndex(int rawX, int rawY) {
		int left = rawX - offsetX;
		int top = rawY - offsetY;
		left = left < 0 ? 0 : left;
		top = top < 0 ? 0 : top;
		left = left >= width ? width - 1 : left;
		top = top >= height ? height - 1 : top;
		int x = left / viewWidth;
		int y = top / viewHeight;
		int index = y * 4 + x;
		index = index > 11 ? 11 : index;
		if (index != newIndex) {
			newIndex = index;
		}
	}

	/**
	 * 获得被选中的view
	 * 
	 * @param v
	 * @param event
	 */
	private void getSelectView(View v, MotionEvent event) {
		selectedIndex = 0;
		for (View view : viewList) {
			if (view.getId() == v.getId()) {
				break;
			}
			selectedIndex++;
		}
		lastX = (int) event.getRawX();
		lastY = (int) event.getRawY();
		offsetX = lastX - (v.getLeft() + (int) event.getX());
		offsetY = lastY - (v.getTop() + (int) event.getY());
		v.layout(v.getLeft() - 10, v.getTop() - 10, v.getRight() - 10, v
				.getBottom() - 10);
	}
	
	/**
	 * 可编辑状态变更
	 */
	public void notifyEditStateChanged() {
		isEditable = !isEditable;
		if (!isEditable) {
			saveToDB();
		}
		refreshEditStates();
	}
	
	/**
	 * 刷新所有icon的编辑状态
	 * @param isEdit
	 */
	private void refreshEditStates() {
		for (ShortcutIcon view : viewList) {
			if (isEditable)
				view.setOnTouchListener(this);
			else
				view.setOnTouchListener(view);
			
			view.setEditable(isEditable);
		}
	}
	
	/**
	 * 将位置和对应状态存入DB
	 */
	private void saveToDB() {
		int vMarks[] = new int[viewList.size()];
		int vStatus[] = new int[viewList.size()];
		int size = viewList.size();
		StringBuffer content = new StringBuffer("快捷开关位置前四：");
		for (int i=0;i<size; i++) {
			ShortcutIcon view = viewList.get(i);
			vMarks[i] = (Integer)view.getTag();
			vStatus[i] = (view.isSwitchOn() ? 1 : 0);
			if(i<4){
				content.append(view.getIconText());
				content.append("、");
			}
		}
		
		ShortcutIconUtil.setIconMarks(vMarks);
		ShortcutIconUtil.setIconStatus(vStatus);
		
		
		GoogleAnalyticsTracker.getInstance().ClickButton("控件统计",
				content.toString(), DeviceUtil.getIMEI(), 1l);
		
		Intent intent = new Intent(mContext, ShortcutWidget.class);
		intent.setAction(ShortcutWidget.UPDATE_ORDER);
		mContext.sendBroadcast(intent);
		

	}

	/**
	 * 初始化view表格的坐标
	 */
	private void initCoordinates() {
		if (viewWidth == 0) {
			viewWidth = viewList.get(0).getWidth();
			viewHeight = viewList.get(0).getHeight();
			width = viewWidth * SIZE_COLS;
			height = viewHeight * SIZE_ROWS;
			for (int i = 0; i < 12; i++) {
				viewXY[i][0] = viewWidth * (i%SIZE_COLS);
				viewXY[i][1] = viewHeight * (i/SIZE_COLS);
			}
		}
	}

	/**
	 * 初始化数据和view
	 */
	public void init() {

		viewList = new LinkedList<ShortcutIcon>();
		viewXY = new int[12][2];
		viewWidth = 0;
		viewHeight = 0;
		selectedIndex = -1;
		newIndex = -1;
		width = 0;
		height = 0;
		lastX = 0;
		lastY = 0;
		offsetX = 0;
		offsetY = 0;
		
		isEditable = false;
		
		ShortcutIcon view = (ShortcutIcon) findViewById(R.id.fl_0);
		ShortcutIcon view1 = (ShortcutIcon) findViewById(R.id.fl_1);
		ShortcutIcon view2 = (ShortcutIcon) findViewById(R.id.fl_2);
		ShortcutIcon view3 = (ShortcutIcon)  findViewById(R.id.fl_3);
		ShortcutIcon view5 = (ShortcutIcon) findViewById(R.id.fl_5);
		ShortcutIcon view6 = (ShortcutIcon) findViewById(R.id.fl_6);
		ShortcutIcon view7 = (ShortcutIcon) findViewById(R.id.fl_7);
		ShortcutIcon view8 = (ShortcutIcon) findViewById(R.id.fl_8);
		ShortcutIcon view9 = (ShortcutIcon) findViewById(R.id.fl_9);
		ShortcutIcon view10 = (ShortcutIcon) findViewById(R.id.fl_10);
		ShortcutIcon view11 = (ShortcutIcon) findViewById(R.id.fl_11);
		
		view.setTag(WidgetConstant.AIRPLANE_MARK);
		view1.setTag(WidgetConstant.WIFI_MARK);
		view2.setTag(WidgetConstant.MOBILE_DATA_MARK);
		view3.setTag(WidgetConstant.BLUE_THOOTH_MARK);
		view5.setTag(WidgetConstant.VIBRATOR_MARK);
		view6.setTag(WidgetConstant.GPS_MARK);
		view7.setTag(WidgetConstant.AUTOMATIC_LIGHT_MARK);
		view8.setTag(WidgetConstant.ROTATE_SCREEN_MARK);
		view9.setTag(WidgetConstant.AUTO_SYNC_MARK);
		view10.setTag(WidgetConstant.SD_MARK);
		view11.setTag(WidgetConstant.LOCK_SCREEN);
		
		int marks[] = ShortcutIconUtil.getIconMarks();
		if (marks == null || marks.length <  WidgetConstant.DEFAULT_MARK_ORDER.length) {
			marks = WidgetConstant.DEFAULT_MARK_ORDER;
		}
		
		for (int mark : marks) {
			switch (mark) {
			case WidgetConstant.AIRPLANE_MARK:
				viewList.add(view);
				break;
			case WidgetConstant.WIFI_MARK:
				viewList.add(view1);
				break;
			case WidgetConstant.MOBILE_DATA_MARK:
				viewList.add(view2);
				break;
			case WidgetConstant.BLUE_THOOTH_MARK:
				viewList.add(view3);
				break;
//			case WidgetConstant.MOBILE_3G_2G_MARK:
//				viewList.add(view4);
//				break;
			case WidgetConstant.VIBRATOR_MARK:
				viewList.add(view5);
				break;
			case WidgetConstant.GPS_MARK:
				viewList.add(view6);
				break;
			case WidgetConstant.AUTOMATIC_LIGHT_MARK:
				viewList.add(view7);
				break;
			case WidgetConstant.ROTATE_SCREEN_MARK:
				viewList.add(view8);
				break;
			case WidgetConstant.AUTO_SYNC_MARK:
				viewList.add(view9);
				break;
			case WidgetConstant.SD_MARK:
				viewList.add(view10);
				break;
			case WidgetConstant.LOCK_SCREEN:
				viewList.add(view11);
				break;
			default:
				break;
			}
			
			// 获取所有状态值
			allStatus = ShortcutWidget.checkStatusByMarks(mContext, marks); //ShortcutIconUtil.getIconStatus();
			
			// 初始化编辑状态：不可编辑
			refreshEditStates();
			
			for (int i=0;i<viewList.size();i++) {
				
				final ShortcutIcon curView = viewList.get(i);
				boolean switchOn = (allStatus[i] == 1 ? true : false);
				
				curView.notifyStateChanged(switchOn);
				curView.setOnClickListener(this);
			}
		}
	}

	/*
	 * 每个icon的点击事件
	 */
	@Override
	public void onClick(View v) {
			if ((v instanceof  ShortcutIcon) && isEditable == false) {
				ShortcutIcon sv = (ShortcutIcon) v;
				int status = sv.isSwitchOn() ? 1 : 0;
				// 更新状态
				ShortcutIconUtil.updateIconStauts((Integer)sv.getTag(), status);
				// 具体事件
				ShortcutWidget.controllTrigger(mContext, (Integer)sv.getTag(), status);
				GoogleAnalyticsTracker.getInstance().ClickButton("桌面控件",
						"使用快捷开关", DeviceUtil.getIMEI(), 1l);
			}
	}
}
