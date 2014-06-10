package com.sandro.example;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;

/**
 * 伸缩可滑动的卡片效果
 * @author sandrocheng
 *
 */
public class CardActivity extends Activity{

	private ListView mListView;
	
	private List<ListEntity> entityList= new ArrayList<ListEntity>();
	
	private SourceListAdapter mAdapter;
	
	private LayoutInflater inflater;
	
	private static final int MSG_ANIM = 1;
	
	private Handler mHandler = new Handler(){

		@Override
		public void handleMessage(Message msg) {
			switch (msg.what) {
			case MSG_ANIM:
				boolean needReset = false;
				for (ListEntity entity : entityList) {
					if (entity.viewHeight > 0) {
						if (entity.startHeight < entity.viewHeight && entity.startHeight > 0) {
							if(entity.dy > 2){
								entity.dy -= 0.3f;
							}
							entity.startHeight += entity.dy;
							entity.startHeight = entity.startHeight>entity.viewHeight?entity.viewHeight:entity.startHeight;
							needReset = true;
						}
					}else{
						needReset = true;
					}
				}
				if(needReset){
					mAdapter.notifyDataSetChanged();
					mHandler.sendMessageDelayed(mHandler.obtainMessage(MSG_ANIM), 1);
				}
				break;
			}
			super.handleMessage(msg);
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.card_activity_main);
		inflater = LayoutInflater.from(this);
		mListView = (ListView) this.findViewById(R.id.res_list);
		entityList.add(new ListEntity(R.drawable.img_01,"card 1",30));
		entityList.add(new ListEntity(R.drawable.img_02,"card 2",40));
		entityList.add(new ListEntity(R.drawable.img_03,"card 3",-1));
		mAdapter = new SourceListAdapter();
		mListView.setAdapter(mAdapter);
		mHandler.sendMessageDelayed(mHandler.obtainMessage(MSG_ANIM), 3000);
	}

	@Override
	protected void onResume() {
		super.onResume();
	}

	@Override
	protected void onDestroy() {
		super.onDestroy();
	}
	
    private class ListItemViewHolder{
    	private ImageView previewView;
    	private TextView textView;
    }
	
	private class ListEntity{
		private int imageId;
		private String text;
		private int startHeight;
		private int viewHeight;
		private float dy = 10;
		private ListEntity(int imageId,String text,int startHeight){
			this.imageId = imageId;
			this.text = text;
			this.startHeight = startHeight;
		}
	}
	
	private class SourceListAdapter extends BaseAdapter{
		
		@Override
		public int getCount() {
			return entityList.size();
		}

		@Override
		public Object getItem(int position) {
			return null;
		}

		@Override
		public long getItemId(int position) {
			return 0;
		}
		

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			ListItemViewHolder listItemViewHolder;
			ListEntity entity = entityList.get(position);
			if (convertView == null){
				listItemViewHolder = new ListItemViewHolder();
				convertView =  (FrameLayout)inflater.inflate(R.layout.res_list_item, null);
				listItemViewHolder.previewView = (ImageView)convertView.findViewById(R.id.image_view);
				listItemViewHolder.textView = (TextView)convertView.findViewById(R.id.text_view);
				convertView.setTag(listItemViewHolder);
			}else{
				listItemViewHolder = (ListItemViewHolder) convertView.getTag();
			}
			int h = LayoutParams.FILL_PARENT;
			if(entity.startHeight > 0){
				h = entity.startHeight;
			}
			AbsListView.LayoutParams p = new AbsListView.LayoutParams(LayoutParams.FILL_PARENT,h);
			convertView.setLayoutParams(p);
			listItemViewHolder.previewView.setBackgroundResource(entity.imageId);
			listItemViewHolder.textView.setText(entity.text);
			entity.viewHeight = listItemViewHolder.previewView.getHeight() + listItemViewHolder.textView.getHeight();		
			return convertView;
		}
		
	}

}
