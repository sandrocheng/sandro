package com.avast.android.mobilesecurity.engine.internal.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class aj extends n
  implements ak
{
  private int a;
  private ar b = ar.a();
  private ac c = ac.a();
  private w d = w.a();
  private af e = af.a();

  private aj()
  {
    r();
  }

  private void r()
  {
  }

  private static aj s()
  {
    return new aj();
  }

  public aj a()
  {
    return s().a(d());
  }

  public aj a(ac paramac)
  {
    if (paramac == null)
      throw new NullPointerException();
    this.c = paramac;
    this.a = (0x2 | this.a);
    return this;
  }

  public aj a(af paramaf)
  {
    if (paramaf == null)
      throw new NullPointerException();
    this.e = paramaf;
    this.a = (0x8 | this.a);
    return this;
  }

  public aj a(ai paramai)
  {
    if (paramai == ai.a());
    while (true)
    {
      return this;
      if (paramai.b())
        b(paramai.c());
      if (paramai.d())
        b(paramai.e());
      if (paramai.f())
        b(paramai.g());
      if (paramai.h())
        b(paramai.i());
    }
  }

  public aj a(ar paramar)
  {
    if (paramar == null)
      throw new NullPointerException();
    this.b = paramar;
    this.a = (0x1 | this.a);
    return this;
  }

  public aj a(w paramw)
  {
    if (paramw == null)
      throw new NullPointerException();
    this.d = paramw;
    this.a = (0x4 | this.a);
    return this;
  }

  public aj a(d paramd, g paramg)
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
        as localas = ar.j();
        if (e())
          localas.a(f());
        paramd.a(localas, paramg);
        a(localas.d());
        break;
      case 18:
        ad localad = ac.h();
        if (k())
          localad.a(l());
        paramd.a(localad, paramg);
        a(localad.d());
        break;
      case 26:
        x localx = w.d();
        if (m())
          localx.a(n());
        paramd.a(localx, paramg);
        a(localx.d());
        break;
      case 34:
      }
      ag localag = af.j();
      if (o())
        localag.a(p());
      paramd.a(localag, paramg);
      a(localag.d());
    }
  }

  public ai b()
  {
    return ai.a();
  }

  public aj b(ac paramac)
  {
    if (((0x2 & this.a) == 2) && (this.c != ac.a()));
    for (this.c = ac.a(this.c).a(paramac).d(); ; this.c = paramac)
    {
      this.a = (0x2 | this.a);
      return this;
    }
  }

  public aj b(af paramaf)
  {
    if (((0x8 & this.a) == 8) && (this.e != af.a()));
    for (this.e = af.a(this.e).a(paramaf).d(); ; this.e = paramaf)
    {
      this.a = (0x8 | this.a);
      return this;
    }
  }

  public aj b(ar paramar)
  {
    if (((0x1 & this.a) == 1) && (this.b != ar.a()));
    for (this.b = ar.a(this.b).a(paramar).d(); ; this.b = paramar)
    {
      this.a = (0x1 | this.a);
      return this;
    }
  }

  public aj b(w paramw)
  {
    if (((0x4 & this.a) == 4) && (this.d != w.a()));
    for (this.d = w.a(this.d).a(paramw).d(); ; this.d = paramw)
    {
      this.a = (0x4 | this.a);
      return this;
    }
  }

  public ai c()
  {
    ai localai = d();
    if (!localai.v())
      throw a(localai);
    return localai;
  }

  public ai d()
  {
    int i = 1;
    ai localai = new ai(this, null);
    int j = this.a;
    if ((j & 0x1) == i);
    while (true)
    {
      ai.a(localai, this.b);
      if ((j & 0x2) == 2)
        i |= 2;
      ai.a(localai, this.c);
      if ((j & 0x4) == 4)
        i |= 4;
      ai.a(localai, this.d);
      if ((j & 0x8) == 8)
        i |= 8;
      ai.a(localai, this.e);
      ai.a(localai, i);
      return localai;
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

  public ar f()
  {
    return this.b;
  }

  public boolean k()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ac l()
  {
    return this.c;
  }

  public boolean m()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public w n()
  {
    return this.d;
  }

  public boolean o()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public af p()
  {
    return this.e;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.engine.internal.a.aj
 * JD-Core Version:    0.6.2
 */