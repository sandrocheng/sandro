package com.keniu.security.commui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;

public class CustomTabHost extends TabHost
{
  private Animation a;
  private Animation b;
  private Animation c;
  private Animation d;
  private int e;

  public CustomTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = AnimationUtils.loadAnimation(paramContext, 2130968583);
    this.b = AnimationUtils.loadAnimation(paramContext, 2130968589);
    this.c = AnimationUtils.loadAnimation(paramContext, 2130968584);
    this.d = AnimationUtils.loadAnimation(paramContext, 2130968590);
  }

  public final int a()
  {
    return this.e;
  }

  public final void a(int paramInt)
  {
    super.setCurrentTab(paramInt);
  }

  public void addTab(TabHost.TabSpec paramTabSpec)
  {
    this.e = (1 + this.e);
    super.addTab(paramTabSpec);
  }

  public void setCurrentTab(int paramInt)
  {
    int i = getCurrentTab();
    if (getCurrentView() != null)
    {
      if ((i == this.e - 1) && (paramInt == 0))
        getCurrentView().startAnimation(this.b);
    }
    else
    {
      super.setCurrentTab(paramInt);
      if ((i != this.e - 1) || (paramInt != 0))
        break label134;
      getCurrentView().startAnimation(this.a);
    }
    while (true)
    {
      return;
      if ((i == 0) && (paramInt == this.e - 1))
      {
        getCurrentView().startAnimation(this.d);
        break;
      }
      if (paramInt > i)
      {
        getCurrentView().startAnimation(this.b);
        break;
      }
      if (paramInt >= i)
        break;
      getCurrentView().startAnimation(this.d);
      break;
      label134: if ((i == 0) && (paramInt == this.e - 1))
        getCurrentView().startAnimation(this.c);
      else if (paramInt > i)
        getCurrentView().startAnimation(this.a);
      else if (paramInt < i)
        getCurrentView().startAnimation(this.c);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commui.CustomTabHost
 * JD-Core Version:    0.6.2
 */