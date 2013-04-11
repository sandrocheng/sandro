package com.tencent.onesecurity.ui.adapter;

import java.util.ArrayList;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.dao.ConfigDao;
import com.tencent.onesecurity.dao.DaoCreator;
import com.tencent.onesecurity.model.AutoBootAppModel;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

/**
 * 开启自启动适配
 * 
 * @author gordonbi, jackwang
 * 
 */
public abstract class AutoBootAdapter extends BaseAdapter {
	private ArrayList<AutoBootAppModel> mModels;
	private LayoutInflater mInflater;
	public boolean isRoot;
	
	public AutoBootAdapter(Context context, ArrayList<AutoBootAppModel> models) {
		this.mModels = models;
		this.mInflater = LayoutInflater.from(context);
		
		ConfigDao mConfigDao = DaoCreator.createConfigDao();
		this.isRoot = mConfigDao.getRootPermission();
	}

	@Override
	public int getCount() {
		int i = 0;
		i = (mModels != null) ? mModels.size() : i;
		return i;
	}

	@Override
	public Object getItem(int position) {
		AutoBootAppModel model = null;
		model = (mModels != null) ? mModels.get(position) : model;
		return model;
	}

	@Override
	public long getItemId(int position) {
		return 0;
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		AutoBootHolder holder;
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.layout_auto_boot_item, null);
			holder = new AutoBootHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (AutoBootHolder) convertView.getTag();
		}
		
		if(position >= mModels.size()){
			return convertView;
		}
		
		convertView.setOnClickListener(null);
		
		final AutoBootAppModel model = mModels.get(position);
		holder.tvName.setText(model.getAppName());
		if (model.getIcon() != null) {
//			holder.ivIcon.setBackgroundDrawable(model.getIcon());
			holder.ivIcon.setImageDrawable(model.getIcon());
		} else {
			holder.ivIcon.setImageResource(R.drawable.icon_common_question_mark);
		}
		final boolean en = model.isAutoBootEnabled();
		if (en) {
			holder.ivEnabled.setVisibility(View.VISIBLE);
			holder.ivDisable.setVisibility(View.GONE);
		} else {
			holder.ivEnabled.setVisibility(View.GONE);
			holder.ivDisable.setVisibility(View.VISIBLE);
		}

		convertView.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// 刷新列表
				refresh(position);
			}
		});
		return convertView;
	}

	public ArrayList<AutoBootAppModel> getModels() {
		return mModels;
	}

	public void setModels(ArrayList<AutoBootAppModel> models) {
		this.mModels = models;
	}

	private class AutoBootHolder {
		public ImageView ivIcon;
		public TextView tvName;
		public ImageView ivEnabled;
		public ImageView ivDisable;
		
		public AutoBootHolder(View view) {
			ivIcon = (ImageView) view.findViewById(R.id.auto_boot_iv_icon);
			tvName = (TextView) view.findViewById(R.id.auto_boot_tv_name);
			ivEnabled = (ImageView) view.findViewById(R.id.iv_enabled);
			ivDisable = (ImageView) view.findViewById(R.id.iv_disable);
		}
	}
	
	/**
	 * 更新选择按钮 由子类实现
	 * @param modelSelected 
	 */
	public abstract void refresh(int position);
}
