package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dp;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;

public final class bw extends dk
  implements by
{
  public static final int a = 1;
  private static final bw b;
  private static final long g;
  private int c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    bw localbw = new bw();
    b = localbw;
    localbw.d = "";
  }

  private bw()
  {
  }

  private bw(bx parambx, byte paramByte)
  {
    super(parambx);
  }

  private static bw a(i parami)
  {
    return bx.a((bx)bx.i().a(parami));
  }

  private static bw a(i parami, df paramdf)
  {
    return bx.a((bx)bx.i().a(parami, paramdf));
  }

  private static bw a(m paramm)
  {
    return bx.a((bx)bx.i().a(paramm));
  }

  private static bw a(m paramm, df paramdf)
  {
    return bx.a(bx.i().e(paramm, paramdf));
  }

  private static bw a(InputStream paramInputStream)
  {
    return bx.a((bx)bx.i().a(paramInputStream));
  }

  private static bw a(InputStream paramInputStream, df paramdf)
  {
    return bx.a((bx)bx.i().a(paramInputStream, paramdf));
  }

  private static bw a(byte[] paramArrayOfByte)
  {
    return bx.a((bx)bx.i().a(paramArrayOfByte));
  }

  private static bw a(byte[] paramArrayOfByte, df paramdf)
  {
    return bx.a((bx)bx.i().a(paramArrayOfByte, paramdf));
  }

  private static bx a(bw parambw)
  {
    return bx.i().a(parambw);
  }

  private static bw b(InputStream paramInputStream)
  {
    bx localbx = bx.i();
    if (localbx.b(paramInputStream));
    for (bw localbw = bx.a(localbx); ; localbw = null)
      return localbw;
  }

  private static bw b(InputStream paramInputStream, df paramdf)
  {
    bx localbx = bx.i();
    if (localbx.b(paramInputStream, paramdf));
    for (bw localbw = bx.a(localbx); ; localbw = null)
      return localbw;
  }

  private static bx b(dp paramdp)
  {
    return new bx(paramdp);
  }

  public static bw h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.an();
  }

  private static bw m()
  {
    return b;
  }

  private i n()
  {
    Object localObject = this.d;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.d = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void o()
  {
    this.d = "";
  }

  private static bx p()
  {
    return bx.i();
  }

  private static bx q()
  {
    return bx.i();
  }

  private bx r()
  {
    return bx.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.c) == 1)
      paramn.a(1, n());
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
        k = 0 + n.c(1, n());
      i = k + b_().b();
      this.f = i;
    }
  }

  protected final dv g()
  {
    return a.ao();
  }

  public final boolean j()
  {
    if ((0x1 & this.c) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.d;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.d = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bw
 * JD-Core Version:    0.6.2
 */