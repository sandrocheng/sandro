package com.tencent.qqpimsecure.uilib.view.slide;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.util.ArrayList;

public class SlidePoint extends LinearLayout
{
  public static final int TYPE_BLUE_BG = 1;
  public static final int TYPE_WHITE_BG = 2;
  private int currentFourceIndex;
  private Context mContext;
  private int noseleteDrawableID;
  private int pointCount;
  private ArrayList<ImageView> pointImageList;
  private int pointType = 1;
  private int seleteDrawableID;

  public SlidePoint(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.pointCount = paramInt1;
    this.pointType = paramInt2;
    initView();
  }

  public SlidePoint(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    this.pointCount = paramInt1;
    this.pointType = paramInt2;
    initView();
  }

  private void initPonitDrawable()
  {
    switch (this.pointType)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.noseleteDrawableID = 2130838260;
      this.seleteDrawableID = 2130838259;
      continue;
      this.noseleteDrawableID = 2130837647;
      this.seleteDrawableID = 2130837648;
    }
  }

  private void initView()
  {
    initPonitDrawable();
    this.pointImageList = new ArrayList(this.pointCount);
    for (int i = 0; i < this.pointCount; i++)
    {
      ImageView localImageView = new ImageView(this.mContext);
      localImageView.setImageResource(this.noseleteDrawableID);
      this.pointImageList.add(localImageView);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.rightMargin = 5;
      localLayoutParams.leftMargin = 5;
      addView(localImageView, localLayoutParams);
    }
  }

  public int getCurrentFourceIndex()
  {
    return this.currentFourceIndex;
  }

  public int getPointType()
  {
    return this.pointType;
  }

  public void setCurrentFourceIndex(int paramInt)
  {
    this.currentFourceIndex = paramInt;
    int i = 0;
    if (i < this.pointImageList.size())
    {
      if (paramInt == i)
        ((ImageView)this.pointImageList.get(i)).setImageResource(this.seleteDrawableID);
      while (true)
      {
        i++;
        break;
        ((ImageView)this.pointImageList.get(i)).setImageResource(this.noseleteDrawableID);
      }
    }
  }

  public void setPointType(int paramInt)
  {
    this.pointType = paramInt;
    initPonitDrawable();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.slide.SlidePoint
 * JD-Core Version:    0.6.2
 */