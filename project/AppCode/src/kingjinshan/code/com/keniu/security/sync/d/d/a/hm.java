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

public final class hm extends dk
  implements ho
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final hm d;
  private static final long l;
  private int e;
  private ge f;
  private long g;
  private int h;
  private byte i = -1;
  private int k = -1;

  static
  {
    hm localhm = new hm();
    d = localhm;
    localhm.f = ge.h();
    localhm.g = 0L;
    localhm.h = 0;
  }

  private hm()
  {
  }

  private hm(hn paramhn, byte paramByte)
  {
    super(paramhn);
  }

  private static hm a(i parami)
  {
    return hn.a((hn)hn.i().a(parami));
  }

  private static hm a(i parami, df paramdf)
  {
    return hn.a((hn)hn.i().a(parami, paramdf));
  }

  private static hm a(m paramm)
  {
    return hn.a((hn)hn.i().a(paramm));
  }

  private static hm a(m paramm, df paramdf)
  {
    return hn.a(hn.i().e(paramm, paramdf));
  }

  public static hm a(InputStream paramInputStream)
  {
    return hn.a((hn)hn.i().a(paramInputStream));
  }

  private static hm a(InputStream paramInputStream, df paramdf)
  {
    return hn.a((hn)hn.i().a(paramInputStream, paramdf));
  }

  private static hm a(byte[] paramArrayOfByte)
  {
    return hn.a((hn)hn.i().a(paramArrayOfByte));
  }

  private static hm a(byte[] paramArrayOfByte, df paramdf)
  {
    return hn.a((hn)hn.i().a(paramArrayOfByte, paramdf));
  }

  private static hn a(hm paramhm)
  {
    return hn.i().a(paramhm);
  }

  private static hm b(InputStream paramInputStream)
  {
    hn localhn = hn.i();
    if (localhn.b(paramInputStream));
    for (hm localhm = hn.a(localhn); ; localhm = null)
      return localhm;
  }

  private static hm b(InputStream paramInputStream, df paramdf)
  {
    hn localhn = hn.i();
    if (localhn.b(paramInputStream, paramdf));
    for (hm localhm = hn.a(localhn); ; localhm = null)
      return localhm;
  }

  private static hn b(dp paramdp)
  {
    return new hn(paramdp);
  }

  public static hm h()
  {
    return d;
  }

  public static final cj i()
  {
    return hh.d();
  }

  private static hm r()
  {
    return d;
  }

  private void s()
  {
    this.f = ge.h();
    this.g = 0L;
    this.h = 0;
  }

  private static hn t()
  {
    return hn.i();
  }

  private static hn u()
  {
    return hn.i();
  }

  private hn v()
  {
    return hn.i().a(this);
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
      paramn.a(3, this.h);
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
        n += n.d(3, this.h);
      j = n + b_().b();
      this.k = j;
    }
  }

  protected final dv g()
  {
    return hh.e();
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

  public final long n()
  {
    return this.g;
  }

  public final boolean o()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int p()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.hm
 * JD-Core Version:    0.6.2
 */