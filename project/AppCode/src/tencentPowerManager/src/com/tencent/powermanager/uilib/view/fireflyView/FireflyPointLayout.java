package com.tencent.powermanager.uilib.view.fireflyView;

import ac;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.AbsoluteLayout;
import android.widget.AbsoluteLayout.LayoutParams;
import dq;
import dr;
import dr.a;
import dv;
import java.util.ArrayList;
import java.util.Iterator;

public class FireflyPointLayout extends AbsoluteLayout
{
  private ArrayList<dr> a;
  private Context b;
  private int c;
  private int d;
  private Rect e = null;
  private Rect f;
  private int g;
  private boolean h = true;
  private Handler i = new dq(this);

  public FireflyPointLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext;
    a();
    this.a = new ArrayList();
    d();
  }

  private void d()
  {
    for (int j = 0; j < 8; j++)
    {
      dr localdr = new dr(this.c, this.d, this.b);
      this.a.add(localdr);
    }
  }

  public final void a()
  {
    if (ac.a == 1)
      this.c = dv.g();
    for (this.d = dv.h(); ; this.d = dv.g())
    {
      return;
      this.c = dv.h();
    }
  }

  public final void b()
  {
    if (!this.h);
    while (true)
    {
      return;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
        ((dr)localIterator.next()).b.a();
      this.h = false;
      this.i.sendEmptyMessageDelayed(1, 70L);
      this.i.sendEmptyMessageDelayed(2, 5000L);
    }
  }

  public final void c()
  {
    synchronized (this.i)
    {
      if (this.h)
        return;
      Iterator localIterator = this.a.iterator();
      if (localIterator.hasNext())
        ((dr)localIterator.next()).b.clearAnimation();
    }
    this.h = true;
    this.i.removeMessages(1);
    this.i.removeMessages(2);
  }

  public void setRestrictRect(Rect paramRect1, Rect paramRect2, int paramInt)
  {
    if (this.e == null)
    {
      this.e = paramRect1;
      this.f = paramRect2;
      this.g = paramInt;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        dr localdr = (dr)localIterator.next();
        localdr.a(paramRect1, paramRect2, paramInt);
        if (localdr.a.size() > 0)
        {
          AbsoluteLayout.LayoutParams localLayoutParams = new AbsoluteLayout.LayoutParams(-2, -2, ((dr.a)localdr.a.get(0)).a, ((dr.a)localdr.a.get(0)).b);
          addView(localdr.b, localLayoutParams);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.view.fireflyView.FireflyPointLayout
 * JD-Core Version:    0.6.2
 */