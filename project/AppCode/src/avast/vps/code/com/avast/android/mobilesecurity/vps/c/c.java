package com.avast.android.mobilesecurity.vps.c;

import a.a.i;
import a.a.m;
import a.a.n;
import a.a.q;
import a.a.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c extends i
{
  private Object A = "";
  private boolean B;
  private Object C = "";
  private Object D = "";
  private Object E = "";
  private int a;
  private Object b = "";
  private n c = m.a;
  private Object d = "";
  private long e;
  private long f;
  private Object g = "";
  private Object h = "";
  private int i;
  private Object j = "";
  private Object k = "";
  private int l;
  private Object m = "";
  private int n;
  private Object o = "";
  private Object p = "";
  private long q;
  private Object r = "";
  private int s;
  private Object t = "";
  private Object u = "";
  private Object v = "";
  private long w;
  private List x = Collections.emptyList();
  private Object y = "";
  private Object z = "";

  private c g()
  {
    return new c().a(h());
  }

  private b h()
  {
    b localb = new b('\000');
    int i1 = this.a;
    int i2 = i1 & 0x1;
    int i3 = 0;
    if (i2 == 1)
      i3 = 1;
    b.a(localb, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = new r(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    b.a(localb, this.c);
    if ((i1 & 0x4) == 4)
      i3 |= 2;
    b.b(localb, this.d);
    if ((i1 & 0x8) == 8)
      i3 |= 4;
    b.a(localb, this.e);
    if ((i1 & 0x10) == 16)
      i3 |= 8;
    b.b(localb, this.f);
    if ((i1 & 0x20) == 32)
      i3 |= 16;
    b.c(localb, this.g);
    if ((i1 & 0x40) == 64)
      i3 |= 32;
    b.d(localb, this.h);
    if ((i1 & 0x80) == 128)
      i3 |= 64;
    b.a(localb, this.i);
    if ((i1 & 0x100) == 256)
      i3 |= 128;
    b.e(localb, this.j);
    if ((i1 & 0x200) == 512)
      i3 |= 256;
    b.f(localb, this.k);
    if ((i1 & 0x400) == 1024)
      i3 |= 512;
    b.b(localb, this.l);
    if ((i1 & 0x800) == 2048)
      i3 |= 1024;
    b.g(localb, this.m);
    if ((i1 & 0x1000) == 4096)
      i3 |= 2048;
    b.c(localb, this.n);
    if ((i1 & 0x2000) == 8192)
      i3 |= 4096;
    b.h(localb, this.o);
    if ((i1 & 0x4000) == 16384)
      i3 |= 8192;
    b.i(localb, this.p);
    if ((i1 & 0x8000) == 32768)
      i3 |= 16384;
    b.c(localb, this.q);
    if ((i1 & 0x10000) == 65536)
      i3 |= 32768;
    b.j(localb, this.r);
    if ((i1 & 0x20000) == 131072)
      i3 |= 65536;
    b.d(localb, this.s);
    if ((i1 & 0x40000) == 262144)
      i3 |= 131072;
    b.k(localb, this.t);
    if ((i1 & 0x80000) == 524288)
      i3 |= 262144;
    b.l(localb, this.u);
    if ((0x100000 & i1) == 1048576)
      i3 |= 524288;
    b.m(localb, this.v);
    if ((0x200000 & i1) == 2097152)
      i3 |= 1048576;
    b.d(localb, this.w);
    if ((0x400000 & this.a) == 4194304)
    {
      this.x = Collections.unmodifiableList(this.x);
      this.a = (0xFFBFFFFF & this.a);
    }
    b.a(localb, this.x);
    if ((0x800000 & i1) == 8388608)
      i3 |= 2097152;
    b.n(localb, this.y);
    if ((0x1000000 & i1) == 16777216)
      i3 |= 4194304;
    b.o(localb, this.z);
    if ((0x2000000 & i1) == 33554432)
      i3 |= 8388608;
    b.p(localb, this.A);
    if ((0x4000000 & i1) == 67108864)
      i3 |= 16777216;
    b.a(localb, this.B);
    if ((0x8000000 & i1) == 134217728)
      i3 |= 33554432;
    b.q(localb, this.C);
    if ((0x10000000 & i1) == 268435456)
      i3 |= 67108864;
    b.r(localb, this.D);
    if ((i1 & 0x20000000) == 536870912)
      i3 |= 134217728;
    b.s(localb, this.E);
    b.e(localb, i3);
    return localb;
  }

  private void i()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new m(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private void j()
  {
    if ((0x400000 & this.a) != 4194304)
    {
      this.x = new ArrayList(this.x);
      this.a = (0x400000 | this.a);
    }
  }

  public final b a()
  {
    b localb = h();
    if (!localb.af())
      throw new q();
    return localb;
  }

  public final c a(int paramInt)
  {
    this.a = (0x80 | this.a);
    this.i = paramInt;
    return this;
  }

  public final c a(long paramLong)
  {
    this.a = (0x8 | this.a);
    this.e = paramLong;
    return this;
  }

  public final c a(b paramb)
  {
    if (paramb == b.a())
      return this;
    if (paramb.b())
      a(paramb.c());
    if (!b.b(paramb).isEmpty())
    {
      if (this.c.isEmpty())
      {
        this.c = b.b(paramb);
        this.a = (0xFFFFFFFD & this.a);
      }
    }
    else
    {
      label68: if (paramb.d())
        c(paramb.e());
      if (paramb.f())
        a(paramb.g());
      if (paramb.h())
        b(paramb.i());
      if (paramb.j())
        d(paramb.k());
      if (paramb.l())
        e(paramb.m());
      if (paramb.n())
        a(paramb.o());
      if (paramb.p())
        f(paramb.q());
      if (paramb.r())
        g(paramb.s());
      if (paramb.t())
        b(paramb.u());
      if (paramb.v())
        h(paramb.w());
      if (paramb.x())
        c(paramb.y());
      if (paramb.z())
        i(paramb.A());
      if (paramb.B())
        j(paramb.C());
      if (paramb.D())
        c(paramb.E());
      if (paramb.F())
        k(paramb.G());
      if (paramb.H())
        d(paramb.I());
      if (paramb.J())
        l(paramb.K());
      if (paramb.L())
        m(paramb.M());
      if (paramb.N())
        n(paramb.O());
      if (paramb.P())
        d(paramb.Q());
      if (!b.c(paramb).isEmpty())
      {
        if (!this.x.isEmpty())
          break label567;
        this.x = b.c(paramb);
        this.a = (0xFFBFFFFF & this.a);
      }
    }
    while (true)
    {
      if (paramb.R())
        o(paramb.S());
      if (paramb.T())
        p(paramb.U());
      if (paramb.V())
        q(paramb.W());
      if (paramb.X())
        a(paramb.Y());
      if (paramb.Z())
        r(paramb.aa());
      if (paramb.ab())
        s(paramb.ac());
      if (!paramb.ad())
        break;
      t(paramb.ae());
      break;
      i();
      this.c.addAll(b.b(paramb));
      break label68;
      label567: j();
      this.x.addAll(b.c(paramb));
    }
  }

  public final c a(f paramf)
  {
    if (paramf == null)
      throw new NullPointerException();
    j();
    this.x.add(paramf);
    return this;
  }

  public final c a(Iterable paramIterable)
  {
    j();
    List localList = this.x;
    Iterator localIterator1 = paramIterable.iterator();
    while (localIterator1.hasNext())
      if (localIterator1.next() == null)
        throw new NullPointerException();
    if ((paramIterable instanceof Collection))
      localList.addAll((Collection)paramIterable);
    while (true)
    {
      return this;
      Iterator localIterator2 = paramIterable.iterator();
      while (localIterator2.hasNext())
        localList.add(localIterator2.next());
    }
  }

  public final c a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramString;
    return this;
  }

  public final c a(boolean paramBoolean)
  {
    this.a = (0x4000000 | this.a);
    this.B = paramBoolean;
    return this;
  }

  public final c b(int paramInt)
  {
    this.a = (0x400 | this.a);
    this.l = paramInt;
    return this;
  }

  public final c b(long paramLong)
  {
    this.a = (0x10 | this.a);
    this.f = paramLong;
    return this;
  }

  public final c b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    i();
    this.c.add(paramString);
    return this;
  }

  public final List b()
  {
    return Collections.unmodifiableList(this.x);
  }

  public final c c()
  {
    this.x = Collections.emptyList();
    this.a = (0xFFBFFFFF & this.a);
    return this;
  }

  public final c c(int paramInt)
  {
    this.a = (0x1000 | this.a);
    this.n = paramInt;
    return this;
  }

  public final c c(long paramLong)
  {
    this.a = (0x8000 | this.a);
    this.q = paramLong;
    return this;
  }

  public final c c(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4 | this.a);
    this.d = paramString;
    return this;
  }

  public final c d(int paramInt)
  {
    this.a = (0x20000 | this.a);
    this.s = paramInt;
    return this;
  }

  public final c d(long paramLong)
  {
    this.a = (0x200000 | this.a);
    this.w = paramLong;
    return this;
  }

  public final c d(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public final c e(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40 | this.a);
    this.h = paramString;
    return this;
  }

  public final c f(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100 | this.a);
    this.j = paramString;
    return this;
  }

  public final c g(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    return this;
  }

  public final c h(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x800 | this.a);
    this.m = paramString;
    return this;
  }

  public final c i(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2000 | this.a);
    this.o = paramString;
    return this;
  }

  public final c j(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x4000 | this.a);
    this.p = paramString;
    return this;
  }

  public final c k(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10000 | this.a);
    this.r = paramString;
    return this;
  }

  public final c l(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x40000 | this.a);
    this.t = paramString;
    return this;
  }

  public final c m(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x80000 | this.a);
    this.u = paramString;
    return this;
  }

  public final c n(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x100000 | this.a);
    this.v = paramString;
    return this;
  }

  public final c o(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x800000 | this.a);
    this.y = paramString;
    return this;
  }

  public final c p(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x1000000 | this.a);
    this.z = paramString;
    return this;
  }

  public final c q(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x2000000 | this.a);
    this.A = paramString;
    return this;
  }

  public final c r(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x8000000 | this.a);
    this.C = paramString;
    return this;
  }

  public final c s(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x10000000 | this.a);
    this.D = paramString;
    return this;
  }

  public final c t(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20000000 | this.a);
    this.E = paramString;
    return this;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.c.c
 * JD-Core Version:    0.6.2
 */