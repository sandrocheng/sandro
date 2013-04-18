package com.b.a;

import java.util.Iterator;
import java.util.Map.Entry;

public final class ds
{
  private final Iterator b = dr.a(this.a).h();
  private Map.Entry c;
  private final boolean d;

  private ds(dr paramdr, boolean paramBoolean, byte paramByte)
  {
    if (this.b.hasNext())
      this.c = ((Map.Entry)this.b.next());
    this.d = paramBoolean;
  }

  public final void a(n paramn)
  {
    while ((this.c != null) && (((cq)this.c.getKey()).e() < 536870912))
    {
      cq localcq = (cq)this.c.getKey();
      if ((this.d) && (localcq.g() == gv.i) && (!localcq.m()))
        paramn.c(localcq.e(), (ev)this.c.getValue());
      while (true)
      {
        if (!this.b.hasNext())
          break label132;
        this.c = ((Map.Entry)this.b.next());
        break;
        dh.a(localcq, this.c.getValue(), paramn);
      }
      label132: this.c = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ds
 * JD-Core Version:    0.6.2
 */