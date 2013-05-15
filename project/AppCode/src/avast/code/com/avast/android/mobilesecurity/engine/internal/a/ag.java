package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class ag extends n
  implements ah
{
  private int a;
  private Object b = "";
  private Object c = "";
  private ai d = ai.a();
  private boolean e;

  private ag()
  {
    l();
  }

  private void l()
  {
  }

  private static ag m()
  {
    return new ag();
  }

  public ag a()
  {
    return m().a(d());
  }

  public ag a(af paramaf)
  {
    if (paramaf == af.a());
    while (true)
    {
      return this;
      if (paramaf.b())
        a(paramaf.c());
      if (paramaf.d())
        b(paramaf.e());
      if (paramaf.f())
        b(paramaf.g());
      if (paramaf.h())
        a(paramaf.i());
    }
  }

  public ag a(ai paramai)
  {
    if (paramai == null)
      throw new NullPointerException();
    this.d = paramai;
    this.a = (0x4 | this.a);
    return this;
  }

  public ag a(d paramd, g paramg)
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
        aj localaj = ai.j();
        if (e())
          localaj.a(f());
        paramd.a(localaj, paramg);
        a(localaj.d());
        break;
      case 32:
      }
      this.a = (0x8 | this.a);
      this.e = paramd.j();
    }
  }

  public ag a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public ag a(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.e = paramBoolean;
    return this;
  }

  public af b()
  {
    return af.a();
  }

  public ag b(ai paramai)
  {
    if (((0x4 & this.a) == 4) && (this.d != ai.a()));
    for (this.d = ai.a(this.d).a(paramai).d(); ; this.d = paramai)
    {
      this.a = (0x4 | this.a);
      return this;
    }
  }

  public ag b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public af c()
  {
    af localaf = d();
    if (!localaf.v())
      throw a(localaf);
    return localaf;
  }

  public af d()
  {
    int i = 1;
    af localaf = new af(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      af.a(localaf, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      af.b(localaf, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      af.a(localaf, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      af.a(localaf, this.e);
      af.a(localaf, i);
      return localaf;
      i = 0;
    }
  }

  public boolean e()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ai f()
  {
    return this.d;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.ag
 * JD-Core Version:    0.6.2
 */