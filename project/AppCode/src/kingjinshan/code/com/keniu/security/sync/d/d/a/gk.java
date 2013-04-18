package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class gk extends dn
  implements gl
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
  private long k;
  private long l;
  private long m;

  private gk()
  {
    gj.Q();
  }

  private gk(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gj.Q();
  }

  private static cj U()
  {
    return gc.d();
  }

  private static void V()
  {
    gj.Q();
  }

  private static gk W()
  {
    return new gk();
  }

  private gk X()
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
    this.k = 0L;
    this.a = (0xFFFFFDFF & this.a);
    this.l = 0L;
    this.a = (0xFFFFFBFF & this.a);
    this.m = 0L;
    this.a = (0xFFFFF7FF & this.a);
    return this;
  }

  private gk Y()
  {
    return new gk().a(D());
  }

  private static gj Z()
  {
    return gj.h();
  }

  private gk a(int paramInt)
  {
    this.a = (0x100 | this.a);
    this.j = paramInt;
    af_();
    return this;
  }

  private gk a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    af_();
    return this;
  }

  private gk a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private gj aa()
  {
    gj localgj = D();
    if (!localgj.a())
      throw b(localgj).a();
    return localgj;
  }

  private gk ab()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = gj.h().k();
    af_();
    return this;
  }

  private gk ac()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = gj.h().m();
    af_();
    return this;
  }

  private gk ad()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = gj.h().o();
    af_();
    return this;
  }

  private gk ae()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = gj.h().q();
    af_();
    return this;
  }

  private gk af()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = 0L;
    af_();
    return this;
  }

  private gk ag()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = gj.h().u();
    af_();
    return this;
  }

  private gk ah()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0L;
    af_();
    return this;
  }

  private gk ai()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0L;
    af_();
    return this;
  }

  private gk aj()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = 0;
    af_();
    return this;
  }

  private gk ak()
  {
    this.a = (0xFFFFFDFF & this.a);
    this.k = 0L;
    af_();
    return this;
  }

  private gk al()
  {
    this.a = (0xFFFFFBFF & this.a);
    this.l = 0L;
    af_();
    return this;
  }

  private gk am()
  {
    this.a = (0xFFFFF7FF & this.a);
    this.m = 0L;
    af_();
    return this;
  }

  private gk b(long paramLong)
  {
    this.a = (0x40 | this.a);
    this.h = paramLong;
    af_();
    return this;
  }

  private gk b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private gk c(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.i = paramLong;
    af_();
    return this;
  }

  private gk c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private gk d(long paramLong)
  {
    this.a = (0x200 | this.a);
    this.k = paramLong;
    af_();
    return this;
  }

  private gk d(ev paramev)
  {
    if ((paramev instanceof gj));
    for (gk localgk = a((gj)paramev); ; localgk = this)
    {
      return localgk;
      super.a(paramev);
    }
  }

  private gk d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  private gk e(long paramLong)
  {
    this.a = (0x400 | this.a);
    this.l = paramLong;
    af_();
    return this;
  }

  private gk e(String paramString)
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

  private gk f(long paramLong)
  {
    this.a = (0x800 | this.a);
    this.m = paramLong;
    af_();
    return this;
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
    return gc.e();
  }

  public final cj C()
  {
    return gj.i();
  }

  public final gj D()
  {
    gj localgj = new gj(this);
    int n = this.a;
    int i1 = n & 0x1;
    int i2 = 0;
    if (i1 == 1)
      i2 = 1;
    gj.a(localgj, this.b);
    if ((n & 0x2) == 2)
      i2 |= 2;
    gj.b(localgj, this.c);
    if ((n & 0x4) == 4)
      i2 |= 4;
    gj.c(localgj, this.d);
    if ((n & 0x8) == 8)
      i2 |= 8;
    gj.d(localgj, this.e);
    if ((n & 0x10) == 16)
      i2 |= 16;
    gj.a(localgj, this.f);
    if ((n & 0x20) == 32)
      i2 |= 32;
    gj.e(localgj, this.g);
    if ((n & 0x40) == 64)
      i2 |= 64;
    gj.b(localgj, this.h);
    if ((n & 0x80) == 128)
      i2 |= 128;
    gj.c(localgj, this.i);
    if ((n & 0x100) == 256)
      i2 |= 256;
    gj.a(localgj, this.j);
    if ((n & 0x200) == 512)
      i2 |= 512;
    gj.d(localgj, this.k);
    if ((n & 0x400) == 1024)
      i2 |= 1024;
    gj.e(localgj, this.l);
    if ((n & 0x800) == 2048);
    for (int i3 = i2 | 0x800; ; i3 = i2)
    {
      gj.f(localgj, this.m);
      gj.b(localgj, i3);
      ab_();
      return localgj;
    }
  }

  public final boolean N()
  {
    if ((0x800 & this.a) == 2048);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean R_()
  {
    if ((0x200 & this.a) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long S_()
  {
    return this.k;
  }

  public final boolean T_()
  {
    if ((0x400 & this.a) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long U_()
  {
    return this.l;
  }

  public final long V_()
  {
    return this.m;
  }

  public final gk a(gj paramgj)
  {
    if (paramgj == gj.h());
    for (gk localgk = this; ; localgk = this)
    {
      return localgk;
      if (paramgj.j())
      {
        String str5 = paramgj.k();
        if (str5 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str5;
        af_();
      }
      if (paramgj.l())
      {
        String str4 = paramgj.m();
        if (str4 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str4;
        af_();
      }
      if (paramgj.n())
      {
        String str3 = paramgj.o();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.d = str3;
        af_();
      }
      if (paramgj.p())
      {
        String str2 = paramgj.q();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x8 | this.a);
        this.e = str2;
        af_();
      }
      if (paramgj.r())
      {
        long l6 = paramgj.s();
        this.a = (0x10 | this.a);
        this.f = l6;
        af_();
      }
      if (paramgj.t())
      {
        String str1 = paramgj.u();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x20 | this.a);
        this.g = str1;
        af_();
      }
      if (paramgj.v())
      {
        long l5 = paramgj.w();
        this.a = (0x40 | this.a);
        this.h = l5;
        af_();
      }
      if (paramgj.x())
      {
        long l4 = paramgj.y();
        this.a = (0x80 | this.a);
        this.i = l4;
        af_();
      }
      if (paramgj.z())
      {
        int n = paramgj.A();
        this.a = (0x100 | this.a);
        this.j = n;
        af_();
      }
      if (paramgj.R_())
      {
        long l3 = paramgj.S_();
        this.a = (0x200 | this.a);
        this.k = l3;
        af_();
      }
      if (paramgj.T_())
      {
        long l2 = paramgj.U_();
        this.a = (0x400 | this.a);
        this.l = l2;
        af_();
      }
      if (paramgj.N())
      {
        long l1 = paramgj.V_();
        this.a = (0x800 | this.a);
        this.m = l1;
        af_();
      }
      e(paramgj.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final gk e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int n = paramm.a();
      switch (n)
      {
      default:
        if (!a(paramm, localgi, paramdf, n))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (gk localgk = this; ; localgk = this)
        {
          return localgk;
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
        break;
      case 80:
        this.a = (0x200 | this.a);
        this.k = paramm.e();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.l = paramm.e();
        break;
      case 96:
        this.a = (0x800 | this.a);
        this.m = paramm.e();
      }
    }
  }

  public final gj i()
  {
    gj localgj = D();
    if (!localgj.a())
      throw b(localgj);
    return localgj;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.gk
 * JD-Core Version:    0.6.2
 */