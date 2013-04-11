package com.tencent.onesecurity.safebox.ui.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;

import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.ui.lib.BaseGridAdaptar;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader.ImageLoadEnum;

/**
 * @ClassName: SecurePicGridAdapter
 * @Description:TODO(这里用一句话描述这个类的作用)
 * @author: lee
 * @date: 2012-11-8 下午07:50:07
 */
public class SecurePicGridAdapter extends BaseGridAdaptar<AblumnPicEntity>{
	
	private GridAdapterSimpleCallback callback = null;

	public SecurePicGridAdapter(Context context, GridAdapterSimpleCallback callback) {
		super(context);
		this.callback = callback;
	}

	// == JOY OPZ start ==
	@Override
	public Object convertDataHolder(AblumnPicEntity t,
			DataHolder dataHolder) {
		return t;
	}
	// == JOY OPZ end ==

	@Override
	public void onConvertViewClicked(View v, AblumnPicEntity t, boolean isChecked) {
		if (callback != null) {
			callback.onConverViewClick();
		}
		
	}
	public interface GridAdapterSimpleCallback {
		/**
		 * gridView上的view点击后的回调
		 */
		public void onConverViewClick();
	}

	@Override
	public ImageLoadEnum getLoaderType() {
		return ImageLoadEnum.LOAD_FROM_DB; // 从DB中
	}
	/**
	 * 长按后调用，用来恢复checkBox显示状态
	 */
	public void updateSelStatue() {
		super.updateSel();
	}

	/**
	 * 设置选中状态
	 * 
	 * @param checkView
	 * @param isChecked
	 */
	public void setSelected(ImageView checkView, boolean isChecked) {
		setChecked(checkView, isChecked);
	}

	public int getCheckedSize() {
		return getCheckedMap().size();
	}
}
