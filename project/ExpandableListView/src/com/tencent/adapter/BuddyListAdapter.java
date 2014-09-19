package com.tencent.adapter;

import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.example.expandablelistview.R;
import com.tencent.widget.AbsListView;
import com.tencent.widget.ExpandableListView;

public class BuddyListAdapter extends BaseFacePreloadExpandableListAdapter
		implements OnClickListener, OnLongClickListener {

	private static final String TAG = "BuddyListAdapter";

	private Context mContext;
	private OnClickListener mOnClickListener;

	private int mScrollState = AbsListView.OnScrollListener.SCROLL_STATE_IDLE;
	private AbsListView.OnScrollListener mOnScrollListener;
	
	private static final int CHILD_VIEW_TYPE_COUNT = 1;
	private static final int CHILD_VIEW_TYPE_BUDDY = 0;
	
	private ArrayList<Groups> mGroups = new ArrayList<Groups>();
	private SparseArray<List<Friends>> mMembers = new SparseArray<List<Friends>>();

	public BuddyListAdapter(Context context, ExpandableListView lv,
			OnClickListener onClick) {
		super(context, lv);
		mContext = context;
		mOnClickListener = onClick;

		lv.post(new Runnable() {
			@Override
			public void run() {
				// 触发loadData并在加载完成后通知刷新数据
				notifyDataSetChanged();
			}
		});
	}

	public void setOnScrollListener(AbsListView.OnScrollListener l) {
		mOnScrollListener = l;
	}

	@Override
	public void onScrollStateChanged(AbsListView view, int scrollState) {
		mScrollState = scrollState;
		super.onScrollStateChanged(view, scrollState);
		if (scrollState == AbsListView.OnScrollListener.SCROLL_STATE_IDLE) {
			// TODO Do Sth.
		}
		if (null != mOnScrollListener) {
			mOnScrollListener.onScrollStateChanged(view, scrollState);
		}
	}

	@Override
	public void onScroll(AbsListView view, int firstVisibleItem,
			int visibleItemCount, int totalItemCount) {
		super.onScroll(view, firstVisibleItem, visibleItemCount, totalItemCount);
		if (null != mOnScrollListener) {
			mOnScrollListener.onScroll(view, firstVisibleItem,
					visibleItemCount, totalItemCount);
		}
	}

	@Override
	public Object getChild(int groupPosition, int childPosition) {
		return mMembers.get(mGroups.get(groupPosition).group_id).get(
				childPosition);
	}
	
	@Override
	public long getChildId(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return super.getChildId(groupPosition, childPosition);
	}
	
	@Override
	public int getChildType(int groupPosition, int childPosition) {
		return CHILD_VIEW_TYPE_BUDDY;
	}
	
	@Override
	public int getChildTypeCount() {
		return CHILD_VIEW_TYPE_COUNT;
	}
	
	@Override
	public View getChildView(int groupPosition, int childPosition,
			boolean isLastChild, View convertView, ViewGroup parent) {
		BuddyListAdapter.BuddyChildTag tag;
		if (convertView == null) {
			convertView = LayoutInflater.from(mContext).inflate(
					R.layout.contact_list_item_for_buddy, parent, false);
			tag = new BuddyChildTag();
			tag.tvNick = (TextView) convertView.findViewById(R.id.text1);
			if(null != mOnClickListener){
//				convertView.setOnClickListener(mOnClickListener);
				convertView.setOnClickListener(this);
			}
			convertView.setTag(tag);
		} else {
			tag = (BuddyListAdapter.BuddyChildTag) convertView.getTag();
			tag.tvNick.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
		}
		
		Object item = getChild(groupPosition, childPosition);
		Friends f = (Friends) item;
		tag.tvNick.setText(f.name);
		
		return convertView;
	}
	
	@Override
	public int getChildrenCount(int groupPosition) {
		return mMembers.get(mGroups.get(groupPosition).group_id).size();
	}
	
	@Override
	public Object getGroup(int groupPosition) {
		return mGroups.get(groupPosition);
	}
	
	@Override
	public int getGroupCount() {
		return mGroups.size();
	}
	
	@Override
	public long getGroupId(int groupPosition) {
		return ((Groups) getGroup(groupPosition)).group_id;
	}
	
	@Override
	public View getGroupView(int groupPosition, boolean isExpanded,
			View convertView, ViewGroup parent) {
		
		GroupTag tag = null;
		if (convertView != null) {
			tag = (GroupTag) convertView.getTag();
		} else {
			convertView = LayoutInflater.from(mContext).inflate(
					R.layout.contact_buddy_list_group, parent, false);
			tag = new GroupTag();
			tag.groupName = (TextView) convertView
					.findViewById(R.id.group_name);
			convertView.setTag(tag);
			convertView.setOnClickListener(this);
		}
		
		Groups group = (Groups) getGroup(groupPosition);
		tag.groupIdex = groupPosition;
		tag.groupName.setText(group.group_name);
		return convertView;
	}
	
	@Override
	public boolean isChildSelectable(int groupPosition, int childPosition) {
		return true;
	}
	
	@Override
	public void notifyDataSetChanged() {
		loadData();
		super.notifyDataSetChanged();
	}
	
	private void loadData() {
		mGroups.clear();
		mMembers.clear();
		fakeData();
		
	}
	
	private void fakeData(){
		for (int i = 0; i < 10; i++) {
			Groups g = new Groups();
			g.group_id = i;
			g.group_name = "组--" + i;
			
			List<Friends> list = new ArrayList<BuddyListAdapter.Friends>();
			for (int j = 0; j < 10; j++) {
				Friends f = new Friends();
				f.groupid = i;
				f.name = "组" + i + "中的朋友" + j;
				list.add(f);
			}
			mMembers.put(i, list);
			mGroups.add(g);
		}
	}

	public void superNotifyDataSetChanged() {
	    super.notifyDataSetChanged();
	}
	
	@Override
	public int getHeaderViewLayoutResourceId() {
		return R.layout.contact_buddy_list_group;
	}
	
	@Override
	public void configHeaderView(View header, int groupPosition) {
		GroupTag tag = (GroupTag) header.getTag();
		if(tag == null){
			tag = new GroupTag();
			header.findViewById(R.id.iv_fake_indicator).setVisibility(View.VISIBLE);
			tag.groupName = (TextView) header.findViewById(R.id.group_name);
			header.setTag(tag);
		}
		
		Groups group = (Groups) getGroup(groupPosition);
		
		tag.groupName.setText(group.group_name);
	}

	@Override
	public void onClick(View v) {
		Object obj = v.getTag();
		if (obj instanceof BuddyChildTag) {
			BuddyChildTag f = (BuddyChildTag) obj;
			Log.i(TAG, "onClick==" + f.tvNick.getText().toString());
		} else if (obj instanceof GroupTag) {
			GroupTag tag = (GroupTag) obj;
			if (mAttachedView.isGroupExpanded(tag.groupIdex)) {
				mAttachedView.collapseGroup(tag.groupIdex);
			} else {
				mAttachedView.expandGroup(tag.groupIdex);
			}
		}
	}

	@Override
	public boolean onLongClick(final View v) {
		Log.i(TAG, "onLongClick " + v.getId());
		return true;
	}
	
	static class GroupTag
    {
        public int groupIdex;
        public TextView groupName;

        public TextView onlineAndTotalCount;
    }
	
	public static class ViewTag extends ViewHolder {
	    public TextView tvNick;
	    public TextView tvSignature;
	    public Object item;
	}

	static class BuddyChildTag extends ViewTag {
		public TextView tvOnlineStatus;

		public ImageView ivTerminalType;
	}
	
	static class Groups{
		public String group_name;
		public int group_id;
	}
	static class Friends{
		public String name;
		public int groupid = -1;
	}

}
