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

public final class ie extends dk
  implements ig
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final ie d;
  private static final long l;
  private int e;
  private ge f;
  private gn g;
  private long h;
  private byte i = -1;
  private int k = -1;

  static
  {
    ie localie = new ie();
    d = localie;
    localie.f = ge.h();
    localie.g = gn.h();
    localie.h = 0L;
  }

  private ie()
  {
  }

  private ie(if paramif, byte paramByte)
  {
    super(paramif);
  }

  private static ie a(i parami)
  {
    return if.a((if)if.i().a(parami));
  }

  private static ie a(i parami, df paramdf)
  {
    return if.a((if)if.i().a(parami, paramdf));
  }

  private static ie a(m paramm)
  {
    return if.a((if)if.i().a(paramm));
  }

  private static ie a(m paramm, df paramdf)
  {
    return if.a(if.i().e(paramm, paramdf));
  }

  private static ie a(InputStream paramInputStream)
  {
    return if.a((if)if.i().a(paramInputStream));
  }

  private static ie a(InputStream paramInputStream, df paramdf)
  {
    return if.a((if)if.i().a(paramInputStream, paramdf));
  }

  public static ie a(byte[] paramArrayOfByte)
  {
    return if.a((if)if.i().a(paramArrayOfByte));
  }

  private static ie a(byte[] paramArrayOfByte, df paramdf)
  {
    return if.a((if)if.i().a(paramArrayOfByte, paramdf));
  }

  private static if a(ie paramie)
  {
    return if.i().a(paramie);
  }

  private static ie b(InputStream paramInputStream)
  {
    if localif = if.i();
    if (localif.b(paramInputStream));
    for (ie localie = if.a(localif); ; localie = null)
      return localie;
  }

  private static ie b(InputStream paramInputStream, df paramdf)
  {
    if localif = if.i();
    if (localif.b(paramInputStream, paramdf));
    for (ie localie = if.a(localif); ; localie = null)
      return localie;
  }

  private static if b(dp paramdp)
  {
    return new if(paramdp);
  }

  public static ie h()
  {
    return d;
  }

  public static final cj i()
  {
    return hh.h();
  }

  private static ie s()
  {
    return d;
  }

  private void t()
  {
    this.f = ge.h();
    this.g = gn.h();
    this.h = 0L;
  }

  private static if u()
  {
    return if.i();
  }

  private static if v()
  {
    return if.i();
  }

  private if w()
  {
    return if.i().a(this);
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
      else if ((m()) && (!this.g.a()))
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
    return hh.i();
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

  public final gn n()
  {
    return this.g;
  }

  public final gp o()
  {
    return this.g;
  }

  public final boolean p()
  {
    if ((0x4 & this.e) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long q()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.ie
 * JD-Core Version:    0.6.2
 */