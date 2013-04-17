package com.tencent.powermanager.uilib.services;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import dn;
import dv;

public abstract class OnSuspendedViewTouch extends LinearLayout
  implements View.OnTouchListener
{
  public int a;
  public int b;
  public boolean c;
  protected int d;
  protected int e;
  public boolean f = false;
  private WindowManager g;
  private float h;
  private float i;
  private float j;
  private float k;
  private int l;
  private int m;
  private int n;
  private boolean o = false;
  private Handler p = new dn(this);

  public OnSuspendedViewTouch(Context paramContext)
  {
    super(paramContext);
    this.g = ((WindowManager)paramContext.getSystemService("window"));
    this.l = dv.a();
    getWidth();
    this.n = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    setClickable(true);
    setEnabled(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    setOnTouchListener(this);
  }

  private void b()
  {
    this.a = ((int)(this.h - this.j));
    if (this.a < 0);
    while (true)
    {
      return;
      if (a())
        this.b = ((int)(this.i - this.k));
      int i1 = this.b;
      try
      {
        this.g.updateViewLayout(this, a(this.a, i1));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
      }
    }
  }

  public abstract WindowManager.LayoutParams a(int paramInt1, int paramInt2);

  public abstract void a(int paramInt);

  public boolean a()
  {
    return true;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i1 = 1;
    if (this.c)
      return i1;
    this.l = this.g.getDefaultDisplay().getWidth();
    int i2 = paramMotionEvent.getAction();
    this.h = paramMotionEvent.getRawX();
    this.i = paramMotionEvent.getRawY();
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    int i3 = localRect.top;
    this.i -= i3;
    switch (i2)
    {
    default:
    case 0:
    case 2:
      while (true)
      {
        i1 = this.f;
        break;
        this.j = paramMotionEvent.getX();
        this.k = paramMotionEvent.getY();
        b();
        this.f = false;
        this.o = false;
        continue;
        int i4 = (int)Math.abs(paramMotionEvent.getX() - this.j);
        int i5 = (int)Math.abs(paramMotionEvent.getY() - this.k);
        if ((i4 > this.n) || (i5 > this.n) || (this.f))
        {
          this.f = i1;
          b();
          if (this.d == i1)
          {
            if ((this.a >= this.l / 3) && (this.e == i1))
              this.e = 2;
            else if ((this.a < this.l / 3) && (this.e == 2))
              this.e = i1;
          }
          else if ((this.a <= (this.l << 1) / 3) && (this.e == 2))
            this.e = i1;
          else if ((this.a >= (this.l << 1) / 3) && (this.e == i1))
            this.e = 2;
        }
      }
    case 1:
    }
    this.o = false;
    if (this.e == i1);
    for (this.m = -35; ; this.m = 35)
    {
      this.d = this.e;
      this.c = i1;
      this.p.sendEmptyMessage(i1);
      break;
    }
  }

  public void setRocketDone()
  {
    this.o = false;
  }

  public void setSelfWidth(int paramInt)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.services.OnSuspendedViewTouch
 * JD-Core Version:    0.6.2
 */