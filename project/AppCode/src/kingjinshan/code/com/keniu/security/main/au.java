package com.keniu.security.main;

import android.content.res.Resources;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.SlidingDrawer.OnDrawerOpenListener;

final class au
  implements SlidingDrawer.OnDrawerOpenListener
{
  au(MainActivity paramMainActivity)
  {
  }

  public final void onDrawerOpened()
  {
    if (MainActivity.i(this.a) != null)
    {
      if (MainActivity.i(this.a).isShowing())
        MainActivity.i(this.a).dismiss();
      MainActivity.a(this.a, null);
    }
    com.keniu.security.a locala = com.keniu.security.a.a(this.a);
    if (locala.w())
      locala.x();
    MainActivity.j(this.a).setBackgroundDrawable(this.a.getResources().getDrawable(2130837824));
    com.jxphone.mosecurity.a.a.i(this.a, "mg_main_openbar");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.au
 * JD-Core Version:    0.6.2
 */