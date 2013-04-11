package com.tencent.onesecurity.ui.activity;

import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.activity.commonComponent.BaseActivity;
import com.tencent.onesecurity.ui.adapter.GuidePageAdapter;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager;

/**
 * 
 * @ClassName: UserGuidActivity
 * @Description:用户引导页面
 * @author: Josh
 * @date: 2012-12-18
 * 
 */
public class UserGuidActivity extends BaseActivity implements OnClickListener{
	
	private GuidePageAdapter mGuideAdapter;// 用户教育Adapter
	
	private ViewPager mGuides; // 用户教育

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.layout_user_guid);

		mGuides = (ViewPager)findViewById(R.id.user_guid);
		//mod-s matt for 最后一页追加button，点击动作是回到上一页
        View rocketView = getLayoutInflater().inflate(R.layout.layout_userguide_rocket, null);
        // 绑定Start事件
        rocketView.findViewById(R.id.btn_guide_start).setOnClickListener(this);
        ImageView bg = (ImageView)rocketView.findViewById(R.id.bg_guide);
        bg.setImageBitmap(BitmapFactory.decodeResource(this.getResources(), R.drawable.bg_userguide_rocket));
        bg.setScaleType(ImageView.ScaleType.FIT_XY);
        bg.setLayoutParams(new FrameLayout.LayoutParams(FrameLayout.LayoutParams.FILL_PARENT,
        		FrameLayout.LayoutParams.FILL_PARENT));
		
        mGuideAdapter = new GuidePageAdapter(UserGuidActivity.this, rocketView);
        //mod-e matt for 最后一页追加button，点击动作是回到上一页
        mGuides.setAdapter(mGuideAdapter);
        
        mGuides.setCurrentItem(0);
	}

	@Override
	public void onClick(View v) {
		this.onBackPressed();
	}
}
