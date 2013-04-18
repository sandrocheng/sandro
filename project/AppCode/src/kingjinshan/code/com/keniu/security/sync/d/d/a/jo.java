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

public final class jo extends dn
  implements jp
{
  private int a;
  private ge b = ge.h();
  private fp c;
  private Object d = "";
  private int e;
  private Object f = "";

  private jo()
  {
    t();
  }

  private jo(dp paramdp, byte paramByte)
  {
    super(paramdp);
    t();
  }

  private jn A()
  {
    jn localjn = new jn(this);
    int i = this.a;
    if ((i & 0x1) == 1);
    for (int j = 1; ; j = 0)
    {
      if (this.c == null)
      {
        jn.a(localjn, this.b);
        if ((i & 0x2) != 2)
          break label138;
      }
      label138: for (int k = j | 0x2; ; k = j)
      {
        jn.a(localjn, this.d);
        if ((i & 0x4) == 4)
          k |= 4;
        jn.a(localjn, this.e);
        if ((i & 0x8) == 8)
          k |= 8;
        jn.b(localjn, this.f);
        jn.b(localjn, k);
        ab_();
        return localjn;
        jn.a(localjn, (ge)this.c.d());
        break;
      }
    }
  }

  private jo D()
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

  private gf E()
  {
    this.a = (0x1 | this.a);
    af_();
    return (gf)N().e();
  }

  private fp N()
  {
    if (this.c == null)
    {
      this.c = new fp(this.b, ae_(), ad_());
      this.b = null;
    }
    return this.c;
  }

  private jo U()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.d = jn.h().n();
    af_();
    return this;
  }

  private jo V()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private jo W()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.f = jn.h().r();
    af_();
    return this;
  }

  private jo a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private jo a(ge paramge)
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

  private jo a(gf paramgf)
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

  private jo a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private jo b(ge paramge)
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

  private jo b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  private jo d(ev paramev)
  {
    if ((paramev instanceof jn));
    for (jo localjo = a((jn)paramev); ; localjo = this)
    {
      return localjo;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x2 | this.a);
    this.d = parami;
    af_();
  }

  private void f(i parami)
  {
    this.a = (0x8 | this.a);
    this.f = parami;
    af_();
  }

  private static cj s()
  {
    return ih.d();
  }

  private void t()
  {
    if (jn.s())
      N();
  }

  private static jo u()
  {
    return new jo();
  }

  private jo v()
  {
    super.F();
    if (this.c == null)
      this.b = ge.h();
    while (true)
    {
      this.a = (0xFFFFFFFE & this.a);
      this.d = "";
      this.a = (0xFFFFFFFD & this.a);
      this.e = 0;
      this.a = (0xFFFFFFFB & this.a);
      this.f = "";
      this.a = (0xFFFFFFF7 & this.a);
      return this;
      this.c.g();
    }
  }

  private jo w()
  {
    return new jo().a(A());
  }

  private static jn x()
  {
    return jn.h();
  }

  private jn y()
  {
    jn localjn = A();
    if (!localjn.a())
      throw b(localjn);
    return localjn;
  }

  private jn z()
  {
    jn localjn = A();
    if (!localjn.a())
      throw b(localjn).a();
    return localjn;
  }

  protected final dv B()
  {
    return ih.e();
  }

  public final cj C()
  {
    return jn.i();
  }

  public final jo a(jn paramjn)
  {
    if (paramjn == jn.h());
    for (jo localjo = this; ; localjo = this)
    {
      return localjo;
      ge localge;
      if (paramjn.j())
      {
        localge = paramjn.k();
        if (this.c != null)
          break label119;
        if (((0x1 & this.a) != 1) || (this.b == ge.h()))
          break label110;
        this.b = ge.a(this.b).a(localge).n();
        af_();
      }
      String str2;
      while (true)
      {
        this.a = (0x1 | this.a);
        if (!paramjn.m())
          break label152;
        str2 = paramjn.n();
        if (str2 != null)
          break label132;
        throw new NullPointerException();
        label110: this.b = localge;
        break;
        label119: this.c.b(localge);
      }
      label132: this.a = (0x2 | this.a);
      this.d = str2;
      af_();
      label152: if (paramjn.o())
      {
        int i = paramjn.p();
        this.a = (0x4 | this.a);
        this.e = i;
        af_();
      }
      if (paramjn.q())
      {
        String str1 = paramjn.r();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x8 | this.a);
        this.f = str1;
        af_();
      }
      e(paramjn.b_());
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

  public final jo e(m paramm, df paramdf)
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
        for (jo localjo = this; ; localjo = this)
        {
          return localjo;
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
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.e = paramm.f();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.f = paramm.k();
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

  public final boolean o()
  {
    if ((0x4 & this.a) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int p()
  {
    return this.e;
  }

  public final boolean q()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String r()
  {
    Object localObject = this.f;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.f = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.jo
 * JD-Core Version:    0.6.2
 */