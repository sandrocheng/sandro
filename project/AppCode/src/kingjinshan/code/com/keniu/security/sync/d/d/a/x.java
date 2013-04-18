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

public final class x extends dk
  implements z
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final x d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    x localx = new x();
    d = localx;
    localx.f = ge.h();
    localx.g = gj.h();
    localx.h = gy.h();
  }

  private x()
  {
  }

  private x(y paramy, byte paramByte)
  {
    super(paramy);
  }

  private static x a(i parami)
  {
    return y.a((y)y.i().a(parami));
  }

  private static x a(i parami, df paramdf)
  {
    return y.a((y)y.i().a(parami, paramdf));
  }

  private static x a(m paramm)
  {
    return y.a((y)y.i().a(paramm));
  }

  private static x a(m paramm, df paramdf)
  {
    return y.a(y.i().e(paramm, paramdf));
  }

  private static x a(InputStream paramInputStream)
  {
    return y.a((y)y.i().a(paramInputStream));
  }

  private static x a(InputStream paramInputStream, df paramdf)
  {
    return y.a((y)y.i().a(paramInputStream, paramdf));
  }

  private static x a(byte[] paramArrayOfByte)
  {
    return y.a((y)y.i().a(paramArrayOfByte));
  }

  private static x a(byte[] paramArrayOfByte, df paramdf)
  {
    return y.a((y)y.i().a(paramArrayOfByte, paramdf));
  }

  private static y a(x paramx)
  {
    return y.i().a(paramx);
  }

  private static x b(InputStream paramInputStream)
  {
    y localy = y.i();
    if (localy.b(paramInputStream));
    for (x localx = y.a(localy); ; localx = null)
      return localx;
  }

  private static x b(InputStream paramInputStream, df paramdf)
  {
    y localy = y.i();
    if (localy.b(paramInputStream, paramdf));
    for (x localx = y.a(localy); ; localx = null)
      return localx;
  }

  private static y b(dp paramdp)
  {
    return new y(paramdp);
  }

  public static x h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.B();
  }

  private static x t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static y v()
  {
    return y.i();
  }

  private static y w()
  {
    return y.i();
  }

  private y x()
  {
    return y.i().a(this);
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
      paramn.b(2, this.g);
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
        n += n.e(2, this.g);
      if ((0x4 & this.e) == 4)
        n += n.e(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return a.C();
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

  public final gj n()
  {
    return this.g;
  }

  public final gl o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final gy q()
  {
    return this.h;
  }

  public final ha r()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.x
 * JD-Core Version:    0.6.2
 */