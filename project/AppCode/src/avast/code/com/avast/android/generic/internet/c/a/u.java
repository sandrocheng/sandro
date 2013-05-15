package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class u extends n
  implements aa
{
  private int a;
  private c b = c.a;
  private Object c = "";
  private v d = v.a();

  private u()
  {
    l();
  }

  private void l()
  {
  }

  private static u m()
  {
    return new u();
  }

  public u a()
  {
    return m().a(d());
  }

  public u a(t paramt)
  {
    if (paramt == t.a());
    while (true)
    {
      return this;
      if (paramt.b())
        a(paramt.c());
      if (paramt.d())
        a(paramt.e());
      if (paramt.f())
        b(paramt.g());
    }
  }

  public u a(v paramv)
  {
    if (paramv == null)
      throw new NullPointerException();
    this.d = paramv;
    this.a = (0x4 | this.a);
    return this;
  }

  public u a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public u a(d paramd, g paramg)
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
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 26:
      }
      w localw = v.h();
      if (e())
        localw.a(f());
      paramd.a(localw, paramg);
      a(localw.d());
    }
  }

  public u a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public t b()
  {
    return t.a();
  }

  public u b(v paramv)
  {
    if (((0x4 & this.a) == 4) && (this.d != v.a()));
    for (this.d = v.a(this.d).a(paramv).d(); ; this.d = paramv)
    {
      this.a = (0x4 | this.a);
      return this;
    }
  }

  public t c()
  {
    t localt = d();
    if (!localt.v())
      throw a(localt);
    return localt;
  }

  public t d()
  {
    int i = 1;
    t localt = new t(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      t.a(localt, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      t.a(localt, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      t.a(localt, this.d);
      t.a(localt, i);
      return localt;
      i = 0;
    }
  }

  public boolean e()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public v f()
  {
    return this.d;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.u
 * JD-Core Version:    0.6.2
 */