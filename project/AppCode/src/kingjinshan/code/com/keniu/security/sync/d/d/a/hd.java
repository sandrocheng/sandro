package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class hd extends dn
  implements hg
{
  private int a;
  private gj b = gj.h();
  private fp c;
  private Object d = "";
  private Object e = "";
  private boolean f;
  private int g;
  private int h;
  private int i;
  private long j;
  private Object k = "";
  private Object l = "";
  private int m;

  private hd()
  {
    V();
  }

  private hd(dp paramdp, byte paramByte)
  {
    super(paramdp);
    V();
  }

  private static cj U()
  {
    return gc.l();
  }

  private void V()
  {
    if (hc.P())
      ad();
  }

  private static hd W()
  {
    return new hd();
  }

  private hd X()
  {
    super.F();
    if (this.c == null)
      this.b = gj.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = "";
      this.a = (0xFFFFFFFD & this.a);
      this.e = "";
      this.a = (0xFFFFFFFB & this.a);
      this.f = false;
      this.a = (0xFFFFFFF7 & this.a);
      this.g = 0;
      this.a = (0xFFFFFFEF & this.a);
      this.h = 0;
      this.a = (0xFFFFFFDF & this.a);
      this.i = 0;
      this.a = (0xFFFFFFBF & this.a);
      this.j = 0L;
      this.a = (0xFFFFFF7F & this.a);
      this.k = "";
      this.a = (0xFFFFFEFF & this.a);
      this.l = "";
      this.a = (0xFFFFFDFF & this.a);
      this.m = 0;
      this.a = (0xFFFFFBFF & this.a);
      return this;
      this.c.g();
    }
  }

  private hd Y()
  {
    return new hd().a(D());
  }

  private static hc Z()
  {
    return hc.h();
  }

  private hd a(int paramInt)
  {
    this.a = (0x10 | this.a);
    this.g = paramInt;
    af_();
    return this;
  }

  private hd a(long paramLong)
  {
    this.a = (0x80 | this.a);
    this.j = paramLong;
    af_();
    return this;
  }

  private hd a(gj paramgj)
  {
    if (this.c == null)
    {
      if (paramgj == null)
        throw new NullPointerException();
      this.b = paramgj;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgj);
    }
  }

  private hd a(gk paramgk)
  {
    if (this.c == null)
    {
      this.b = paramgk.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgk.i());
    }
  }

  private hd a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private hd a(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.f = paramBoolean;
    af_();
    return this;
  }

  private hc aa()
  {
    hc localhc = D();
    if (!localhc.a())
      throw b(localhc).a();
    return localhc;
  }

  private hd ab()
  {
    if (this.c == null)
    {
      this.b = gj.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private gk ac()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gk)ad().e();
  }

  private fp ad()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private hd ae()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = hc.h().n();
    af_();
    return this;
  }

  private hd af()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = hc.h().p();
    af_();
    return this;
  }

  private hd ag()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.f = false;
    af_();
    return this;
  }

  private hd ah()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.g = 0;
    af_();
    return this;
  }

  private hd ai()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0;
    af_();
    return this;
  }

  private hd aj()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0;
    af_();
    return this;
  }

  private hd ak()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.j = 0L;
    af_();
    return this;
  }

  private hd al()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.k = hc.h().ao_();
    af_();
    return this;
  }

  private hd am()
  {
    this.a = (0xFFFFFDFF & this.a);
    this.l = hc.h().aq_();
    af_();
    return this;
  }

  private hd an()
  {
    this.a = (0xFFFFFBFF & this.a);
    this.m = 0;
    af_();
    return this;
  }

  private hd b(int paramInt)
  {
    this.a = (0x20 | this.a);
    this.h = paramInt;
    af_();
    return this;
  }

  private hd b(gj paramgj)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != gj.h()))
      {
        this.b = gj.a(this.b).a(paramgj).D();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramgj;
      break;
      this.c.b(paramgj);
    }
  }

  private hd b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  private hd c(int paramInt)
  {
    this.a = (0x40 | this.a);
    this.i = paramInt;
    af_();
    return this;
  }

  private hd c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.k = paramString;
    af_();
    return this;
  }

  private hd d(int paramInt)
  {
    this.a = (0x400 | this.a);
    this.m = paramInt;
    af_();
    return this;
  }

  private hd d(ev paramev)
  {
    if ((paramev instanceof hc));
    for (hd localhd = a((hc)paramev); ; localhd = this)
    {
      return localhd;
      super.a(paramev);
    }
  }

  private hd d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.l = paramString;
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x2 | this.a);
    this.d = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x4 | this.a);
    this.e = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x100 | this.a);
    this.k = parami;
    af_();
  }

  private void h(i parami)
  {
    this.a = (0x200 | this.a);
    this.l = parami;
    af_();
  }

  public final boolean A()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected final dv B()
  {
    return gc.m();
  }

  public final cj C()
  {
    return hc.i();
  }

  public final hc D()
  {
    hc localhc = new hc(this);
    int n = this.a;
    if ((n & 0x1) == 1);
    for (int i1 = 1; ; i1 = 0)
    {
      if (this.c == null)
      {
        hc.a(localhc, this.b);
        if ((n & 0x2) != 2)
          break label325;
      }
      label325: for (int i2 = i1 | 0x2; ; i2 = i1)
      {
        hc.a(localhc, this.d);
        if ((n & 0x4) == 4)
          i2 |= 4;
        hc.b(localhc, this.e);
        if ((n & 0x8) == 8)
          i2 |= 8;
        hc.a(localhc, this.f);
        if ((n & 0x10) == 16)
          i2 |= 16;
        hc.a(localhc, this.g);
        if ((n & 0x20) == 32)
          i2 |= 32;
        hc.b(localhc, this.h);
        if ((n & 0x40) == 64)
          i2 |= 64;
        hc.c(localhc, this.i);
        if ((n & 0x80) == 128)
          i2 |= 128;
        hc.a(localhc, this.j);
        if ((n & 0x100) == 256)
          i2 |= 256;
        hc.c(localhc, this.k);
        if ((n & 0x200) == 512)
          i2 |= 512;
        hc.d(localhc, this.l);
        if ((n & 0x400) == 1024)
          i2 |= 1024;
        hc.d(localhc, this.m);
        hc.e(localhc, i2);
        ab_();
        return localhc;
        hc.a(localhc, (gj)this.c.d());
        break;
      }
    }
  }

  public final int N()
  {
    return this.m;
  }

  public final hd a(hc paramhc)
  {
    if (paramhc == hc.h());
    for (hd localhd = this; ; localhd = this)
    {
      return localhd;
      gj localgj;
      if (paramhc.j())
      {
        localgj = paramhc.k();
        if (this.c != null)
          break label119;
        if (((0x1 & this.a) != 1) || (this.b == gj.h()))
          break label110;
        this.b = gj.a(this.b).a(localgj).D();
        af_();
      }
      String str4;
      while (true)
      {
        this.a = (0x1 | this.a);
        if (!paramhc.m())
          break label152;
        str4 = paramhc.n();
        if (str4 != null)
          break label132;
        throw new NullPointerException();
        label110: this.b = localgj;
        break;
        label119: this.c.b(localgj);
      }
      label132: this.a = (0x2 | this.a);
      this.d = str4;
      af_();
      label152: if (paramhc.o())
      {
        String str3 = paramhc.p();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x4 | this.a);
        this.e = str3;
        af_();
      }
      if (paramhc.q())
      {
        boolean bool = paramhc.r();
        this.a = (0x8 | this.a);
        this.f = bool;
        af_();
      }
      if (paramhc.s())
      {
        int i3 = paramhc.t();
        this.a = (0x10 | this.a);
        this.g = i3;
        af_();
      }
      if (paramhc.u())
      {
        int i2 = paramhc.v();
        this.a = (0x20 | this.a);
        this.h = i2;
        af_();
      }
      if (paramhc.w())
      {
        int i1 = paramhc.x();
        this.a = (0x40 | this.a);
        this.i = i1;
        af_();
      }
      if (paramhc.y())
      {
        long l1 = paramhc.z();
        this.a = (0x80 | this.a);
        this.j = l1;
        af_();
      }
      if (paramhc.A())
      {
        String str2 = paramhc.ao_();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x100 | this.a);
        this.k = str2;
        af_();
      }
      if (paramhc.ap_())
      {
        String str1 = paramhc.aq_();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x200 | this.a);
        this.l = str1;
        af_();
      }
      if (paramhc.ar_())
      {
        int n = paramhc.N();
        this.a = (0x400 | this.a);
        this.m = n;
        af_();
      }
      e(paramhc.b_());
    }
  }

  public final boolean a()
  {
    return true;
  }

  public final String ao_()
  {
    Object localObject = this.k;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.k = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean ap_()
  {
    if ((0x200 & this.a) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String aq_()
  {
    Object localObject = this.l;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.l = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean ar_()
  {
    if ((0x400 & this.a) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final hd e(m paramm, df paramdf)
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
        for (hd localhd = this; ; localhd = this)
        {
          return localhd;
          d(localgi.b());
          af_();
        }
      case 10:
        gk localgk = gj.P();
        if (j())
          localgk.a(k());
        paramm.a(localgk, paramdf);
        gj localgj = localgk.D();
        if (this.c == null)
        {
          if (localgj == null)
            throw new NullPointerException();
          this.b = localgj;
          af_();
        }
        while (true)
        {
          this.a = (0x1 | this.a);
          break;
          this.c.a(localgj);
        }
      case 18:
        this.a = (0x2 | this.a);
        this.d = paramm.k();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.e = paramm.k();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.f = paramm.i();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.g = paramm.f();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.h = paramm.f();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.i = paramm.f();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.j = paramm.e();
        break;
      case 74:
        this.a = (0x100 | this.a);
        this.k = paramm.k();
        break;
      case 82:
        this.a = (0x200 | this.a);
        this.l = paramm.k();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.m = paramm.f();
      }
    }
  }

  public final hc i()
  {
    hc localhc = D();
    if (!localhc.a())
      throw b(localhc);
    return localhc;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gj k()
  {
    if (this.c == null);
    for (gj localgj = this.b; ; localgj = (gj)this.c.c())
      return localgj;
  }

  public final gl l()
  {
    if (this.c != null);
    for (Object localObject = (gl)this.c.f(); ; localObject = this.b)
      return localObject;
  }

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String n()
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

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String p()
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

  public final boolean q()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean r()
  {
    return this.f;
  }

  public final boolean s()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int t()
  {
    return this.g;
  }

  public final boolean u()
  {
    if ((0x20 & this.a) == 32);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int v()
  {
    return this.h;
  }

  public final boolean w()
  {
    if ((0x40 & this.a) == 64);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int x()
  {
    return this.i;
  }

  public final boolean y()
  {
    if ((0x80 & this.a) == 128);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long z()
  {
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hd
 * JD-Core Version:    0.6.2
 */