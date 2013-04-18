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

public final class hq extends dn
  implements hr
{
  private int a;
  private gn b = gn.h();
  private fp c;
  private long d;
  private long e;
  private int f;
  private Object g = "";

  private hq()
  {
    w();
  }

  private hq(dp paramdp, byte paramByte)
  {
    super(paramdp);
    w();
  }

  private static hp A()
  {
    return hp.h();
  }

  private hp D()
  {
    hp localhp = E();
    if (!localhp.a())
      throw b(localhp).a();
    return localhp;
  }

  private hp E()
  {
    hp localhp = new hp(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        hp.a(localhp, this.b);
        if ((i & 0x2) != 2)
          break label163;
      }
      label163: for (int k = j | 0x2; ; k = j)
      {
        hp.a(localhp, this.d);
        if ((i & 0x4) == 4)
          k |= 4;
        hp.b(localhp, this.e);
        if ((i & 0x8) == 8)
          k |= 8;
        hp.a(localhp, this.f);
        if ((i & 0x10) == 16)
          k |= 16;
        hp.a(localhp, this.g);
        hp.b(localhp, k);
        ab_();
        return localhp;
        hp.a(localhp, (gn)this.c.d());
        break;
      }
    }
  }

  private hq N()
  {
    if (this.c == null)
    {
      this.b = gn.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private go U()
  {
    this.a = (0x1 | this.a);
    af_();
    return (go)V().e();
  }

  private fp V()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private hq W()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private hq X()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private hq Y()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.f = 0;
    af_();
    return this;
  }

  private hq Z()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.g = hp.h().t();
    af_();
    return this;
  }

  private hq a(long paramLong)
  {
    this.a = (0x2 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  private hq a(go paramgo)
  {
    if (this.c == null)
    {
      this.b = paramgo.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgo.i());
    }
  }

  private hq a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.g = paramString;
    af_();
    return this;
  }

  private hq b(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private hq b(gn paramgn)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != gn.h()))
      {
        this.b = gn.a(this.b).a(paramgn).D();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramgn;
      break;
      this.c.b(paramgn);
    }
  }

  private hq d(ev paramev)
  {
    if ((paramev instanceof hp));
    for (hq localhq = a((hp)paramev); ; localhq = this)
    {
      return localhq;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x10 | this.a);
    this.g = parami;
    af_();
  }

  private static cj v()
  {
    return hh.j();
  }

  private void w()
  {
    if (hp.v())
      V();
  }

  private static hq x()
  {
    return new hq();
  }

  private hq y()
  {
    super.F();
    if (this.c == null)
      this.b = gn.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = 0L;
      this.a = (0xFFFFFFFD & this.a);
      this.e = 0L;
      this.a = (0xFFFFFFFB & this.a);
      this.f = 0;
      this.a = (0xFFFFFFF7 & this.a);
      this.g = "";
      this.a = (0xFFFFFFEF & this.a);
      return this;
      this.c.g();
    }
  }

  private hq z()
  {
    return new hq().a(E());
  }

  protected final dv B()
  {
    return hh.k();
  }

  public final cj C()
  {
    return hp.i();
  }

  public final hq a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.f = paramInt;
    af_();
    return this;
  }

  public final hq a(gn paramgn)
  {
    if (this.c == null)
    {
      if (paramgn == null)
        throw new NullPointerException();
      this.b = paramgn;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgn);
    }
  }

  public final hq a(hp paramhp)
  {
    if (paramhp == hp.h());
    for (hq localhq = this; ; localhq = this)
    {
      return localhq;
      gn localgn;
      if (paramhp.j())
      {
        localgn = paramhp.k();
        if (this.c != null)
          break label201;
        if (((0x1 & this.a) != 1) || (this.b == gn.h()))
          break label192;
        this.b = gn.a(this.b).a(localgn).D();
        af_();
      }
      String str;
      while (true)
      {
        this.a = (0x1 | this.a);
        if (paramhp.m())
        {
          long l2 = paramhp.n();
          this.a = (0x2 | this.a);
          this.d = l2;
          af_();
        }
        if (paramhp.o())
        {
          long l1 = paramhp.p();
          this.a = (0x4 | this.a);
          this.e = l1;
          af_();
        }
        if (paramhp.q())
          a(paramhp.r());
        if (!paramhp.s())
          break label235;
        str = paramhp.t();
        if (str != null)
          break label214;
        throw new NullPointerException();
        label192: this.b = localgn;
        break;
        label201: this.c.b(localgn);
      }
      label214: this.a = (0x10 | this.a);
      this.g = str;
      af_();
      label235: e(paramhp.b_());
    }
  }

  public final boolean a()
  {
    boolean bool;
    if (!j())
      bool = false;
    while (true)
    {
      return bool;
      if (!k().a())
        bool = false;
      else
        bool = true;
    }
  }

  public final hq e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i = paramm.a();
      switch (i)
      {
      default:
        if (!a(paramm, localgi, paramdf, i))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (hq localhq = this; ; localhq = this)
        {
          return localhq;
          d(localgi.b());
          af_();
        }
      case 10:
        go localgo = gn.Z();
        if (j())
          localgo.a(k());
        paramm.a(localgo, paramdf);
        a(localgo.D());
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.d = paramm.e();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.e = paramm.e();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.f = paramm.f();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.g = paramm.k();
      }
    }
  }

  public final hp i()
  {
    hp localhp = E();
    if (!localhp.a())
      throw b(localhp);
    return localhp;
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn k()
  {
    if (this.c == null);
    for (gn localgn = this.b; ; localgn = (gn)this.c.c())
      return localgn;
  }

  public final gp l()
  {
    if (this.c != null);
    for (Object localObject = (gp)this.c.f(); ; localObject = this.b)
      return localObject;
  }

  public final boolean m()
  {
    if ((0x2 & this.a) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long n()
  {
    return this.d;
  }

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long p()
  {
    return this.e;
  }

  public final boolean q()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int r()
  {
    return this.f;
  }

  public final boolean s()
  {
    if ((0x10 & this.a) == 16);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String t()
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hq
 * JD-Core Version:    0.6.2
 */