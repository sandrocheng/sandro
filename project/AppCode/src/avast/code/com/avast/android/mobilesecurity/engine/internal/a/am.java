package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import com.google.a.y;

public final class am extends n
  implements an
{
  private int a;
  private com.google.a.z b = y.a;
  private long c;
  private Object d = "";
  private c e = c.a;
  private z f = z.a();

  private am()
  {
    l();
  }

  private void l()
  {
  }

  private static am m()
  {
    return new am();
  }

  private void n()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new y(this.b);
      this.a = (0x1 | this.a);
    }
  }

  public am a()
  {
    return m().a(d());
  }

  public am a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public am a(aa paramaa)
  {
    this.f = paramaa.c();
    this.a = (0x10 | this.a);
    return this;
  }

  public am a(al paramal)
  {
    if (paramal == al.a())
      return this;
    if (!al.b(paramal).isEmpty())
    {
      if (!this.b.isEmpty())
        break label119;
      this.b = al.b(paramal);
      this.a = (0xFFFFFFFE & this.a);
    }
    while (true)
    {
      if (paramal.c())
        a(paramal.d());
      if (paramal.e())
        b(paramal.f());
      if (paramal.g())
        a(paramal.h());
      if (!paramal.i())
        break;
      b(paramal.j());
      break;
      label119: n();
      this.b.addAll(al.b(paramal));
    }
  }

  public am a(z paramz)
  {
    if (paramz == null)
      throw new NullPointerException();
    this.f = paramz;
    this.a = (0x10 | this.a);
    return this;
  }

  public am a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramc;
    return this;
  }

  public am a(d paramd, g paramg)
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
      case 10:
        n();
        this.b.a(paramd.l());
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.r();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramd.l();
        break;
      case 42:
      }
      aa localaa = z.n();
      if (e())
        localaa.a(f());
      paramd.a(localaa, paramg);
      a(localaa.d());
    }
  }

  public am a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    n();
    this.b.add(paramString);
    return this;
  }

  public al b()
  {
    return al.a();
  }

  public am b(z paramz)
  {
    if (((0x10 & this.a) == 16) && (this.f != z.a()));
    for (this.f = z.a(this.f).a(paramz).d(); ; this.f = paramz)
    {
      this.a = (0x10 | this.a);
      return this;
    }
  }

  public am b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public al c()
  {
    al localal = d();
    if (!localal.v())
      throw a(localal);
    return localal;
  }

  public al d()
  {
    int i = 1;
    al localal = new al(this, null);
    int j = this.a;
    if ((0x1 & this.a) == i)
    {
      this.b = new com.google.a.am(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    al.a(localal, this.b);
    if ((j & 0x2) == 2);
    while (true)
    {
      al.a(localal, this.c);
      if ((j & 0x4) == 4)
        i |= 2;
      al.a(localal, this.d);
      if ((j & 0x8) == 8)
        i |= 4;
      al.a(localal, this.e);
      if ((j & 0x10) == 16)
        i |= 8;
      al.a(localal, this.f);
      al.a(localal, i);
      return localal;
      i = 0;
    }
  }

  public boolean e()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public z f()
  {
    return this.f;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.am
 * JD-Core Version:    0.6.2
 */