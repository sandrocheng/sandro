package com.avast.android.generic.internet.c.a;

import com.google.a.d;
import com.google.a.g;
import com.google.a.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class an extends n
  implements ao
{
  private int a;
  private ax b = ax.a;
  private int c;
  private long d;
  private int e;
  private boolean f;
  private long g;
  private boolean h;
  private boolean i;
  private List j = Collections.emptyList();
  private List k = Collections.emptyList();
  private int l;
  private int m;

  private an()
  {
    p();
  }

  private void p()
  {
  }

  private static an q()
  {
    return new an();
  }

  private void r()
  {
    if ((0x100 & this.a) != 256)
    {
      this.j = new ArrayList(this.j);
      this.a = (0x100 | this.a);
    }
  }

  private void s()
  {
    if ((0x200 & this.a) != 512)
    {
      this.k = new ArrayList(this.k);
      this.a = (0x200 | this.a);
    }
  }

  public an a()
  {
    return q().a(d());
  }

  public an a(int paramInt)
  {
    this.a = (0x2 | this.a);
    this.c = paramInt;
    return this;
  }

  public an a(long paramLong)
  {
    this.a = (0x4 | this.a);
    this.d = paramLong;
    return this;
  }

  public an a(aj paramaj)
  {
    if (paramaj == null)
      throw new NullPointerException();
    r();
    this.j.add(paramaj);
    return this;
  }

  public an a(am paramam)
  {
    if (paramam == am.a())
      return this;
    if (paramam.b())
      a(paramam.c());
    if (paramam.d())
      a(paramam.e());
    if (paramam.f())
      a(paramam.g());
    if (paramam.h())
      b(paramam.i());
    if (paramam.j())
      a(paramam.k());
    if (paramam.l())
      b(paramam.m());
    if (paramam.n())
      b(paramam.o());
    if (paramam.p())
      c(paramam.q());
    if (!am.b(paramam).isEmpty())
    {
      if (this.j.isEmpty())
      {
        this.j = am.b(paramam);
        this.a = (0xFFFFFEFF & this.a);
      }
    }
    else
      label181: if (!am.c(paramam).isEmpty())
      {
        if (!this.k.isEmpty())
          break label281;
        this.k = am.c(paramam);
        this.a = (0xFFFFFDFF & this.a);
      }
    while (true)
    {
      if (paramam.r())
        c(paramam.s());
      if (!paramam.t())
        break;
      d(paramam.u());
      break;
      r();
      this.j.addAll(am.b(paramam));
      break label181;
      label281: s();
      this.k.addAll(am.c(paramam));
    }
  }

  public an a(as paramas)
  {
    if (paramas == null)
      throw new NullPointerException();
    s();
    this.k.add(paramas);
    return this;
  }

  public an a(ax paramax)
  {
    if (paramax == null)
      throw new NullPointerException();
    this.a = (0x1 | this.a);
    this.b = paramax;
    return this;
  }

  public an a(d paramd, g paramg)
  {
    while (true)
    {
      int n = paramd.a();
      switch (n)
      {
      default:
        if (a(paramd, paramg, n))
          continue;
      case 0:
        return this;
      case 8:
        ax localax = ax.a(paramd.n());
        if (localax == null)
          continue;
        this.a = (0x1 | this.a);
        this.b = localax;
        break;
      case 16:
        this.a = (0x2 | this.a);
        this.c = paramd.g();
        break;
      case 24:
        this.a = (0x8 | this.a);
        this.e = paramd.g();
        break;
      case 32:
        this.a = (0x10 | this.a);
        this.f = paramd.j();
        break;
      case 40:
        this.a = (0x20 | this.a);
        this.g = paramd.f();
        break;
      case 48:
        this.a = (0x40 | this.a);
        this.h = paramd.j();
        break;
      case 56:
        this.a = (0x80 | this.a);
        this.i = paramd.j();
        break;
      case 66:
        ak localak = aj.d();
        paramd.a(localak, paramg);
        a(localak.d());
        break;
      case 74:
        at localat = as.j();
        paramd.a(localat, paramg);
        a(localat.d());
        break;
      case 80:
        this.a = (0x400 | this.a);
        this.l = paramd.g();
        break;
      case 88:
        this.a = (0x800 | this.a);
        this.m = paramd.g();
        break;
      case 96:
      }
      this.a = (0x4 | this.a);
      this.d = paramd.f();
    }
  }

  public an a(boolean paramBoolean)
  {
    this.a = (0x10 | this.a);
    this.f = paramBoolean;
    return this;
  }

  public am b()
  {
    return am.a();
  }

  public an b(int paramInt)
  {
    this.a = (0x8 | this.a);
    this.e = paramInt;
    return this;
  }

  public an b(long paramLong)
  {
    this.a = (0x20 | this.a);
    this.g = paramLong;
    return this;
  }

  public an b(boolean paramBoolean)
  {
    this.a = (0x40 | this.a);
    this.h = paramBoolean;
    return this;
  }

  public am c()
  {
    am localam = d();
    if (!localam.v())
      throw a(localam);
    return localam;
  }

  public an c(int paramInt)
  {
    this.a = (0x400 | this.a);
    this.l = paramInt;
    return this;
  }

  public an c(boolean paramBoolean)
  {
    this.a = (0x80 | this.a);
    this.i = paramBoolean;
    return this;
  }

  public am d()
  {
    int n = 1;
    am localam = new am(this, null);
    int i1 = this.a;
    if ((i1 & 0x1) == n);
    while (true)
    {
      am.a(localam, this.b);
      if ((i1 & 0x2) == 2)
        n |= 2;
      am.a(localam, this.c);
      if ((i1 & 0x4) == 4)
        n |= 4;
      am.a(localam, this.d);
      if ((i1 & 0x8) == 8)
        n |= 8;
      am.b(localam, this.e);
      if ((i1 & 0x10) == 16)
        n |= 16;
      am.a(localam, this.f);
      if ((i1 & 0x20) == 32)
        n |= 32;
      am.b(localam, this.g);
      if ((i1 & 0x40) == 64)
        n |= 64;
      am.b(localam, this.h);
      if ((i1 & 0x80) == 128)
        n |= 128;
      am.c(localam, this.i);
      if ((0x100 & this.a) == 256)
      {
        this.j = Collections.unmodifiableList(this.j);
        this.a = (0xFFFFFEFF & this.a);
      }
      am.a(localam, this.j);
      if ((0x200 & this.a) == 512)
      {
        this.k = Collections.unmodifiableList(this.k);
        this.a = (0xFFFFFDFF & this.a);
      }
      am.b(localam, this.k);
      if ((i1 & 0x400) == 1024)
        n |= 256;
      am.c(localam, this.l);
      if ((i1 & 0x800) == 2048)
        n |= 512;
      am.d(localam, this.m);
      am.e(localam, n);
      return localam;
      n = 0;
    }
  }

  public an d(int paramInt)
  {
    this.a = (0x800 | this.a);
    this.m = paramInt;
    return this;
  }

  public ax e()
  {
    return this.b;
  }

  public int f()
  {
    return this.c;
  }

  public long k()
  {
    return this.d;
  }

  public int l()
  {
    return this.e;
  }

  public boolean m()
  {
    return this.f;
  }

  public boolean n()
  {
    return this.i;
  }

  public final boolean v()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.internet.c.a.an
 * JD-Core Version:    0.6.2
 */