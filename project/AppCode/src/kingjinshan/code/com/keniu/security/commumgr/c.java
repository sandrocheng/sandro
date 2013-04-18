package com.keniu.security.commumgr;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class c
  implements View.OnTouchListener
{
  private int b = 0;
  private int c = 0;
  private long d = 0L;

  public c(CallLocateLayoutActivity paramCallLocateLayoutActivity)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = CallLocateLayoutActivity.b(this.a).getWidth() - CallLocateLayoutActivity.c(this.a).getWidth();
    int j = CallLocateLayoutActivity.b(this.a).getHeight() - CallLocateLayoutActivity.c(this.a).getHeight();
    switch (paramMotionEvent.getAction())
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return true;
      if (500L + this.d > paramMotionEvent.getEventTime())
        CallLocateLayoutActivity.b(this.a).setPadding(i / 2, CallLocateLayoutActivity.b(this.a).getPaddingTop(), 0, 0);
      this.d = paramMotionEvent.getEventTime();
      continue;
      this.b = 0;
      this.c = 0;
      continue;
      if ((this.b != 0) || (this.c != 0))
        break;
      this.b = ((int)paramMotionEvent.getRawX());
      this.c = ((int)paramMotionEvent.getRawY());
    }
    int k = CallLocateLayoutActivity.b(this.a).getPaddingLeft() - this.b + (int)paramMotionEvent.getRawX();
    int m = CallLocateLayoutActivity.b(this.a).getPaddingTop() - this.c + (int)paramMotionEvent.getRawY();
    this.b = ((int)paramMotionEvent.getRawX());
    this.c = ((int)paramMotionEvent.getRawY());
    if (k < 0)
    {
      i = 0;
      label249: if (m >= 0)
        break label287;
      j = 0;
    }
    while (true)
    {
      CallLocateLayoutActivity.b(this.a).setPadding(i, j, 0, 0);
      break;
      if (k > i)
        break label249;
      i = k;
      break label249;
      label287: if (m <= j)
        j = m;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.c
 * JD-Core Version:    0.6.2
 */