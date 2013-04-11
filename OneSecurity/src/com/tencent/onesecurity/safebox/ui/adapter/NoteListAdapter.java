package com.tencent.onesecurity.safebox.ui.adapter;


import java.util.List;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.manager.NoteManager;
import com.tencent.onesecurity.safebox.ui.NoteListActivity.NoteListEntity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;


/**
 * @ClassName: NotesDeleteActivity
 * @Description:TODO(notes批量删除列表类的adapter)
 * @author: Sean
 * @date: 2012-10-29 下午4:13:59
 * 
 */
public class NoteListAdapter extends BaseAdapter {

	protected LayoutInflater mLayoutInflater;
	private List<NoteListEntity> mDataLis;
	private final int NOTE_LIST_NORMAL = 0;
	private final int NOTE_LIST_SELECT_DELETE = 1;

	public NoteListAdapter(Context context, List<NoteListEntity> dataList) {
		mDataLis = dataList;
		mLayoutInflater = LayoutInflater.from(context);
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		
		ItemView itemView = null;
		if (convertView == null) {
			convertView = createItemView(position, R.layout.layout_safebox_note_item);
			itemView = new ItemView();
			itemView.title = (TextView) convertView.findViewById(R.id.tv_text);
			itemView.time = (TextView) convertView.findViewById(R.id.tv_time);
			itemView.index = (TextView) convertView.findViewById(R.id.tv_num);
			convertView.setTag(itemView);
		} else {
			itemView = (ItemView) convertView.getTag();
		}

		NoteListEntity item = (NoteListEntity) mDataLis.get(position);
		String title = NoteManager.getInstance().getDate(item.getTitle());
		String time = NoteManager.getInstance().formatDataListItem(item.getUpdateTime());
		// 将空白项的箭头去掉。start
		if (item.getUpdateTime() <= 0) {
			convertView.findViewById(R.id.safe_note_list_checkbox).setVisibility(View.GONE);
			convertView.findViewById(R.id.tv_num).setVisibility(View.GONE);
			convertView.findViewById(R.id.safebox_note_item_arrow_img).setVisibility(View.GONE);
			// 将非空的ITEM设置成可点击状态 START
			convertView.setClickable(true);
			// 将非空的ITEM设置成可点击状态 END
			title = "";
		} else {
			// 将空的ITEM设置成不可点击状态 START
			convertView.setClickable(false);
			// 将空的ITEM设置成不可点击状态 END
			CheckBox checkBox = (CheckBox) convertView.findViewById(R.id.safe_note_list_checkbox);
			if (item.getStatus() == NOTE_LIST_NORMAL) {
				checkBox.setVisibility(View.GONE);
				convertView.findViewById(R.id.tv_num).setVisibility(View.VISIBLE);
				itemView.index.setText(Integer.toString(item.getListIndex()));
			} else {
				checkBox.setChecked(item.isSelected());
				checkBox.setVisibility(View.VISIBLE);
				convertView.findViewById(R.id.tv_num).setVisibility(View.GONE);
			}

			convertView.findViewById(R.id.safebox_note_item_arrow_img).setVisibility(View.VISIBLE);
			if (item.getStatus() == NOTE_LIST_SELECT_DELETE) {
				convertView.findViewById(R.id.safebox_note_item_arrow_img).setEnabled(false);
				convertView.findViewById(R.id.safebox_note_item_arrow_img).setClickable(false);
			} else {
				convertView.findViewById(R.id.safebox_note_item_arrow_img).setEnabled(true);
			}

		}
		// 将空白项的箭头去掉。END

		itemView.title.setText(title);
		itemView.time.setText(time);

		return convertView;
	}

	static class ItemView {

		TextView title;
		TextView time;
		TextView index;
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return mDataLis.size();
	}

	@Override
	public Object getItem(int i) {
		// TODO Auto-generated method stub
		return mDataLis.get(i);
	}

	@Override
	public long getItemId(int i) {
		// TODO Auto-generated method stub
		return i;
	}

	/**
	 * 根据不同的位置生成不同风格的view
	 * 
	 * @param position
	 *            当前列表位置
	 * @param itemViewResId
	 *            要在列表项中填充的view
	 * @return
	 */
	public View createItemView(int position, int itemViewResId) {
		View view;
		view = mLayoutInflater.inflate(itemViewResId, null);
		return view;
	}
	/**
	 * 析构函数
	 */
	public void free() {
		if (this.mDataLis != null && mDataLis.size() > 0) {
			mDataLis.clear();
			mDataLis = null;
		}		
	}
}
