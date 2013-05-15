package com.avast.a.a.a;

import com.avast.a.a.a.a.ag;
import com.avast.a.a.a.a.c;
import com.avast.a.a.a.a.w;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;

public final class q extends n
  implements r
{
  private int a;
  private boolean b;
  private boolean c;
  private boolean d;
  private ag e = ag.a;
  private ag f = ag.a;
  private ag g = ag.a;
  private ag h = ag.a;
  private ag i = ag.a;
  private boolean j;
  private Object k = "";
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private c r = c.a;
  private boolean s;
  private boolean t;
  private boolean u;
  private boolean v;
  private w w = w.a;
  private boolean x;

  private q()
  {
    f();
  }

  private void f()
  {
  }

  private static q k()
  {
    return new q();
  }

  public q a()
  {
    return k().a(d());
  }

  public q a(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.a = (0x8 | this.a);
    this.e = paramag;
    return this;
  }

  public q a(c paramc)
  {
    if (paramc == null)
      throw new NullPointerException();
    this.a = (0x10000 | this.a);
    this.r = paramc;
    return this;
  }

  public q a(w paramw)
  {
    if (paramw == null)
      throw new NullPointerException();
    this.a = (0x200000 | this.a);
    this.w = paramw;
    return this;
  }

  public q a(p paramp)
  {
    if (paramp == p.a());
    while (true)
    {
      return this;
      if (paramp.b())
        a(paramp.c());
      if (paramp.d())
        b(paramp.e());
      if (paramp.f())
        c(paramp.g());
      if (paramp.h())
        a(paramp.i());
      if (paramp.j())
        b(paramp.k());
      if (paramp.l())
        c(paramp.m());
      if (paramp.n())
        d(paramp.o());
      if (paramp.p())
        e(paramp.q());
      if (paramp.r())
        d(paramp.s());
      if (paramp.t())
        a(paramp.u());
      if (paramp.x())
        e(paramp.y());
      if (paramp.z())
        f(paramp.C());
      if (paramp.D())
        g(paramp.E());
      if (paramp.F())
        h(paramp.G());
      if (paramp.H())
        i(paramp.I());
      if (paramp.J())
        j(paramp.K());
      if (paramp.L())
        a(paramp.M());
      if (paramp.N())
        k(paramp.O());
      if (paramp.P())
        l(paramp.Q());
      if (paramp.R())
        m(paramp.S());
      if (paramp.T())
        n(paramp.U());
      if (paramp.V())
        a(paramp.W());
      if (paramp.X())
        o(paramp.Y());
    }
  }

  public q a(d paramd, g paramg)
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
        this.b = paramd.j();
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.j();
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramd.j();
        break;
      case 32:
        ag localag5 = ag.a(paramd.n());
        if (localag5 == null)
          continue;
        this.a = (0x8 | this.a);
        this.e = localag5;
        break;
      case 40:
        ag localag4 = ag.a(paramd.n());
        if (localag4 == null)
          continue;
        this.a = (0x10 | this.a);
        this.f = localag4;
        break;
      case 48:
        ag localag3 = ag.a(paramd.n());
        if (localag3 == null)
          continue;
        this.a = (0x20 | this.a);
        this.g = localag3;
        break;
      case 56:
        ag localag2 = ag.a(paramd.n());
        if (localag2 == null)
          continue;
        this.a = (0x40 | this.a);
        this.h = localag2;
        break;
      case 64:
        ag localag1 = ag.a(paramd.n());
        if (localag1 == null)
          continue;
        this.a = (0x80 | this.a);
        this.i = localag1;
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramd.j();
        break;
      case 82:
        this.a = (0x200 | this.a);
        this.k = paramd.l();
        break;
      case 88:
        this.a = (0x400 | this.a);
        this.l = paramd.j();
        break;
      case 96:
        this.a = (0x800 | this.a);
        this.m = paramd.j();
        break;
      case 104:
        this.a = (0x1000 | this.a);
        this.n = paramd.j();
        break;
      case 112:
        this.a = (0x2000 | this.a);
        this.o = paramd.j();
        break;
      case 120:
        this.a = (0x4000 | this.a);
        this.p = paramd.j();
        break;
      case 128:
        this.a = (0x8000 | this.a);
        this.q = paramd.j();
        break;
      case 136:
        c localc = c.a(paramd.n());
        if (localc == null)
          continue;
        this.a = (0x10000 | this.a);
        this.r = localc;
        break;
      case 144:
        this.a = (0x20000 | this.a);
        this.s = paramd.j();
        break;
      case 152:
        this.a = (0x40000 | this.a);
        this.t = paramd.j();
        break;
      case 160:
        this.a = (0x80000 | this.a);
        this.u = paramd.j();
        break;
      case 168:
        this.a = (0x100000 | this.a);
        this.v = paramd.j();
        break;
      case 176:
        w localw = w.a(paramd.n());
        if (localw == null)
          continue;
        this.a = (0x200000 | this.a);
        this.w = localw;
        break;
      case 184:
      }
      this.a = (0x400000 | this.a);
      this.x = paramd.j();
    }
  }

  public q a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    return this;
  }

  public q a(boolean paramBoolean)
  {
    this.a = (0x1 | this.a);
    this.b = paramBoolean;
    return this;
  }

  public p b()
  {
    return p.a();
  }

  public q b(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.a = (0x10 | this.a);
    this.f = paramag;
    return this;
  }

  public q b(boolean paramBoolean)
  {
    this.a = (0x2 | this.a);
    this.c = paramBoolean;
    return this;
  }

  public p c()
  {
    p localp = d();
    if (!localp.v())
      throw a(localp);
    return localp;
  }

  public q c(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramag;
    return this;
  }

  public q c(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    return this;
  }

  public p d()
  {
    p localp = new p(this, null);
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    p.a(localp, this.b);
    if ((i1 & 0x2) == 2)
      i3 |= 2;
    p.b(localp, this.c);
    if ((i1 & 0x4) == 4)
      i3 |= 4;
    p.c(localp, this.d);
    if ((i1 & 0x8) == 8)
      i3 |= 8;
    p.a(localp, this.e);
    if ((i1 & 0x10) == 16)
      i3 |= 16;
    p.b(localp, this.f);
    if ((i1 & 0x20) == 32)
      i3 |= 32;
    p.c(localp, this.g);
    if ((i1 & 0x40) == 64)
      i3 |= 64;
    p.d(localp, this.h);
    if ((i1 & 0x80) == 128)
      i3 |= 128;
    p.e(localp, this.i);
    if ((i1 & 0x100) == 256)
      i3 |= 256;
    p.d(localp, this.j);
    if ((i1 & 0x200) == 512)
      i3 |= 512;
    p.a(localp, this.k);
    if ((i1 & 0x400) == 1024)
      i3 |= 1024;
    p.e(localp, this.l);
    if ((i1 & 0x800) == 2048)
      i3 |= 2048;
    p.f(localp, this.m);
    if ((i1 & 0x1000) == 4096)
      i3 |= 4096;
    p.g(localp, this.n);
    if ((i1 & 0x2000) == 8192)
      i3 |= 8192;
    p.h(localp, this.o);
    if ((i1 & 0x4000) == 16384)
      i3 |= 16384;
    p.i(localp, this.p);
    if ((i1 & 0x8000) == 32768)
      i3 |= 32768;
    p.j(localp, this.q);
    if ((i1 & 0x10000) == 65536)
      i3 |= 65536;
    p.a(localp, this.r);
    if ((i1 & 0x20000) == 131072)
      i3 |= 131072;
    p.k(localp, this.s);
    if ((i1 & 0x40000) == 262144)
      i3 |= 262144;
    p.l(localp, this.t);
    if ((i1 & 0x80000) == 524288)
      i3 |= 524288;
    p.m(localp, this.u);
    if ((0x100000 & i1) == 1048576)
      i3 |= 1048576;
    p.n(localp, this.v);
    if ((0x200000 & i1) == 2097152)
      i3 |= 2097152;
    p.a(localp, this.w);
    if ((i1 & 0x400000) == 4194304)
      i3 |= 4194304;
    p.o(localp, this.x);
    p.a(localp, i3);
    return localp;
  }

  public q d(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramag;
    return this;
  }

  public q d(boolean paramBoolean)
  {
    this.a = (0x100 | this.a);
    this.j = paramBoolean;
    return this;
  }

  public q e(ag paramag)
  {
    if (paramag == null)
      throw new NullPointerException();
    this.a = (0x80 | this.a);
    this.i = paramag;
    return this;
  }

  public q e(boolean paramBoolean)
  {
    this.a = (0x400 | this.a);
    this.l = paramBoolean;
    return this;
  }

  public q f(boolean paramBoolean)
  {
    this.a = (0x800 | this.a);
    this.m = paramBoolean;
    return this;
  }

  public q g(boolean paramBoolean)
  {
    this.a = (0x1000 | this.a);
    this.n = paramBoolean;
    return this;
  }

  public q h(boolean paramBoolean)
  {
    this.a = (0x2000 | this.a);
    this.o = paramBoolean;
    return this;
  }

  public q i(boolean paramBoolean)
  {
    this.a = (0x4000 | this.a);
    this.p = paramBoolean;
    return this;
  }

  public q j(boolean paramBoolean)
  {
    this.a = (0x8000 | this.a);
    this.q = paramBoolean;
    return this;
  }

  public q k(boolean paramBoolean)
  {
    this.a = (0x20000 | this.a);
    this.s = paramBoolean;
    return this;
  }

  public q l(boolean paramBoolean)
  {
    this.a = (0x40000 | this.a);
    this.t = paramBoolean;
    return this;
  }

  public q m(boolean paramBoolean)
  {
    this.a = (0x80000 | this.a);
    this.u = paramBoolean;
    return this;
  }

  public q n(boolean paramBoolean)
  {
    this.a = (0x100000 | this.a);
    this.v = paramBoolean;
    return this;
  }

  public q o(boolean paramBoolean)
  {
    this.a = (0x400000 | this.a);
    this.x = paramBoolean;
    return this;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.q
 * JD-Core Version:    0.6.2
 */