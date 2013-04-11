package com.tencent.onesecurity.ui.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.MainApplication;
import com.tencent.onesecurity.R;
import com.tencent.onesecurity.manager.optimize.SystemBoosterManager;
import com.tencent.onesecurity.model.AppInfoModel;
import com.tencent.onesecurity.model.AppReportEntity;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;
import com.tencent.onesecurity.usage.winmess.WinmessAppReportManager;

/**
 * 加速适配器
 * 
 * @author gordon
 * 
 */
public abstract class ManageAppAdapter extends BaseAdapter {

	private ArrayList<AppInfoModel> apps;
	private LayoutInflater inflater;
	
	public ManageAppAdapter(Context context, ArrayList<AppInfoModel> apps) {
		this.apps = apps;
		this.inflater = LayoutInflater.from(context);
		updateCheckBtn();
	}

	@Override
	public int getCount() {
		return apps.size();
	}

	@Override
	public Object getItem(int position) {
		return (apps != null && apps.size() > position) ? apps.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		AppHold holder;
		if (convertView == null) {
			convertView = (LinearLayout) inflater.inflate(R.layout.layout_manage_app_item, null);
			holder = new AppHold(convertView);
			convertView.setTag(holder);
		} else {
			holder = (AppHold) convertView.getTag();
		}
		
		if(position >= apps.size()){
			return convertView;
		}
		
		convertView.setOnClickListener(null);
		holder.iv_icon.setImageDrawable(null);
		
		final AppInfoModel app = apps.get(position);
		if (app != null) {
			if (app.getIcon() != null) {
				holder.iv_icon.setImageDrawable(app.getIcon());
			} else {
				holder.iv_icon.setImageResource(R.drawable.icon_common_question_mark);
			}
			holder.tv_name.setText(app.getAppName());
			holder.tv_ram.setText(Formatter.formatFileSize(MainApplication.getContext(), app.getRamSize()));
			if (app.isAdviseClose()) {
				holder.tv_advise.setText(R.string.booster_advise);
			} else {
				holder.tv_advise.setText("");
			}
			
			holder.ck_selected.setBackgroundDrawable(null);
			holder.ck_selected.setVisibility(View.VISIBLE);
			holder.ck_selected.setChecked(app.isSelected());
			final CheckBox cb = holder.ck_selected;
			convertView.setOnClickListener(new OnClickListener() {
				@Override
				public void onClick(View v) {
					boolean status = app.isSelected();
					cb.setChecked(!status);
					app.setSelected(!status);
					SystemBoosterManager.getInstance().updateUserOperatedWhiteList(app.getPkgName(), !status);
					updateCheckBtn();
					GoogleAnalyticsTracker.getInstance().ClickButton("加速", "选择程序", "运行程序管理", 1);
					
					if (status) {
						// 保存白名单上报统计数据
						WinmessAppReportManager.getInstance().saveBoosterData(app.getAppName(), app.getPkgName(), AppReportEntity.APP_WHITE);
					}
				}
			});
		}
		return convertView;
	}

	private class AppHold {
		private ImageView iv_icon;
		private TextView tv_name;
		private TextView tv_ram;
		private TextView tv_advise;
		private CheckBox ck_selected;

		public AppHold(View view) {
			iv_icon = (ImageView) view.findViewById(R.id.manage_app_iv_icon);
			tv_name = (TextView) view.findViewById(R.id.manage_app_tv_name);
			tv_ram = (TextView) view.findViewById(R.id.manage_app_tv_ram);
			tv_advise = (TextView) view.findViewById(R.id.manage_app_tv_advise);
			ck_selected = (CheckBox) view.findViewById(R.id.manage_app_cb_checkBox);
		}
	}

	/**
	 * @return the apps
	 */
	public ArrayList<AppInfoModel> getApps() {
		return apps;
	}

	/**
	 * @param apps
	 *            the apps to set
	 */
	public void setApps(ArrayList<AppInfoModel> apps) {
		this.apps = apps;
	}

	/**
	 * 更新选择按钮 由子类实现
	 */
	public abstract void updateCheckBtn();

}
