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

public final class aj extends dk
  implements al
{
  public static final int a = 1;
  private static final aj b;
  private static final long g;
  private int c;
  private ge d;
  private byte e = -1;
  private int f = -1;

  static
  {
    aj localaj = new aj();
    b = localaj;
    localaj.d = ge.h();
  }

  private aj()
  {
  }

  private aj(ak paramak, byte paramByte)
  {
    super(paramak);
  }

  private static aj a(i parami)
  {
    return ak.a((ak)ak.i().a(parami));
  }

  private static aj a(i parami, df paramdf)
  {
    return ak.a((ak)ak.i().a(parami, paramdf));
  }

  private static aj a(m paramm)
  {
    return ak.a((ak)ak.i().a(paramm));
  }

  private static aj a(m paramm, df paramdf)
  {
    return ak.a(ak.i().e(paramm, paramdf));
  }

  private static aj a(InputStream paramInputStream)
  {
    return ak.a((ak)ak.i().a(paramInputStream));
  }

  private static aj a(InputStream paramInputStream, df paramdf)
  {
    return ak.a((ak)ak.i().a(paramInputStream, paramdf));
  }

  private static aj a(byte[] paramArrayOfByte)
  {
    return ak.a((ak)ak.i().a(paramArrayOfByte));
  }

  private static aj a(byte[] paramArrayOfByte, df paramdf)
  {
    return ak.a((ak)ak.i().a(paramArrayOfByte, paramdf));
  }

  private static ak a(aj paramaj)
  {
    return ak.i().a(paramaj);
  }

  private static aj b(InputStream paramInputStream)
  {
    ak localak = ak.i();
    if (localak.b(paramInputStream));
    for (aj localaj = ak.a(localak); ; localaj = null)
      return localaj;
  }

  private static aj b(InputStream paramInputStream, df paramdf)
  {
    ak localak = ak.i();
    if (localak.b(paramInputStream, paramdf));
    for (aj localaj = ak.a(localak); ; localaj = null)
      return localaj;
  }

  private static ak b(dp paramdp)
  {
    return new ak(paramdp);
  }

  public static aj h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.bd();
  }

  private static aj n()
  {
    return b;
  }

  private void o()
  {
    this.d = ge.h();
  }

  private static ak p()
  {
    return ak.i();
  }

  private static ak q()
  {
    return ak.i();
  }

  private ak r()
  {
    return ak.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.b(1, this.d);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.e;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (!j())
      {
        this.e = 0;
        bool = false;
      }
      else if (!this.d.a())
      {
        this.e = 0;
        bool = false;
      }
      else
      {
        this.e = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int i = this.f;
    if (i != -1);
    while (true)
    {
      return i;
      int j = 0x1 & this.c;
      int k = 0;
      if (j == 1)
        k = 0 + n.e(1, this.d);
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return a.be();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ge k()
  {
    return this.d;
  }

  public final gg l()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.aj
 * JD-Core Version:    0.6.2
 */