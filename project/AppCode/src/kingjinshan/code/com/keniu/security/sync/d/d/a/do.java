package com.keniu.security.sync.d.d.a;

import com.b.a.cj;
import com.b.a.df;
import com.b.a.dk;
import com.b.a.dv;
import com.b.a.ep;
import com.b.a.et;
import com.b.a.eu;
import com.b.a.gg;
import com.b.a.i;
import com.b.a.m;
import com.b.a.n;
import java.io.InputStream;
import java.util.List;

public final class do extends dk
  implements dq
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  public static final int d = 4;
  private static final do e;
  private static final long n;
  private int f;
  private Object g;
  private eu h;
  private int i;
  private int k;
  private byte l = -1;
  private int m = -1;

  static
  {
    do localdo = new do();
    e = localdo;
    localdo.g = "";
    localdo.h = et.a;
    localdo.i = 0;
    localdo.k = 0;
  }

  private do()
  {
  }

  private do(dp paramdp, byte paramByte)
  {
    super(paramdp);
  }

  private static do a(i parami)
  {
    return dp.a((dp)dp.r().a(parami));
  }

  private static do a(i parami, df paramdf)
  {
    return dp.a((dp)dp.r().a(parami, paramdf));
  }

  private static do a(m paramm)
  {
    return dp.a((dp)dp.r().a(paramm));
  }

  private static do a(m paramm, df paramdf)
  {
    return dp.a(dp.r().e(paramm, paramdf));
  }

  private static do a(InputStream paramInputStream)
  {
    return dp.a((dp)dp.r().a(paramInputStream));
  }

  private static do a(InputStream paramInputStream, df paramdf)
  {
    return dp.a((dp)dp.r().a(paramInputStream, paramdf));
  }

  private static do a(byte[] paramArrayOfByte)
  {
    return dp.a((dp)dp.r().a(paramArrayOfByte));
  }

  private static do a(byte[] paramArrayOfByte, df paramdf)
  {
    return dp.a((dp)dp.r().a(paramArrayOfByte, paramdf));
  }

  private static do b(InputStream paramInputStream)
  {
    dp localdp = dp.r();
    if (localdp.b(paramInputStream));
    for (do localdo = dp.a(localdp); ; localdo = null)
      return localdo;
  }

  private static do b(InputStream paramInputStream, df paramdf)
  {
    dp localdp = dp.r();
    if (localdp.b(paramInputStream, paramdf));
    for (do localdo = dp.a(localdp); ; localdo = null)
      return localdo;
  }

  private static dp b(com.b.a.dp paramdp)
  {
    return new dp(paramdp);
  }

  private static dp b(do paramdo)
  {
    return dp.r().a(paramdo);
  }

  public static do h()
  {
    return e;
  }

  public static final cj i()
  {
    return a.ab();
  }

  public static dp r()
  {
    return dp.r();
  }

  private static do t()
  {
    return e;
  }

  private i u()
  {
    Object localObject = this.g;
    i locali;
    if ((localObject instanceof String))
    {
      locali = i.a((String)localObject);
      this.g = locali;
    }
    while (true)
    {
      return locali;
      locali = (i)localObject;
    }
  }

  private void v()
  {
    this.g = "";
    this.h = et.a;
    this.i = 0;
    this.k = 0;
  }

  private static dp w()
  {
    return dp.r();
  }

  private dp x()
  {
    return dp.r().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final String a(int paramInt)
  {
    return (String)this.h.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.f) == 1)
      paramn.a(1, u());
    for (int j = 0; j < this.h.size(); j++)
      paramn.a(2, this.h.a(j));
    if ((0x2 & this.f) == 2)
      paramn.a(3, this.i);
    if ((0x4 & this.f) == 4)
      paramn.a(4, this.k);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int j = this.l;
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
        this.l = 0;
        bool = false;
      }
      else if (!n())
      {
        this.l = 0;
        bool = false;
      }
      else
      {
        this.l = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int j = 0;
    int i1 = this.m;
    if (i1 != -1)
      return i1;
    if ((0x1 & this.f) == 1);
    for (int i2 = 0 + n.c(1, u()); ; i2 = 0)
    {
      for (int i3 = 0; i3 < this.h.size(); i3++)
        j += n.b(this.h.a(i3));
      int i4 = i2 + j + 1 * this.h.size();
      if ((0x2 & this.f) == 2)
        i4 += n.d(3, this.i);
      if ((0x4 & this.f) == 4)
        i4 += n.d(4, this.k);
      i1 = i4 + b_().b();
      this.m = i1;
      break;
    }
  }

  protected final dv g()
  {
    return a.ac();
  }

  public final boolean j()
  {
    if ((0x1 & this.f) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String k()
  {
    Object localObject1 = this.g;
    if ((localObject1 instanceof String));
    String str;
    for (Object localObject2 = (String)localObject1; ; localObject2 = str)
    {
      return localObject2;
      i locali = (i)localObject1;
      str = locali.b();
      if (ep.a(locali))
        this.g = str;
    }
  }

  public final List l()
  {
    return this.h;
  }

  public final int m()
  {
    return this.h.size();
  }

  public final boolean n()
  {
    if ((0x2 & this.f) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int o()
  {
    return this.i;
  }

  public final boolean p()
  {
    if ((0x4 & this.f) == 4);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int q()
  {
    return this.k;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.d.d.a.do
 * JD-Core Version:    0.6.2
 */