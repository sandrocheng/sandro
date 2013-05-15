package com.avast.android.generic.internet.c.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ae extends n
  implements af
{
  private int a;
  private c b = c.a;
  private c c = c.a;
  private c d = c.a;
  private c e = c.a;
  private long f;
  private List g = Collections.emptyList();
  private List h = Collections.emptyList();
  private c i = c.a;
  private am j = am.a();
  private int k;
  private long l;
  private long m;
  private boolean n;
  private boolean o;
  private Object p = "";
  private c q = c.a;
  private long r;
  private boolean s;
  private ag t = ag.a();

  private ae()
  {
    p();
  }

  private void p()
  {
  }

  private static ae q()
  {
    return new ae();
  }

  private void r()
  {
    if ((0x20 & this.a) != 32)
    {
      this.g = new ArrayList(this.g);
      this.a = (0x20 | this.a);
    }
  }

  private void s()
  {
    if ((0x40 & this.a) != 64)
    {
      this.h = new ArrayList(this.h);
      this.a = (0x40 | this.a);
    }
  }

  public ae a()
  {
    return q().a(d());
  }

  public ae a(int paramInt)
  {
    this.a = (0x200 | this.a);
    this.k = paramInt;
    return this;
  }

  public ae a(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    return this;
  }

  public ae a(ad paramad)
  {
    if (paramad == ad.a())
      return this;
    if (paramad.b())
      a(paramad.c());
    if (paramad.d())
      b(paramad.e());
    if (paramad.f())
      c(paramad.g());
    if (paramad.h())
      d(paramad.i());
    if (paramad.j())
      a(paramad.k());
    if (!ad.b(paramad).isEmpty())
    {
      if (this.g.isEmpty())
      {
        this.g = ad.b(paramad);
        this.a = (0xFFFFFFDF & this.a);
      }
    }
    else
      label132: if (!ad.c(paramad).isEmpty())
      {
        if (!this.h.isEmpty())
          break label391;
        this.h = ad.c(paramad);
        this.a = (0xFFFFFFBF & this.a);
      }
    while (true)
    {
      if (paramad.n())
        e(paramad.o());
      if (paramad.p())
        b(paramad.q());
      if (paramad.r())
        a(paramad.s());
      if (paramad.t())
        b(paramad.u());
      if (paramad.x())
        c(paramad.y());
      if (paramad.z())
        a(paramad.C());
      if (paramad.D())
        b(paramad.E());
      if (paramad.F())
        a(paramad.G());
      if (paramad.H())
        f(paramad.I());
      if (paramad.J())
        d(paramad.K());
      if (paramad.L())
        c(paramad.M());
      if (!paramad.N())
        break;
      b(paramad.O());
      break;
      r();
      this.g.addAll(ad.b(paramad));
      break label132;
      label391: s();
      this.h.addAll(ad.c(paramad));
    }
  }

  public ae a(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.t = paramag;
    this.a = (0x40000 | this.a);
    return this;
  }

  public ae a(am paramam)
  {
    if (paramam == null)
      throw new NullPointerException();
    this.j = paramam;
    this.a = (0x100 | this.a);
    return this;
  }

  public ae a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramc;
    return this;
  }

  public ae a(d paramd, g paramg)
  {
    while (true)
    {
      int i1 = paramd.a();
      switch (i1)
      {
      default:
        if (a(paramd, paramg, i1))
          continue;
      case 0:
        return this;
      case 10:
        this.a = (0x1 | this.a);
        this.b = paramd.l();
        break;
      case 18:
        this.a = (0x2 | this.a);
        this.c = paramd.l();
        break;
      case 26:
        this.a = (0x4 | this.a);
        this.d = paramd.l();
        break;
      case 34:
        this.a = (0x8 | this.a);
        this.e = paramd.l();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramd.f();
        break;
      case 50:
        r();
        this.g.add(paramd.l());
        break;
      case 58:
        s();
        this.h.add(paramd.l());
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 74:
        an localan = am.x();
        if (k())
          localan.a(l());
        paramd.a(localan, paramg);
        a(localan.d());
        break;
      case 80:
        this.a = (0x200 | this.a);
        this.k = paramd.g();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.l = paramd.f();
        break;
      case 96:
        this.a = (0x800 | this.a);
        this.m = paramd.f();
        break;
      case 104:
        this.a = (0x1000 | this.a);
        this.n = paramd.j();
        break;
      case 112:
        this.a = (0x2000 | this.a);
        this.o = paramd.j();
        break;
      case 122:
        this.a = (0x4000 | this.a);
        this.p = paramd.l();
        break;
      case 130:
        this.a = (0x8000 | this.a);
        this.q = paramd.l();
        break;
      case 136:
        this.a = (0x10000 | this.a);
        this.r = paramd.f();
        break;
      case 144:
        this.a = (0x20000 | this.a);
        this.s = paramd.j();
        break;
      case 154:
      }
      ah localah = ag.d();
      if (m())
        localah.a(n());
      paramd.a(localah, paramg);
      a(localah.d());
    }
  }

  public ae a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4000 | this.a);
    this.p = paramString;
    return this;
  }

  public ae a(boolean paramBoolean)
  {
    this.a = (0x1000 | this.a);
    this.n = paramBoolean;
    return this;
  }

  public ad b()
  {
    return ad.a();
  }

  public ae b(long paramLong)
  {
    this.a = (0x400 | this.a);
    this.l = paramLong;
    return this;
  }

  public ae b(ag paramag)
  {
    if (((0x40000 & this.a) == 262144) && (this.t != ag.a()));
    for (this.t = ag.a(this.t).a(paramag).d(); ; this.t = paramag)
    {
      this.a = (0x40000 | this.a);
      return this;
    }
  }

  public ae b(am paramam)
  {
    if (((0x100 & this.a) == 256) && (this.j != am.a()));
    for (this.j = am.a(this.j).a(paramam).d(); ; this.j = paramam)
    {
      this.a = (0x100 | this.a);
      return this;
    }
  }

  public ae b(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramc;
    return this;
  }

  public ae b(boolean paramBoolean)
  {
    this.a = (0x2000 | this.a);
    this.o = paramBoolean;
    return this;
  }

  public ad c()
  {
    ad localad = d();
    if (!localad.v())
      throw a(localad);
    return localad;
  }

  public ae c(long paramLong)
  {
    this.a = (0x800 | this.a);
    this.m = paramLong;
    return this;
  }

  public ae c(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramc;
    return this;
  }

  public ae c(boolean paramBoolean)
  {
    this.a = (0x20000 | this.a);
    this.s = paramBoolean;
    return this;
  }

  public ad d()
  {
    int i1 = 1;
    ad localad = new ad(this, null);
    int i2 = this.a;
    if ((i2 & 0x1) == i1);
    while (true)
    {
      ad.a(localad, this.b);
      if ((i2 & 0x2) == 2)
        i1 |= 2;
      ad.b(localad, this.c);
      if ((i2 & 0x4) == 4)
        i1 |= 4;
      ad.c(localad, this.d);
      if ((i2 & 0x8) == 8)
        i1 |= 8;
      ad.d(localad, this.e);
      if ((i2 & 0x10) == 16)
        i1 |= 16;
      ad.a(localad, this.f);
      if ((0x20 & this.a) == 32)
      {
        this.g = Collections.unmodifiableList(this.g);
        this.a = (0xFFFFFFDF & this.a);
      }
      ad.a(localad, this.g);
      if ((0x40 & this.a) == 64)
      {
        this.h = Collections.unmodifiableList(this.h);
        this.a = (0xFFFFFFBF & this.a);
      }
      ad.b(localad, this.h);
      if ((i2 & 0x80) == 128)
        i1 |= 32;
      ad.e(localad, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 64;
      ad.a(localad, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 128;
      ad.a(localad, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 256;
      ad.b(localad, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 512;
      ad.c(localad, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 1024;
      ad.a(localad, this.n);
      if ((i2 & 0x2000) == 8192)
        i1 |= 2048;
      ad.b(localad, this.o);
      if ((i2 & 0x4000) == 16384)
        i1 |= 4096;
      ad.a(localad, this.p);
      if ((i2 & 0x8000) == 32768)
        i1 |= 8192;
      ad.f(localad, this.q);
      if ((i2 & 0x10000) == 65536)
        i1 |= 16384;
      ad.d(localad, this.r);
      if ((i2 & 0x20000) == 131072)
        i1 |= 32768;
      ad.c(localad, this.s);
      if ((i2 & 0x40000) == 262144)
        i1 |= 65536;
      ad.a(localad, this.t);
      ad.b(localad, i1);
      return localad;
      i1 = 0;
    }
  }

  public ae d(long paramLong)
  {
    this.a = (0x10000 | this.a);
    this.r = paramLong;
    return this;
  }

  public ae d(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramc;
    return this;
  }

  public ae e(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramc;
    return this;
  }

  public c e()
  {
    return this.b;
  }

  public long f()
  {
    return this.f;
  }

  public ae f(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x8000 | this.a);
    this.q = paramc;
    return this;
  }

  public boolean k()
  {
    if ((0x100 & this.a) == 256);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public am l()
  {
    return this.j;
  }

  public boolean m()
  {
    if ((0x40000 & this.a) == 262144);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ag n()
  {
    return this.t;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.ae
 * JD-Core Version:    0.6.2
 */