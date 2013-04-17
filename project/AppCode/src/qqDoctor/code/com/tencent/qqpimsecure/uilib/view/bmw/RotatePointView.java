package com.tencent.qqpimsecure.uilib.view.bmw;

import android.content.Context;
import android.widget.ImageView;

public class RotatePointView extends ImageView
{
  private BMWAnimation animation;
  private int prcess = -1;

  public RotatePointView(Context paramContext, BMWAnimation paramBMWAnimation)
  {
    super(paramContext);
    this.animation = paramBMWAnimation;
  }

  public void addChangeListener(RotateTableView.ProcessChangeListener paramProcessChangeListener)
  {
    this.animation.addListener(paramProcessChangeListener);
  }

  public void changeBMW(int paramInt)
  {
    if (this.prcess == paramInt);
    while (true)
    {
      return;
      this.prcess = paramInt;
      this.animation.resetAnimation(this.prcess);
      startAnimation(this.animation);
    }
  }

  public int getPrcess()
  {
    return this.prcess;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.bmw.RotatePointView
 * JD-Core Version:    0.6.2
 */