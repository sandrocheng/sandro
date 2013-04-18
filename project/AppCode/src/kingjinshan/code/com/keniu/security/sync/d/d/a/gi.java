package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;

public final class gi extends dn
  implements gm
{
  private int a;
  private Object b = "";
  private Object c = "";
  private Object d = "";
  private Object e = "";
  private long f;
  private Object g = "";
  private long h;
  private long i;
  private int j;

  private gi()
  {
    gh.J();
  }

  private gi(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gh.J();
  }

  private static cj D()
  {
    return gc.f();
  }

  private static void E()
  {
    gh.J();
  }

  private static gi N()
  {
    return new gi();
  }

  private gi U()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = "";
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0L;
    this.a = (0xFFFFFFEF & this.a);
    this.g = "";
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0L;
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0L;
    this.a = (0xFFFFFF7F & this.a);
    this.j = 0;
    this.a = (0xFFFFFEFF & this.a);
    return this;
  }

  private gi V()
  {
    return new gi().a(Z());
  }

  private static gh W()
  {
    return gh.h();
  }

  private gh X()
  {
    gh localgh = Z();
    if (!localgh.a())
      throw b(localgh);
    return localgh;
  }

  private gh Y()
  {
    gh localgh = Z();
    if (!localgh.a())
      throw b(localgh).a();
    return localgh;
  }

  private gh Z()
  {
    gh localgh = new gh(this);
    int k = this.a;
    int m = k & 0x1;
    int n = 0;
    if (m == 1)
      n = 1;
    gh.a(localgh, this.b);
    if ((k & 0x2) == 2)
      n |= 2;
    gh.b(localgh, this.c);
    if ((k & 0x4) == 4)
      n |= 4;
    gh.c(localgh, this.d);
    if ((k & 0x8) == 8)
      n |= 8;
    gh.d(localgh, this.e);
    if ((k & 0x10) == 16)
      n |= 16;
    gh.a(localgh, this.f);
    if ((k & 0x20) == 32)
      n |= 32;
    gh.e(localgh, this.g);
    if ((k & 0x40) == 64)
      n |= 64;
    gh.b(localgh, this.h);
    if ((k & 0x80) == 128)
      n |= 128;
    gh.c(localgh, this.i);
    if ((k & 0x100) == 256);
    for (int i1 = n | 0x100; ; i1 = n)
    {
      gh.a(localgh, this.j);
      gh.b(localgh, i1);
      ab_();
      return localgh;
    }
  }

  private gi a(int paramInt)
  {
    this.a = (0x100 | this.a);
    this.j = paramInt;
    af_();
    return this;
  }

  private gi a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private gi a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private gi aa()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = gh.h().k();
    af_();
    return this;
  }

  private gi ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = gh.h().m();
    af_();
    return this;
  }

  private gi ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = gh.h().o();
    af_();
    return this;
  }

  private gi ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = gh.h().q();
    af_();
    return this;
  }

  private gi ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private gi af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = gh.h().u();
    af_();
    return this;
  }

  private gi ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0L;
    af_();
    return this;
  }

  private gi ah()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0L;
    af_();
    return this;
  }

  private gi ai()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = 0;
    af_();
    return this;
  }

  private gi b(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    af_();
    return this;
  }

  private gi b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private gi c(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.i = paramLong;
    af_();
    return this;
  }

  private gi c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private gi d(ev paramev)
  {
    if ((paramev instanceof gh));
    for (gi localgi = a((gh)paramev); ; localgi = this)
    {
      return localgi;
      super.a(paramev);
    }
  }

  private gi d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  private gi e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
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
    this.a = (0x8 | this.a);
    this.e = parami;
    af_();
  }

  private void i(i parami)
  {
    this.a = (0x20 | this.a);
    this.g = parami;
    af_();
  }

  public final int A()
  {
    return this.j;
  }

  protected final dv B()
  {
    return gc.g();
  }

  public final cj C()
  {
    return gh.i();
  }

  public final gi a(gh paramgh)
  {
    if (paramgh == gh.h());
    for (gi localgi = this; ; localgi = this)
    {
      return localgi;
      if (paramgh.j())
      {
        String str5 = paramgh.k();
        if (str5 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str5;
        af_();
      }
      if (paramgh.l())
      {
        String str4 = paramgh.m();
        if (str4 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str4;
        af_();
      }
      if (paramgh.n())
      {
        String str3 = paramgh.o();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str3;
        af_();
      }
      if (paramgh.p())
      {
        String str2 = paramgh.q();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x8 | this.a);
        this.e = str2;
        af_();
      }
      if (paramgh.r())
      {
        long l3 = paramgh.s();
        this.a = (0x10 | this.a);
        this.f = l3;
        af_();
      }
      if (paramgh.t())
      {
        String str1 = paramgh.u();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x20 | this.a);
        this.g = str1;
        af_();
      }
      if (paramgh.v())
      {
        long l2 = paramgh.w();
        this.a = (0x40 | this.a);
        this.h = l2;
        af_();
      }
      if (paramgh.x())
      {
        long l1 = paramgh.y();
        this.a = (0x80 | this.a);
        this.i = l1;
        af_();
      }
      if (paramgh.z())
      {
        int k = paramgh.A();
        this.a = (0x100 | this.a);
        this.j = k;
        af_();
      }
      e(paramgh.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final gi e(m paramm, df paramdf)
  {
    com.b.a.gi localgi = gg.a(b_());
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
        for (gi localgi1 = this; ; localgi1 = this)
        {
          return localgi1;
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
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramm.k();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramm.e();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramm.k();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramm.e();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramm.e();
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramm.f();
      }
    }
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

  public final String q()
  {
    Object localObject = this.e;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.e = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean r()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long s()
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

  public final long w()
  {
    return this.h;
  }

  public final boolean x()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long y()
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.gi
 * JD-Core Version:    0.6.2
 */