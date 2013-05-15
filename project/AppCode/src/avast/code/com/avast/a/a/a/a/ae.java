package com.avast.a.a.a.a;

import com.google.a.d;
import com.google.a.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ae extends n
  implements af
{
  private int a;
  private List b = Collections.emptyList();
  private List c = Collections.emptyList();
  private List d = Collections.emptyList();
  private r e = r.a();
  private List f = Collections.emptyList();
  private Object g = "";
  private int h;
  private boolean i;
  private long j;
  private Object k = "";
  private long l;
  private long m;
  private long n;

  private ae()
  {
    o();
  }

  private void o()
  {
  }

  private static ae p()
  {
    return new ae();
  }

  private void q()
  {
    if ((0x1 & this.a) != 1)
    {
      this.b = new ArrayList(this.b);
      this.a = (0x1 | this.a);
    }
  }

  private void r()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new ArrayList(this.c);
      this.a = (0x2 | this.a);
    }
  }

  private void s()
  {
    if ((0x4 & this.a) != 4)
    {
      this.d = new ArrayList(this.d);
      this.a = (0x4 | this.a);
    }
  }

  private void t()
  {
    if ((0x10 & this.a) != 16)
    {
      this.f = new ArrayList(this.f);
      this.a = (0x10 | this.a);
    }
  }

  public ae a()
  {
    return p().a(d());
  }

  public ae a(long paramLong)
  {
    this.a = (0x100 | this.a);
    this.j = paramLong;
    return this;
  }

  public ae a(ad paramad)
  {
    if (paramad == ad.a())
      return this;
    if (!ad.b(paramad).isEmpty())
    {
      if (this.b.isEmpty())
      {
        this.b = ad.b(paramad);
        this.a = (0xFFFFFFFE & this.a);
      }
    }
    else
    {
      label52: if (!ad.c(paramad).isEmpty())
      {
        if (!this.c.isEmpty())
          break label349;
        this.c = ad.c(paramad);
        this.a = (0xFFFFFFFD & this.a);
      }
      label95: if (!ad.d(paramad).isEmpty())
      {
        if (!this.d.isEmpty())
          break label370;
        this.d = ad.d(paramad);
        this.a = (0xFFFFFFFB & this.a);
      }
      label138: if (paramad.e())
        b(paramad.f());
      if (!ad.e(paramad).isEmpty())
      {
        if (!this.f.isEmpty())
          break label391;
        this.f = ad.e(paramad);
        this.a = (0xFFFFFFEF & this.a);
      }
    }
    while (true)
    {
      if (paramad.g())
        a(paramad.h());
      if (paramad.i())
        d(paramad.j());
      if (paramad.k())
        a(paramad.l());
      if (paramad.m())
        a(paramad.n());
      if (paramad.o())
        b(paramad.p());
      if (paramad.q())
        b(paramad.r());
      if (paramad.s())
        c(paramad.t());
      if (!paramad.u())
        break;
      d(paramad.x());
      break;
      q();
      this.b.addAll(ad.b(paramad));
      break label52;
      label349: r();
      this.c.addAll(ad.c(paramad));
      break label95;
      label370: s();
      this.d.addAll(ad.d(paramad));
      break label138;
      label391: t();
      this.f.addAll(ad.e(paramad));
    }
  }

  public ae a(g paramg)
  {
    if (paramg == null)
      throw new NullPointerException();
    s();
    this.d.add(paramg);
    return this;
  }

  public ae a(j paramj)
  {
    if (paramj == null)
      throw new NullPointerException();
    q();
    this.b.add(paramj);
    return this;
  }

  public ae a(o paramo)
  {
    if (paramo == null)
      throw new NullPointerException();
    t();
    this.f.add(paramo);
    return this;
  }

  public ae a(r paramr)
  {
    if (paramr == null)
      throw new NullPointerException();
    this.e = paramr;
    this.a = (0x8 | this.a);
    return this;
  }

  public ae a(y paramy)
  {
    if (paramy == null)
      throw new NullPointerException();
    r();
    this.c.add(paramy);
    return this;
  }

  public ae a(d paramd, com.google.a.g paramg)
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
        k localk = j.p();
        paramd.a(localk, paramg);
        a(localk.d());
        break;
      case 18:
        z localz = y.r();
        paramd.a(localz, paramg);
        a(localz.d());
        break;
      case 26:
        h localh = g.r();
        paramd.a(localh, paramg);
        a(localh.d());
        break;
      case 34:
        s locals = r.ad();
        if (l())
          locals.a(m());
        paramd.a(locals, paramg);
        a(locals.d());
        break;
      case 42:
        p localp = o.al();
        paramd.a(localp, paramg);
        a(localp.d());
        break;
      case 50:
        this.a = (0x20 | this.a);
        this.g = paramd.l();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramd.m();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramd.j();
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramd.f();
        break;
      case 82:
        this.a = (0x200 | this.a);
        this.k = paramd.l();
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
      }
      this.a = (0x1000 | this.a);
      this.n = paramd.f();
    }
  }

  public ae a(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x20 | this.a);
    this.g = paramString;
    return this;
  }

  public ae a(boolean paramBoolean)
  {
    this.a = (0x80 | this.a);
    this.i = paramBoolean;
    return this;
  }

  public j a(int paramInt)
  {
    return (j)this.b.get(paramInt);
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

  public ae b(r paramr)
  {
    if (((0x8 & this.a) == 8) && (this.e != r.a()));
    for (this.e = r.a(this.e).a(paramr).d(); ; this.e = paramr)
    {
      this.a = (0x8 | this.a);
      return this;
    }
  }

  public ae b(String paramString)
  {
    if (paramString == null)
      throw new NullPointerException();
    this.a = (0x200 | this.a);
    this.k = paramString;
    return this;
  }

  public y b(int paramInt)
  {
    return (y)this.c.get(paramInt);
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

  public g c(int paramInt)
  {
    return (g)this.d.get(paramInt);
  }

  public ad d()
  {
    int i1 = 1;
    ad localad = new ad(this, null);
    int i2 = this.a;
    if ((0x1 & this.a) == i1)
    {
      this.b = Collections.unmodifiableList(this.b);
      this.a = (0xFFFFFFFE & this.a);
    }
    ad.a(localad, this.b);
    if ((0x2 & this.a) == 2)
    {
      this.c = Collections.unmodifiableList(this.c);
      this.a = (0xFFFFFFFD & this.a);
    }
    ad.b(localad, this.c);
    if ((0x4 & this.a) == 4)
    {
      this.d = Collections.unmodifiableList(this.d);
      this.a = (0xFFFFFFFB & this.a);
    }
    ad.c(localad, this.d);
    if ((i2 & 0x8) == 8);
    while (true)
    {
      ad.a(localad, this.e);
      if ((0x10 & this.a) == 16)
      {
        this.f = Collections.unmodifiableList(this.f);
        this.a = (0xFFFFFFEF & this.a);
      }
      ad.d(localad, this.f);
      if ((i2 & 0x20) == 32)
        i1 |= 2;
      ad.a(localad, this.g);
      if ((i2 & 0x40) == 64)
        i1 |= 4;
      ad.a(localad, this.h);
      if ((i2 & 0x80) == 128)
        i1 |= 8;
      ad.a(localad, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 16;
      ad.a(localad, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 32;
      ad.b(localad, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 64;
      ad.b(localad, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 128;
      ad.c(localad, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 256;
      ad.d(localad, this.n);
      ad.b(localad, i1);
      return localad;
      i1 = 0;
    }
  }

  public ae d(int paramInt)
  {
    this.a = (0x40 | this.a);
    this.h = paramInt;
    return this;
  }

  public ae d(long paramLong)
  {
    this.a = (0x1000 | this.a);
    this.n = paramLong;
    return this;
  }

  public int e()
  {
    return this.b.size();
  }

  public int f()
  {
    return this.c.size();
  }

  public int k()
  {
    return this.d.size();
  }

  public boolean l()
  {
    if ((0x8 & this.a) == 8);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public r m()
  {
    return this.e;
  }

  public final boolean v()
  {
    int i1 = 0;
    boolean bool1;
    if (i1 < e())
    {
      boolean bool5 = a(i1).v();
      bool1 = false;
      if (bool5);
    }
    while (true)
    {
      return bool1;
      i1++;
      break;
      for (int i2 = 0; ; i2++)
      {
        if (i2 >= f())
          break label71;
        boolean bool4 = b(i2).v();
        bool1 = false;
        if (!bool4)
          break;
      }
      label71: for (int i3 = 0; ; i3++)
      {
        if (i3 >= k())
          break label105;
        boolean bool3 = c(i3).v();
        bool1 = false;
        if (!bool3)
          break;
      }
      label105: if (l())
      {
        boolean bool2 = m().v();
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.a.a.a.a.ae
 * JD-Core Version:    0.6.2
 */