package com.guangli.applock;

import java.util.List;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
/**
 * 
 * @author lance.liang
 * 定义自己的数据列表适配器类，增加了复选框，和点击事件监听器
 */
public class BrowseApplicationInfoAdapter extends BaseAdapter{

	private List<AppInfo> mlistAppInfos = null;
	LayoutInflater inflater = null;
	OnClickBoxListener listener;
	Context context;
	public BrowseApplicationInfoAdapter(Context context,List<AppInfo> apps) {
		inflater = LayoutInflater.from(context);/*(LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);*/
	    mlistAppInfos = apps;
	    this.context = context;
	}
	public void setDatas(List<AppInfo> appInfos){
		mlistAppInfos = appInfos;
	}
	public int getCount() {
		// TODO Auto-generated method stub
		return  mlistAppInfos.size();
	}

	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return mlistAppInfos.get(position);
	}

	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	public View getView(final int position, View convertView, ViewGroup parent) {
		 View view = null;
		ViewHolder holder = null;
		if(convertView==null || convertView.getTag()==null) {
			view = inflater.inflate(R.layout.browse_app_item, null);
			holder = new ViewHolder((ImageView)view.findViewById(R.id.imgApp),
					              (TextView)view.findViewById(R.id.tvAppLable),
					              (CheckBox)view.findViewById(R.id.checkBox),
					              (ImageView)view.findViewById(R.id.lock)
					             );
			view.setTag(holder);
		} else 
		{
			view = convertView;
			holder = (ViewHolder) convertView.getTag();
		}
		AppInfo appInfo = (AppInfo) getItem(position);
		holder.appIconImageView.setImageDrawable(appInfo.getAppIcon());
		holder.tvAppLableTextView.setText(appInfo.getAppLabel());
		holder.checkbox.setChecked(appInfo.isChecked());
		holder.lock.setImageDrawable(appInfo.getLockeIcon());
		holder.checkbox.setOnClickListener(new OnClickListener(){
			public void onClick(View v) {
				// TODO Auto-generated method stub
				CheckBox c = (CheckBox)v;
				
				if(BrowseApplicationInfoAdapter.this.listener!=null){
					listener.OnClickBox(position, c.isChecked());
				}
			}
		  });
		final ViewHolder holder1 = holder;
		view.setOnClickListener(new OnClickListener() {
			public void onClick(View v) {
				boolean checked = holder1.checkbox.isChecked();
				if(BrowseApplicationInfoAdapter.this.listener!=null){
					
					holder1.checkbox.setChecked(!checked);
					if(BrowseApplicationInfoAdapter.this.listener!=null){
						listener.OnClickBox(position, !checked);
					}
				}
			}
		});
		view.setTag(holder1);
		return view;
	}
 public class ViewHolder{
	  ImageView appIconImageView;
	  TextView tvAppLableTextView;
	  CheckBox checkbox;
	  ImageView lock;
	  public ViewHolder(ImageView appIconImageView, TextView tvAppLableTextView,
			  CheckBox checkbox,ImageView lock) {
			super();
			this.appIconImageView = appIconImageView;
			this.tvAppLableTextView = tvAppLableTextView;
			this.checkbox = checkbox;
			this.lock = lock;
		}
  }
  /**
   * 设置监听器
   * @param listener：所要设置的监听器引用
   *  
   *  
   */
 public void setOnClickBoxListener( OnClickBoxListener listener){
	 this.listener = listener;
 }
  /**
   * 
   * @author lance.liang
   * 列表点击事件监听器封装接口，将列表点击事件和复选框点击事件统一到此接口
   */
 public  interface OnClickBoxListener {
	  public void OnClickBox(int position,boolean checked);
  }
}
