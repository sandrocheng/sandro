package com.tencent.onesecurity.safebox.ui.adapter;

import com.tencent.onesecurity.safebox.model.AblumnPicEntity;
import com.tencent.onesecurity.safebox.ui.lib.AsyncImageLoader.ImageLoadEnum;
import com.tencent.onesecurity.safebox.ui.lib.BaseGridAdaptar;

import android.content.Context;
import android.view.View;

/**
 * @ClassName: PhotoGridAdapter  
 * @Description: 图片导入页面的gridview adapter
 * @author Joy
 * @date: 2012-11-6 下午4:19:33
 */
public class PhotoGridAdapter extends BaseGridAdaptar<AblumnPicEntity> {
	
	private GridAdapterSimpleCallback callback = null;

	public PhotoGridAdapter(Context context, GridAdapterSimpleCallback callback) {
		super(context);
		this.callback = callback;
	}

	@Override
	public void onConvertViewClicked(View view, AblumnPicEntity entity, boolean isChecked) {

		if (callback != null) {
			callback.onConverViewClick(entity, isChecked);
		}
	}

	// == JOY OPZ start ==
	@Override
	public Object convertDataHolder(AblumnPicEntity entity, DataHolder dataHolder) {
		return entity.getImgId();
	}
	// == JOY OPZ end ==
	
	public interface GridAdapterSimpleCallback {
		/**
		 * gridView上的view点击后的回调
		 */
		public void onConverViewClick(AblumnPicEntity entity, boolean isChecked);
	}

	@Override
	public ImageLoadEnum getLoaderType() {
		return ImageLoadEnum.LOAD_FROM_MEDIA_STOR;
	}
}
