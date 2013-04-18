package com.keniu.security.main;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.SlidingDrawer.OnDrawerCloseListener;

final class be
  implements SlidingDrawer.OnDrawerCloseListener
{
  be(MainActivity paramMainActivity)
  {
  }

  public final void onDrawerClosed()
  {
    MainActivity.j(this.a).setBackgroundDrawable(this.a.getResources().getDrawable(2130837825));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.be
 * JD-Core Version:    0.6.2
 */