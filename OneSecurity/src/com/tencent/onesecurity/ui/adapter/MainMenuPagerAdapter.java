package com.tencent.onesecurity.ui.adapter;

import java.util.List;

import android.view.View;
import android.view.ViewGroup;

import com.tencent.onesecurity.ui.android.support.v4.view.PagerAdapter;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager;

/**
 * 
 * @ClassName: MainMenuPagerAdapter
 * @Description:主页用的view adapter
 * @author: Sandro
 * @date: 2012-10-30 上午09:29:53
 * 
 */
public class MainMenuPagerAdapter extends PagerAdapter {

	private List<View> mListViews;

	public MainMenuPagerAdapter(List<View> mListViews) {
		this.mListViews = mListViews;
	}

	@Override
	public void destroyItem(ViewGroup container, int position, Object object) {
		((ViewPager) container).removeView(mListViews.get(position));
	}

	@Override
	public int getCount() {
		return mListViews.size();
	}

	@Override
	public Object instantiateItem(View container, int position) {
		((ViewPager) container).addView(mListViews.get(position), 0);
		return mListViews.get(position);
	}

	@Override
	public boolean isViewFromObject(View view, Object object) {
		return view == (object);
	}

}
