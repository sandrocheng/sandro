package com.hoi.widget;

import android.os.Handler;

final class w
  implements Runnable
{
  w(NumberPicker paramNumberPicker)
  {
  }

  public final void run()
  {
    if (NumberPicker.a(this.a))
    {
      NumberPicker.a(this.a, 1 + NumberPicker.b(this.a));
      NumberPicker.d(this.a).postDelayed(this, NumberPicker.c(this.a));
    }
    while (true)
    {
      return;
      if (NumberPicker.e(this.a))
      {
        NumberPicker.a(this.a, NumberPicker.b(this.a) - 1);
        NumberPicker.d(this.a).postDelayed(this, NumberPicker.c(this.a));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.w
 * JD-Core Version:    0.6.2
 */