package com.tencent.onesecurity.widget.booster;

import java.util.ArrayList;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.AppInfoModel;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;

/**
 * widget弹出浮窗 正在运行的程序 适配
 * 
 * @author gordonbi
 * 
 */
public class AppsAdapter extends BaseAdapter {

	private ArrayList<AppInfoModel> mModels;

	private Context mContext;
	private LayoutInflater mInflater;

	public AppsAdapter(ArrayList<AppInfoModel> model, Context context) {
		mModels = model;
		mContext = context;
		mInflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return mModels != null ? mModels.size() : 0;
	}

	@Override
	public Object getItem(int arg0) {
		return null;
	}

	@Override
	public long getItemId(int arg0) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		BoosterRunningAppLayout i = null;
		if (mModels != null && !mModels.isEmpty()) {
			AppInfoModel model = mModels.get(position);
			if (convertView == null) {
				i = (BoosterRunningAppLayout) mInflater.inflate(
						R.layout.appwidget_layout_booster_app, null);
				i.init(model);
			} else {
				i = (BoosterRunningAppLayout) convertView;
			}
		}
		return i;
	}

}
