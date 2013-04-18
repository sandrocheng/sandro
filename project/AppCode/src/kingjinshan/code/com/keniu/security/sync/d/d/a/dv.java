package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class dv extends dn
  implements dw
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private long e;
  private int f;
  private Object g = "";
  private Object h = "";
  private int i;
  private int j;

  private dv()
  {
    du.K();
  }

  private dv(dp paramdp, byte paramByte)
  {
    super(paramdp);
    du.K();
  }

  private static cj E()
  {
    return a.P();
  }

  private static void N()
  {
    du.K();
  }

  private static dv U()
  {
    return new dv();
  }

  private dv V()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0;
    this.a = (0xFFFFFFEF & this.a);
    this.g = "";
    this.a = (0xFFFFFFDF & this.a);
    this.h = "";
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0;
    this.a = (0xFFFFFF7F & this.a);
    this.j = 0;
    this.a = (0xFFFFFEFF & this.a);
    return this;
  }

  private dv W()
  {
    return new dv().a(Z());
  }

  private static du X()
  {
    return du.h();
  }

  private du Y()
  {
    du localdu = Z();
    if (!localdu.a())
      throw b(localdu).a();
    return localdu;
  }

  private du Z()
  {
    du localdu = new du(this);
    int k = this.a;
    int m = k & 0x1;
    int n = 0;
    if (m == 1)
      n = 1;
    du.a(localdu, this.b);
    if ((k & 0x2) == 2)
      n |= 2;
    du.b(localdu, this.c);
    if ((k & 0x4) == 4)
      n |= 4;
    du.c(localdu, this.d);
    if ((k & 0x8) == 8)
      n |= 8;
    du.a(localdu, this.e);
    if ((k & 0x10) == 16)
      n |= 16;
    du.a(localdu, this.f);
    if ((k & 0x20) == 32)
      n |= 32;
    du.d(localdu, this.g);
    if ((k & 0x40) == 64)
      n |= 64;
    du.e(localdu, this.h);
    if ((k & 0x80) == 128)
      n |= 128;
    du.b(localdu, this.i);
    if ((k & 0x100) == 256);
    for (int i1 = n | 0x100; ; i1 = n)
    {
      du.c(localdu, this.j);
      du.d(localdu, i1);
      ab_();
      return localdu;
    }
  }

  private dv aa()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = du.h().k();
    af_();
    return this;
  }

  private dv ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = du.h().m();
    af_();
    return this;
  }

  private dv ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = du.h().o();
    af_();
    return this;
  }

  private dv ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private dv ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private dv af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = du.h().u();
    af_();
    return this;
  }

  private dv ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = du.h().w();
    af_();
    return this;
  }

  private dv ah()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0;
    af_();
    return this;
  }

  private dv ai()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = 0;
    af_();
    return this;
  }

  private dv b(int paramInt)
  {
    this.a = (0x80 | this.a);
    this.i = paramInt;
    af_();
    return this;
  }

  private dv c(int paramInt)
  {
    this.a = (0x100 | this.a);
    this.j = paramInt;
    af_();
    return this;
  }

  private dv d(ev paramev)
  {
    if ((paramev instanceof du));
    for (dv localdv = a((du)paramev); ; localdv = this)
    {
      return localdv;
      super.a(paramev);
    }
  }

  private dv e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private void h(i parami)
  {
    this.a = (0x20 | this.a);
    this.g = parami;
    af_();
  }

  private void i(i parami)
  {
    this.a = (0x40 | this.a);
    this.h = parami;
    af_();
  }

  public final int A()
  {
    return this.j;
  }

  protected final com.b.a.dv B()
  {
    return a.Q();
  }

  public final cj C()
  {
    return du.i();
  }

  public final dv a(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  public final dv a(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  public final dv a(du paramdu)
  {
    if (paramdu == du.h());
    for (dv localdv = this; ; localdv = this)
    {
      return localdv;
      if (paramdu.j())
        a(paramdu.k());
      if (paramdu.l())
        b(paramdu.m());
      if (paramdu.n())
        c(paramdu.o());
      if (paramdu.p())
        a(paramdu.q());
      if (paramdu.r())
        a(paramdu.s());
      if (paramdu.t())
      {
        String str2 = paramdu.u();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x20 | this.a);
        this.g = str2;
        af_();
      }
      if (paramdu.v())
      {
        String str1 = paramdu.w();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x40 | this.a);
        this.h = str1;
        af_();
      }
      if (paramdu.x())
      {
        int m = paramdu.y();
        this.a = (0x80 | this.a);
        this.i = m;
        af_();
      }
      if (paramdu.z())
      {
        int k = paramdu.A();
        this.a = (0x100 | this.a);
        this.j = k;
        af_();
      }
      e(paramdu.b_());
    }
  }

  public final dv a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!l())
        bool = false;
      else if (!n())
        bool = false;
      else if (!p())
        bool = false;
      else if (!r())
        bool = false;
      else
        bool = true;
    }
  }

  public final dv b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final dv c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  public final dv d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    af_();
    return this;
  }

  public final dv e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int k = paramm.a();
      switch (k)
      {
      default:
        if (!a(paramm, localgi, paramdf, k))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (dv localdv = this; ; localdv = this)
        {
          return localdv;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramm.k();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.e();
        break;
      case 48:
        this.a = (0x10 | this.a);
        this.f = paramm.f();
        break;
      case 58:
        this.a = (0x20 | this.a);
        this.g = paramm.k();
        break;
      case 66:
        this.a = (0x40 | this.a);
        this.h = paramm.k();
        break;
      case 72:
        this.a = (0x80 | this.a);
        this.i = paramm.f();
        break;
      case 80:
        this.a = (0x100 | this.a);
        this.j = paramm.f();
      }
    }
  }

  public final du i()
  {
    du localdu = Z();
    if (!localdu.a())
      throw b(localdu);
    return localdu;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject = this.b;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.b = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject = this.c;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.c = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean n()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String o()
  {
    Object localObject = this.d;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.d = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.e;
  }

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int s()
  {
    return this.f;
  }

  public final boolean t()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String u()
  {
    Object localObject = this.g;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.g = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean v()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String w()
  {
    Object localObject = this.h;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.h = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean x()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int y()
  {
    return this.i;
  }

  public final boolean z()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dv
 * JD-Core Version:    0.6.2
 */