package com.keniu.security.main;

import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

final class bf
  implements Runnable
{
  bf(MainActivity paramMainActivity)
  {
  }

  public final void run()
  {
    if (MainActivity.k(this.a).getWidth() > 0)
    {
      View localView = this.a.getLayoutInflater().inflate(2130903230, null);
      MainActivity.a(this.a, new PopupWindow(localView, -2, -2));
      MainActivity.i(this.a).setTouchable(true);
      float f = this.a.getResources().getDisplayMetrics().density;
      MainActivity.i(this.a).showAtLocation(MainActivity.l(this.a), 81, 0, (int)(f * 40.0F));
    }
    while (true)
    {
      return;
      MainActivity.m(this.a).postDelayed(this, 100L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bf
 * JD-Core Version:    0.6.2
 */