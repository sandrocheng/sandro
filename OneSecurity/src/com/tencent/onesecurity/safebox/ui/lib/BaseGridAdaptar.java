package com.tencent.onesecurity.safebox.ui.lib;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.model.BaseGridEntity;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader.ImageCallback;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader.ImageLoadEnum;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

/**
 * @ClassName: BaseGridAdaptar
 * @Description:网格视图表现父类,包括处理异步加载图片,事件监听等动作
 * @author: Matrix
 * @date: 2012-11-6 下午12:02:41
 * 
 */
public abstract class BaseGridAdaptar<T extends BaseGridEntity> extends BaseAdapter {

	private AsyncImageLoader mAsyncImageLoader = null;

	private List<T> dataList = new ArrayList<T>();

	private boolean convertViewCheckboxable = false;// 是否每个元素允许可选择checkbox

	private boolean convertViewClickable = false;// 是否每个元素允许可以添加点击事件onClick

	private Map<Long, T> checkedMap = new HashMap<Long, T>();// 存储已选中的item

	private Context mContext = null;

	protected LayoutInflater mLayoutInflater = null;

	private int isSelAll = -1;
	
	private Bitmap badBitmap;
	
	private boolean isDataChanged = false;
	private boolean isNeedRefresh = false; // 为拍照回来第一张显示不出来而加 2013.02.28

	public BaseGridAdaptar(Context context) {
		this.mContext = context;
		mLayoutInflater = LayoutInflater.from(mContext);
		
		try {
			BitmapDrawable badImage = (BitmapDrawable) mContext.getResources().getDrawable(
					R.drawable.img_vault_photos_broken_photo);
			badBitmap = badImage.getBitmap();
		} catch(OutOfMemoryError e) {
		}
		
		mAsyncImageLoader = new AsyncImageLoader(mContext, mImageCallback, badBitmap);
	}

	private ImageCallback mImageCallback = new ImageCallback() {

		@Override
		public void imageLoaded(ImageView imgView, Bitmap imageBitmap, Object keyObj) {
			//modify by tony 
			if (imageBitmap == null) {
				imageBitmap = badBitmap;
			}

			// joy 2013.02.01 显示优化-fade in
//			imgView.setImageBitmap(imageBitmap);
			final TransitionDrawable td =
	                new TransitionDrawable(new Drawable[] {
	                        new ColorDrawable(android.R.color.transparent),
	                        new BitmapDrawable(imgView.getResources(), imageBitmap)
	                });
			imgView.setImageDrawable(td);
	        td.startTransition(300);

	        // 为拍照回来第一张显示不出来而加(8160横屏，回来重走oncreate) 2013.02.28 start
	        if (isNeedRefresh) {
	        	isNeedRefresh = false;
	        	new Handler().postDelayed(new Runnable() {
					
					@Override
					public void run() {
						notifyDataSetInvalidated();
					}
				}, 300);
	        }
	     // 为拍照回来第一张显示不出来而加 2013.02.28 end
		}
	};

	public void setData(List<T> dataList) {
		if (dataList != null) {
			isDataChanged = true;
			isNeedRefresh = true;
			this.dataList = dataList;
		}
	}

	@Override
	public int getCount() {
		return dataList.size();
	}

	@Override
	public Object getItem(int position) {
		return dataList.get(position);
	}

	@Override
	public long getItemId(int position) {
		return 0;
	}

