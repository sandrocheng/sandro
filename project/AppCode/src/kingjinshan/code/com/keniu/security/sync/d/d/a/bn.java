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

public final class bn extends dk
  implements bp
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final bn d;
  private static final long l;
  private int e;
  private ge f;
  private gj g;
  private gy h;
  private byte i = -1;
  private int k = -1;

  static
  {
    bn localbn = new bn();
    d = localbn;
    localbn.f = ge.h();
    localbn.g = gj.h();
    localbn.h = gy.h();
  }

  private bn()
  {
  }

  private bn(bo parambo, byte paramByte)
  {
    super(parambo);
  }

  private static bn a(i parami)
  {
    return bo.a((bo)bo.i().a(parami));
  }

  private static bn a(i parami, df paramdf)
  {
    return bo.a((bo)bo.i().a(parami, paramdf));
  }

  private static bn a(m paramm)
  {
    return bo.a((bo)bo.i().a(paramm));
  }

  private static bn a(m paramm, df paramdf)
  {
    return bo.a(bo.i().e(paramm, paramdf));
  }

  public static bn a(InputStream paramInputStream)
  {
    return bo.a((bo)bo.i().a(paramInputStream));
  }

  private static bn a(InputStream paramInputStream, df paramdf)
  {
    return bo.a((bo)bo.i().a(paramInputStream, paramdf));
  }

  private static bn a(byte[] paramArrayOfByte)
  {
    return bo.a((bo)bo.i().a(paramArrayOfByte));
  }

  private static bn a(byte[] paramArrayOfByte, df paramdf)
  {
    return bo.a((bo)bo.i().a(paramArrayOfByte, paramdf));
  }

  private static bo a(bn parambn)
  {
    return bo.i().a(parambn);
  }

  private static bn b(InputStream paramInputStream)
  {
    bo localbo = bo.i();
    if (localbo.b(paramInputStream));
    for (bn localbn = bo.a(localbo); ; localbn = null)
      return localbn;
  }

  private static bn b(InputStream paramInputStream, df paramdf)
  {
    bo localbo = bo.i();
    if (localbo.b(paramInputStream, paramdf));
    for (bn localbn = bo.a(localbo); ; localbn = null)
      return localbn;
  }

  private static bo b(dp paramdp)
  {
    return new bo(paramdp);
  }

  public static bn h()
  {
    return d;
  }

  public static final cj i()
  {
    return a.N();
  }

  private static bn t()
  {
    return d;
  }

  private void u()
  {
    this.f = ge.h();
    this.g = gj.h();
    this.h = gy.h();
  }

  private static bo v()
  {
    return bo.i();
  }

  private static bo w()
  {
    return bo.i();
  }

  private bo x()
  {
    return bo.i().a(this);
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
    return a.O();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.bn
 * JD-Core Version:    0.6.2
 */