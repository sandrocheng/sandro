package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.al;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class p extends n
  implements t
{
  private int a;
  private int b;
  private q c = q.a();

  private p()
  {
    m();
  }

  private void m()
  {
  }

  private static p n()
  {
    return new p();
  }

  private o o()
  {
    o localo = d();
    if (!localo.v())
      throw a(localo).a();
    return localo;
  }

  public p a()
  {
    return n().a(d());
  }

  public p a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    return this;
  }

  public p a(o paramo)
  {
    if (paramo == o.a());
    while (true)
    {
      return this;
      if (paramo.b())
        a(paramo.c());
      if (paramo.d())
        b(paramo.e());
    }
  }

  public p a(q paramq)
  {
    if (paramq == null)
      throw new NullPointerException();
    this.c = paramq;
    this.a = (0x2 | this.a);
    return this;
  }

  public p a(d paramd, g paramg)
  {
    while (true)
    {
      int i = paramd.a();
      switch (i)
      {
      default:
        if (a(paramd, paramg, i))
          continue;
      case 0:
        return this;
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramd.m();
        break;
      case 18:
      }
      r localr = q.h();
      if (f())
        localr.a(k());
      paramd.a(localr, paramg);
      a(localr.d());
    }
  }

  public o b()
  {
    return o.a();
  }

  public p b(q paramq)
  {
    if (((0x2 & this.a) == 2) && (this.c != q.a()));
    for (this.c = q.a(this.c).a(paramq).d(); ; this.c = paramq)
    {
      this.a = (0x2 | this.a);
      return this;
    }
  }

  public o c()
  {
    o localo = d();
    if (!localo.v())
      throw a(localo);
    return localo;
  }

  public o d()
  {
    int i = 1;
    o localo = new o(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      o.a(localo, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      o.a(localo, this.c);
      o.b(localo, i);
      return localo;
      i = 0;
    }
  }

  public boolean e()
  {
    int i = 1;
    if ((0x1 & this.a) == i);
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public boolean f()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public q k()
  {
    return this.c;
  }

  public final boolean v()
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      if (f())
      {
        boolean bool3 = k().v();
        bool2 = false;
        if (!bool3);
      }
      else
      {
        bool2 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.p
 * JD-Core Version:    0.6.2
 */