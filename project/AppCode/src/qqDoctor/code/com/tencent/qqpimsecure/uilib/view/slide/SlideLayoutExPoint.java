package com.tencent.qqpimsecure.uilib.view.slide;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class SlideLayoutExPoint extends FrameLayout
  implements SlideCallBackInterface
{
  private int mBgType = 1;
  private Context mContext;
  private LayoutInflater mLayoutInflater;
  private LinearLayout.LayoutParams mLayoutParams;
  private SlideLayout mSlideLayout;
  private SlidePoint mSlidePoint;
  private SlideViewGroup mSlideViewGroup;
  private LinearLayout mainLayout;
  private LinearLayout pointLayout;

  public SlideLayoutExPoint(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mLayoutInflater = LayoutInflater.from(paramContext);
    FrameLayout localFrameLayout = (FrameLayout)this.mLayoutInflater.inflate(2130903249, null);
    this.mainLayout = ((LinearLayout)localFrameLayout.findViewById(2131231263));
    this.pointLayout = ((LinearLayout)localFrameLayout.findViewById(2131231234));
    addView(localFrameLayout);
    this.mSlideLayout = new SlideLayout(this.mContext);
    this.mSlideLayout.addSlideCallBackInterface(this);
  }

  public void addSlideCallBackInterface(SlideCallBackInterface paramSlideCallBackInterface)
  {
    this.mSlideLayout.addSlideCallBackInterface(paramSlideCallBackInterface);
  }

  public SlideViewGroup addSlideLayout(int paramInt)
  {
    LinearLayout localLinearLayout = (LinearLayout)this.mLayoutInflater.inflate(paramInt, null);
    this.mSlideViewGroup = new SlideViewGroup(this.mContext);
    this.mSlideViewGroup.addView(localLinearLayout, this.mLayoutParams);
    this.mSlideLayout.addView(this.mSlideViewGroup, this.mLayoutParams);
    return this.mSlideViewGroup;
  }

  public int getCurrentCanvasIndex()
  {
    return this.mSlideLayout.getCurrentScreen();
  }

  public SlideViewGroup getmSlideViewGroup()
  {
    return this.mSlideViewGroup;
  }

  public void initSlideLayout(int paramInt1, int paramInt2)
  {
    this.mLayoutParams = new LinearLayout.LayoutParams(-1, -1);
    addSlideLayout(paramInt1);
    this.mainLayout.addView(this.mSlideLayout, this.mLayoutParams);
    this.mSlidePoint = new SlidePoint(this.mContext, paramInt2, this.mBgType);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    this.pointLayout.addView(this.mSlidePoint, localLayoutParams);
  }

  public void onNextCanvas(int paramInt)
  {
    this.mSlidePoint.setCurrentFourceIndex(paramInt);
  }

  public void onSlideStart()
  {
  }

  public void onSlideStop()
  {
  }

  public void setAllowSlide(boolean paramBoolean)
  {
    this.mSlideLayout.isAllowSlideView = paramBoolean;
  }

  public void setBgType(int paramInt)
  {
    this.mBgType = paramInt;
  }

  public void setCurrentCanvasIndex(int paramInt)
  {
    this.mSlideLayout.setCurrentScreen(paramInt);
    this.mSlidePoint.setCurrentFourceIndex(paramInt);
  }

  public void snapToScreen(int paramInt)
  {
    this.mSlideLayout.snapToScreen(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.slide.SlideLayoutExPoint
 * JD-Core Version:    0.6.2
 */