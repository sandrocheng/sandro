package com.avast.android.mobilesecurity.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.widget.FrameLayout;

class k extends FrameLayout
{
  private boolean b = false;
  private MotionEvent c;
  private MotionEvent d;
  private int e;
  private boolean f;
  private VelocityTracker g;
  private MotionEvent h;

  public k(g paramg, Context paramContext)
  {
    super(paramContext);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (g.c(this.a));
    while (true)
    {
      return bool;
      if (paramMotionEvent.getAction() == 0)
        this.h = MotionEvent.obtain(paramMotionEvent);
      if (((!g.d(this.a)) && (paramMotionEvent.getX() < g.e(this.a)) && (paramMotionEvent.getAction() == 2)) || ((g.d(this.a)) && (paramMotionEvent.getX() > g.f(this.a).getWidth() - g.g(this.a))))
      {
        if ((paramMotionEvent.getAction() == 2) && (Math.abs(paramMotionEvent.getX() - this.h.getX()) < g.h(this.a)))
          bool = false;
        else if ((!g.d(this.a)) && (paramMotionEvent.getX() < this.h.getX()))
          bool = false;
      }
      else
        bool = false;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    if (g.c(this.a));
    while (true)
    {
      return i;
      if ((!this.b) && ((paramMotionEvent.getAction() == 2) || (paramMotionEvent.getAction() == 0)) && (((!g.d(this.a)) && (paramMotionEvent.getX() < g.e(this.a))) || ((g.d(this.a)) && (paramMotionEvent.getX() > g.f(this.a).getWidth() - g.g(this.a)))))
      {
        this.b = i;
        this.g = VelocityTracker.obtain();
        this.c = MotionEvent.obtain(paramMotionEvent);
        this.e = ((int)(g.f(this.a).getScrollX() + this.c.getX()));
        this.f = false;
      }
      else
      {
        if ((this.b) && (paramMotionEvent.getAction() == 2))
        {
          this.g.addMovement(paramMotionEvent);
          if ((this.d != null) && (this.d.getX() < paramMotionEvent.getX()));
          for (this.f = i; ; this.f = false)
          {
            this.d = MotionEvent.obtain(paramMotionEvent);
            int k = (int)(paramMotionEvent.getX() - this.e);
            if ((k <= 0) || (k >= g.f(this.a).getWidth() - g.g(this.a)))
              break;
            g.a(this.a, k);
            break;
          }
        }
        if (((this.b) || (g.d(this.a))) && (paramMotionEvent.getAction() == i))
        {
          if (this.b)
          {
            this.g.computeCurrentVelocity(1000);
            if (this.f)
              g.b(this.a, (int)this.g.getXVelocity());
            while (true)
            {
              this.g = null;
              this.c = null;
              this.b = false;
              break;
              g.c(this.a, (int)this.g.getXVelocity());
            }
          }
          if (paramMotionEvent.getX() > g.f(this.a).getWidth() - g.g(this.a))
            this.a.d();
        }
        else
        {
          int j = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.k
 * JD-Core Version:    0.6.2
 */