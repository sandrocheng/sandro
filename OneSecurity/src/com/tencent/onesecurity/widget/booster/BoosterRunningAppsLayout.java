package com.tencent.onesecurity.widget.booster;

import java.util.ArrayList;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.AppInfoModel;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
import android.widget.RelativeLayout;

/**
 * widget弹出窗体正在运行程序布局
 * 
 * @author gordonbi
 * 
 */
public class BoosterRunningAppsLayout extends RelativeLayout {

	private GridView mGvApps;

	private AppsAdapter maAdapter;

	private ArrayList<AppInfoModel> mModels;

	private Context mContext;

	public BoosterRunningAppsLayout(Context context, AttributeSet attrs,
			int defStyle) {
		super(context, attrs, defStyle);
	}

	public BoosterRunningAppsLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
		mContext = context;
	}

	public BoosterRunningAppsLayout(Context context) {
		super(context);
	}

	public void refresh(ArrayList<AppInfoModel> models) {
		mGvApps = (GridView) findViewById(R.id.widget_booster_gv_apps);
		mModels = models;
		maAdapter = new AppsAdapter(mModels, mContext);
		mGvApps.setAdapter(maAdapter);
		maAdapter.notifyDataSetChanged();
	}
}
