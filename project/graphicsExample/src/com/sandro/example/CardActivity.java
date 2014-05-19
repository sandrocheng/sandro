package com.sandro.example;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
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
						if (entity.startHeight < entity.viewHeight) {
							entity.startHeight += 3;
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
		entityList.add(new ListEntity(R.drawable.img_01,"card 1",70));
		entityList.add(new ListEntity(R.drawable.img_02,"card 2",80));
		entityList.add(new ListEntity(R.drawable.img_03,"card 3",150));
		mAdapter = new SourceListAdapter();
		mListView.setAdapter(mAdapter);
		mHandler.sendMessageDelayed(mHandler.obtainMessage(MSG_ANIM), 1);
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
			AbsListView.LayoutParams p = new AbsListView.LayoutParams(LayoutParams.FILL_PARENT,entity.startHeight);
			convertView.setLayoutParams(p);
			listItemViewHolder.previewView.setBackgroundResource(entity.imageId);
			listItemViewHolder.textView.setText(entity.text);
			entity.viewHeight = listItemViewHolder.previewView.getHeight() + listItemViewHolder.textView.getHeight();
			Log.i("sandro", position + " , " + entity.viewHeight);			
			return convertView;
		}
		
	}

}
