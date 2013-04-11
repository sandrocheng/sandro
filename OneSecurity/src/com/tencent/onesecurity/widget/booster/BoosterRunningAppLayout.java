package com.tencent.onesecurity.widget.booster;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.model.AppInfoModel;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

/**
 * 每一个第三方 程序图标
 * 
 * @author gordonbi
 * 
 */
public class BoosterRunningAppLayout extends LinearLayout {

	private AppInfoModel mModel;

	private ImageView mIvIcon;
	private TextView mTvName;

	public BoosterRunningAppLayout(Context context, AttributeSet attrs) {
		super(context, attrs);
	}

	public void init(AppInfoModel model) {
		mModel = model;
		if (mModel != null) {
			mIvIcon = (ImageView) findViewById(R.id.widget_booster_im_icon);
			mIvIcon.setImageDrawable(mModel.getIcon());
			mTvName = (TextView) findViewById(R.id.widget_booster_tv_name);
			mTvName.setText(mModel.getAppName());
		}

	}

	public BoosterRunningAppLayout(Context context) {
		super(context);
	}
}
