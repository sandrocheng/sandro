package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import gw;

public class MainLinearLayout extends LinearLayout
{
  private BaseView mMainPageView;

  public MainLinearLayout(Context paramContext)
  {
    super(paramContext);
  }

  public MainLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    gw.a(paramInt4 - paramInt2);
    gw.a(this.mMainPageView);
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void release()
  {
    this.mMainPageView = null;
  }

  public void setMainPageView(BaseView paramBaseView)
  {
    this.mMainPageView = paramBaseView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.MainLinearLayout
 * JD-Core Version:    0.6.2
 */