	@Override
	public void notifyDataSetChanged() {
		isDataChanged = true;
		super.notifyDataSetChanged();
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// DataHolder dataHolder = createDataHolder(convertView);
		DataHolder dataHolder = null;
		if (convertView == null) {
			convertView = mLayoutInflater.inflate(R.layout.item_common_basephoto, null);
			dataHolder = new DataHolder();
			dataHolder.imgView = (ImageView) convertView.findViewById(R.id.photo_img_view);
			dataHolder.imgViewBg = (ImageView) convertView.findViewById(R.id.photo_img_bg);

			dataHolder.checkBg = (ImageView) convertView.findViewById(R.id.photo_img_check_bg);

			dataHolder.checkbox = (ImageView) convertView.findViewById(R.id.photo_img_check);

			convertView.setTag(dataHolder);
		} else {
			dataHolder = (DataHolder) convertView.getTag();
		}

		final T t = dataList.get(position);
		final Object keyObj = convertDataHolder(t, dataHolder);
		
		Bitmap bm = null;
		
		// 在GridView尺寸为自适应时，需要频繁调用getView（position == 0）方法，在此处加判断避免无用的加载
		if (position == 0 && isDataChanged) {
			if (parent.getChildCount() == 0) {
				isDataChanged = false;
				bm = mAsyncImageLoader.loadDrawable(dataHolder.imgView, keyObj, getLoaderType());
			}
		} else {
			if (position > 0) {
				isDataChanged = false;
			}
			bm = mAsyncImageLoader.loadDrawable(dataHolder.imgView, keyObj, getLoaderType());
		}
		
		dataHolder.imgView.setImageBitmap(bm);

		if (convertViewCheckboxable) {
			dataHolder.checkbox.setVisibility(View.VISIBLE);
			dataHolder.checkBg.setVisibility(View.VISIBLE);
			dataHolder.imgViewBg.setVisibility(View.GONE);
			if (isSelAll == 1) {// 全选
				setChecked(dataHolder.checkbox, true);
			} else if (isSelAll == 2) {// 全不选
				setChecked(dataHolder.checkbox, false);
			} else {
				if (checkedMap.containsKey(t.getImgId())) {
					setChecked(dataHolder.checkbox, true);
				} else {
					setChecked(dataHolder.checkbox, false);
				}
			}
		} else {
			dataHolder.checkbox.setVisibility(View.GONE);
			dataHolder.checkBg.setVisibility(View.GONE);
			dataHolder.imgViewBg.setVisibility(View.VISIBLE);
		}

		if (convertViewClickable) {
			convertView.setOnClickListener(new View.OnClickListener() {
				@Override
				public void onClick(View v) {
					boolean isChecked = false;
					if (convertViewCheckboxable) {

						isSelAll = -1;

						DataHolder dataHolder = (DataHolder) v.getTag();
						if (checkedMap.containsKey(t.getImgId())) {
							setChecked(dataHolder.checkbox, false);
							checkedMap.remove(t.getImgId());
						} else {
							setChecked(dataHolder.checkbox, true);
							checkedMap.put(t.getImgId(), t);

							// google数据上报
							GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "选择图片", "私密图片", 1l);
						}
					}

					onConvertViewClicked(v, t, isChecked);// 具体点击事件操作延伸到子类
				}
			});
		} else {
			convertView.setOnClickListener(null);
			convertView.setClickable(false); // 移除Listener后设置，否则按键不响应
		}

		return convertView;
	}

	/**
	 * 设置选中状态
	 * 
	 * @param checkView
	 * @param isChecked
	 */
	protected void setChecked(ImageView checkView, boolean isChecked) {
		checkView.setSelected(isChecked);
	}

	/**
	 * 设置全选
	 * 
	 * @param isAll
	 */
	public void setSelAll(boolean isAll) {
		this.isSelAll = (isAll ? 1 : 2);
	}
	/**
	 * 设置全选状态为初始状态
	 */
	protected void updateSel() {
		this.isSelAll = -1;
	}
	/**
	 * 全选、全不选时缓存更新
	 * 
	 * @param isCheckAll
	 */
	public void notifyCheckAll(boolean isCheckAll) {
		if (isCheckAll && dataList != null) {
			for (T t : dataList) {
				checkedMap.put(t.getImgId(), t);
			}
		} else {
			checkedMap.clear();
		}
	}

	public abstract ImageLoadEnum getLoaderType();

	public abstract void onConvertViewClicked(View v, T t, boolean isChecked);

	/**
	 * 填充DataHolder数据
	 * 
	 * @param t
	 *            返回图片的ImgId
	 */
	public abstract Object convertDataHolder(T t, DataHolder dataHolder);

	public class DataHolder {
		public ImageView imgViewBg = null;
		public ImageView imgView = null;
		public ImageView checkBg = null;
		public ImageView checkbox = null;
		public boolean isChecked = false;
	}

	/**
	 * 析构函数
	 */
	public void free() {
		if (this.dataList != null && dataList.size() > 0) {
			dataList.clear();
			dataList = null;
		}
		if (mAsyncImageLoader != null) {
			mAsyncImageLoader.release();
		}

		if (checkedMap != null && checkedMap.size() > 0) {
			checkedMap.clear();
			checkedMap = null;
		}
		if (badBitmap != null && !badBitmap.isRecycled()) {
			badBitmap.recycle();
		}
	}
	
	/**
	 * 在不离开页面的情况下，停止任务。
	 */
	public void shutdonwTasks() {
		if (mAsyncImageLoader != null) {
			mAsyncImageLoader.shutdonwTasks();
		}
	}
	
	public void restartTasks() {
		if (mAsyncImageLoader != null) {
			mAsyncImageLoader.restartTasks();
		}
	}

	/**
	 * @param convertViewCheckboxable
	 *            the convertViewCheckboxable to set
	 */
	public void setConvertViewCheckboxable(boolean convertViewCheckboxable) {
		this.convertViewCheckboxable = convertViewCheckboxable;
	}

	/**
	 * @param convertViewClickable
	 *            the convertViewClickable to set
	 */
	public void setConvertViewClickable(boolean convertViewClickable) {
		this.convertViewClickable = convertViewClickable;
	}

	public Map<Long, T> getCheckedMap() {
		return checkedMap;
	}

	public void setCheckedMap(Map<Long, T> checkedMap) {
		this.checkedMap = checkedMap;
	}

	public int getIsSelAll() {
		return isSelAll;
	}

	public void setIsSelAll(int isSelAll) {
		this.isSelAll = isSelAll;
	}
	
	public void stopAllTasks(){
		if(mAsyncImageLoader != null){
			mAsyncImageLoader.stopAllTasks() ;
		}
	}
}
