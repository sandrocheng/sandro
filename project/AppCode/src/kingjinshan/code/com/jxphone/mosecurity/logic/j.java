package com.jxphone.mosecurity.logic;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.keniu.security.a;

final class j
  implements View.OnTouchListener
{
  j(i parami, a parama)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    while (true)
    {
      return false;
      i.a(this.b, paramMotionEvent.getRawX());
      i.b(this.b, paramMotionEvent.getRawY());
      continue;
      i.c(this.b, paramMotionEvent.getRawX() - i.a(this.b));
      i.d(this.b, paramMotionEvent.getRawY() - i.b(this.b));
      i.a(this.b, paramMotionEvent.getRawX());
      i.b(this.b, paramMotionEvent.getRawY());
      i locali = this.b;
      float f1 = i.c(this.b);
      float f2 = i.d(this.b);
      i.a(locali, f1, f2);
      i.e(this.b);
      i.f(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.j
 * JD-Core Version:    0.6.2
 */