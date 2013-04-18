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

public final class bq extends dk
  implements bs
{
  public static final int a = 1;
  public static final int b = 2;
  private static final bq c;
  private static final long i;
  private int d;
  private Object e;
  private Object f;
  private byte g = -1;
  private int h = -1;

  static
  {
    bq localbq = new bq();
    c = localbq;
    localbq.e = "";
    localbq.f = "";
  }

  private bq()
  {
  }

  private bq(br parambr, byte paramByte)
  {
    super(parambr);
  }

  private static bq a(i parami)
  {
    return br.a((br)br.i().a(parami));
  }

  private static bq a(i parami, df paramdf)
  {
    return br.a((br)br.i().a(parami, paramdf));
  }

  private static bq a(m paramm)
  {
    return br.a((br)br.i().a(paramm));
  }

  private static bq a(m paramm, df paramdf)
  {
    return br.a(br.i().e(paramm, paramdf));
  }

  private static bq a(InputStream paramInputStream)
  {
    return br.a((br)br.i().a(paramInputStream));
  }

  private static bq a(InputStream paramInputStream, df paramdf)
  {
    return br.a((br)br.i().a(paramInputStream, paramdf));
  }

  private static bq a(byte[] paramArrayOfByte)
  {
    return br.a((br)br.i().a(paramArrayOfByte));
  }

  private static bq a(byte[] paramArrayOfByte, df paramdf)
  {
    return br.a((br)br.i().a(paramArrayOfByte, paramdf));
  }

  private static br a(bq parambq)
  {
    return br.i().a(parambq);
  }

  private static bq b(InputStream paramInputStream)
  {
    br localbr = br.i();
    if (localbr.b(paramInputStream));
    for (bq localbq = br.a(localbr); ; localbq = null)
      return localbq;
  }

  private static bq b(InputStream paramInputStream, df paramdf)
  {
    br localbr = br.i();
    if (localbr.b(paramInputStream, paramdf));
    for (bq localbq = br.a(localbr); ; localbq = null)
      return localbq;
  }

  private static br b(dp paramdp)
  {
    return new br(paramdp);
  }

  public static bq h()
  {
    return c;
  }

  public static final cj i()
  {
    return a.ar();
  }

  private static bq o()
  {
    return c;
  }

  private i p()
  {
    Object localObject = this.e;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.e = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private i q()
  {
    Object localObject = this.f;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.f = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void r()
  {
    this.e = "";
    this.f = "";
  }

  private static br s()
  {
    return br.i();
  }

  private static br t()
  {
    return br.i();
  }

  private br u()
  {
    return br.i().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.d) == 1)
      paramn.a(1, p());
    if ((0x2 & this.d) == 2)
      paramn.a(2, q());
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.g;
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
        this.g = 0;
        bool = false;
      }
      else if (!l())
      {
        this.g = 0;
        bool = false;
      }
      else
      {
        this.g = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = this.h;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0x1 & this.d;
      int m = 0;
      if (k == 1)
        m = 0 + n.c(1, p());
      if ((0x2 & this.d) == 2)
        m += n.c(2, q());
      j = m + b_().b();
      this.h = j;
    }
  }

  protected final dv g()
  {
    return a.as();
  }

  public final boolean j()
  {
    if ((0x1 & this.d) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.e;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.e = str;
    }
  }

  public final boolean l()
  {
    if ((0x2 & this.d) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String m()
  {
    Object localObject1 = this.f;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.f = str;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.bq
 * JD-Core Version:    0.6.2
 */