package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.a.a;
import org.achartengine.a.h;
import org.achartengine.c.c;

public final class f
  implements e
{
  private org.achartengine.renderer.b a;
  private float b;
  private float c;
  private float d;
  private float e;
  private RectF f = new RectF();
  private org.achartengine.c.b g;
  private b h;

  public f(b paramb, a parama)
  {
    this.h = paramb;
    this.f = this.h.a();
    if ((parama instanceof h));
    for (this.a = ((h)parama).e(); ; this.a = ((org.achartengine.a.e)parama).b())
    {
      if (this.a.isPanEnabled())
        this.g = new org.achartengine.c.b(parama);
      return;
    }
  }

  public final void a(c paramc)
  {
    if (this.g != null)
      this.g.a(paramc);
  }

  public final boolean a(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    float f1;
    float f2;
    boolean bool;
    if ((this.a != null) && (i == 2))
    {
      if ((this.b < 0.0F) && (this.c < 0.0F))
        break label353;
      f1 = paramMotionEvent.getX(0);
      f2 = paramMotionEvent.getY(0);
      if ((paramMotionEvent.getPointerCount() > 1) && ((this.d >= 0.0F) || (this.e >= 0.0F)) && (this.a.isZoomEnabled()))
      {
        float f3 = paramMotionEvent.getX(1);
        float f4 = paramMotionEvent.getY(1);
        Math.abs(f1 - f3);
        Math.abs(f2 - f4);
        Math.abs(this.b - this.d);
        Math.abs(this.c - this.e);
        Math.abs(f1 - this.b);
        Math.abs(f2 - this.c);
        this.d = f3;
        this.e = f4;
        this.b = f1;
        this.c = f2;
        this.h.b();
        bool = true;
      }
    }
    while (true)
    {
      return bool;
      if (!this.a.isPanEnabled())
        break;
      this.g.a(this.b, this.c, f1, f2);
      this.d = 0.0F;
      this.e = 0.0F;
      break;
      if (i == 0)
      {
        this.b = paramMotionEvent.getX(0);
        this.c = paramMotionEvent.getY(0);
        if ((this.a != null) && (this.a.isZoomEnabled()) && (this.f.contains(this.b, this.c)))
          bool = true;
      }
      else
      {
        if ((i == 1) || (i == 6))
        {
          this.b = 0.0F;
          this.c = 0.0F;
          this.d = 0.0F;
          this.e = 0.0F;
          if (i == 6)
          {
            this.b = -1.0F;
            this.c = -1.0F;
          }
        }
        label353: if (!this.a.isClickEnabled())
          bool = true;
        else
          bool = false;
      }
    }
  }

  public final void b(c paramc)
  {
    if (this.g != null)
      this.g.b(paramc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.f
 * JD-Core Version:    0.6.2
 */