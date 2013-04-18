package com.b.a;

import java.io.InputStream;
import java.util.Collections;
import java.util.List;

public final class bm extends dr
  implements bo
{
  public static final int a = 999;
  private static final bm b;
  private static final long f;
  private List c;
  private byte d = -1;
  private int e = -1;

  static
  {
    bm localbm = new bm();
    b = localbm;
    localbm.c = Collections.emptyList();
  }

  private bm()
  {
  }

  private bm(bn parambn, byte paramByte)
  {
    super(parambn);
  }

  private static bm a(i parami)
  {
    return bn.a((bn)bn.o().a(parami));
  }

  private static bm a(i parami, df paramdf)
  {
    return bn.a((bn)bn.o().a(parami, paramdf));
  }

  private static bm a(m paramm)
  {
    return bn.a((bn)bn.o().a(paramm));
  }

  private static bm a(m paramm, df paramdf)
  {
    return bn.a(bn.o().e(paramm, paramdf));
  }

  private static bm a(InputStream paramInputStream)
  {
    return bn.a((bn)bn.o().a(paramInputStream));
  }

  private static bm a(InputStream paramInputStream, df paramdf)
  {
    return bn.a((bn)bn.o().a(paramInputStream, paramdf));
  }

  private static bm a(byte[] paramArrayOfByte)
  {
    return bn.a((bn)bn.o().a(paramArrayOfByte));
  }

  private static bm a(byte[] paramArrayOfByte, df paramdf)
  {
    return bn.a((bn)bn.o().a(paramArrayOfByte, paramdf));
  }

  public static bn a(bm parambm)
  {
    return bn.o().a(parambm);
  }

  private static bm b(InputStream paramInputStream)
  {
    bn localbn = bn.o();
    if (localbn.b(paramInputStream));
    for (bm localbm = bn.a(localbn); ; localbm = null)
      return localbm;
  }

  private static bm b(InputStream paramInputStream, df paramdf)
  {
    bn localbn = bn.o();
    if (localbn.b(paramInputStream, paramdf));
    for (bm localbm = bn.a(localbn); ; localbm = null)
      return localbm;
  }

  private static bn b(dp paramdp)
  {
    return new bn(paramdp);
  }

  public static bm e()
  {
    return b;
  }

  public static final cj f()
  {
    return p.F();
  }

  public static bn k()
  {
    return bn.o();
  }

  private static bm l()
  {
    return b;
  }

  private void m()
  {
    this.c = Collections.emptyList();
  }

  private static bn n()
  {
    return bn.o();
  }

  private bn o()
  {
    return bn.o().a(this);
  }

  public final List A_()
  {
    return this.c;
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
    return p.G();
  }

  public final List i()
  {
    return this.c;
  }

  public final int j()
  {
    return this.c.size();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.bm
 * JD-Core Version:    0.6.2
 */