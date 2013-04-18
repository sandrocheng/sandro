package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dn;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.ev;
import com.b.a.gf;
import com.b.a.gg;
import com.b.a.gi;
import com.b.a.gl;
import com.b.a.i;
import com.b.a.m;
import java.util.Collections;
import java.util.List;

public final class gr extends dn
  implements gs
{
  private int a;
  private Object b = "";
  private int c;
  private Object d = "";
  private long e;
  private Object f = "";
  private Object g = "";
  private int h;
  private int i;
  private long j;
  private eu k = et.a;
  private eu l = et.a;

  private gr()
  {
    gq.O();
  }

  private gr(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gq.O();
  }

  private static cj N()
  {
    return gc.r();
  }

  private static void U()
  {
    gq.O();
  }

  private static gr V()
  {
    return new gr();
  }

  private gr W()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = 0;
    this.a = (0xFFFFFFFD & this.a);
    this.d = "";
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0L;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = "";
    this.a = (0xFFFFFFEF & this.a);
    this.g = "";
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0;
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0;
    this.a = (0xFFFFFF7F & this.a);
    this.j = 0L;
    this.a = (0xFFFFFEFF & this.a);
    this.k = et.a;
    this.a = (0xFFFFFDFF & this.a);
    this.l = et.a;
    this.a = (0xFFFFFBFF & this.a);
    return this;
  }

  private gr X()
  {
    return new gr().a(D());
  }

  private static gq Y()
  {
    return gq.h();
  }

  private gq Z()
  {
    gq localgq = D();
    if (!localgq.a())
      throw b(localgq).a();
    return localgq;
  }

  private gr a(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    aj();
    this.k.set(paramInt, paramString);
    af_();
    return this;
  }

  private gr a(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    af_();
    return this;
  }

  private gr a(Iterable paramIterable)
  {
    aj();
    dn.a(paramIterable, this.k);
    af_();
    return this;
  }

  private gr a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private gr aa()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = gq.h().k();
    af_();
    return this;
  }

  private gr ab()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = 0;
    af_();
    return this;
  }

  private gr ac()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = gq.h().o();
    af_();
    return this;
  }

  private gr ad()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0L;
    af_();
    return this;
  }

  private gr ae()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = gq.h().s();
    af_();
    return this;
  }

  private gr af()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = gq.h().u();
    af_();
    return this;
  }

  private gr ag()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0;
    af_();
    return this;
  }

  private gr ah()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0;
    af_();
    return this;
  }

  private gr ai()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = 0L;
    af_();
    return this;
  }

  private void aj()
  {
    if ((0x200 & this.a) != 512)
    {
      this.k = new et(this.k);
      this.a = (0x200 | this.a);
    }
  }

  private gr ak()
  {
    this.k = et.a;
    this.a = (0xFFFFFDFF & this.a);
    af_();
    return this;
  }

  private void al()
  {
    if ((0x400 & this.a) != 1024)
    {
      this.l = new et(this.l);
      this.a = (0x400 | this.a);
    }
  }

  private gr am()
  {
    this.l = et.a;
    this.a = (0xFFFFFBFF & this.a);
    af_();
    return this;
  }

  private gr b(int paramInt, String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    al();
    this.l.set(paramInt, paramString);
    af_();
    return this;
  }

  private gr b(long paramLong)
  {
    this.a = (0x100 | this.a);
    this.j = paramLong;
    af_();
    return this;
  }

  private gr b(Iterable paramIterable)
  {
    al();
    dn.a(paramIterable, this.l);
    af_();
    return this;
  }

  private gr b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    af_();
    return this;
  }

  private gr c(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    af_();
    return this;
  }

  private gr c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  private gr d(int paramInt)
  {
    this.a = (0x40 | this.a);
    this.h = paramInt;
    af_();
    return this;
  }

  private gr d(ev paramev)
  {
    if ((paramev instanceof gq));
    for (gr localgr = a((gq)paramev); ; localgr = this)
    {
      return localgr;
      super.a(paramev);
    }
  }

  private gr d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    af_();
    return this;
  }

  private gr e(int paramInt)
  {
    this.a = (0x80 | this.a);
    this.i = paramInt;
    af_();
    return this;
  }

  private gr e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    aj();
    this.k.add(paramString);
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private gr f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    al();
    this.l.add(paramString);
    af_();
    return this;
  }

  private void f(i parami)
  {
    this.a = (0x4 | this.a);
    this.d = parami;
    af_();
  }

  private void g(i parami)
  {
    this.a = (0x10 | this.a);
    this.f = parami;
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
    aj();
    this.k.a(parami);
    af_();
  }

  private void j(i parami)
  {
    al();
    this.l.a(parami);
    af_();
  }

  public final long A()
  {
    return this.j;
  }

  protected final dv B()
  {
    return gc.s();
  }

  public final cj C()
  {
    return gq.i();
  }

  public final gq D()
  {
    gq localgq = new gq(this);
    int m = this.a;
    int n = m & 0x1;
    int i1 = 0;
    if (n == 1)
      i1 = 1;
    gq.a(localgq, this.b);
    if ((m & 0x2) == 2)
      i1 |= 2;
    gq.a(localgq, this.c);
    if ((m & 0x4) == 4)
      i1 |= 4;
    gq.b(localgq, this.d);
    if ((m & 0x8) == 8)
      i1 |= 8;
    gq.a(localgq, this.e);
    if ((m & 0x10) == 16)
      i1 |= 16;
    gq.c(localgq, this.f);
    if ((m & 0x20) == 32)
      i1 |= 32;
    gq.d(localgq, this.g);
    if ((m & 0x40) == 64)
      i1 |= 64;
    gq.b(localgq, this.h);
    if ((m & 0x80) == 128)
      i1 |= 128;
    gq.c(localgq, this.i);
    if ((m & 0x100) == 256);
    for (int i2 = i1 | 0x100; ; i2 = i1)
    {
      gq.b(localgq, this.j);
      if ((0x200 & this.a) == 512)
      {
        this.k = new gl(this.k);
        this.a = (0xFFFFFDFF & this.a);
      }
      gq.a(localgq, this.k);
      if ((0x400 & this.a) == 1024)
      {
        this.l = new gl(this.l);
        this.a = (0xFFFFFBFF & this.a);
      }
      gq.b(localgq, this.l);
      gq.d(localgq, i2);
      ab_();
      return localgq;
    }
  }

  public final gr a(gq paramgq)
  {
    gr localgr;
    if (paramgq == gq.h())
    {
      localgr = this;
      return localgr;
    }
    if (paramgq.j())
    {
      String str4 = paramgq.k();
      if (str4 == null)
        throw new NullPointerException();
      this.a = (0x1 | this.a);
      this.b = str4;
      af_();
    }
    if (paramgq.l())
    {
      int i1 = paramgq.m();
      this.a = (0x2 | this.a);
      this.c = i1;
      af_();
    }
    if (paramgq.n())
    {
      String str3 = paramgq.o();
      if (str3 == null)
        throw new NullPointerException();
      this.a = (0x4 | this.a);
      this.d = str3;
      af_();
    }
    if (paramgq.p())
    {
      long l2 = paramgq.q();
      this.a = (0x8 | this.a);
      this.e = l2;
      af_();
    }
    if (paramgq.r())
    {
      String str2 = paramgq.s();
      if (str2 == null)
        throw new NullPointerException();
      this.a = (0x10 | this.a);
      this.f = str2;
      af_();
    }
    if (paramgq.t())
    {
      String str1 = paramgq.u();
      if (str1 == null)
        throw new NullPointerException();
      this.a = (0x20 | this.a);
      this.g = str1;
      af_();
    }
    if (paramgq.v())
    {
      int n = paramgq.w();
      this.a = (0x40 | this.a);
      this.h = n;
      af_();
    }
    if (paramgq.x())
    {
      int m = paramgq.y();
      this.a = (0x80 | this.a);
      this.i = m;
      af_();
    }
    if (paramgq.z())
    {
      long l1 = paramgq.A();
      this.a = (0x100 | this.a);
      this.j = l1;
      af_();
    }
    if (!gq.b(paramgq).isEmpty())
    {
      if (this.k.isEmpty())
      {
        this.k = gq.b(paramgq);
        this.a = (0xFFFFFDFF & this.a);
        label412: af_();
      }
    }
    else if (!gq.c(paramgq).isEmpty())
    {
      if (!this.l.isEmpty())
        break label499;
      this.l = gq.c(paramgq);
      this.a = (0xFFFFFBFF & this.a);
    }
    while (true)
    {
      af_();
      e(paramgq.b_());
      localgr = this;
      break;
      aj();
      this.k.addAll(gq.b(paramgq));
      break label412;
      label499: al();
      this.l.addAll(gq.c(paramgq));
    }
  }

  public final String a(int paramInt)
  {
    return (String)this.k.get(paramInt);
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
      else if (!t())
        bool = false;
      else if (!v())
        bool = false;
      else if (!x())
        bool = false;
      else if (!z())
        bool = false;
      else
        bool = true;
    }
  }

  public final List ag_()
  {
    return Collections.unmodifiableList(this.k);
  }

  public final int ah_()
  {
    return this.k.size();
  }

  public final List ai_()
  {
    return Collections.unmodifiableList(this.l);
  }

  public final int aj_()
  {
    return this.l.size();
  }

  public final String b(int paramInt)
  {
    return (String)this.l.get(paramInt);
  }

  public final gr e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int m = paramm.a();
      switch (m)
      {
      default:
        if (!a(paramm, localgi, paramdf, m))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (gr localgr = this; ; localgr = this)
        {
          return localgr;
          d(localgi.b());
          af_();
        }
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramm.k();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramm.f();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramm.k();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.e();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramm.k();
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramm.k();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramm.f();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramm.f();
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramm.e();
        break;
      case 82:
        aj();
        this.k.a(paramm.k());
        break;
      case 90:
        al();
        this.l.a(paramm.k());
      }
    }
  }

  public final gq i()
  {
    gq localgq = D();
    if (!localgq.a())
      throw b(localgq);
    return localgq;
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

  public final int m()
  {
    return this.c;
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

  public final int w()
  {
    return this.h;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.gr
 * JD-Core Version:    0.6.2
 */