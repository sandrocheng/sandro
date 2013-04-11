/**
 * FileName: AblumAdapter.java
 * @Description: TODO(用一句话描述该文件做什么)
 * All rights Reserved, Designed By 21winmess
 * Copyright: Copyright(C) 2010-2011 
 * Company 21winmess DaLian LTD.
 * @author: Matrix xu
 * @version V2.0
 * Createdate: 2012-11-1 上午11:54:09
 *
 * Modification History:
 * Date Author Version Discription
 * -----------------------------------------------------------------------------------
 * 2012-11-1 Qute_Android2.0
 * Why & What is modified: <修改原因描述>
 */
package com.tencent.onesecurity.safebox.ui.adapter;


import java.util.ArrayList;
import java.util.List;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.safebox.model.AblumnEntity;
import com.tencent.onesecurity.safebox.ui.PhotoGridActivity;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader.ImageCallback;
import com.tencent.onesecurity.usage.google.GoogleAnalyticsTracker;

/**
 * @ClassName: AblumAdapter
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: Matrix
 * @date: 2012-11-1 上午11:54:09
 * 
 */
public class AblumAdapter extends BaseAdapter {
	
	private AsyncImageLoader mAsyncImageLoader = null;
	
	private List<AblumnEntity> dataList = new ArrayList<AblumnEntity>();

	private Context mContext = null;
	
	protected LayoutInflater mLayoutInflater = null;
	
	private Bitmap badBitmap;
	
	public AblumAdapter(Context context) {
		this.mContext = context;
		mLayoutInflater = LayoutInflater.from(mContext);
		try{
			BitmapDrawable badImage = (BitmapDrawable) mContext.getResources().getDrawable(
					R.drawable.img_vault_photos_broken_photo);
			badBitmap = badImage.getBitmap();
		} catch(OutOfMemoryError e) {
			
		}
		mAsyncImageLoader = new AsyncImageLoader(mContext, mImageCallback, badBitmap);
	}
	
	// == JOY OPZ start ==
	private ImageCallback mImageCallback = new ImageCallback() {

		@Override
		public void imageLoaded(ImageView imgView, Bitmap imageBitmap, Object keyObj) {
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
		}
	};
	// == JOY OPZ end ==
	
	public void setData(List<AblumnEntity> dataList) {
		if (dataList != null && dataList.size() > 0) {
			this.dataList = dataList;
		}
	}
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return dataList.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return dataList.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		// TODO Auto-generated method stub
		DataHolder dataHolder = null;
		final AblumnEntity entity = dataList.get(position);
		if (convertView == null) {
			convertView = mLayoutInflater.inflate(
					R.layout.layout_safebox_ablum_item, null);
			dataHolder = new DataHolder();
			dataHolder.imgView = (ImageView) convertView
					.findViewById(R.id.ablum_first_img_view);
			dataHolder.txtView = (TextView) convertView
					.findViewById(R.id.ablum_text_view);
			dataHolder.imgbgView = (ImageView) convertView
					.findViewById(R.id.ablum_folder_img_view);
			dataHolder.txtCount = (TextView) convertView
					.findViewById(R.id.ablum_text_count);
			convertView.setTag(dataHolder);
		} else {
			dataHolder = (DataHolder) convertView.getTag();
		}
		
		
		
		long imgId = convertDataHolder(entity, dataHolder);
		Bitmap bm = mAsyncImageLoader.loadDrawable(dataHolder.imgView, imgId,null);
		dataHolder.imgView.setImageBitmap(bm);
		
		dataHolder.imgbgView.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
				Intent intent = new Intent(mContext, PhotoGridActivity.class);
				intent.putExtra(PhotoGridActivity.INTENT_PHOTO_PATH, entity.bucketId);
				intent.putExtra(PhotoGridActivity.INTENT_PHOTO_PATH_NAME, entity.parentPath);
				mContext.startActivity(intent);
				GoogleAnalyticsTracker.getInstance().ClickButton("私密箱", "选择相册", "私密图片", 1);
			}
		});
		// 跑马灯的话打开注释
		//dataHolder.txtView.setSelected(true) ;
		
		return convertView;
	}
//	public abstract long convertDataHolder(AblumnEntity ablumnEntity, DataHolder dataHolder);
	public class DataHolder {
		public ImageView imgView = null;
		public ImageView imgbgView = null;
		public TextView txtView = null;
		public TextView txtCount = null;
	}
	public long convertDataHolder(AblumnEntity ablumn, DataHolder dataHolder) {
		
		dataHolder.txtView.setText(ablumn.parentPath);
		dataHolder.txtCount.setText("(" + String.valueOf(ablumn.count) + ")");
		return ablumn.imgId;
	}
	
	public void free() {
		if (this.dataList != null && dataList.size() > 0) {
			dataList.clear();
			dataList = null;
		}
		if (mAsyncImageLoader != null) {
			mAsyncImageLoader.release();
		}
		if (badBitmap != null && !badBitmap.isRecycled()) {
			badBitmap.recycle();
		}

	}

}
