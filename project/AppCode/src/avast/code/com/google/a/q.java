package com.google.a;

import java.util.Iterator;
import java.util.Map.Entry;

public class q
{
  private final Iterator b = p.a(this.a).e();
  private Map.Entry c;
  private final boolean d;

  private q(p paramp, boolean paramBoolean)
  {
    if (this.b.hasNext())
      this.c = ((Map.Entry)this.b.next());
    this.d = paramBoolean;
  }

  public void a(int paramInt, e parame)
  {
    while ((this.c != null) && (((s)this.c.getKey()).a() < paramInt))
    {
      s locals = (s)this.c.getKey();
      if ((this.d) && (locals.c() == aw.i) && (!locals.d()))
        parame.c(locals.a(), (aa)this.c.getValue());
      while (true)
      {
        if (!this.b.hasNext())
          break label131;
        this.c = ((Map.Entry)this.b.next());
        break;
        i.a(locals, this.c.getValue(), parame);
      }
      label131: this.c = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.a.q
 * JD-Core Version:    0.6.2
 */