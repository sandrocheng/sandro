package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class ag extends dr
  implements ai
{
  public static final int a = 999;
  private static final ag b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    ag localag = new ag();
    b = localag;
    localag.c = Collections.emptyList();
  }

  private ag()
  {
  }

  private ag(ah paramah, byte paramByte)
  {
    super(paramah);
  }

  private static ag a(i parami)
  {
    return ah.a((ah)ah.o().a(parami));
  }

  private static ag a(i parami, df paramdf)
  {
    return ah.a((ah)ah.o().a(parami, paramdf));
  }

  private static ag a(m paramm)
  {
    return ah.a((ah)ah.o().a(paramm));
  }

  private static ag a(m paramm, df paramdf)
  {
    return ah.a(ah.o().e(paramm, paramdf));
  }

  private static ag a(InputStream paramInputStream)
  {
    return ah.a((ah)ah.o().a(paramInputStream));
  }

  private static ag a(InputStream paramInputStream, df paramdf)
  {
    return ah.a((ah)ah.o().a(paramInputStream, paramdf));
  }

  private static ag a(byte[] paramArrayOfByte)
  {
    return ah.a((ah)ah.o().a(paramArrayOfByte));
  }

  private static ag a(byte[] paramArrayOfByte, df paramdf)
  {
    return ah.a((ah)ah.o().a(paramArrayOfByte, paramdf));
  }

  public static ah a(ag paramag)
  {
    return ah.o().a(paramag);
  }

  private static ag b(InputStream paramInputStream)
  {
    ah localah = ah.o();
    if (localah.b(paramInputStream));
    for (ag localag = ah.a(localah); ; localag = null)
      return localag;
  }

  private static ag b(InputStream paramInputStream, df paramdf)
  {
    ah localah = ah.o();
    if (localah.b(paramInputStream, paramdf));
    for (ag localag = ah.a(localah); ; localag = null)
      return localag;
  }

  private static ah b(dp paramdp)
  {
    return new ah(paramdp);
  }

  public static ag e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.B();
  }

  public static ah k()
  {
    return ah.o();
  }

  private static ag l()
  {
    return b;
  }

  private void m()
  {
    this.c = Collections.emptyList();
  }

  private static ah n()
  {
    return ah.o();
  }

  private ah o()
  {
    return ah.o().a(this);
  }

  protected final Object B()
  {
    return super.B();
  }

  public final cb a(int paramInt)
  {
    return (cb)this.c.get(paramInt);
  }

  public final void a(n paramn)
  {
    b();
    ds localds = K();
    for (int i = 0; i < this.c.size(); i++)
      paramn.b(999, (ex)this.c.get(i));
    localds.a(paramn);
    b_().a(paramn);
  }

  public final boolean a()
  {
    int i = this.d;
    boolean bool;
    if (i != -1)
      if (i == 1)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      for (int j = 0; ; j++)
      {
        if (j >= j())
          break label61;
        if (!a(j).a())
        {
          this.d = 0;
          bool = false;
          break;
        }
      }
      label61: if (!J())
      {
        this.d = 0;
        bool = false;
      }
      else
      {
        this.d = 1;
        bool = true;
      }
    }
  }

  public final int b()
  {
    int i = 0;
    int j = this.e;
    if (j != -1);
    while (true)
    {
      return j;
      int k = 0;
      while (k < this.c.size())
      {
        int m = i + n.e(999, (ex)this.c.get(k));
        k++;
        i = m;
      }
      j = i + L() + b_().b();
      this.e = j;
    }
  }

  public final cg b(int paramInt)
  {
    return (cg)this.c.get(paramInt);
  }

  protected final dv g()
  {
    return p.C();
  }

  public final List i()
  {
    return this.c;
  }

  public final List i_()
  {
    return this.c;
  }

  public final int j()
  {
    return this.c.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ag
 * JD-Core Version:    0.6.2
 */