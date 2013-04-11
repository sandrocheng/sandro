package com.tencent.onesecurity.ui.adapter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.ScanResultModel;
import com.tencent.onesecurity.util.AppIconUtil;

/**
 * @ClassName: VirusWhiteListAdapter
 * @Description:白名单数据提供
 * @author: lee
 * @date: 2013-2-18 下午01:33:07
 */
public class VirusWhiteListAdapter extends BaseAdapter {

	/** 数据源 */
	private List<ScanResultModel> mListData;

	// private HashSet<ViewHolder> viewHoldersSet;
	/** 选中集合 */
	private Map<Long, ScanResultModel> mCheckedMap;

	private Context mContext;

	private LayoutInflater mInflater;

	private SimpleClickListener mCallBack;

	public VirusWhiteListAdapter(Context context) {
		this.mContext = context;
		this.mInflater = LayoutInflater.from(mContext);
		mCheckedMap = new HashMap<Long, ScanResultModel>();
		// this.viewHoldersSet = new HashSet<ViewHolder>() ;
	}

	public List<ScanResultModel> getListData() {
		return mListData;
	}

	public void setListData(List<ScanResultModel> mListData) {
		this.mListData = mListData;
	}

	@Override
	public int getCount() {
		return this.mListData != null ? this.mListData.size() : 0;

	}

	@Override
	public Object getItem(int position) {
		return (this.mListData != null && !this.mListData.isEmpty()) ? this.mListData.get(position) : null;
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	public Map<Long, ScanResultModel> getCheckedMap() {
		return mCheckedMap;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		ViewHolder holder = null;
		if (convertView == null) {
			convertView = mInflater.inflate(R.layout.layout_virus_white_list_item, null);
			holder = new ViewHolder(convertView);
			convertView.setTag(holder);
		} else {
			holder = (ViewHolder) convertView.getTag();
		}
		// viewHoldersSet.add(holder);

		final ScanResultModel scanResult = mListData.get(position);
		final ViewHolder temHolder = holder;
		// 设置应用图标
		setAppIcon(scanResult, temHolder.imageAppHead);
		// 设置应用名称
		temHolder.textAppName.setText(scanResult.softName);
		// 选中效果
		if (mCheckedMap.containsKey(scanResult.whiteListId)) {
			setChecked(temHolder.checkBox, true);
		} else {
			setChecked(temHolder.checkBox, false);
		}

		convertView.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ViewHolder holder = (ViewHolder) v.getTag();
				if (mCheckedMap.containsKey(scanResult.whiteListId)) {
					setChecked(holder.checkBox, false);
					mCheckedMap.remove(scanResult.whiteListId);
				} else {
					setChecked(holder.checkBox, true);
					mCheckedMap.put(scanResult.whiteListId, scanResult);
				}
				if (mCallBack != null) {
					mCallBack.onClickItem();
				}
			}
		});

		return convertView;
	}

	/**
	 * 设置选中状态
	 * 
	 * @param checkView
	 * @param isChecked
	 */
	protected void setChecked(CheckBox checkView, boolean isChecked) {
		checkView.setChecked(isChecked);
	}

	/**
	 * 设置应用程序图标
	 * 
	 * @param scanResult
	 * @param holder
	 */
	private void setAppIcon(ScanResultModel scanResult, ImageView imageView) {

		if (ScanResultModel.SOFT_SCAN_ADDRESS_PKG == scanResult.softScanAddress) {
			imageView.setImageDrawable(AppIconUtil.getAppIcon(scanResult.packageName));
		} else {
			imageView.setImageDrawable(AppIconUtil.getApkIcon(scanResult.path));
		}
	}

	private class ViewHolder {
		// 应用Icon
		private ImageView imageAppHead;
		// 应用名
		private TextView textAppName;
		// 单选
		private CheckBox checkBox;

		// 应用详情描述Layout
		// private LinearLayout virusDescLayout;
		// 应用详情描述
		// private TextView textVirusDesc;

		public ViewHolder(View view) {
			this.imageAppHead = (ImageView) view.findViewById(R.id.iv_white_list_app_icon);
			this.textAppName = (TextView) view.findViewById(R.id.tv_white_list_app_name);
			this.checkBox = (CheckBox) view.findViewById(R.id.cb_white_list_app_sel);
			// this.virusDescLayout = (LinearLayout)
			// view.findViewById(R.id.ll_white_list_virus_desc);
			// this.textVirusDesc = (TextView)
			// view.findViewById(R.id.tv_white_list_virus_desc);

		}
	}
	/**
	 * 释放资源
	 */
	public void free() {
		if (mListData != null && !mListData.isEmpty()) {
			mListData.clear();
			mListData = null;
		}
		if (mCheckedMap != null && !mCheckedMap.isEmpty()) {
			mCheckedMap.clear();
			mCheckedMap = null;
		}
	}
	/**
	 * 注册监听
	 * 
	 * @param listener
	 */
	public void registerSimpleClickListener(SimpleClickListener listener) {
		this.mCallBack = listener;
	}

	/**
	 * 注销点击监听
	 */
	public void unregisterSimpleClickListener() {
		if (this.mCallBack != null) {
			this.mCallBack = null;
		}
	}

	/**
	 * 
	 * @ClassName: SimpleClickListener
	 * @Description:画面点击回调
	 * @author: lee
	 * @date: 2013-2-19 下午03:34:58
	 * 
	 */
	public interface SimpleClickListener {
		void onClickItem();
	}

}
