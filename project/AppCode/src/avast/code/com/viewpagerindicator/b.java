package com.viewpagerindicator;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.View.OnClickListener;

class b
  implements View.OnClickListener
{
  b(TabPageIndicator paramTabPageIndicator)
  {
  }

  public void onClick(View paramView)
  {
    e locale = (e)paramView;
    int i = TabPageIndicator.a(this.a).c();
    int j = locale.a();
    TabPageIndicator.a(this.a).a(j);
    if ((i == j) && (TabPageIndicator.b(this.a) != null))
      TabPageIndicator.b(this.a).a(j);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.b
 * JD-Core Version:    0.6.2
 */