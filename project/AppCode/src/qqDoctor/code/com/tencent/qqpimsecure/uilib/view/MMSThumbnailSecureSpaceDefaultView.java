package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class MMSThumbnailSecureSpaceDefaultView extends RelativeLayout
{
  public ImageView mDefaultimg;
  public ImageView mThumbnailimg;

  public MMSThumbnailSecureSpaceDefaultView(Context paramContext, int paramInt)
  {
    super(paramContext);
    initView(paramContext, paramInt);
  }

  public MMSThumbnailSecureSpaceDefaultView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext, 0);
  }

  private void initView(Context paramContext, int paramInt)
  {
    addView(LayoutInflater.from(paramContext).inflate(2130903342, null), new RelativeLayout.LayoutParams(-2, -2));
    this.mDefaultimg = ((ImageView)findViewById(2131231650));
    this.mThumbnailimg = ((ImageView)findViewById(2131231649));
    this.mDefaultimg.setVisibility(8);
  }

  public void setThumbnailImageDrawable(BitmapDrawable paramBitmapDrawable)
  {
    this.mThumbnailimg.setImageDrawable(paramBitmapDrawable);
  }

  public void setThumbnailImageVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      this.mDefaultimg.setVisibility(0);
    while (true)
    {
      return;
      this.mDefaultimg.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MMSThumbnailSecureSpaceDefaultView
 * JD-Core Version:    0.6.2
 */