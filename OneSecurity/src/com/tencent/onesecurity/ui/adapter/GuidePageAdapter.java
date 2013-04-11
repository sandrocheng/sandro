
package com.tencent.onesecurity.ui.adapter;

import java.util.ArrayList;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;

import com.tencent.onesecurity.R;
import com.tencent.onesecurity.ui.android.support.v4.view.PagerAdapter;
import com.tencent.onesecurity.ui.android.support.v4.view.ViewPager;

/**
 * 用户教育用Adapter
 * 
 * @version 1.0
 * @author LionLiu
 */
public class GuidePageAdapter extends PagerAdapter {

    private Context mContext;

    private ArrayList<View> mListViews;
    
    /**
     * 私密引导页
     */
    private ImageView ivGiudeVault;
    
    private ImageView ivGiudeVip;
    
    private View rocketView;

    /**
     * 主界面需要初始化最后一张View传入，About传null
     * 
     * @param context
     * @param rocketView
     */
    public GuidePageAdapter(Context context, View rocketView) {
        mContext = context;
        mListViews = new ArrayList<View>();
        ivGiudeVault = initImageView(R.drawable.bg_userguide_vault);
        ivGiudeVip = initImageView(R.drawable.bg_userguide_vip);
        mListViews.add(ivGiudeVip);
        mListViews.add(ivGiudeVault);
        
        // 如果从主界面进入，则添加传入的View
        if (null != rocketView) {
        	this.rocketView = rocketView;
            mListViews.add(rocketView);
            // 如果从About进入，则直接初始化ImageView
        } else {
            mListViews.add(initImageView(R.drawable.bg_userguide_rocket));
        }
    }
    
    /**
     * 释放闪屏页中三个图片内存
     */
    public void releaseSource(){
    	recyleImageView(ivGiudeVault);
    	recyleImageView(ivGiudeVip);
    	if(rocketView!=null){
    		ImageView bg = (ImageView)rocketView.findViewById(R.id.bg_guide);
    		recyleImageView(bg);
    	}
    	mListViews.clear();
    	mListViews = null;
    }
    
    private void recyleImageView(ImageView iv){
    	Drawable d = iv.getDrawable();
    	Bitmap bitmap = ((BitmapDrawable)d).getBitmap(); 
    	bitmap.recycle();
    }

    /**
     * About用构造方法
     * 
     * @param context
     */
    public GuidePageAdapter(Context context) {
        this(context, null);
    }

    @Override
    public void destroyItem(View arg0, int arg1, Object arg2) {
        ((ViewPager)arg0).removeView(mListViews.get(arg1));
    }

    /**
     * 初始化 ImageView(用户教育前两页为纯图片)
     * 
     * @Description
     * @version 1.0
     * @author LionLiu
     */
    private ImageView initImageView(int resId) {
        ImageView imageView = new ImageView(mContext);
//        imageView.setImageResource(resId);
        imageView.setImageBitmap(BitmapFactory.decodeResource(mContext.getResources(), resId));
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setLayoutParams(new LayoutParams(LayoutParams.FILL_PARENT,
                LayoutParams.FILL_PARENT));
        return imageView;
    }

    @Override
    public void finishUpdate(View arg0) {
    }

    @Override
    public int getCount() {
        return mListViews.size();
    }

    @Override
    public Object instantiateItem(View arg0, int arg1) {
        ((ViewPager)arg0).addView(mListViews.get(arg1), 0);
        return mListViews.get(arg1);
    }

    @Override
    public boolean isViewFromObject(View arg0, Object arg1) {
        return arg0 == (arg1);
    }

    @Override
    public void restoreState(Parcelable arg0, ClassLoader arg1) {
    }

    @Override
    public Parcelable saveState() {
        return null;
    }

    @Override
    public void startUpdate(View arg0) {
    }

}
