package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bp extends dk
  implements br
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final bp d;
  private static final long l;
  private int e;
  private Object f;
  private List g;
  private bs h;
  private byte i = -1;
  private int k = -1;

  static
  {
    bp localbp = new bp();
    d = localbp;
    localbp.f = "";
    localbp.g = Collections.emptyList();
    localbp.h = bs.e();
  }

  private bp()
  {
  }

  private bp(bq parambq, byte paramByte)
  {
    super(parambq);
  }

  private static bp a(i parami)
  {
    return bq.a((bq)bq.r().a(parami));
  }

  private static bp a(i parami, df paramdf)
  {
    return bq.a((bq)bq.r().a(parami, paramdf));
  }

  private static bp a(m paramm)
  {
    return bq.a((bq)bq.r().a(paramm));
  }

  private static bp a(m paramm, df paramdf)
  {
    return bq.a(bq.r().e(paramm, paramdf));
  }

  private static bp a(InputStream paramInputStream)
  {
    return bq.a((bq)bq.r().a(paramInputStream));
  }

  private static bp a(InputStream paramInputStream, df paramdf)
  {
    return bq.a((bq)bq.r().a(paramInputStream, paramdf));
  }

  private static bp a(byte[] paramArrayOfByte)
  {
    return bq.a((bq)bq.r().a(paramArrayOfByte));
  }

  private static bp a(byte[] paramArrayOfByte, df paramdf)
  {
    return bq.a((bq)bq.r().a(paramArrayOfByte, paramdf));
  }

  private static bp b(InputStream paramInputStream)
  {
    bq localbq = bq.r();
    if (localbq.b(paramInputStream));
    for (bp localbp = bq.a(localbq); ; localbp = null)
      return localbp;
  }

  private static bp b(InputStream paramInputStream, df paramdf)
  {
    bq localbq = bq.r();
    if (localbq.b(paramInputStream, paramdf));
    for (bp localbp = bq.a(localbq); ; localbp = null)
      return localbp;
  }

  private static bq b(bp parambp)
  {
    return bq.r().a(parambp);
  }

  private static bq b(dp paramdp)
  {
    return new bq(paramdp);
  }

  public static bp e()
  {
    return d;
  }

  public static final cj f()
  {
    return p.p();
  }

  public static bq p()
  {
    return bq.r();
  }

  private static bp q()
  {
    return d;
  }

  private i r()
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

  private void s()
  {
    this.f = "";
    this.g = Collections.emptyList();
    this.h = bs.e();
  }

  private static bq t()
  {
    return bq.r();
  }

  private bq u()
  {
    return bq.r().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final boolean B_()
  {
    if ((0x1 & this.e) == 1);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bj a(int paramInt)
  {
    return (bj)this.g.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    if ((0x1 & this.e) == 1)
      paramn.a(1, r());
    for (int j = 0; j < this.g.size(); j++)
      paramn.b(2, (ex)this.g.get(j));
    if ((0x2 & this.e) == 2)
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
      for (int m = 0; ; m++)
      {
        if (m >= l())
          break label61;
        if (!a(m).a())
        {
          this.i = 0;
          bool = false;
          break;
        }
      }
      label61: if ((m()) && (!this.h.a()))
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
    if (j != -1)
      return j;
    if ((0x1 & this.e) == 1);
    for (int m = 0 + n.c(1, r()); ; m = 0)
    {
      int n = 0;
      int i3;
      for (int i1 = m; n < this.g.size(); i1 = i3)
      {
        i3 = i1 + n.e(2, (ex)this.g.get(n));
        n++;
      }
      if ((0x2 & this.e) == 2);
      for (int i2 = i1 + n.e(3, this.h); ; i2 = i1)
      {
        j = i2 + b_().b();
        this.k = j;
        break;
      }
    }
  }

  public final bl b(int paramInt)
  {
    return (bl)this.g.get(paramInt);
  }

  protected final dv g()
  {
    return p.q();
  }

  public final String i()
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

  public final List j()
  {
    return this.g;
  }

  public final List k()
  {
    return this.g;
  }

  public final int l()
  {
    return this.g.size();
  }

  public final boolean m()
  {
    if ((0x2 & this.e) == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final bs n()
  {
    return this.h;
  }

  public final bu o()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bp
 * JD-Core Version:    0.6.2
 */