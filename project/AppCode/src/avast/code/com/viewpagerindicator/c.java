package com.viewpagerindicator;

import android.view.View;

class c
  implements Runnable
{
  c(TabPageIndicator paramTabPageIndicator, View paramView)
  {
  }

  public void run()
  {
    int i = this.a.getLeft() - (this.b.getWidth() - this.a.getWidth()) / 2;
    this.b.smoothScrollTo(i, 0);
    TabPageIndicator.a(this.b, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.c
 * JD-Core Version:    0.6.2
 */