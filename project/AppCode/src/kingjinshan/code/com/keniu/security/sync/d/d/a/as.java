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

public final class as extends dk
  implements au
{
  public static final int a = 1;
  private static final as b;
  private static final long g;
  private int c;
  private Object d;
  private byte e = -1;
  private int f = -1;

  static
  {
    as localas = new as();
    b = localas;
    localas.d = "";
  }

  private as()
  {
  }

  private as(at paramat, byte paramByte)
  {
    super(paramat);
  }

  private static as a(i parami)
  {
    return at.a((at)at.i().a(parami));
  }

  private static as a(i parami, df paramdf)
  {
    return at.a((at)at.i().a(parami, paramdf));
  }

  private static as a(m paramm)
  {
    return at.a((at)at.i().a(paramm));
  }

  private static as a(m paramm, df paramdf)
  {
    return at.a(at.i().e(paramm, paramdf));
  }

  private static as a(InputStream paramInputStream)
  {
    return at.a((at)at.i().a(paramInputStream));
  }

  private static as a(InputStream paramInputStream, df paramdf)
  {
    return at.a((at)at.i().a(paramInputStream, paramdf));
  }

  private static as a(byte[] paramArrayOfByte)
  {
    return at.a((at)at.i().a(paramArrayOfByte));
  }

  private static as a(byte[] paramArrayOfByte, df paramdf)
  {
    return at.a((at)at.i().a(paramArrayOfByte, paramdf));
  }

  private static at a(as paramas)
  {
    return at.i().a(paramas);
  }

  private static as b(InputStream paramInputStream)
  {
    at localat = at.i();
    if (localat.b(paramInputStream));
    for (as localas = at.a(localat); ; localas = null)
      return localas;
  }

  private static as b(InputStream paramInputStream, df paramdf)
  {
    at localat = at.i();
    if (localat.b(paramInputStream, paramdf));
    for (as localas = at.a(localat); ; localas = null)
      return localas;
  }

  private static at b(dp paramdp)
  {
    return new at(paramdp);
  }

  public static as h()
  {
    return b;
  }

  public static final cj i()
  {
    return a.f();
  }

  private static as m()
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

  private static at p()
  {
    return at.i();
  }

  private static at q()
  {
    return at.i();
  }

  private at r()
  {
    return at.i().a(this);
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
    return a.g();
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
 * Qualified Name:     com.keniu.security.sync.d.d.a.as
 * JD-Core Version:    0.6.2
 */