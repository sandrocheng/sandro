package com.tencent.qqpimsecure.uilib.view;

import android.view.View;
import android.widget.ListView;
import com.tencent.qqpimsecure.uilib.viewpager.ViewPager.OnPageChangeListener;
import java.util.ArrayList;

class BaseTabView$1
  implements ViewPager.OnPageChangeListener
{
  private int mCurrent;
  private float mDeltaX;

  BaseTabView$1(BaseTabView paramBaseTabView)
  {
  }

  public void onPageScrollDeltaX(float paramFloat)
  {
    this.mDeltaX = paramFloat;
  }

  public void onPageScrollStateChanged(int paramInt)
  {
    new StringBuilder("onPageScrollStateChanged ").append(paramInt).toString();
    if ((BaseTabView.access$300(this.this$0).get(0) instanceof BaseListView));
    for (BaseListView localBaseListView = (BaseListView)BaseTabView.access$300(this.this$0).get(0); ; localBaseListView = null)
    {
      int i = this.this$0.getSerialNumber(BaseTabView.access$400(this.this$0));
      if (paramInt == 1)
      {
        if (((this.mDeltaX <= 0.0F) || (1 + this.mCurrent > BaseTabView.access$300(this.this$0).size())) && (this.mDeltaX < 0.0F));
        localBaseListView.getListView().setVerticalScrollBarEnabled(false);
        if (i != 0)
          break label272;
        ((ViewFramework)BaseTabView.access$300(this.this$0).get(0)).getView().setPadding(0, 0, 10, 0);
      }
      while (true)
      {
        if (paramInt == 0)
        {
          localBaseListView.getListView().setVerticalScrollBarEnabled(true);
          ((ViewFramework)BaseTabView.access$300(this.this$0).get(0)).getView().setPadding(0, 0, 0, 0);
          ((ViewFramework)BaseTabView.access$300(this.this$0).get(1)).getView().setPadding(0, 0, 0, 0);
        }
        if (paramInt == 2)
        {
          localBaseListView.getListView().setVerticalScrollBarEnabled(false);
          ((ViewFramework)BaseTabView.access$300(this.this$0).get(0)).getView().setPadding(0, 0, 0, 0);
          ((ViewFramework)BaseTabView.access$300(this.this$0).get(1)).getView().setPadding(0, 0, 0, 0);
        }
        return;
        label272: if (i == 1)
          ((ViewFramework)BaseTabView.access$300(this.this$0).get(1)).getView().setPadding(10, 0, 0, 0);
      }
    }
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    new StringBuilder("onPageScrolled ").append(paramInt1).append(" ").append(paramFloat).append(" ").append(paramInt2).toString();
  }

  public void onPageSelected(int paramInt)
  {
    new StringBuilder("onPageSelected ").append(paramInt).toString();
    this.mCurrent = paramInt;
    BaseTabView.access$200(this.this$0, BaseTabView.access$100(this.this$0, this.mCurrent));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.BaseTabView.1
 * JD-Core Version:    0.6.2
 */