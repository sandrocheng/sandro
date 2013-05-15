package com.avast.a.a.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class an extends n
  implements as
{
  private int a;
  private aq b = aq.a;
  private long c;
  private Object d = "";
  private ao e = ao.a;
  private int f = -1;
  private Object g = "";
  private Object h = "";
  private Object i = "";
  private Object j = "";

  private an()
  {
    l();
  }

  private void l()
  {
  }

  private static an m()
  {
    return new an();
  }

  public an a()
  {
    return m().a(d());
  }

  public an a(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    return this;
  }

  public an a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.c = paramLong;
    return this;
  }

  public an a(am paramam)
  {
    if (paramam == am.a());
    while (true)
    {
      return this;
      if (paramam.b())
        a(paramam.c());
      if (paramam.d())
        a(paramam.e());
      if (paramam.f())
        a(paramam.g());
      if (paramam.h())
        a(paramam.i());
      if (paramam.j())
        a(paramam.k());
      if (paramam.l())
        b(paramam.m());
      if (paramam.n())
        c(paramam.o());
      if (paramam.p())
        d(paramam.q());
      if (paramam.r())
        e(paramam.s());
    }
  }

  public an a(ao paramao)
  {
    if (paramao == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramao;
    return this;
  }

  public an a(aq paramaq)
  {
    if (paramaq == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramaq;
    return this;
  }

  public an a(d paramd, g paramg)
  {
    while (true)
    {
      int k = paramd.a();
      switch (k)
      {
      default:
        if (a(paramd, paramg, k))
          continue;
      case 0:
        return this;
      case 8:
        aq localaq = aq.a(paramd.n());
        if (localaq == null)
          continue;
        this.a = (0x1 | this.a);
        this.b = localaq;
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.f();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 32:
        ao localao = ao.a(paramd.n());
        if (localao == null)
          continue;
        this.a = (0x8 | this.a);
        this.e = localao;
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramd.g();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramd.l();
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 74:
      }
      this.a = (0x100 | this.a);
      this.j = paramd.l();
    }
  }

  public an a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public am b()
  {
    return am.a();
  }

  public an b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public am c()
  {
    am localam = d();
    if (!localam.v())
      throw a(localam);
    return localam;
  }

  public an c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public am d()
  {
    int k = 1;
    am localam = new am(this, null);
    int m = this.a;
    if ((m & 0x1) == k);
    while (true)
    {
      am.a(localam, this.b);
      if ((m & 0x2) == 2)
        k |= 2;
      am.a(localam, this.c);
      if ((m & 0x4) == 4)
        k |= 4;
      am.a(localam, this.d);
      if ((m & 0x8) == 8)
        k |= 8;
      am.a(localam, this.e);
      if ((m & 0x10) == 16)
        k |= 16;
      am.a(localam, this.f);
      if ((m & 0x20) == 32)
        k |= 32;
      am.b(localam, this.g);
      if ((m & 0x40) == 64)
        k |= 64;
      am.c(localam, this.h);
      if ((m & 0x80) == 128)
        k |= 128;
      am.d(localam, this.i);
      if ((m & 0x100) == 256)
        k |= 256;
      am.e(localam, this.j);
      am.b(localam, k);
      return localam;
      k = 0;
    }
  }

  public an d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    return this;
  }

  public an e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    return this;
  }

  public boolean e()
  {
    int k = 1;
    if ((0x1 & this.a) == k);
    while (true)
    {
      return k;
      int m = 0;
    }
  }

  public boolean f()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean v()
  {
    boolean bool1 = e();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      boolean bool3 = f();
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.an
 * JD-Core Version:    0.6.2
 */