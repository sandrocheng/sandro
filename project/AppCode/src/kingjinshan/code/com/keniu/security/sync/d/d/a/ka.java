package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ev;
import com.b.a.fp;
import com.b.a.gi;
import com.b.a.i;
import com.b.a.m;

public final class ka extends dn
  implements kb
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private Object d = "";

  private ka()
  {
    p();
  }

  private ka(dp paramdp, byte paramByte)
  {
    super(paramdp);
    p();
  }

  private ka A()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = jz.h().n();
    af_();
    return this;
  }

  private ka a(ge paramge)
  {
    if (this.c == null)
    {
      if (paramge == null)
        throw new NullPointerException();
      this.b = paramge;
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramge);
    }
  }

  private ka a(gf paramgf)
  {
    if (this.c == null)
    {
      this.b = paramgf.i();
      af_();
    }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.c.a(paramgf.i());
    }
  }

  private ka a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private ka b(ge paramge)
  {
    if (this.c == null)
      if (((0x1 & this.a) == 1) && (this.b != ge.h()))
      {
        this.b = ge.a(this.b).a(paramge).n();
        af_();
      }
    while (true)
    {
      this.a = (0x1 | this.a);
      return this;
      this.b = paramge;
      break;
      this.c.b(paramge);
    }
  }

  private ka d(ev paramev)
  {
    if ((paramev instanceof jz));
    for (ka localka = a((jz)paramev); ; localka = this)
    {
      return localka;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x2 | this.a);
    this.d = parami;
    af_();
  }

  private static cj o()
  {
    return ih.h();
  }

  private void p()
  {
    if (jz.o())
      z();
  }

  private static ka q()
  {
    return new ka();
  }

  private ka r()
  {
    super.F();
    if (this.c == null)
      this.b = ge.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = "";
      this.a = (0xFFFFFFFD & this.a);
      return this;
      this.c.g();
    }
  }

  private ka s()
  {
    return new ka().a(w());
  }

  private static jz t()
  {
    return jz.h();
  }

  private jz u()
  {
    jz localjz = w();
    if (!localjz.a())
      throw b(localjz);
    return localjz;
  }

  private jz v()
  {
    jz localjz = w();
    if (!localjz.a())
      throw b(localjz).a();
    return localjz;
  }

  private jz w()
  {
    jz localjz = new jz(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        jz.a(localjz, this.b);
        if ((i & 0x2) != 2)
          break label91;
      }
      label91: for (int k = j | 0x2; ; k = j)
      {
        jz.a(localjz, this.d);
        jz.a(localjz, k);
        ab_();
        return localjz;
        jz.a(localjz, (ge)this.c.d());
        break;
      }
    }
  }

  private ka x()
  {
    if (this.c == null)
    {
      this.b = ge.h();
      af_();
    }
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      return this;
      this.c.g();
    }
  }

  private gf y()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)z().e();
  }

  private fp z()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  protected final dv B()
  {
    return ih.i();
  }

  public final cj C()
  {
    return jz.i();
  }

  public final ka a(jz paramjz)
  {
    if (paramjz == jz.h());
    for (ka localka = this; ; localka = this)
    {
      return localka;
      ge localge;
      if (paramjz.j())
      {
        localge = paramjz.k();
        if (this.c != null)
          break label119;
        if (((0x1 & this.a) != 1) || (this.b == ge.h()))
          break label110;
        this.b = ge.a(this.b).a(localge).n();
        af_();
      }
      String str;
      while (true)
      {
        this.a = (0x1 | this.a);
        if (!paramjz.m())
          break label152;
        str = paramjz.n();
        if (str != null)
          break label132;
        throw new NullPointerException();
        label110: this.b = localge;
        break;
        label119: this.c.b(localge);
      }
      label132: this.a = (0x2 | this.a);
      this.d = str;
      af_();
      label152: e(paramjz.b_());
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

  public final ka e(m paramm, df paramdf)
  {
    gi localgi = com.b.a.gg.a(b_());
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
        for (ka localka = this; ; localka = this)
        {
          return localka;
          d(localgi.b());
          af_();
        }
      case 10:
        gf localgf = ge.n();
        if (j())
          localgf.a(k());
        paramm.a(localgf, paramdf);
        ge localge = localgf.n();
        if (this.c == null)
        {
          if (localge == null)
            throw new NullPointerException();
          this.b = localge;
          af_();
        }
        while (true)
        {
          this.a = (0x1 | this.a);
          break;
          this.c.a(localge);
        }
      case 18:
        this.a = (0x2 | this.a);
        this.d = paramm.k();
      }
    }
  }

  public final boolean j()
  {
    if ((0x1 & this.a) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    if (this.c == null);
    for (ge localge = this.b; ; localge = (ge)this.c.c())
      return localge;
  }

  public final gg l()
  {
    if (this.c != null);
    for (Object localObject = (gg)this.c.f(); ; localObject = this.b)
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ka
 * JD-Core Version:    0.6.2
 */