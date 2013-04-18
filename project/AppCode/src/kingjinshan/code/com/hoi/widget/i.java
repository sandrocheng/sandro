package com.hoi.widget;

import android.os.Handler;

final class i
  implements Runnable
{
  i(HorizontalNumberPicker paramHorizontalNumberPicker)
  {
  }

  public final void run()
  {
    if (HorizontalNumberPicker.a(this.a))
    {
      HorizontalNumberPicker.a(this.a, 1 + HorizontalNumberPicker.b(this.a));
      HorizontalNumberPicker.d(this.a).postDelayed(this, HorizontalNumberPicker.c(this.a));
    }
    while (true)
    {
      return;
      if (HorizontalNumberPicker.e(this.a))
      {
        HorizontalNumberPicker.a(this.a, HorizontalNumberPicker.b(this.a) - 1);
        HorizontalNumberPicker.d(this.a).postDelayed(this, HorizontalNumberPicker.c(this.a));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.i
 * JD-Core Version:    0.6.2
 */