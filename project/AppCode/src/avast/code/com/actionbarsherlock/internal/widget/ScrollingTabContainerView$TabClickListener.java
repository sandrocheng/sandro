package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.actionbarsherlock.app.ActionBar.Tab;

class ScrollingTabContainerView$TabClickListener
  implements View.OnClickListener
{
  private ScrollingTabContainerView$TabClickListener(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public void onClick(View paramView)
  {
    ((ScrollingTabContainerView.TabView)paramView).getTab().select();
    int i = ScrollingTabContainerView.access$200(this.this$0).getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = ScrollingTabContainerView.access$200(this.this$0).getChildAt(j);
      if (localView == paramView);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        j++;
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabClickListener
 * JD-Core Version:    0.6.2
 */