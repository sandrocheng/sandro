package com.b.a;

import java.util.Iterator;
import java.util.Map.Entry;

public final class ek
{
  private final Iterator b = ej.a(this.a).h();
  private Map.Entry c;
  private final boolean d;

  private ek(ej paramej, boolean paramBoolean, byte paramByte)
  {
    if (this.b.hasNext())
      this.c = ((Map.Entry)this.b.next());
    this.d = paramBoolean;
  }

  private void a(int paramInt, n paramn)
  {
    while ((this.c != null) && (((em)this.c.getKey()).e() < paramInt))
    {
      em localem = (em)this.c.getKey();
      if ((this.d) && (localem.g() == gv.i) && (!localem.m()))
        paramn.c(localem.e(), (ex)this.c.getValue());
      while (true)
      {
        if (!this.b.hasNext())
          break label131;
        this.c = ((Map.Entry)this.b.next());
        break;
        dh.a(localem, this.c.getValue(), paramn);
      }
      label131: this.c = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ek
 * JD-Core Version:    0.6.2
 */