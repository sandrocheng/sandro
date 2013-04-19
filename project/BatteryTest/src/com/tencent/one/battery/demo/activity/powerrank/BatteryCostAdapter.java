package com.tencent.one.battery.demo.activity.powerrank;

import java.util.ArrayList;

import com.tencent.one.battery.core.powerrank.vo.BatterySipper;
import com.tencent.one.battery.demo.MainApp;
import com.tencent.one.battery.demo.R;


import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;


public abstract class BatteryCostAdapter extends BaseAdapter {

	private ArrayList<BatterySipper> batterySippers;
	private LayoutInflater inflater;
	private static float perWidth;
	private static int maxWidth = 240;
	
	public BatteryCostAdapter(Context context, ArrayList<BatterySipper> batterySippers) {
		this.batterySippers = batterySippers;
		this.inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return batterySippers.size();
	}

	@Override
	public Object getItem(int position) {
		return (batterySippers != null && batterySippers.size() > position) ? batterySippers.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		LinearLayout view;
		BatteryCostHolder holder;
		if (convertView == null) {
			convertView = (LinearLayout) inflater.inflate(R.layout.layout_battert_cost_list, null);
			holder = new BatteryCostHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (BatteryCostHolder) convertView.getTag();
		}
		view = (LinearLayout) convertView;
		view.setOnClickListener(null);
		if(position >= batterySippers.size()){
			return view;
		}
		
		holder.iv_icon.setImageDrawable(null);
		
		final BatterySipper batterySipper = batterySippers.get(position);
		if (batterySipper != null) {
			holder.iv_icon.setImageDrawable(batterySipper.iconId > 0 ?MainApp.getContext().getResources().getDrawable(batterySipper.iconId):null);//batterySipper.getIcon(MainApp.getContext())
			holder.tv_name.setText(batterySipper.name);
			holder.tv_percent.setText(batterySipper.percent +"%");
			holder.iv_progress.setAlpha(125);
			holder.packageName = batterySipper.defaultPackageName;
			holder.name= batterySipper.name;
			holder.uid = batterySipper.uid;
			Log.i("CostAdapter", "uid : " + batterySipper.uid + "           ");
			Log.i("CostAdapter", "name : " + batterySipper.name + "           ");
//			if (position == 0) {
//				if (holder.iv_progress.getMeasuredWidth() > 0 && maxWidth == 0) {
//					maxWidth = holder.iv_progress.getMeasuredWidth();
//				}
//				
//				if (maxWidth > 0) {
//					holder.iv_progress.setLayoutParams(new LinearLayout.LayoutParams(maxWidth, LinearLayout.LayoutParams.WRAP_CONTENT));
//				}
//			} else {
			perWidth = maxWidth / 100.0f;
			if( batterySipper.percent < 10.0){
				holder.iv_progress.setLayoutParams(new LinearLayout.LayoutParams(20, LinearLayout.LayoutParams.WRAP_CONTENT));
			}else{
				holder.iv_progress.setLayoutParams(new LinearLayout.LayoutParams((int) (perWidth * ((float)batterySipper.percent)), LinearLayout.LayoutParams.WRAP_CONTENT));
			}
			
//			}
		}
		
		view.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				itemClick(v);
			}
		});
		return convertView;
	}
	
	public abstract void itemClick(View v);

	public class BatteryCostHolder {
		private ImageView iv_icon;
		private TextView tv_name;
		private TextView tv_percent;
		private ImageView iv_progress;
		public String packageName;
		public String name;
		public int uid;

		public BatteryCostHolder(View view) {
			iv_icon = (ImageView) view.findViewById(R.id.battery_cost_icon);
			tv_name = (TextView) view.findViewById(R.id.battery_cost_name);
			tv_percent = (TextView) view.findViewById(R.id.battery_cost_percent);
			iv_progress = (ImageView) view.findViewById(R.id.manage_app_iv_progress);
		}
		
		
	}

	/**
	 * @return the apps
	 */
	public ArrayList<BatterySipper> getBatterySippers() {
		return batterySippers;
	}

	/**
	 * @param apps
	 *            the apps to set
	 */
	public void setApps(ArrayList<BatterySipper> batterySippers) {
		this.batterySippers = batterySippers;
	}
	
	public void clear(){
		if ( batterySippers != null ){
			batterySippers.clear();
			batterySippers = null;
		}
	}

	public void recycle() {
		// TODO 等待释放bitmap
	}
}
