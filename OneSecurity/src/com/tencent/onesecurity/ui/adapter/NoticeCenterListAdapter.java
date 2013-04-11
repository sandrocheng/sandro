package com.tencent.onesecurity.ui.adapter;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import android.content.Context;
import android.text.format.DateFormat;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.MessageEntity;

public abstract class NoticeCenterListAdapter extends BaseAdapter {
	private LayoutInflater inflater;
	private ArrayList<MessageEntity> arrys = null;
	private Context context = null;
		//private Context context;
	public NoticeCenterListAdapter(Context context,ArrayList<MessageEntity> arrys) {
		super();
		this.inflater = LayoutInflater.from(context);
		this.arrys = arrys;
		this.context = context;
	}

	@Override
	public int getCount() {
		return this.arrys != null ? this.arrys.size() : 0;
	}

	@Override
	public Object getItem(int position) {
		return (this.arrys != null && !this.arrys.isEmpty()) ? this.arrys.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		NoticeCenterItemHolder holder = null;
		View view = null;
		if (convertView == null) {
			view = (LinearLayout) inflater.inflate(
					R.layout.layout_notice_center_list, parent, false);
			//view = inflater.inflate(R.layout.lay_notice_center_list, null);
			holder = new NoticeCenterItemHolder(view);
			view.setTag(holder);
		} else {
			view = convertView;
			holder = (NoticeCenterItemHolder) view.getTag();
		}

		MessageEntity model = arrys.get(position);
		// 显示文件名称
        //holder.textTitle.setText(model.title);
		holder.textSummary.setText(model.summary);
		holder.textTime.setText(dateTimeTranfor(model.receiveTime));
		holder.hasRead = model.hasRead;
		holder.id = model.id;
		
		if ( holder.hasRead){
			holder.imageNewIcon.setBackgroundResource(R.drawable.sel_notice_center_email_open);
		}else{
			holder.imageNewIcon.setBackgroundResource(R.drawable.sel_notice_center_email_close);
		}
		
		holder.url = model.url;

		// ListView 单元点击事件
		view.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				itemClick(v);
			}
		});
	
		Log.d("TAG", "ss");
		return view;
	}
	
	/*
	 * 时间处理函数，判断如果是当天则显示“小时:分钟”否则显示“月/日”
	 */
	private String dateTimeTranfor( long receiveTime ){
		Date date = new Date();
		String str = new String();
		int month = date.getMonth();
		int year = date.getYear();
		int day = date.getDay();
		
		date.setTime(receiveTime);
		Calendar cal = Calendar.getInstance();  
		cal.setTime(date);  
		//判断如果不是今年则显示“日/月/年”
		if ( date.getDay() != day || date.getMonth() != month || date.getYear() != year){
			//判断如果不是今天则显示“月/日”
			//如果不是今年再加上年
			// modify by lynnawang bug:9583372日/月/年格式 start
			 SimpleDateFormat ft = new SimpleDateFormat("dd/MM/yyyy");  
			 str = ft.format(cal.getTime());
			// modify by lynnawang bug:9583372 end
		}else{
	    //如果是今天则显示时间"小时/分钟"
			String M12 = "hh:mm";  
			String M24 = "kk:mm";
			String formatTime = "";
			formatTime = DateFormat.is24HourFormat(context)? M24 : M12; 
			SimpleDateFormat ft = new SimpleDateFormat(formatTime);  
			str = ft.format(cal.getTime());
		}
		return str;
	}
	
	public void clear(){
		if ( arrys != null ){
			arrys.clear();
			arrys = null;
		}
	}
	public abstract void itemClick(View v);
	
	/**
	 * 列表Item类
	 * 
	 * @author josh
	 * @date 212-11-05
	 */
	public class NoticeCenterItemHolder extends MessageEntity{

//		// title TextView
//		private TextView textTitle;
		// 内容摘要TextView
		private TextView textSummary;
		// 时间TextView
		private TextView textTime;
		// 箭头ImageView
//		private ImageView imageStates;
		// new标示
		private ImageView imageNewIcon;
		/**
		 * 列表Item类构造
		 */
		private NoticeCenterItemHolder(View view) {

//			// 内容摘要TextView
//			this.textTitle = (TextView) view
//					.findViewById(R.id.notice_center_list_textview_title);
			// 内容摘要TextView
			this.textSummary = (TextView) view
					.findViewById(R.id.notice_center_list_textview_summary);
			// 时间TextView
			this.textTime = (TextView) view
					.findViewById(R.id.notice_center_list_textview_time);
			// 箭头ImageView
//			this.imageStates = (ImageView) view
//					.findViewById(R.id.notice_center_list_textview_icon);
			// new标示
			this.imageNewIcon = (ImageView) view
					.findViewById(R.id.notice_center_list_new_icon);
		}
	}
}
