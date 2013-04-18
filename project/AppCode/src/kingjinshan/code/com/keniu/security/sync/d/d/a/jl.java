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

public final class jl extends dn
  implements jm
{
  private int a;
  private Object b = "";
  private Object c = "";
  private int d;
  private Object e = "";
  private Object f = "";
  private Object g = "";
  private Object h = "";
  private Object i = "";
  private Object j = "";

  private jl()
  {
    jk.K();
  }

  private jl(dp paramdp, byte paramByte)
  {
    super(paramdp);
    jk.K();
  }

  private static cj E()
  {
    return ih.b();
  }

  private static void N()
  {
    jk.K();
  }

  private static jl U()
  {
    return new jl();
  }

  private jl V()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0;
    this.a = (0xFFFFFFFB & this.a);
    this.e = "";
    this.a = (0xFFFFFFF7 & this.a);
    this.f = "";
    this.a = (0xFFFFFFEF & this.a);
    this.g = "";
    this.a = (0xFFFFFFDF & this.a);
    this.h = "";
    this.a = (0xFFFFFFBF & this.a);
    this.i = "";
    this.a = (0xFFFFFF7F & this.a);
    this.j = "";
    this.a = (0xFFFFFEFF & this.a);
    return this;
  }

  private jl W()
  {
    return new jl().a(Z());
  }

  private static jk X()
  {
    return jk.h();
  }

  private jk Y()
  {
    jk localjk = Z();
    if (!localjk.a())
      throw b(localjk).a();
    return localjk;
  }

  private jk Z()
  {
    jk localjk = new jk(this);
    int k = this.a;
    int m = k & 0x1;
    int n = 0;
    if (m == 1)
      n = 1;
    jk.a(localjk, this.b);
    if ((k & 0x2) == 2)
      n |= 2;
    jk.b(localjk, this.c);
    if ((k & 0x4) == 4)
      n |= 4;
    jk.a(localjk, this.d);
    if ((k & 0x8) == 8)
      n |= 8;
    jk.c(localjk, this.e);
    if ((k & 0x10) == 16)
      n |= 16;
    jk.d(localjk, this.f);
    if ((k & 0x20) == 32)
      n |= 32;
    jk.e(localjk, this.g);
    if ((k & 0x40) == 64)
      n |= 64;
    jk.f(localjk, this.h);
    if ((k & 0x80) == 128)
      n |= 128;
    jk.g(localjk, this.i);
    if ((k & 0x100) == 256);
    for (int i1 = n | 0x100; ; i1 = n)
    {
      jk.h(localjk, this.j);
      jk.b(localjk, i1);
      ab_();
      return localjk;
    }
  }

  private jl aa()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = jk.h().k();
    af_();
    return this;
  }

  private jl ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = jk.h().m();
    af_();
    return this;
  }

  private jl ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0;
    af_();
    return this;
  }

  private jl ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = jk.h().q();
    af_();
    return this;
  }

  private jl ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = jk.h().s();
    af_();
    return this;
  }

  private jl af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = jk.h().u();
    af_();
    return this;
  }

  private jl ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = jk.h().w();
    af_();
    return this;
  }

  private jl ah()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = jk.h().y();
    af_();
    return this;
  }

  private jl ai()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = jk.h().A();
    af_();
    return this;
  }

  private jl d(ev paramev)
  {
    if ((paramev instanceof jk));
    for (jl localjl = a((jk)paramev); ; localjl = this)
    {
      return localjl;
      super.a(paramev);
    }
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private jl f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    af_();
    return this;
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private jl g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    af_();
    return this;
  }

  private void g(i parami)
  {
    this.a = (0x8 | this.a);
    this.e = parami;
    af_();
  }

  private jl h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    af_();
    return this;
  }

  private void h(i parami)
  {
    this.a = (0x10 | this.a);
    this.f = parami;
    af_();
  }

  private void i(i parami)
  {
    this.a = (0x20 | this.a);
    this.g = parami;
    af_();
  }

  private void j(i parami)
  {
    this.a = (0x40 | this.a);
    this.h = parami;
    af_();
  }

  private void k(i parami)
  {
    this.a = (0x80 | this.a);
    this.i = parami;
    af_();
  }

  private void l(i parami)
  {
    this.a = (0x100 | this.a);
    this.j = parami;
    af_();
  }

  public final String A()
  {
    Object localObject = this.j;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.j = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  protected final dv B()
  {
    return ih.c();
  }

  public final cj C()
  {
    return jk.i();
  }

  public final jl a(int paramInt)
  {
    this.a = (0x4 | this.a);
    this.d = paramInt;
    af_();
    return this;
  }

  public final jl a(jk paramjk)
  {
    if (paramjk == jk.h());
    for (jl localjl = this; ; localjl = this)
    {
      return localjl;
      if (paramjk.j())
        a(paramjk.k());
      if (paramjk.l())
        b(paramjk.m());
      if (paramjk.n())
        a(paramjk.o());
      if (paramjk.p())
        c(paramjk.q());
      if (paramjk.r())
        d(paramjk.s());
      if (paramjk.t())
      {
        String str3 = paramjk.u();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x20 | this.a);
        this.g = str3;
        af_();
      }
      if (paramjk.v())
      {
        String str2 = paramjk.w();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x40 | this.a);
        this.h = str2;
        af_();
      }
      if (paramjk.x())
        e(paramjk.y());
      if (paramjk.z())
      {
        String str1 = paramjk.A();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x100 | this.a);
        this.j = str1;
        af_();
      }
      e(paramjk.b_());
    }
  }

  public final jl a(String paramString)
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
      if (!n())
        bool = false;
      else if (!p())
        bool = false;
      else if (!r())
        bool = false;
      else
        bool = true;
    }
  }

  public final jl b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  public final jl c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    af_();
    return this;
  }

  public final jl d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  public final jl e(m paramm, df paramdf)
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
        for (jl localjl = this; ; localjl = this)
        {
          return localjl;
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
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramm.f();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramm.k();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramm.k();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramm.k();
        break;
      case 58:
        this.a = (0x40 | this.a);
        this.h = paramm.k();
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramm.k();
        break;
      case 74:
        this.a = (0x100 | this.a);
        this.j = paramm.k();
      }
    }
  }

  public final jl e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    af_();
    return this;
  }

  public final jk i()
  {
    jk localjk = Z();
    if (!localjk.a())
      throw b(localjk);
    return localjk;
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

  public final int o()
  {
    return this.d;
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

  public final String s()
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

  public final String y()
  {
    Object localObject = this.i;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.i = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean z()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.jl
 * JD-Core Version:    0.6.2
 */