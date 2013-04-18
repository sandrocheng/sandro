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

public final class go extends dn
  implements gp
{
  private int a;
  private Object b = "";
  private Object c = "";
  private long d;
  private int e;
  private Object f = "";
  private long g;
  private int h;
  private int i;
  private Object j = "";
  private Object k = "";
  private int l;
  private Object m = "";
  private int n;
  private long o;
  private Object p = "";
  private Object q = "";
  private Object r = "";

  private go()
  {
    gn.aa();
  }

  private go(dp paramdp, byte paramByte)
  {
    super(paramdp);
    gn.aa();
  }

  private static cj Z()
  {
    return gc.p();
  }

  private go a(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    af_();
    return this;
  }

  private go a(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.d = paramLong;
    af_();
    return this;
  }

  private go a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    af_();
    return this;
  }

  private static void aa()
  {
    gn.aa();
  }

  private static go ab()
  {
    return new go();
  }

  private go ac()
  {
    super.F();
    this.b = "";
    this.a = (0xFFFFFFFE & this.a);
    this.c = "";
    this.a = (0xFFFFFFFD & this.a);
    this.d = 0L;
    this.a = (0xFFFFFFFB & this.a);
    this.e = 0;
    this.a = (0xFFFFFFF7 & this.a);
    this.f = "";
    this.a = (0xFFFFFFEF & this.a);
    this.g = 0L;
    this.a = (0xFFFFFFDF & this.a);
    this.h = 0;
    this.a = (0xFFFFFFBF & this.a);
    this.i = 0;
    this.a = (0xFFFFFF7F & this.a);
    this.j = "";
    this.a = (0xFFFFFEFF & this.a);
    this.k = "";
    this.a = (0xFFFFFDFF & this.a);
    this.l = 0;
    this.a = (0xFFFFFBFF & this.a);
    this.m = "";
    this.a = (0xFFFFF7FF & this.a);
    this.n = 0;
    this.a = (0xFFFFEFFF & this.a);
    this.o = 0L;
    this.a = (0xFFFFDFFF & this.a);
    this.p = "";
    this.a = (0xFFFFBFFF & this.a);
    this.q = "";
    this.a = (0xFFFF7FFF & this.a);
    this.r = "";
    this.a = (0xFFFEFFFF & this.a);
    return this;
  }

  private go ad()
  {
    return new go().a(D());
  }

  private static gn ae()
  {
    return gn.h();
  }

  private gn af()
  {
    gn localgn = D();
    if (!localgn.a())
      throw b(localgn).a();
    return localgn;
  }

  private go ag()
  {
    this.a = (0xFFFFFFFE & this.a);
    this.b = gn.h().k();
    af_();
    return this;
  }

  private go ah()
  {
    this.a = (0xFFFFFFFD & this.a);
    this.c = gn.h().m();
    af_();
    return this;
  }

  private go ai()
  {
    this.a = (0xFFFFFFFB & this.a);
    this.d = 0L;
    af_();
    return this;
  }

  private go aj()
  {
    this.a = (0xFFFFFFF7 & this.a);
    this.e = 0;
    af_();
    return this;
  }

  private go ak()
  {
    this.a = (0xFFFFFFEF & this.a);
    this.f = gn.h().s();
    af_();
    return this;
  }

  private go al()
  {
    this.a = (0xFFFFFFDF & this.a);
    this.g = 0L;
    af_();
    return this;
  }

  private go am()
  {
    this.a = (0xFFFFFFBF & this.a);
    this.h = 0;
    af_();
    return this;
  }

  private go an()
  {
    this.a = (0xFFFFFF7F & this.a);
    this.i = 0;
    af_();
    return this;
  }

  private go ao()
  {
    this.a = (0xFFFFFEFF & this.a);
    this.j = gn.h().A();
    af_();
    return this;
  }

  private go ap()
  {
    this.a = (0xFFFFFDFF & this.a);
    this.k = gn.h().X_();
    af_();
    return this;
  }

  private go aq()
  {
    this.a = (0xFFFFFBFF & this.a);
    this.l = 0;
    af_();
    return this;
  }

  private go ar()
  {
    this.a = (0xFFFFF7FF & this.a);
    this.m = gn.h().aa_();
    af_();
    return this;
  }

  private go as()
  {
    this.a = (0xFFFFEFFF & this.a);
    this.n = 0;
    af_();
    return this;
  }

  private go at()
  {
    this.a = (0xFFFFDFFF & this.a);
    this.o = 0L;
    af_();
    return this;
  }

  private go au()
  {
    this.a = (0xFFFFBFFF & this.a);
    this.p = gn.h().U();
    af_();
    return this;
  }

  private go av()
  {
    this.a = (0xFFFF7FFF & this.a);
    this.q = gn.h().W();
    af_();
    return this;
  }

  private go aw()
  {
    this.a = (0xFFFEFFFF & this.a);
    this.r = gn.h().Y();
    af_();
    return this;
  }

  private go b(int paramInt)
  {
    this.a = (0x40 | this.a);
    this.h = paramInt;
    af_();
    return this;
  }

  private go b(long paramLong)
  {
    this.a = (0x20 | this.a);
    this.g = paramLong;
    af_();
    return this;
  }

  private go b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    af_();
    return this;
  }

  private go c(int paramInt)
  {
    this.a = (0x80 | this.a);
    this.i = paramInt;
    af_();
    return this;
  }

  private go c(long paramLong)
  {
    this.a = (0x2000 | this.a);
    this.o = paramLong;
    af_();
    return this;
  }

  private go c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramString;
    af_();
    return this;
  }

  private go d(int paramInt)
  {
    this.a = (0x400 | this.a);
    this.l = paramInt;
    af_();
    return this;
  }

  private go d(ev paramev)
  {
    if ((paramev instanceof gn));
    for (go localgo = a((gn)paramev); ; localgo = this)
    {
      return localgo;
      super.a(paramev);
    }
  }

  private go d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    af_();
    return this;
  }

  private go e(int paramInt)
  {
    this.a = (0x1000 | this.a);
    this.n = paramInt;
    af_();
    return this;
  }

  private go e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    af_();
    return this;
  }

  private void e(i parami)
  {
    this.a = (0x1 | this.a);
    this.b = parami;
    af_();
  }

  private go f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x800 | this.a);
    this.m = paramString;
    af_();
    return this;
  }

  private void f(i parami)
  {
    this.a = (0x2 | this.a);
    this.c = parami;
    af_();
  }

  private go g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4000 | this.a);
    this.p = paramString;
    af_();
    return this;
  }

  private void g(i parami)
  {
    this.a = (0x10 | this.a);
    this.f = parami;
    af_();
  }

  private go h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8000 | this.a);
    this.q = paramString;
    af_();
    return this;
  }

  private void h(i parami)
  {
    this.a = (0x100 | this.a);
    this.j = parami;
    af_();
  }

  private go i(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10000 | this.a);
    this.r = paramString;
    af_();
    return this;
  }

  private void i(i parami)
  {
    this.a = (0x200 | this.a);
    this.k = parami;
    af_();
  }

  private void j(i parami)
  {
    this.a = (0x800 | this.a);
    this.m = parami;
    af_();
  }

  private void k(i parami)
  {
    this.a = (0x4000 | this.a);
    this.p = parami;
    af_();
  }

  private void l(i parami)
  {
    this.a = (0x8000 | this.a);
    this.q = parami;
    af_();
  }

  private void m(i parami)
  {
    this.a = (0x10000 | this.a);
    this.r = parami;
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
    return gc.q();
  }

  public final cj C()
  {
    return gn.i();
  }

  public final gn D()
  {
    gn localgn = new gn(this);
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    gn.a(localgn, this.b);
    if ((i1 & 0x2) == 2)
      i3 |= 2;
    gn.b(localgn, this.c);
    if ((i1 & 0x4) == 4)
      i3 |= 4;
    gn.a(localgn, this.d);
    if ((i1 & 0x8) == 8)
      i3 |= 8;
    gn.a(localgn, this.e);
    if ((i1 & 0x10) == 16)
      i3 |= 16;
    gn.c(localgn, this.f);
    if ((i1 & 0x20) == 32)
      i3 |= 32;
    gn.b(localgn, this.g);
    if ((i1 & 0x40) == 64)
      i3 |= 64;
    gn.b(localgn, this.h);
    if ((i1 & 0x80) == 128)
      i3 |= 128;
    gn.c(localgn, this.i);
    if ((i1 & 0x100) == 256)
      i3 |= 256;
    gn.d(localgn, this.j);
    if ((i1 & 0x200) == 512)
      i3 |= 512;
    gn.e(localgn, this.k);
    if ((i1 & 0x400) == 1024)
      i3 |= 1024;
    gn.d(localgn, this.l);
    if ((i1 & 0x800) == 2048)
      i3 |= 2048;
    gn.f(localgn, this.m);
    if ((i1 & 0x1000) == 4096)
      i3 |= 4096;
    gn.e(localgn, this.n);
    if ((i1 & 0x2000) == 8192)
      i3 |= 8192;
    gn.c(localgn, this.o);
    if ((i1 & 0x4000) == 16384)
      i3 |= 16384;
    gn.g(localgn, this.p);
    if ((i1 & 0x8000) == 32768)
      i3 |= 32768;
    gn.h(localgn, this.q);
    if ((i1 & 0x10000) == 65536);
    for (int i4 = i3 | 0x10000; ; i4 = i3)
    {
      gn.i(localgn, this.r);
      gn.f(localgn, i4);
      ab_();
      return localgn;
    }
  }

  public final boolean N()
  {
    if ((0x800 & this.a) == 2048);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean P()
  {
    if ((0x1000 & this.a) == 4096);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int Q()
  {
    return this.n;
  }

  public final boolean R()
  {
    if ((0x2000 & this.a) == 8192);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long S()
  {
    return this.o;
  }

  public final boolean T()
  {
    if ((0x4000 & this.a) == 16384);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String U()
  {
    Object localObject = this.p;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.p = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean V()
  {
    if ((0x8000 & this.a) == 32768);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String W()
  {
    Object localObject = this.q;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.q = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean W_()
  {
    if ((0x200 & this.a) == 512);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean X()
  {
    if ((0x10000 & this.a) == 65536);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String X_()
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

  public final String Y()
  {
    Object localObject = this.r;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.r = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final boolean Y_()
  {
    if ((0x400 & this.a) == 1024);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int Z_()
  {
    return this.l;
  }

  public final go a(gn paramgn)
  {
    if (paramgn == gn.h());
    for (go localgo = this; ; localgo = this)
    {
      return localgo;
      if (paramgn.j())
      {
        String str9 = paramgn.k();
        if (str9 == null)
          throw new NullPointerException();
        this.a = (0x1 | this.a);
        this.b = str9;
        af_();
      }
      if (paramgn.l())
      {
        String str8 = paramgn.m();
        if (str8 == null)
          throw new NullPointerException();
        this.a = (0x2 | this.a);
        this.c = str8;
        af_();
      }
      if (paramgn.n())
      {
        long l3 = paramgn.o();
        this.a = (0x4 | this.a);
        this.d = l3;
        af_();
      }
      if (paramgn.p())
      {
        int i5 = paramgn.q();
        this.a = (0x8 | this.a);
        this.e = i5;
        af_();
      }
      if (paramgn.r())
      {
        String str7 = paramgn.s();
        if (str7 == null)
          throw new NullPointerException();
        this.a = (0x10 | this.a);
        this.f = str7;
        af_();
      }
      if (paramgn.t())
      {
        long l2 = paramgn.u();
        this.a = (0x20 | this.a);
        this.g = l2;
        af_();
      }
      if (paramgn.v())
      {
        int i4 = paramgn.w();
        this.a = (0x40 | this.a);
        this.h = i4;
        af_();
      }
      if (paramgn.x())
      {
        int i3 = paramgn.y();
        this.a = (0x80 | this.a);
        this.i = i3;
        af_();
      }
      if (paramgn.z())
      {
        String str6 = paramgn.A();
        if (str6 == null)
          throw new NullPointerException();
        this.a = (0x100 | this.a);
        this.j = str6;
        af_();
      }
      if (paramgn.W_())
      {
        String str5 = paramgn.X_();
        if (str5 == null)
          throw new NullPointerException();
        this.a = (0x200 | this.a);
        this.k = str5;
        af_();
      }
      if (paramgn.Y_())
      {
        int i2 = paramgn.Z_();
        this.a = (0x400 | this.a);
        this.l = i2;
        af_();
      }
      if (paramgn.N())
      {
        String str4 = paramgn.aa_();
        if (str4 == null)
          throw new NullPointerException();
        this.a = (0x800 | this.a);
        this.m = str4;
        af_();
      }
      if (paramgn.P())
      {
        int i1 = paramgn.Q();
        this.a = (0x1000 | this.a);
        this.n = i1;
        af_();
      }
      if (paramgn.R())
      {
        long l1 = paramgn.S();
        this.a = (0x2000 | this.a);
        this.o = l1;
        af_();
      }
      if (paramgn.T())
      {
        String str3 = paramgn.U();
        if (str3 == null)
          throw new NullPointerException();
        this.a = (0x4000 | this.a);
        this.p = str3;
        af_();
      }
      if (paramgn.V())
      {
        String str2 = paramgn.W();
        if (str2 == null)
          throw new NullPointerException();
        this.a = (0x8000 | this.a);
        this.q = str2;
        af_();
      }
      if (paramgn.X())
      {
        String str1 = paramgn.Y();
        if (str1 == null)
          throw new NullPointerException();
        this.a = (0x10000 | this.a);
        this.r = str1;
        af_();
      }
      e(paramgn.b_());
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
      else if (!W_())
        bool = false;
      else
        bool = true;
    }
  }

  public final String aa_()
  {
    Object localObject = this.m;
    String str;
    if (!(localObject instanceof String))
    {
      str = ((i)localObject).b();
      this.m = str;
    }
    while (true)
    {
      return str;
      str = (String)localObject;
    }
  }

  public final go e(m paramm, df paramdf)
  {
    gi localgi = gg.a(b_());
    while (true)
    {
      int i1 = paramm.a();
      switch (i1)
      {
      default:
        if (!a(paramm, localgi, paramdf, i1))
        {
          d(localgi.b());
          af_();
        }
        break;
      case 0:
        for (go localgo = this; ; localgo = this)
        {
          return localgo;
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
        this.d = paramm.e();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramm.f();
        break;
      case 42:
        this.a = (0x10 | this.a);
        this.f = paramm.k();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.g = paramm.e();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramm.f();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramm.f();
        break;
      case 74:
        this.a = (0x100 | this.a);
        this.j = paramm.k();
        break;
      case 82:
        this.a = (0x200 | this.a);
        this.k = paramm.k();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.l = paramm.f();
        break;
      case 98:
        this.a = (0x800 | this.a);
        this.m = paramm.k();
        break;
      case 104:
        this.a = (0x1000 | this.a);
        this.n = paramm.f();
        break;
      case 112:
        this.a = (0x2000 | this.a);
        this.o = paramm.e();
        break;
      case 122:
        this.a = (0x4000 | this.a);
        this.p = paramm.k();
        break;
      case 130:
        this.a = (0x8000 | this.a);
        this.q = paramm.k();
        break;
      case 138:
        this.a = (0x10000 | this.a);
        this.r = paramm.k();
      }
    }
  }

  public final gn i()
  {
    gn localgn = D();
    if (!localgn.a())
      throw b(localgn);
    return localgn;
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

  public final long o()
  {
    return this.d;
  }

  public final boolean p()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
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

  public final long u()
  {
    return this.g;
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.go
 * JD-Core Version:    0.6.2
 */