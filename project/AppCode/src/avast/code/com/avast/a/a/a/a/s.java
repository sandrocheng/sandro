package com.avast.a.a.a.a;

import com.google.a.c;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class s extends n
  implements t
{
  private int a;
  private long b;
  private Object c = "";
  private Object d = "";
  private Object e = "";
  private long f;
  private long g;
  private u h = u.a;
  private Object i = "";
  private Object j = "";
  private Object k = "";
  private Object l = "";
  private long m;
  private int n;
  private c o = c.a;
  private Object p = "";
  private Object q = "";
  private int r;
  private int s;
  private Object t = "";
  private Object u = "";
  private Object v = "";
  private Object w = "";
  private long x;
  private long y;
  private int z;

  private s()
  {
    k();
  }

  private void k()
  {
  }

  private static s l()
  {
    return new s();
  }

  public s a()
  {
    return l().a(d());
  }

  public s a(int paramInt)
  {
    this.a = (0x1000 | this.a);
    this.n = paramInt;
    return this;
  }

  public s a(long paramLong)
  {
    this.a = (0x1 | this.a);
    this.b = paramLong;
    return this;
  }

  public s a(r paramr)
  {
    if (paramr == r.a());
    while (true)
    {
      return this;
      if (paramr.b())
        a(paramr.c());
      if (paramr.d())
        a(paramr.e());
      if (paramr.f())
        b(paramr.g());
      if (paramr.h())
        c(paramr.i());
      if (paramr.j())
        b(paramr.k());
      if (paramr.l())
        c(paramr.m());
      if (paramr.n())
        a(paramr.o());
      if (paramr.p())
        d(paramr.q());
      if (paramr.r())
        e(paramr.s());
      if (paramr.t())
        f(paramr.u());
      if (paramr.x())
        g(paramr.y());
      if (paramr.z())
        d(paramr.C());
      if (paramr.D())
        a(paramr.E());
      if (paramr.F())
        a(paramr.G());
      if (paramr.H())
        h(paramr.I());
      if (paramr.J())
        i(paramr.K());
      if (paramr.L())
        b(paramr.M());
      if (paramr.N())
        c(paramr.O());
      if (paramr.P())
        j(paramr.Q());
      if (paramr.R())
        k(paramr.S());
      if (paramr.T())
        l(paramr.U());
      if (paramr.V())
        m(paramr.W());
      if (paramr.X())
        e(paramr.Y());
      if (paramr.Z())
        f(paramr.aa());
      if (paramr.ab())
        d(paramr.ac());
    }
  }

  public s a(u paramu)
  {
    if (paramu == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramu;
    return this;
  }

  public s a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x2000 | this.a);
    this.o = paramc;
    return this;
  }

  public s a(d paramd, g paramg)
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
      case 8:
        this.a = (0x1 | this.a);
        this.b = paramd.f();
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
      case 48:
        this.a = (0x20 | this.a);
        this.g = paramd.f();
        break;
      case 56:
        u localu = u.a(paramd.n());
        if (localu == null)
          continue;
        this.a = (0x40 | this.a);
        this.h = localu;
        break;
      case 66:
        this.a = (0x80 | this.a);
        this.i = paramd.l();
        break;
      case 74:
        this.a = (0x100 | this.a);
        this.j = paramd.l();
        break;
      case 82:
        this.a = (0x200 | this.a);
        this.k = paramd.l();
        break;
      case 90:
        this.a = (0x400 | this.a);
        this.l = paramd.l();
        break;
      case 96:
        this.a = (0x800 | this.a);
        this.m = paramd.f();
        break;
      case 104:
        this.a = (0x1000 | this.a);
        this.n = paramd.g();
        break;
      case 114:
        this.a = (0x2000 | this.a);
        this.o = paramd.l();
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
        this.r = paramd.g();
        break;
      case 144:
        this.a = (0x20000 | this.a);
        this.s = paramd.g();
        break;
      case 154:
        this.a = (0x40000 | this.a);
        this.t = paramd.l();
        break;
      case 162:
        this.a = (0x80000 | this.a);
        this.u = paramd.l();
        break;
      case 170:
        this.a = (0x100000 | this.a);
        this.v = paramd.l();
        break;
      case 178:
        this.a = (0x200000 | this.a);
        this.w = paramd.l();
        break;
      case 184:
        this.a = (0x400000 | this.a);
        this.x = paramd.f();
        break;
      case 192:
        this.a = (0x800000 | this.a);
        this.y = paramd.f();
        break;
      case 200:
      }
      this.a = (0x1000000 | this.a);
      this.z = paramd.g();
    }
  }

  public s a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2 | this.a);
    this.c = paramString;
    return this;
  }

  public r b()
  {
    return r.a();
  }

  public s b(int paramInt)
  {
    this.a = (0x10000 | this.a);
    this.r = paramInt;
    return this;
  }

  public s b(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    return this;
  }

  public s b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public r c()
  {
    r localr = d();
    if (!localr.v())
      throw a(localr);
    return localr;
  }

  public s c(int paramInt)
  {
    this.a = (0x20000 | this.a);
    this.s = paramInt;
    return this;
  }

  public s c(long paramLong)
  {
    this.a = (0x20 | this.a);
    this.g = paramLong;
    return this;
  }

  public s c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramString;
    return this;
  }

  public r d()
  {
    r localr = new r(this, null);
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    r.a(localr, this.b);
    if ((i1 & 0x2) == 2)
      i3 |= 2;
    r.a(localr, this.c);
    if ((i1 & 0x4) == 4)
      i3 |= 4;
    r.b(localr, this.d);
    if ((i1 & 0x8) == 8)
      i3 |= 8;
    r.c(localr, this.e);
    if ((i1 & 0x10) == 16)
      i3 |= 16;
    r.b(localr, this.f);
    if ((i1 & 0x20) == 32)
      i3 |= 32;
    r.c(localr, this.g);
    if ((i1 & 0x40) == 64)
      i3 |= 64;
    r.a(localr, this.h);
    if ((i1 & 0x80) == 128)
      i3 |= 128;
    r.d(localr, this.i);
    if ((i1 & 0x100) == 256)
      i3 |= 256;
    r.e(localr, this.j);
    if ((i1 & 0x200) == 512)
      i3 |= 512;
    r.f(localr, this.k);
    if ((i1 & 0x400) == 1024)
      i3 |= 1024;
    r.g(localr, this.l);
    if ((i1 & 0x800) == 2048)
      i3 |= 2048;
    r.d(localr, this.m);
    if ((i1 & 0x1000) == 4096)
      i3 |= 4096;
    r.a(localr, this.n);
    if ((i1 & 0x2000) == 8192)
      i3 |= 8192;
    r.a(localr, this.o);
    if ((i1 & 0x4000) == 16384)
      i3 |= 16384;
    r.h(localr, this.p);
    if ((i1 & 0x8000) == 32768)
      i3 |= 32768;
    r.i(localr, this.q);
    if ((i1 & 0x10000) == 65536)
      i3 |= 65536;
    r.b(localr, this.r);
    if ((i1 & 0x20000) == 131072)
      i3 |= 131072;
    r.c(localr, this.s);
    if ((i1 & 0x40000) == 262144)
      i3 |= 262144;
    r.j(localr, this.t);
    if ((i1 & 0x80000) == 524288)
      i3 |= 524288;
    r.k(localr, this.u);
    if ((0x100000 & i1) == 1048576)
      i3 |= 1048576;
    r.l(localr, this.v);
    if ((0x200000 & i1) == 2097152)
      i3 |= 2097152;
    r.m(localr, this.w);
    if ((0x400000 & i1) == 4194304)
      i3 |= 4194304;
    r.e(localr, this.x);
    if ((0x800000 & i1) == 8388608)
      i3 |= 8388608;
    r.f(localr, this.y);
    if ((i1 & 0x1000000) == 16777216)
      i3 |= 16777216;
    r.d(localr, this.z);
    r.e(localr, i3);
    return localr;
  }

  public s d(int paramInt)
  {
    this.a = (0x1000000 | this.a);
    this.z = paramInt;
    return this;
  }

  public s d(long paramLong)
  {
    this.a = (0x800 | this.a);
    this.m = paramLong;
    return this;
  }

  public s d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramString;
    return this;
  }

  public s e(long paramLong)
  {
    this.a = (0x400000 | this.a);
    this.x = paramLong;
    return this;
  }

  public s e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    return this;
  }

  public boolean e()
  {
    int i1 = 1;
    if ((0x1 & this.a) == i1);
    while (true)
    {
      return i1;
      int i2 = 0;
    }
  }

  public s f(long paramLong)
  {
    this.a = (0x800000 | this.a);
    this.y = paramLong;
    return this;
  }

  public s f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    return this;
  }

  public s g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x400 | this.a);
    this.l = paramString;
    return this;
  }

  public s h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4000 | this.a);
    this.p = paramString;
    return this;
  }

  public s i(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8000 | this.a);
    this.q = paramString;
    return this;
  }

  public s j(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40000 | this.a);
    this.t = paramString;
    return this;
  }

  public s k(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80000 | this.a);
    this.u = paramString;
    return this;
  }

  public s l(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100000 | this.a);
    this.v = paramString;
    return this;
  }

  public s m(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200000 | this.a);
    this.w = paramString;
    return this;
  }

  public final boolean v()
  {
    if (!e());
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.s
 * JD-Core Version:    0.6.2
 */