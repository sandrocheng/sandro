package com.ijinshan.cleaner.adapter;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;

public class CustomTabHost extends TabHost
{
  private int a;

  public CustomTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private int a()
  {
    return this.a;
  }

  public void addTab(TabHost.TabSpec paramTabSpec)
  {
    this.a = (1 + this.a);
    super.addTab(paramTabSpec);
  }

  public void setCurrentTab(int paramInt)
  {
    super.setCurrentTab(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.adapter.CustomTabHost
 * JD-Core Version:    0.6.2
 */