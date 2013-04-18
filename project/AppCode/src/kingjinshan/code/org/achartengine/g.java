package org.achartengine;

import android.graphics.RectF;
import android.view.MotionEvent;
import org.achartengine.a.a;
import org.achartengine.a.h;
import org.achartengine.c.c;

public final class g
  implements e
{
  private org.achartengine.renderer.b a;
  private float b;
  private float c;
  private RectF d = new RectF();
  private org.achartengine.c.b e;
  private b f;

  public g(b paramb, a parama)
  {
    this.f = paramb;
    this.d = this.f.a();
    if ((parama instanceof h));
    for (this.a = ((h)parama).e(); ; this.a = ((org.achartengine.a.e)parama).b())
    {
      if (this.a.isPanEnabled())
        this.e = new org.achartengine.c.b(parama);
      return;
    }
  }

  public final void a(c paramc)
  {
    if (this.e != null)
      this.e.a(paramc);
  }

  public final boolean a(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    boolean bool;
    if ((this.a != null) && (i == 2))
    {
      if ((this.b < 0.0F) && (this.c < 0.0F))
        break label174;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if (this.a.isPanEnabled())
        this.e.a(this.b, this.c, f1, f2);
      this.b = f1;
      this.c = f2;
      this.f.b();
      bool = true;
    }
    while (true)
    {
      return bool;
      if (i == 0)
      {
        this.b = paramMotionEvent.getX();
        this.c = paramMotionEvent.getY();
        if ((this.a != null) && (this.a.isZoomEnabled()) && (this.d.contains(this.b, this.c)))
          bool = true;
      }
      else
      {
        if (i == 1)
        {
          this.b = 0.0F;
          this.c = 0.0F;
        }
        label174: if (!this.a.isClickEnabled())
          bool = true;
        else
          bool = false;
      }
    }
  }

  public final void b(c paramc)
  {
    if (this.e != null)
      this.e.b(paramc);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     org.achartengine.g
 * JD-Core Version:    0.6.2
 */