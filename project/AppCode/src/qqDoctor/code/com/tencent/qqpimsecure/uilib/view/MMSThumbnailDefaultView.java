package com.tencent.qqpimsecure.uilib.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class MMSThumbnailDefaultView extends RelativeLayout
{
  private Context mContext;
  public ImageView mDefaultThumbnailimg;
  public ImageView mDefaultimg;
  public ImageView mThumbnailimg;

  public MMSThumbnailDefaultView(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.mContext = paramContext;
    initView(paramContext, paramInt);
  }

  public MMSThumbnailDefaultView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    initView(paramContext, 0);
  }

  private void initView(Context paramContext, int paramInt)
  {
    addView(LayoutInflater.from(paramContext).inflate(2130903343, null), new RelativeLayout.LayoutParams(-2, -2));
    this.mDefaultimg = ((ImageView)findViewById(2131231650));
    this.mThumbnailimg = ((ImageView)findViewById(2131231649));
    this.mDefaultThumbnailimg = ((ImageView)findViewById(2131231651));
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((Activity)this.mContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.mDefaultThumbnailimg.getLayoutParams();
    localLayoutParams.width = ((int)(0.6D * localDisplayMetrics.widthPixels));
    localLayoutParams.height = ((int)(0.3D * localDisplayMetrics.widthPixels));
    this.mDefaultThumbnailimg.setLayoutParams(localLayoutParams);
    this.mDefaultimg.setVisibility(8);
    this.mDefaultThumbnailimg.setVisibility(8);
  }

  public void setDefaultimg(int paramInt)
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.mDefaultimg.getLayoutParams();
    localLayoutParams.width = paramInt;
    this.mDefaultimg.setLayoutParams(localLayoutParams);
  }

  public void setThumbnailImageDrawable(BitmapDrawable paramBitmapDrawable)
  {
    this.mThumbnailimg.setImageDrawable(paramBitmapDrawable);
    this.mDefaultThumbnailimg.setImageDrawable(paramBitmapDrawable);
  }

  public void setThumbnailmDefaultImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.mDefaultimg.setVisibility(0);
    while (true)
    {
      return;
      this.mDefaultimg.setVisibility(8);
    }
  }

  public void setViewAttr(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mThumbnailimg.setVisibility(8);
      this.mDefaultThumbnailimg.setVisibility(0);
    }
    while (true)
    {
      return;
      this.mThumbnailimg.setVisibility(0);
      this.mDefaultThumbnailimg.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MMSThumbnailDefaultView
 * JD-Core Version:    0.6.2
 */