package com.avast.a.a.a;

import com.google.a.al;
import com.google.a.am;
import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import com.google.a.y;
import com.google.a.z;

public final class i extends n
  implements j
{
  private int a;
  private int b;
  private z c = y.a;
  private boolean d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private int o;
  private boolean p;

  private i()
  {
    k();
  }

  private void k()
  {
  }

  private static i l()
  {
    return new i();
  }

  private h m()
  {
    h localh = d();
    if (!localh.v())
      throw a(localh).a();
    return localh;
  }

  private void n()
  {
    if ((0x2 & this.a) != 2)
    {
      this.c = new y(this.c);
      this.a = (0x2 | this.a);
    }
  }

  public i a()
  {
    return l().a(d());
  }

  public i a(int paramInt)
  {
    this.a = (0x1 | this.a);
    this.b = paramInt;
    return this;
  }

  public i a(h paramh)
  {
    if (paramh == h.a())
      return this;
    if (paramh.b())
      a(paramh.c());
    if (!h.b(paramh).isEmpty())
    {
      if (!this.c.isEmpty())
        break label279;
      this.c = h.b(paramh);
      this.a = (0xFFFFFFFD & this.a);
    }
    while (true)
    {
      if (paramh.f())
        a(paramh.g());
      if (paramh.h())
        b(paramh.i());
      if (paramh.j())
        c(paramh.k());
      if (paramh.l())
        d(paramh.m());
      if (paramh.n())
        e(paramh.o());
      if (paramh.p())
        f(paramh.q());
      if (paramh.r())
        g(paramh.s());
      if (paramh.t())
        h(paramh.u());
      if (paramh.x())
        i(paramh.y());
      if (paramh.z())
        j(paramh.C());
      if (paramh.D())
        k(paramh.E());
      if (paramh.F())
        b(paramh.G());
      if (!paramh.H())
        break;
      l(paramh.I());
      break;
      label279: n();
      this.c.addAll(h.b(paramh));
    }
  }

  public i a(d paramd, g paramg)
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
        this.b = paramd.g();
        break;
      case 18:
        n();
        this.c.a(paramd.l());
        break;
      case 24:
        this.a = (0x4 | this.a);
        this.d = paramd.j();
        break;
      case 32:
        this.a = (0x8 | this.a);
        this.e = paramd.j();
        break;
      case 40:
        this.a = (0x10 | this.a);
        this.f = paramd.j();
        break;
      case 48:
        this.a = (0x20 | this.a);
        this.g = paramd.j();
        break;
      case 56:
        this.a = (0x40 | this.a);
        this.h = paramd.j();
        break;
      case 64:
        this.a = (0x80 | this.a);
        this.i = paramd.j();
        break;
      case 72:
        this.a = (0x100 | this.a);
        this.j = paramd.j();
        break;
      case 80:
        this.a = (0x200 | this.a);
        this.k = paramd.j();
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
        this.o = paramd.g();
        break;
      case 120:
      }
      this.a = (0x4000 | this.a);
      this.p = paramd.j();
    }
  }

  public i a(boolean paramBoolean)
  {
    this.a = (0x4 | this.a);
    this.d = paramBoolean;
    return this;
  }

  public h b()
  {
    return h.a();
  }

  public i b(int paramInt)
  {
    this.a = (0x2000 | this.a);
    this.o = paramInt;
    return this;
  }

  public i b(boolean paramBoolean)
  {
    this.a = (0x8 | this.a);
    this.e = paramBoolean;
    return this;
  }

  public h c()
  {
    h localh = d();
    if (!localh.v())
      throw a(localh);
    return localh;
  }

  public i c(boolean paramBoolean)
  {
    this.a = (0x10 | this.a);
    this.f = paramBoolean;
    return this;
  }

  public h d()
  {
    int i1 = 1;
    h localh = new h(this, null);
    int i2 = this.a;
    if ((i2 & 0x1) == i1);
    while (true)
    {
      h.a(localh, this.b);
      if ((0x2 & this.a) == 2)
      {
        this.c = new am(this.c);
        this.a = (0xFFFFFFFD & this.a);
      }
      h.a(localh, this.c);
      if ((i2 & 0x4) == 4)
        i1 |= 2;
      h.a(localh, this.d);
      if ((i2 & 0x8) == 8)
        i1 |= 4;
      h.b(localh, this.e);
      if ((i2 & 0x10) == 16)
        i1 |= 8;
      h.c(localh, this.f);
      if ((i2 & 0x20) == 32)
        i1 |= 16;
      h.d(localh, this.g);
      if ((i2 & 0x40) == 64)
        i1 |= 32;
      h.e(localh, this.h);
      if ((i2 & 0x80) == 128)
        i1 |= 64;
      h.f(localh, this.i);
      if ((i2 & 0x100) == 256)
        i1 |= 128;
      h.g(localh, this.j);
      if ((i2 & 0x200) == 512)
        i1 |= 256;
      h.h(localh, this.k);
      if ((i2 & 0x400) == 1024)
        i1 |= 512;
      h.i(localh, this.l);
      if ((i2 & 0x800) == 2048)
        i1 |= 1024;
      h.j(localh, this.m);
      if ((i2 & 0x1000) == 4096)
        i1 |= 2048;
      h.k(localh, this.n);
      if ((i2 & 0x2000) == 8192)
        i1 |= 4096;
      h.b(localh, this.o);
      if ((i2 & 0x4000) == 16384)
        i1 |= 8192;
      h.l(localh, this.p);
      h.c(localh, i1);
      return localh;
      i1 = 0;
    }
  }

  public i d(boolean paramBoolean)
  {
    this.a = (0x20 | this.a);
    this.g = paramBoolean;
    return this;
  }

  public i e(boolean paramBoolean)
  {
    this.a = (0x40 | this.a);
    this.h = paramBoolean;
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

  public i f(boolean paramBoolean)
  {
    this.a = (0x80 | this.a);
    this.i = paramBoolean;
    return this;
  }

  public i g(boolean paramBoolean)
  {
    this.a = (0x100 | this.a);
    this.j = paramBoolean;
    return this;
  }

  public i h(boolean paramBoolean)
  {
    this.a = (0x200 | this.a);
    this.k = paramBoolean;
    return this;
  }

  public i i(boolean paramBoolean)
  {
    this.a = (0x400 | this.a);
    this.l = paramBoolean;
    return this;
  }

  public i j(boolean paramBoolean)
  {
    this.a = (0x800 | this.a);
    this.m = paramBoolean;
    return this;
  }

  public i k(boolean paramBoolean)
  {
    this.a = (0x1000 | this.a);
    this.n = paramBoolean;
    return this;
  }

  public i l(boolean paramBoolean)
  {
    this.a = (0x4000 | this.a);
    this.p = paramBoolean;
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
 * Qualified Name:     com.avast.a.a.a.i
 * JD-Core Version:    0.6.2
 */