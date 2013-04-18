package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class dx extends dk
  implements dz
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final dx d;
  private static final long l;
  private int e;
  private ge f;
  private int g;
  private gn h;
  private byte i = -1;
  private int k = -1;

  static
  {
    dx localdx = new dx();
    d = localdx;
    localdx.f = ge.h();
    localdx.g = 0;
    localdx.h = gn.h();
  }

  private dx()
  {
  }

  private dx(dy paramdy, byte paramByte)
  {
    super(paramdy);
  }

  private static dx a(i parami)
  {
    return dy.a((dy)dy.i().a(parami));
  }

  private static dx a(i parami, df paramdf)
  {
    return dy.a((dy)dy.i().a(parami, paramdf));
  }

  private static dx a(m paramm)
  {
    return dy.a((dy)dy.i().a(paramm));
  }

  private static dx a(m paramm, df paramdf)
  {
    return dy.a(dy.i().e(paramm, paramdf));
  }

  public static dx a(InputStream paramInputStream)
  {
    return dy.a((dy)dy.i().a(paramInputStream));
  }

  private static dx a(InputStream paramInputStream, df paramdf)
  {
    return dy.a((dy)dy.i().a(paramInputStream, paramdf));
  }

  private static dx a(byte[] paramArrayOfByte)
  {
    return dy.a((dy)dy.i().a(paramArrayOfByte));
  }

  private static dx a(byte[] paramArrayOfByte, df paramdf)
  {
    return dy.a((dy)dy.i().a(paramArrayOfByte, paramdf));
  }

  private static dy a(dx paramdx)
  {
    return dy.i().a(paramdx);
  }

  private static dx b(InputStream paramInputStream)
  {
    dy localdy = dy.i();
    if (localdy.b(paramInputStream));
    for (dx localdx = dy.a(localdy); ; localdx = null)
      return localdx;
  }

  private static dx b(InputStream paramInputStream, df paramdf)
  {
    dy localdy = dy.i();
    if (localdy.b(paramInputStream, paramdf));
    for (dx localdx = dy.a(localdy); ; localdx = null)
      return localdx;
  }

  private static dy b(dp paramdp)
  {
    return new dy(paramdp);
  }

  public static dx h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.R();
  }

  private static dx s()
  {
    return d;
  }

  private void t()
  {
    this.f = ge.h();
    this.g = 0;
    this.h = gn.h();
  }

  private static dy u()
  {
    return dy.i();
  }

  private static dy v()
  {
    return dy.i();
  }

  private dy w()
  {
    return dy.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.b(1, this.f);
    if ((0x2 & this.e) == 2)
      paramn.a(2, this.g);
    if ((0x4 & this.e) == 4)
      paramn.b(3, this.h);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.i;
    boolean bool;
    if (j != -1)
      if (j == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.i = 0;
        bool = false;
      }
      else if (!this.f.a())
      {
        this.i = 0;
        bool = false;
      }
      else if ((o()) && (!this.h.a()))
      {
        this.i = 0;
        bool = false;
      }
      else
      {
        this.i = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.k;
    if (j != -1);
    while (true)
    {
      return j;
      int m = 0x1 & this.e;
      int n = 0;
      if (m == 1)
        n = 0 + n.e(1, this.f);
      if ((0x2 & this.e) == 2)
        n += n.d(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.S();
  }

  public final boolean j()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.f;
  }

  public final gg l()
  {
    return this.f;
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int n()
  {
    return this.g;
  }

  public final boolean o()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gn p()
  {
    return this.h;
  }

  public final gp q()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.dx
 * JD-Core Version:    0.6.2
 */